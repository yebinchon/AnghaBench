; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched_fair.c_enqueue_entity.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched_fair.c_enqueue_entity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfs_rq = type { i32, %struct.sched_entity*, i64 }
%struct.sched_entity = type { i32, i32 }

@ENQUEUE_WAKEUP = common dso_local global i32 0, align 4
@ENQUEUE_WAKING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfs_rq*, %struct.sched_entity*, i32)* @enqueue_entity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enqueue_entity(%struct.cfs_rq* %0, %struct.sched_entity* %1, i32 %2) #0 {
  %4 = alloca %struct.cfs_rq*, align 8
  %5 = alloca %struct.sched_entity*, align 8
  %6 = alloca i32, align 4
  store %struct.cfs_rq* %0, %struct.cfs_rq** %4, align 8
  store %struct.sched_entity* %1, %struct.sched_entity** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @ENQUEUE_WAKEUP, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @ENQUEUE_WAKING, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %11, %3
  %17 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %18 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %21 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %19
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %21, align 4
  br label %26

26:                                               ; preds = %16, %11
  %27 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %28 = call i32 @update_curr(%struct.cfs_rq* %27)
  %29 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %30 = call i32 @update_cfs_load(%struct.cfs_rq* %29, i32 0)
  %31 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %32 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %33 = call i32 @account_entity_enqueue(%struct.cfs_rq* %31, %struct.sched_entity* %32)
  %34 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %35 = call i32 @update_cfs_shares(%struct.cfs_rq* %34)
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @ENQUEUE_WAKEUP, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %26
  %41 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %42 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %43 = call i32 @place_entity(%struct.cfs_rq* %41, %struct.sched_entity* %42, i32 0)
  %44 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %45 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %46 = call i32 @enqueue_sleeper(%struct.cfs_rq* %44, %struct.sched_entity* %45)
  br label %47

47:                                               ; preds = %40, %26
  %48 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %49 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %50 = call i32 @update_stats_enqueue(%struct.cfs_rq* %48, %struct.sched_entity* %49)
  %51 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %52 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %53 = call i32 @check_spread(%struct.cfs_rq* %51, %struct.sched_entity* %52)
  %54 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %55 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %56 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %55, i32 0, i32 1
  %57 = load %struct.sched_entity*, %struct.sched_entity** %56, align 8
  %58 = icmp ne %struct.sched_entity* %54, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %47
  %60 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %61 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %62 = call i32 @__enqueue_entity(%struct.cfs_rq* %60, %struct.sched_entity* %61)
  br label %63

63:                                               ; preds = %59, %47
  %64 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %65 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %64, i32 0, i32 0
  store i32 1, i32* %65, align 4
  %66 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %67 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %75

70:                                               ; preds = %63
  %71 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %72 = call i32 @list_add_leaf_cfs_rq(%struct.cfs_rq* %71)
  %73 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %74 = call i32 @check_enqueue_throttle(%struct.cfs_rq* %73)
  br label %75

75:                                               ; preds = %70, %63
  ret void
}

declare dso_local i32 @update_curr(%struct.cfs_rq*) #1

declare dso_local i32 @update_cfs_load(%struct.cfs_rq*, i32) #1

declare dso_local i32 @account_entity_enqueue(%struct.cfs_rq*, %struct.sched_entity*) #1

declare dso_local i32 @update_cfs_shares(%struct.cfs_rq*) #1

declare dso_local i32 @place_entity(%struct.cfs_rq*, %struct.sched_entity*, i32) #1

declare dso_local i32 @enqueue_sleeper(%struct.cfs_rq*, %struct.sched_entity*) #1

declare dso_local i32 @update_stats_enqueue(%struct.cfs_rq*, %struct.sched_entity*) #1

declare dso_local i32 @check_spread(%struct.cfs_rq*, %struct.sched_entity*) #1

declare dso_local i32 @__enqueue_entity(%struct.cfs_rq*, %struct.sched_entity*) #1

declare dso_local i32 @list_add_leaf_cfs_rq(%struct.cfs_rq*) #1

declare dso_local i32 @check_enqueue_throttle(%struct.cfs_rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
