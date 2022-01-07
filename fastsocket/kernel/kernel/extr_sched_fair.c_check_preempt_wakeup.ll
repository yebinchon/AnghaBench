; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched_fair.c_check_preempt_wakeup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched_fair.c_check_preempt_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rq = type { %struct.task_struct*, %struct.task_struct* }
%struct.task_struct = type { i64, %struct.sched_entity }
%struct.sched_entity = type { i32 }
%struct.cfs_rq = type { i64 }

@sched_nr_latency = common dso_local global i64 0, align 8
@NEXT_BUDDY = common dso_local global i32 0, align 4
@WF_FORK = common dso_local global i32 0, align 4
@SCHED_NORMAL = common dso_local global i64 0, align 8
@SCHED_IDLE = common dso_local global i64 0, align 8
@WAKEUP_PREEMPT = common dso_local global i32 0, align 4
@LAST_BUDDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rq*, %struct.task_struct*, i32)* @check_preempt_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_preempt_wakeup(%struct.rq* %0, %struct.task_struct* %1, i32 %2) #0 {
  %4 = alloca %struct.rq*, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca %struct.sched_entity*, align 8
  %9 = alloca %struct.sched_entity*, align 8
  %10 = alloca %struct.cfs_rq*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rq* %0, %struct.rq** %4, align 8
  store %struct.task_struct* %1, %struct.task_struct** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.rq*, %struct.rq** %4, align 8
  %14 = getelementptr inbounds %struct.rq, %struct.rq* %13, i32 0, i32 1
  %15 = load %struct.task_struct*, %struct.task_struct** %14, align 8
  store %struct.task_struct* %15, %struct.task_struct** %7, align 8
  %16 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %17 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %16, i32 0, i32 1
  store %struct.sched_entity* %17, %struct.sched_entity** %8, align 8
  %18 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %19 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %18, i32 0, i32 1
  store %struct.sched_entity* %19, %struct.sched_entity** %9, align 8
  %20 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %21 = call %struct.cfs_rq* @task_cfs_rq(%struct.task_struct* %20)
  store %struct.cfs_rq* %21, %struct.cfs_rq** %10, align 8
  %22 = load %struct.cfs_rq*, %struct.cfs_rq** %10, align 8
  %23 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @sched_nr_latency, align 8
  %26 = icmp sge i64 %24, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %28 = load %struct.sched_entity*, %struct.sched_entity** %8, align 8
  %29 = load %struct.sched_entity*, %struct.sched_entity** %9, align 8
  %30 = icmp eq %struct.sched_entity* %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %3
  br label %141

35:                                               ; preds = %3
  %36 = load %struct.sched_entity*, %struct.sched_entity** %9, align 8
  %37 = call i32 @cfs_rq_of(%struct.sched_entity* %36)
  %38 = call i32 @throttled_hierarchy(i32 %37)
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %141

42:                                               ; preds = %35
  %43 = load i32, i32* @NEXT_BUDDY, align 4
  %44 = call i64 @sched_feat(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %42
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @WF_FORK, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load %struct.sched_entity*, %struct.sched_entity** %9, align 8
  %56 = call i32 @set_next_buddy(%struct.sched_entity* %55)
  store i32 1, i32* %12, align 4
  br label %57

57:                                               ; preds = %54, %49, %46, %42
  %58 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %59 = call i64 @test_tsk_need_resched(%struct.task_struct* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %141

62:                                               ; preds = %57
  %63 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %64 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @SCHED_NORMAL, align 8
  %67 = icmp ne i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  br label %141

72:                                               ; preds = %62
  %73 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %74 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @SCHED_IDLE, align 8
  %77 = icmp eq i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = call i64 @unlikely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  br label %108

82:                                               ; preds = %72
  %83 = load i32, i32* @WAKEUP_PREEMPT, align 4
  %84 = call i64 @sched_feat(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %82
  br label %141

87:                                               ; preds = %82
  %88 = load %struct.cfs_rq*, %struct.cfs_rq** %10, align 8
  %89 = call i32 @update_curr(%struct.cfs_rq* %88)
  %90 = call i32 @find_matching_se(%struct.sched_entity** %8, %struct.sched_entity** %9)
  %91 = load %struct.sched_entity*, %struct.sched_entity** %9, align 8
  %92 = icmp ne %struct.sched_entity* %91, null
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  %95 = call i32 @BUG_ON(i32 %94)
  %96 = load %struct.sched_entity*, %struct.sched_entity** %8, align 8
  %97 = load %struct.sched_entity*, %struct.sched_entity** %9, align 8
  %98 = call i32 @wakeup_preempt_entity(%struct.sched_entity* %96, %struct.sched_entity* %97)
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %100, label %107

100:                                              ; preds = %87
  %101 = load i32, i32* %12, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = load %struct.sched_entity*, %struct.sched_entity** %9, align 8
  %105 = call i32 @set_next_buddy(%struct.sched_entity* %104)
  br label %106

106:                                              ; preds = %103, %100
  br label %108

107:                                              ; preds = %87
  br label %141

108:                                              ; preds = %106, %81
  %109 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %110 = call i32 @resched_task(%struct.task_struct* %109)
  %111 = load %struct.sched_entity*, %struct.sched_entity** %8, align 8
  %112 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %108
  %116 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %117 = load %struct.rq*, %struct.rq** %4, align 8
  %118 = getelementptr inbounds %struct.rq, %struct.rq* %117, i32 0, i32 0
  %119 = load %struct.task_struct*, %struct.task_struct** %118, align 8
  %120 = icmp eq %struct.task_struct* %116, %119
  br label %121

121:                                              ; preds = %115, %108
  %122 = phi i1 [ true, %108 ], [ %120, %115 ]
  %123 = zext i1 %122 to i32
  %124 = call i64 @unlikely(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  br label %141

127:                                              ; preds = %121
  %128 = load i32, i32* @LAST_BUDDY, align 4
  %129 = call i64 @sched_feat(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %141

131:                                              ; preds = %127
  %132 = load i32, i32* %11, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %131
  %135 = load %struct.sched_entity*, %struct.sched_entity** %8, align 8
  %136 = call i64 @entity_is_task(%struct.sched_entity* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %134
  %139 = load %struct.sched_entity*, %struct.sched_entity** %8, align 8
  %140 = call i32 @set_last_buddy(%struct.sched_entity* %139)
  br label %141

141:                                              ; preds = %34, %41, %61, %71, %86, %107, %126, %138, %134, %131, %127
  ret void
}

declare dso_local %struct.cfs_rq* @task_cfs_rq(%struct.task_struct*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @throttled_hierarchy(i32) #1

declare dso_local i32 @cfs_rq_of(%struct.sched_entity*) #1

declare dso_local i64 @sched_feat(i32) #1

declare dso_local i32 @set_next_buddy(%struct.sched_entity*) #1

declare dso_local i64 @test_tsk_need_resched(%struct.task_struct*) #1

declare dso_local i32 @update_curr(%struct.cfs_rq*) #1

declare dso_local i32 @find_matching_se(%struct.sched_entity**, %struct.sched_entity**) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @wakeup_preempt_entity(%struct.sched_entity*, %struct.sched_entity*) #1

declare dso_local i32 @resched_task(%struct.task_struct*) #1

declare dso_local i64 @entity_is_task(%struct.sched_entity*) #1

declare dso_local i32 @set_last_buddy(%struct.sched_entity*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
