; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sa1100fb.c_sa1100fb_disable_controller.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sa1100fb.c_sa1100fb_disable_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa1100fb_info = type { i32 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Disabling LCD controller\0A\00", align 1
@SHANNON_GPIO_DISP_EN = common dso_local global i32 0, align 4
@GPCR = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@LCSR = common dso_local global i32 0, align 4
@LCCR0_LDM = common dso_local global i32 0, align 4
@LCCR0 = common dso_local global i32 0, align 4
@LCCR0_LEN = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sa1100fb_info*)* @sa1100fb_disable_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sa1100fb_disable_controller(%struct.sa1100fb_info* %0) #0 {
  %2 = alloca %struct.sa1100fb_info*, align 8
  store %struct.sa1100fb_info* %0, %struct.sa1100fb_info** %2, align 8
  %3 = load i32, i32* @wait, align 4
  %4 = load i32, i32* @current, align 4
  %5 = call i32 @DECLARE_WAITQUEUE(i32 %3, i32 %4)
  %6 = call i32 @DPRINTK(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %7 = call i64 (...) @machine_is_shannon()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @SHANNON_GPIO_DISP_EN, align 4
  %11 = load i32, i32* @GPCR, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* @GPCR, align 4
  br label %13

13:                                               ; preds = %9, %1
  %14 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %15 = call i32 @set_current_state(i32 %14)
  %16 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %2, align 8
  %17 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %16, i32 0, i32 0
  %18 = call i32 @add_wait_queue(i32* %17, i32* @wait)
  store i32 -1, i32* @LCSR, align 4
  %19 = load i32, i32* @LCCR0_LDM, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* @LCCR0, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* @LCCR0, align 4
  %23 = load i32, i32* @LCCR0_LEN, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* @LCCR0, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* @LCCR0, align 4
  %27 = load i32, i32* @HZ, align 4
  %28 = mul nsw i32 20, %27
  %29 = sdiv i32 %28, 1000
  %30 = call i32 @schedule_timeout(i32 %29)
  %31 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %2, align 8
  %32 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %31, i32 0, i32 0
  %33 = call i32 @remove_wait_queue(i32* %32, i32* @wait)
  ret void
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local i64 @machine_is_shannon(...) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
