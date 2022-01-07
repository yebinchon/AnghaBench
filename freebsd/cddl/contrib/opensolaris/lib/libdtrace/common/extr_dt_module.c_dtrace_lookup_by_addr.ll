; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_module.c_dtrace_lookup_by_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_module.c_dtrace_lookup_by_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_25__, i32, %struct.TYPE_22__* }
%struct.TYPE_25__ = type { i64, i64, i64, i64, i64, i64, %struct.TYPE_21__, i32, %struct.TYPE_20__* }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_20__ = type { i32* (%struct.TYPE_25__*, i64, %struct.TYPE_26__*, i32*)* }
%struct.TYPE_22__ = type { i32 (i32, i64, %struct.TYPE_26__*, %struct.TYPE_23__*)* }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_23__ = type { i8*, i32, i32 }

@EDT_NOSYMADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtrace_lookup_by_addr(%struct.TYPE_24__* %0, i64 %1, %struct.TYPE_26__* %2, %struct.TYPE_23__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_26__* %2, %struct.TYPE_26__** %8, align 8
  store %struct.TYPE_23__* %3, %struct.TYPE_23__** %9, align 8
  %13 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  store %struct.TYPE_22__* %15, %struct.TYPE_22__** %12, align 8
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %17 = icmp ne %struct.TYPE_22__* %16, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %4
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %20 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 0
  %21 = load i32 (i32, i64, %struct.TYPE_26__*, %struct.TYPE_23__*)*, i32 (i32, i64, %struct.TYPE_26__*, %struct.TYPE_23__*)** %20, align 8
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %28 = call i32 %21(i32 %24, i64 %25, %struct.TYPE_26__* %26, %struct.TYPE_23__* %27)
  store i32 %28, i32* %5, align 4
  br label %137

29:                                               ; preds = %4
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 0
  %32 = call %struct.TYPE_25__* @dt_list_next(%struct.TYPE_25__* %31)
  store %struct.TYPE_25__* %32, %struct.TYPE_25__** %10, align 8
  br label %33

33:                                               ; preds = %68, %29
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %35 = icmp ne %struct.TYPE_25__* %34, null
  br i1 %35, label %36, label %71

36:                                               ; preds = %33
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %37, %40
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %41, %44
  br i1 %45, label %66, label %46

46:                                               ; preds = %36
  %47 = load i64, i64* %7, align 8
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %47, %50
  %52 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %51, %54
  br i1 %55, label %66, label %56

56:                                               ; preds = %46
  %57 = load i64, i64* %7, align 8
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %57, %60
  %62 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %62, i32 0, i32 5
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %61, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %56, %46, %36
  br label %71

67:                                               ; preds = %56
  br label %68

68:                                               ; preds = %67
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %70 = call %struct.TYPE_25__* @dt_list_next(%struct.TYPE_25__* %69)
  store %struct.TYPE_25__* %70, %struct.TYPE_25__** %10, align 8
  br label %33

71:                                               ; preds = %66, %33
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %73 = icmp eq %struct.TYPE_25__* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %76 = load i32, i32* @EDT_NOSYMADDR, align 4
  %77 = call i32 @dt_set_errno(%struct.TYPE_24__* %75, i32 %76)
  store i32 %77, i32* %5, align 4
  br label %137

78:                                               ; preds = %71
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %81 = call i32 @dt_module_load(%struct.TYPE_24__* %79, %struct.TYPE_25__* %80)
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  store i32 -1, i32* %5, align 4
  br label %137

84:                                               ; preds = %78
  %85 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %86 = icmp ne %struct.TYPE_26__* %85, null
  br i1 %86, label %87, label %103

87:                                               ; preds = %84
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %88, i32 0, i32 8
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 0
  %92 = load i32* (%struct.TYPE_25__*, i64, %struct.TYPE_26__*, i32*)*, i32* (%struct.TYPE_25__*, i64, %struct.TYPE_26__*, i32*)** %91, align 8
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %94 = load i64, i64* %7, align 8
  %95 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %96 = call i32* %92(%struct.TYPE_25__* %93, i64 %94, %struct.TYPE_26__* %95, i32* %11)
  %97 = icmp eq i32* %96, null
  br i1 %97, label %98, label %102

98:                                               ; preds = %87
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %100 = load i32, i32* @EDT_NOSYMADDR, align 4
  %101 = call i32 @dt_set_errno(%struct.TYPE_24__* %99, i32 %100)
  store i32 %101, i32* %5, align 4
  br label %137

102:                                              ; preds = %87
  br label %103

103:                                              ; preds = %102, %84
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %105 = icmp ne %struct.TYPE_23__* %104, null
  br i1 %105, label %106, label %136

106:                                              ; preds = %103
  %107 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %107, i32 0, i32 7
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 4
  %112 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %113 = icmp ne %struct.TYPE_26__* %112, null
  br i1 %113, label %114, label %130

114:                                              ; preds = %106
  %115 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %115, i32 0, i32 6
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = inttoptr i64 %118 to i8*
  %120 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %119, i64 %123
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 0
  store i8* %124, i8** %126, align 8
  %127 = load i32, i32* %11, align 4
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 8
  br label %135

130:                                              ; preds = %106
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i32 0, i32 0
  store i8* null, i8** %132, align 8
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %133, i32 0, i32 1
  store i32 0, i32* %134, align 8
  br label %135

135:                                              ; preds = %130, %114
  br label %136

136:                                              ; preds = %135, %103
  store i32 0, i32* %5, align 4
  br label %137

137:                                              ; preds = %136, %98, %83, %74, %18
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

declare dso_local %struct.TYPE_25__* @dt_list_next(%struct.TYPE_25__*) #1

declare dso_local i32 @dt_set_errno(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @dt_module_load(%struct.TYPE_24__*, %struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
