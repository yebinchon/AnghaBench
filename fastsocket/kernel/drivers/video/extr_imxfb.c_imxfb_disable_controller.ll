; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_imxfb.c_imxfb_disable_controller.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_imxfb.c_imxfb_disable_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imxfb_info = type { i64, i32, i32 (i32)*, i32 (i32)* }

@.str = private unnamed_addr constant [26 x i8] c"Disabling LCD controller\0A\00", align 1
@LCDC_RMCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imxfb_info*)* @imxfb_disable_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imxfb_disable_controller(%struct.imxfb_info* %0) #0 {
  %2 = alloca %struct.imxfb_info*, align 8
  store %struct.imxfb_info* %0, %struct.imxfb_info** %2, align 8
  %3 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.imxfb_info*, %struct.imxfb_info** %2, align 8
  %5 = getelementptr inbounds %struct.imxfb_info, %struct.imxfb_info* %4, i32 0, i32 3
  %6 = load i32 (i32)*, i32 (i32)** %5, align 8
  %7 = icmp ne i32 (i32)* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.imxfb_info*, %struct.imxfb_info** %2, align 8
  %10 = getelementptr inbounds %struct.imxfb_info, %struct.imxfb_info* %9, i32 0, i32 3
  %11 = load i32 (i32)*, i32 (i32)** %10, align 8
  %12 = call i32 %11(i32 0)
  br label %13

13:                                               ; preds = %8, %1
  %14 = load %struct.imxfb_info*, %struct.imxfb_info** %2, align 8
  %15 = getelementptr inbounds %struct.imxfb_info, %struct.imxfb_info* %14, i32 0, i32 2
  %16 = load i32 (i32)*, i32 (i32)** %15, align 8
  %17 = icmp ne i32 (i32)* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.imxfb_info*, %struct.imxfb_info** %2, align 8
  %20 = getelementptr inbounds %struct.imxfb_info, %struct.imxfb_info* %19, i32 0, i32 2
  %21 = load i32 (i32)*, i32 (i32)** %20, align 8
  %22 = call i32 %21(i32 0)
  br label %23

23:                                               ; preds = %18, %13
  %24 = load %struct.imxfb_info*, %struct.imxfb_info** %2, align 8
  %25 = getelementptr inbounds %struct.imxfb_info, %struct.imxfb_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @clk_disable(i32 %26)
  %28 = load %struct.imxfb_info*, %struct.imxfb_info** %2, align 8
  %29 = getelementptr inbounds %struct.imxfb_info, %struct.imxfb_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @LCDC_RMCR, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writel(i32 0, i64 %32)
  ret void
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
