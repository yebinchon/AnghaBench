; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_cbq.c_cbq_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_cbq.c_cbq_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cbq_sched_data = type { i32, i64, i32, %struct.cbq_class, %struct.cbq_class* }
%struct.cbq_class = type { i64, i64, i64, i64, i64, i64, %struct.TYPE_2__, %struct.cbq_class* }
%struct.TYPE_2__ = type { i32, i32 }

@PSCHED_PASTPERFECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cbq_sched_data*)* @cbq_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cbq_update(%struct.cbq_sched_data* %0) #0 {
  %2 = alloca %struct.cbq_sched_data*, align 8
  %3 = alloca %struct.cbq_class*, align 8
  %4 = alloca %struct.cbq_class*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.cbq_sched_data* %0, %struct.cbq_sched_data** %2, align 8
  %8 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %2, align 8
  %9 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %8, i32 0, i32 4
  %10 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  store %struct.cbq_class* %10, %struct.cbq_class** %3, align 8
  %11 = load %struct.cbq_class*, %struct.cbq_class** %3, align 8
  store %struct.cbq_class* %11, %struct.cbq_class** %4, align 8
  %12 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %2, align 8
  %13 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %5, align 4
  %15 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %2, align 8
  %16 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %15, i32 0, i32 4
  store %struct.cbq_class* null, %struct.cbq_class** %16, align 8
  br label %17

17:                                               ; preds = %133, %1
  %18 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %19 = icmp ne %struct.cbq_class* %18, null
  br i1 %19, label %20, label %137

20:                                               ; preds = %17
  %21 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %22 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %6, align 8
  %24 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %25 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %24, i32 0, i32 6
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %31 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %30, i32 0, i32 6
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, %29
  store i32 %34, i32* %32, align 8
  %35 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %2, align 8
  %36 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %39 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %37, %40
  store i64 %41, i64* %7, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp ugt i64 %42, 134217728
  br i1 %43, label %44, label %48

44:                                               ; preds = %20
  %45 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %46 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %6, align 8
  br label %63

48:                                               ; preds = %20
  %49 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i64 @L2T(%struct.cbq_class* %49, i32 %50)
  %52 = load i64, i64* %7, align 8
  %53 = sub nsw i64 %52, %51
  store i64 %53, i64* %7, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* %6, align 8
  %56 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %57 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = ashr i64 %55, %58
  %60 = sub nsw i64 %54, %59
  %61 = load i64, i64* %6, align 8
  %62 = add nsw i64 %61, %60
  store i64 %62, i64* %6, align 8
  br label %63

63:                                               ; preds = %48, %44
  %64 = load i64, i64* %6, align 8
  %65 = icmp sle i64 %64, 0
  br i1 %65, label %66, label %107

66:                                               ; preds = %63
  %67 = load i64, i64* %6, align 8
  %68 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %69 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = icmp slt i64 %67, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %74 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %6, align 8
  br label %76

76:                                               ; preds = %72, %66
  %77 = load i64, i64* %6, align 8
  %78 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %79 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load i64, i64* %6, align 8
  %81 = sub nsw i64 0, %80
  %82 = load i64, i64* %6, align 8
  %83 = sub nsw i64 0, %82
  %84 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %85 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = ashr i64 %83, %86
  %88 = sub nsw i64 %81, %87
  store i64 %88, i64* %7, align 8
  %89 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %2, align 8
  %90 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %89, i32 0, i32 3
  %91 = load i32, i32* %5, align 4
  %92 = call i64 @L2T(%struct.cbq_class* %90, i32 %91)
  %93 = load i64, i64* %7, align 8
  %94 = sub nsw i64 %93, %92
  store i64 %94, i64* %7, align 8
  %95 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %96 = load i32, i32* %5, align 4
  %97 = call i64 @L2T(%struct.cbq_class* %95, i32 %96)
  %98 = load i64, i64* %7, align 8
  %99 = add nsw i64 %98, %97
  store i64 %99, i64* %7, align 8
  %100 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %2, align 8
  %101 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %7, align 8
  %104 = add nsw i64 %102, %103
  %105 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %106 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %105, i32 0, i32 5
  store i64 %104, i64* %106, align 8
  br label %127

107:                                              ; preds = %63
  %108 = load i64, i64* @PSCHED_PASTPERFECT, align 8
  %109 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %110 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %109, i32 0, i32 5
  store i64 %108, i64* %110, align 8
  %111 = load i64, i64* %6, align 8
  %112 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %113 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp sgt i64 %111, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %107
  %117 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %118 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %121 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %120, i32 0, i32 0
  store i64 %119, i64* %121, align 8
  br label %126

122:                                              ; preds = %107
  %123 = load i64, i64* %6, align 8
  %124 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %125 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %124, i32 0, i32 0
  store i64 %123, i64* %125, align 8
  br label %126

126:                                              ; preds = %122, %116
  br label %127

127:                                              ; preds = %126, %76
  %128 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %2, align 8
  %129 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %132 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %131, i32 0, i32 1
  store i64 %130, i64* %132, align 8
  br label %133

133:                                              ; preds = %127
  %134 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %135 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %134, i32 0, i32 7
  %136 = load %struct.cbq_class*, %struct.cbq_class** %135, align 8
  store %struct.cbq_class* %136, %struct.cbq_class** %4, align 8
  br label %17

137:                                              ; preds = %17
  %138 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %2, align 8
  %139 = load %struct.cbq_class*, %struct.cbq_class** %3, align 8
  %140 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %2, align 8
  %141 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @cbq_update_toplevel(%struct.cbq_sched_data* %138, %struct.cbq_class* %139, i32 %142)
  ret void
}

declare dso_local i64 @L2T(%struct.cbq_class*, i32) #1

declare dso_local i32 @cbq_update_toplevel(%struct.cbq_sched_data*, %struct.cbq_class*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
