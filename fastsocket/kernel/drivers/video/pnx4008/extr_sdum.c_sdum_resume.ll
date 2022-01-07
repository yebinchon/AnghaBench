; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/pnx4008/extr_sdum.c_sdum_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/pnx4008/extr_sdum.c_sdum_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.clk = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"dum_ck\00", align 1
@V_BAC_DISABLE_TRIG = common dso_local global i32 0, align 4
@DUM_CTRL = common dso_local global i32 0, align 4
@BAC_ENABLED = common dso_local global i32 0, align 4
@V_BAC_ENABLE = common dso_local global i32 0, align 4
@V_MUX_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sdum_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdum_resume(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = call %struct.clk* @clk_get(i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.clk* %5, %struct.clk** %4, align 8
  %6 = load %struct.clk*, %struct.clk** %4, align 8
  %7 = call i32 @IS_ERR(%struct.clk* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load %struct.clk*, %struct.clk** %4, align 8
  %11 = call i32 @clk_set_rate(%struct.clk* %10, i32 1)
  %12 = load %struct.clk*, %struct.clk** %4, align 8
  %13 = call i32 @clk_put(%struct.clk* %12)
  br label %17

14:                                               ; preds = %1
  %15 = load %struct.clk*, %struct.clk** %4, align 8
  %16 = call i32 @PTR_ERR(%struct.clk* %15)
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %14, %9
  %18 = load i32, i32* @V_BAC_DISABLE_TRIG, align 4
  store i32 %18, i32* @DUM_CTRL, align 4
  br label %19

19:                                               ; preds = %24, %17
  %20 = load i32, i32* @DUM_CTRL, align 4
  %21 = load i32, i32* @BAC_ENABLED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = call i32 @udelay(i32 10)
  br label %19

26:                                               ; preds = %19
  %27 = call i32 (...) @lcd_init()
  %28 = load i32, i32* @V_BAC_ENABLE, align 4
  store i32 %28, i32* @DUM_CTRL, align 4
  %29 = call i32 @udelay(i32 1)
  %30 = load i32, i32* @V_MUX_RESET, align 4
  store i32 %30, i32* @DUM_CTRL, align 4
  ret i32 0
}

declare dso_local %struct.clk* @clk_get(i32, i8*) #1

declare dso_local i32 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @clk_set_rate(%struct.clk*, i32) #1

declare dso_local i32 @clk_put(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @lcd_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
