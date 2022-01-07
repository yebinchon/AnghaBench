; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_timer.c_snd_timer_instance_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_timer.c_snd_timer_instance_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_timer_instance = type { %struct.snd_timer_instance*, %struct.snd_timer*, i32, i32, i32, i32, i32 }
%struct.snd_timer = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.snd_timer_instance* (i8*, %struct.snd_timer*)* @snd_timer_instance_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.snd_timer_instance* @snd_timer_instance_new(i8* %0, %struct.snd_timer* %1) #0 {
  %3 = alloca %struct.snd_timer_instance*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.snd_timer*, align 8
  %6 = alloca %struct.snd_timer_instance*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.snd_timer* %1, %struct.snd_timer** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.snd_timer_instance* @kzalloc(i32 40, i32 %7)
  store %struct.snd_timer_instance* %8, %struct.snd_timer_instance** %6, align 8
  %9 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %6, align 8
  %10 = icmp eq %struct.snd_timer_instance* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.snd_timer_instance* null, %struct.snd_timer_instance** %3, align 8
  br label %61

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.snd_timer_instance* @kstrdup(i8* %13, i32 %14)
  %16 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %6, align 8
  %17 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %16, i32 0, i32 0
  store %struct.snd_timer_instance* %15, %struct.snd_timer_instance** %17, align 8
  %18 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %6, align 8
  %19 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %18, i32 0, i32 0
  %20 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %19, align 8
  %21 = icmp ne %struct.snd_timer_instance* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %12
  %23 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %6, align 8
  %24 = call i32 @kfree(%struct.snd_timer_instance* %23)
  store %struct.snd_timer_instance* null, %struct.snd_timer_instance** %3, align 8
  br label %61

25:                                               ; preds = %12
  %26 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %6, align 8
  %27 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %26, i32 0, i32 6
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %6, align 8
  %30 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %29, i32 0, i32 5
  %31 = call i32 @INIT_LIST_HEAD(i32* %30)
  %32 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %6, align 8
  %33 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %32, i32 0, i32 4
  %34 = call i32 @INIT_LIST_HEAD(i32* %33)
  %35 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %6, align 8
  %36 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %35, i32 0, i32 3
  %37 = call i32 @INIT_LIST_HEAD(i32* %36)
  %38 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %6, align 8
  %39 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %38, i32 0, i32 2
  %40 = call i32 @INIT_LIST_HEAD(i32* %39)
  %41 = load %struct.snd_timer*, %struct.snd_timer** %5, align 8
  %42 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %6, align 8
  %43 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %42, i32 0, i32 1
  store %struct.snd_timer* %41, %struct.snd_timer** %43, align 8
  %44 = load %struct.snd_timer*, %struct.snd_timer** %5, align 8
  %45 = icmp ne %struct.snd_timer* %44, null
  br i1 %45, label %46, label %59

46:                                               ; preds = %25
  %47 = load %struct.snd_timer*, %struct.snd_timer** %5, align 8
  %48 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @try_module_get(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %46
  %53 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %6, align 8
  %54 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %53, i32 0, i32 0
  %55 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %54, align 8
  %56 = call i32 @kfree(%struct.snd_timer_instance* %55)
  %57 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %6, align 8
  %58 = call i32 @kfree(%struct.snd_timer_instance* %57)
  store %struct.snd_timer_instance* null, %struct.snd_timer_instance** %3, align 8
  br label %61

59:                                               ; preds = %46, %25
  %60 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %6, align 8
  store %struct.snd_timer_instance* %60, %struct.snd_timer_instance** %3, align 8
  br label %61

61:                                               ; preds = %59, %52, %22, %11
  %62 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %3, align 8
  ret %struct.snd_timer_instance* %62
}

declare dso_local %struct.snd_timer_instance* @kzalloc(i32, i32) #1

declare dso_local %struct.snd_timer_instance* @kstrdup(i8*, i32) #1

declare dso_local i32 @kfree(%struct.snd_timer_instance*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @try_module_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
