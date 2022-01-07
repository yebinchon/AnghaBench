; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/irq/extr_manage.c_irq_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/irq/extr_manage.c_irq_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.irqaction* }
%struct.irqaction = type { i32, i32, i32 (i32, i32)* }
%struct.sched_param = type { i32 }
%struct.irq_desc = type { i32, i32, i32, i32 }

@MAX_USER_RT_PRIO = common dso_local global i32 0, align 4
@IRQ_ONESHOT = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_3__* null, align 8
@SCHED_FIFO = common dso_local global i32 0, align 4
@IRQ_DISABLED = common dso_local global i32 0, align 4
@IRQ_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @irq_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @irq_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sched_param, align 4
  %4 = alloca %struct.irqaction*, align 8
  %5 = alloca %struct.irq_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %3, i32 0, i32 0
  %9 = load i32, i32* @MAX_USER_RT_PRIO, align 4
  %10 = sdiv i32 %9, 2
  store i32 %10, i32* %8, align 4
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.irqaction*
  store %struct.irqaction* %12, %struct.irqaction** %4, align 8
  %13 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %14 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.irq_desc* @irq_to_desc(i32 %15)
  store %struct.irq_desc* %16, %struct.irq_desc** %5, align 8
  %17 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %18 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IRQ_ONESHOT, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %7, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %23 = load i32, i32* @SCHED_FIFO, align 4
  %24 = call i32 @sched_setscheduler(%struct.TYPE_3__* %22, i32 %23, %struct.sched_param* %3)
  %25 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store %struct.irqaction* %25, %struct.irqaction** %27, align 8
  br label %28

28:                                               ; preds = %97, %1
  %29 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %30 = call i32 @irq_wait_for_interrupt(%struct.irqaction* %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br i1 %32, label %33, label %98

33:                                               ; preds = %28
  %34 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %35 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %36 = call i32 @irq_thread_check_affinity(%struct.irq_desc* %34, %struct.irqaction* %35)
  %37 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %38 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %37, i32 0, i32 2
  %39 = call i32 @atomic_inc(i32* %38)
  %40 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %41 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %40, i32 0, i32 3
  %42 = call i32 @spin_lock_irq(i32* %41)
  %43 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %44 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @IRQ_DISABLED, align 4
  %47 = and i32 %45, %46
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %33
  %51 = load i32, i32* @IRQ_PENDING, align 4
  %52 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %53 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %57 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %56, i32 0, i32 3
  %58 = call i32 @spin_unlock_irq(i32* %57)
  br label %82

59:                                               ; preds = %33
  %60 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %61 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %60, i32 0, i32 3
  %62 = call i32 @spin_unlock_irq(i32* %61)
  %63 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %64 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %63, i32 0, i32 2
  %65 = load i32 (i32, i32)*, i32 (i32, i32)** %64, align 8
  %66 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %67 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %70 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 %65(i32 %68, i32 %71)
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %59
  %76 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %77 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %80 = call i32 @irq_finalize_oneshot(i32 %78, %struct.irq_desc* %79)
  br label %81

81:                                               ; preds = %75, %59
  br label %82

82:                                               ; preds = %81, %50
  %83 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %84 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %83, i32 0, i32 2
  %85 = call i32 @atomic_dec_and_test(i32* %84)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %82
  %89 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %90 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %89, i32 0, i32 1
  %91 = call i64 @waitqueue_active(i32* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %95 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %94, i32 0, i32 1
  %96 = call i32 @wake_up(i32* %95)
  br label %97

97:                                               ; preds = %93, %88, %82
  br label %28

98:                                               ; preds = %28
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  store %struct.irqaction* null, %struct.irqaction** %100, align 8
  ret i32 0
}

declare dso_local %struct.irq_desc* @irq_to_desc(i32) #1

declare dso_local i32 @sched_setscheduler(%struct.TYPE_3__*, i32, %struct.sched_param*) #1

declare dso_local i32 @irq_wait_for_interrupt(%struct.irqaction*) #1

declare dso_local i32 @irq_thread_check_affinity(%struct.irq_desc*, %struct.irqaction*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @irq_finalize_oneshot(i32, %struct.irq_desc*) #1

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
