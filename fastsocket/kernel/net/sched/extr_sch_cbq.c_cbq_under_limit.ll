; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_cbq.c_cbq_under_limit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_cbq.c_cbq_under_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cbq_class = type { i64, i64, i64, i32 (%struct.cbq_class*)*, %struct.TYPE_2__, %struct.cbq_class*, i32*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.cbq_sched_data = type { i64, i64 }

@PSCHED_PASTPERFECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cbq_class* (%struct.cbq_class*)* @cbq_under_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cbq_class* @cbq_under_limit(%struct.cbq_class* %0) #0 {
  %2 = alloca %struct.cbq_class*, align 8
  %3 = alloca %struct.cbq_class*, align 8
  %4 = alloca %struct.cbq_sched_data*, align 8
  %5 = alloca %struct.cbq_class*, align 8
  store %struct.cbq_class* %0, %struct.cbq_class** %3, align 8
  %6 = load %struct.cbq_class*, %struct.cbq_class** %3, align 8
  %7 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %6, i32 0, i32 7
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.cbq_sched_data* @qdisc_priv(i32 %8)
  store %struct.cbq_sched_data* %9, %struct.cbq_sched_data** %4, align 8
  %10 = load %struct.cbq_class*, %struct.cbq_class** %3, align 8
  store %struct.cbq_class* %10, %struct.cbq_class** %5, align 8
  %11 = load %struct.cbq_class*, %struct.cbq_class** %3, align 8
  %12 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %11, i32 0, i32 6
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load %struct.cbq_class*, %struct.cbq_class** %3, align 8
  store %struct.cbq_class* %16, %struct.cbq_class** %2, align 8
  br label %82

17:                                               ; preds = %1
  %18 = load %struct.cbq_class*, %struct.cbq_class** %3, align 8
  %19 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PSCHED_PASTPERFECT, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %31, label %23

23:                                               ; preds = %17
  %24 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %4, align 8
  %25 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.cbq_class*, %struct.cbq_class** %3, align 8
  %28 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sge i64 %26, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %23, %17
  %32 = load %struct.cbq_class*, %struct.cbq_class** %3, align 8
  %33 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %32, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = load %struct.cbq_class*, %struct.cbq_class** %3, align 8
  store %struct.cbq_class* %34, %struct.cbq_class** %2, align 8
  br label %82

35:                                               ; preds = %23
  br label %36

36:                                               ; preds = %76, %35
  %37 = load %struct.cbq_class*, %struct.cbq_class** %3, align 8
  %38 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %37, i32 0, i32 5
  %39 = load %struct.cbq_class*, %struct.cbq_class** %38, align 8
  store %struct.cbq_class* %39, %struct.cbq_class** %3, align 8
  %40 = icmp eq %struct.cbq_class* %39, null
  br i1 %40, label %41, label %52

41:                                               ; preds = %36
  %42 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %43 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  %47 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %48 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %47, i32 0, i32 3
  %49 = load i32 (%struct.cbq_class*)*, i32 (%struct.cbq_class*)** %48, align 8
  %50 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %51 = call i32 %49(%struct.cbq_class* %50)
  store %struct.cbq_class* null, %struct.cbq_class** %2, align 8
  br label %82

52:                                               ; preds = %36
  %53 = load %struct.cbq_class*, %struct.cbq_class** %3, align 8
  %54 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %4, align 8
  %57 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %55, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  store %struct.cbq_class* null, %struct.cbq_class** %2, align 8
  br label %82

61:                                               ; preds = %52
  br label %62

62:                                               ; preds = %61
  %63 = load %struct.cbq_class*, %struct.cbq_class** %3, align 8
  %64 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @PSCHED_PASTPERFECT, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %62
  %69 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %4, align 8
  %70 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.cbq_class*, %struct.cbq_class** %3, align 8
  %73 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp slt i64 %71, %74
  br label %76

76:                                               ; preds = %68, %62
  %77 = phi i1 [ false, %62 ], [ %75, %68 ]
  br i1 %77, label %36, label %78

78:                                               ; preds = %76
  %79 = load %struct.cbq_class*, %struct.cbq_class** %3, align 8
  %80 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %79, i32 0, i32 2
  store i64 0, i64* %80, align 8
  %81 = load %struct.cbq_class*, %struct.cbq_class** %3, align 8
  store %struct.cbq_class* %81, %struct.cbq_class** %2, align 8
  br label %82

82:                                               ; preds = %78, %60, %41, %31, %15
  %83 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  ret %struct.cbq_class* %83
}

declare dso_local %struct.cbq_sched_data* @qdisc_priv(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
