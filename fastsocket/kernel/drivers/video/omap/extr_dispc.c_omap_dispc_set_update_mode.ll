; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_dispc.c_omap_dispc_set_update_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_dispc.c_omap_dispc_set_update_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@dispc = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [32 x i8] c"timeout waiting for FRAME DONE\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @omap_dispc_set_update_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_dispc_set_update_mode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dispc, i32 0, i32 0), align 8
  %6 = icmp ne i32 %4, %5
  br i1 %6, label %7, label %31

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  switch i32 %8, label %27 [
    i32 130, label %9
    i32 129, label %9
    i32 128, label %13
  ]

9:                                                ; preds = %7, %7
  %10 = call i32 @enable_lcd_clocks(i32 1)
  %11 = call i32 @omap_dispc_enable_lcd_out(i32 1)
  %12 = load i32, i32* %2, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dispc, i32 0, i32 0), align 8
  br label %30

13:                                               ; preds = %7
  %14 = call i32 @init_completion(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dispc, i32 0, i32 2))
  %15 = call i32 @omap_dispc_enable_lcd_out(i32 0)
  %16 = call i32 @msecs_to_jiffies(i32 500)
  %17 = call i32 @wait_for_completion_timeout(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dispc, i32 0, i32 2), i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %13
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dispc, i32 0, i32 1), align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %19, %13
  %25 = load i32, i32* %2, align 4
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dispc, i32 0, i32 0), align 8
  %26 = call i32 @enable_lcd_clocks(i32 0)
  br label %30

27:                                               ; preds = %7
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %27, %24, %9
  br label %31

31:                                               ; preds = %30, %1
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @enable_lcd_clocks(i32) #1

declare dso_local i32 @omap_dispc_enable_lcd_out(i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
