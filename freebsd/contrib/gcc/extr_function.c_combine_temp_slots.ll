; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_combine_temp_slots.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_combine_temp_slots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.temp_slot = type { i64, i64, i64, i32, %struct.temp_slot* }

@flag_strict_aliasing = common dso_local global i64 0, align 8
@flag_expensive_optimizations = common dso_local global i32 0, align 4
@avail_temp_slots = common dso_local global %struct.temp_slot* null, align 8
@optimize = common dso_local global i64 0, align 8
@BLKmode = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @combine_temp_slots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @combine_temp_slots() #0 {
  %1 = alloca %struct.temp_slot*, align 8
  %2 = alloca %struct.temp_slot*, align 8
  %3 = alloca %struct.temp_slot*, align 8
  %4 = alloca %struct.temp_slot*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i64, i64* @flag_strict_aliasing, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  br label %144

11:                                               ; preds = %0
  %12 = load i32, i32* @flag_expensive_optimizations, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %37, label %14

14:                                               ; preds = %11
  %15 = load %struct.temp_slot*, %struct.temp_slot** @avail_temp_slots, align 8
  store %struct.temp_slot* %15, %struct.temp_slot** %1, align 8
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %30, %14
  %17 = load %struct.temp_slot*, %struct.temp_slot** %1, align 8
  %18 = icmp ne %struct.temp_slot* %17, null
  br i1 %18, label %19, label %36

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = icmp sgt i32 %20, 100
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = icmp sgt i32 %23, 10
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i64, i64* @optimize, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %19
  br label %144

29:                                               ; preds = %25, %22
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.temp_slot*, %struct.temp_slot** %1, align 8
  %32 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %31, i32 0, i32 4
  %33 = load %struct.temp_slot*, %struct.temp_slot** %32, align 8
  store %struct.temp_slot* %33, %struct.temp_slot** %1, align 8
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %16

36:                                               ; preds = %16
  br label %37

37:                                               ; preds = %36, %11
  %38 = load %struct.temp_slot*, %struct.temp_slot** @avail_temp_slots, align 8
  store %struct.temp_slot* %38, %struct.temp_slot** %1, align 8
  br label %39

39:                                               ; preds = %142, %37
  %40 = load %struct.temp_slot*, %struct.temp_slot** %1, align 8
  %41 = icmp ne %struct.temp_slot* %40, null
  br i1 %41, label %42, label %144

42:                                               ; preds = %39
  store i32 0, i32* %6, align 4
  %43 = load %struct.temp_slot*, %struct.temp_slot** %1, align 8
  %44 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %43, i32 0, i32 4
  %45 = load %struct.temp_slot*, %struct.temp_slot** %44, align 8
  store %struct.temp_slot* %45, %struct.temp_slot** %3, align 8
  %46 = load %struct.temp_slot*, %struct.temp_slot** %1, align 8
  %47 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @GET_MODE(i32 %48)
  %50 = load i64, i64* @BLKmode, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  br label %142

53:                                               ; preds = %42
  %54 = load %struct.temp_slot*, %struct.temp_slot** %1, align 8
  %55 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %54, i32 0, i32 4
  %56 = load %struct.temp_slot*, %struct.temp_slot** %55, align 8
  store %struct.temp_slot* %56, %struct.temp_slot** %2, align 8
  br label %57

57:                                               ; preds = %133, %53
  %58 = load %struct.temp_slot*, %struct.temp_slot** %2, align 8
  %59 = icmp ne %struct.temp_slot* %58, null
  br i1 %59, label %60, label %135

60:                                               ; preds = %57
  store i32 0, i32* %7, align 4
  %61 = load %struct.temp_slot*, %struct.temp_slot** %2, align 8
  %62 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %61, i32 0, i32 4
  %63 = load %struct.temp_slot*, %struct.temp_slot** %62, align 8
  store %struct.temp_slot* %63, %struct.temp_slot** %4, align 8
  %64 = load %struct.temp_slot*, %struct.temp_slot** %2, align 8
  %65 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @GET_MODE(i32 %66)
  %68 = load i64, i64* @BLKmode, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %60
  br label %133

71:                                               ; preds = %60
  %72 = load %struct.temp_slot*, %struct.temp_slot** %1, align 8
  %73 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.temp_slot*, %struct.temp_slot** %1, align 8
  %76 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %74, %77
  %79 = load %struct.temp_slot*, %struct.temp_slot** %2, align 8
  %80 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %78, %81
  br i1 %82, label %83, label %98

83:                                               ; preds = %71
  %84 = load %struct.temp_slot*, %struct.temp_slot** %2, align 8
  %85 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.temp_slot*, %struct.temp_slot** %1, align 8
  %88 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, %86
  store i64 %90, i64* %88, align 8
  %91 = load %struct.temp_slot*, %struct.temp_slot** %2, align 8
  %92 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.temp_slot*, %struct.temp_slot** %1, align 8
  %95 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, %93
  store i64 %97, i64* %95, align 8
  store i32 1, i32* %7, align 4
  br label %126

98:                                               ; preds = %71
  %99 = load %struct.temp_slot*, %struct.temp_slot** %2, align 8
  %100 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.temp_slot*, %struct.temp_slot** %2, align 8
  %103 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %101, %104
  %106 = load %struct.temp_slot*, %struct.temp_slot** %1, align 8
  %107 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %105, %108
  br i1 %109, label %110, label %125

110:                                              ; preds = %98
  %111 = load %struct.temp_slot*, %struct.temp_slot** %1, align 8
  %112 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.temp_slot*, %struct.temp_slot** %2, align 8
  %115 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %116, %113
  store i64 %117, i64* %115, align 8
  %118 = load %struct.temp_slot*, %struct.temp_slot** %1, align 8
  %119 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.temp_slot*, %struct.temp_slot** %2, align 8
  %122 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %123, %120
  store i64 %124, i64* %122, align 8
  store i32 1, i32* %6, align 4
  br label %135

125:                                              ; preds = %98
  br label %126

126:                                              ; preds = %125, %83
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load %struct.temp_slot*, %struct.temp_slot** %2, align 8
  %131 = call i32 @cut_slot_from_list(%struct.temp_slot* %130, %struct.temp_slot** @avail_temp_slots)
  br label %132

132:                                              ; preds = %129, %126
  br label %133

133:                                              ; preds = %132, %70
  %134 = load %struct.temp_slot*, %struct.temp_slot** %4, align 8
  store %struct.temp_slot* %134, %struct.temp_slot** %2, align 8
  br label %57

135:                                              ; preds = %110, %57
  %136 = load i32, i32* %6, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = load %struct.temp_slot*, %struct.temp_slot** %1, align 8
  %140 = call i32 @cut_slot_from_list(%struct.temp_slot* %139, %struct.temp_slot** @avail_temp_slots)
  br label %141

141:                                              ; preds = %138, %135
  br label %142

142:                                              ; preds = %141, %52
  %143 = load %struct.temp_slot*, %struct.temp_slot** %3, align 8
  store %struct.temp_slot* %143, %struct.temp_slot** %1, align 8
  br label %39

144:                                              ; preds = %10, %28, %39
  ret void
}

declare dso_local i64 @GET_MODE(i32) #1

declare dso_local i32 @cut_slot_from_list(%struct.temp_slot*, %struct.temp_slot**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
