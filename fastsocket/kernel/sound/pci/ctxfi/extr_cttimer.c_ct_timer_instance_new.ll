; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_cttimer.c_ct_timer_instance_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_cttimer.c_ct_timer_instance_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_timer_instance = type { i32, i32, %struct.ct_atc_pcm*, %struct.ct_timer*, i32, i32 }
%struct.ct_timer = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ct_timer_instance*)* }
%struct.ct_atc_pcm = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ct_timer_instance* @ct_timer_instance_new(%struct.ct_timer* %0, %struct.ct_atc_pcm* %1) #0 {
  %3 = alloca %struct.ct_timer_instance*, align 8
  %4 = alloca %struct.ct_timer*, align 8
  %5 = alloca %struct.ct_atc_pcm*, align 8
  %6 = alloca %struct.ct_timer_instance*, align 8
  store %struct.ct_timer* %0, %struct.ct_timer** %4, align 8
  store %struct.ct_atc_pcm* %1, %struct.ct_atc_pcm** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.ct_timer_instance* @kzalloc(i32 32, i32 %7)
  store %struct.ct_timer_instance* %8, %struct.ct_timer_instance** %6, align 8
  %9 = load %struct.ct_timer_instance*, %struct.ct_timer_instance** %6, align 8
  %10 = icmp ne %struct.ct_timer_instance* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.ct_timer_instance* null, %struct.ct_timer_instance** %3, align 8
  br label %60

12:                                               ; preds = %2
  %13 = load %struct.ct_timer_instance*, %struct.ct_timer_instance** %6, align 8
  %14 = getelementptr inbounds %struct.ct_timer_instance, %struct.ct_timer_instance* %13, i32 0, i32 5
  %15 = call i32 @spin_lock_init(i32* %14)
  %16 = load %struct.ct_timer_instance*, %struct.ct_timer_instance** %6, align 8
  %17 = getelementptr inbounds %struct.ct_timer_instance, %struct.ct_timer_instance* %16, i32 0, i32 0
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.ct_timer_instance*, %struct.ct_timer_instance** %6, align 8
  %20 = getelementptr inbounds %struct.ct_timer_instance, %struct.ct_timer_instance* %19, i32 0, i32 4
  %21 = call i32 @INIT_LIST_HEAD(i32* %20)
  %22 = load %struct.ct_timer*, %struct.ct_timer** %4, align 8
  %23 = load %struct.ct_timer_instance*, %struct.ct_timer_instance** %6, align 8
  %24 = getelementptr inbounds %struct.ct_timer_instance, %struct.ct_timer_instance* %23, i32 0, i32 3
  store %struct.ct_timer* %22, %struct.ct_timer** %24, align 8
  %25 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %26 = load %struct.ct_timer_instance*, %struct.ct_timer_instance** %6, align 8
  %27 = getelementptr inbounds %struct.ct_timer_instance, %struct.ct_timer_instance* %26, i32 0, i32 2
  store %struct.ct_atc_pcm* %25, %struct.ct_atc_pcm** %27, align 8
  %28 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %29 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ct_timer_instance*, %struct.ct_timer_instance** %6, align 8
  %32 = getelementptr inbounds %struct.ct_timer_instance, %struct.ct_timer_instance* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.ct_timer*, %struct.ct_timer** %4, align 8
  %34 = getelementptr inbounds %struct.ct_timer, %struct.ct_timer* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (%struct.ct_timer_instance*)*, i32 (%struct.ct_timer_instance*)** %36, align 8
  %38 = icmp ne i32 (%struct.ct_timer_instance*)* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %12
  %40 = load %struct.ct_timer*, %struct.ct_timer** %4, align 8
  %41 = getelementptr inbounds %struct.ct_timer, %struct.ct_timer* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32 (%struct.ct_timer_instance*)*, i32 (%struct.ct_timer_instance*)** %43, align 8
  %45 = load %struct.ct_timer_instance*, %struct.ct_timer_instance** %6, align 8
  %46 = call i32 %44(%struct.ct_timer_instance* %45)
  br label %47

47:                                               ; preds = %39, %12
  %48 = load %struct.ct_timer*, %struct.ct_timer** %4, align 8
  %49 = getelementptr inbounds %struct.ct_timer, %struct.ct_timer* %48, i32 0, i32 0
  %50 = call i32 @spin_lock_irq(i32* %49)
  %51 = load %struct.ct_timer_instance*, %struct.ct_timer_instance** %6, align 8
  %52 = getelementptr inbounds %struct.ct_timer_instance, %struct.ct_timer_instance* %51, i32 0, i32 0
  %53 = load %struct.ct_timer*, %struct.ct_timer** %4, align 8
  %54 = getelementptr inbounds %struct.ct_timer, %struct.ct_timer* %53, i32 0, i32 1
  %55 = call i32 @list_add(i32* %52, i32* %54)
  %56 = load %struct.ct_timer*, %struct.ct_timer** %4, align 8
  %57 = getelementptr inbounds %struct.ct_timer, %struct.ct_timer* %56, i32 0, i32 0
  %58 = call i32 @spin_unlock_irq(i32* %57)
  %59 = load %struct.ct_timer_instance*, %struct.ct_timer_instance** %6, align 8
  store %struct.ct_timer_instance* %59, %struct.ct_timer_instance** %3, align 8
  br label %60

60:                                               ; preds = %47, %11
  %61 = load %struct.ct_timer_instance*, %struct.ct_timer_instance** %3, align 8
  ret %struct.ct_timer_instance* %61
}

declare dso_local %struct.ct_timer_instance* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
