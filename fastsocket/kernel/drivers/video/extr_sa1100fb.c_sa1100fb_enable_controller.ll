; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sa1100fb.c_sa1100fb_enable_controller.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sa1100fb.c_sa1100fb_enable_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa1100fb_info = type { i32*, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Enabling LCD controller\0A\00", align 1
@LCCR3 = common dso_local global i32 0, align 4
@LCCR2 = common dso_local global i32 0, align 4
@LCCR1 = common dso_local global i32 0, align 4
@LCCR0_LEN = common dso_local global i32 0, align 4
@LCCR0 = common dso_local global i32 0, align 4
@DBAR1 = common dso_local global i32 0, align 4
@DBAR2 = common dso_local global i32 0, align 4
@SHANNON_GPIO_DISP_EN = common dso_local global i32 0, align 4
@GPDR = common dso_local global i32 0, align 4
@GPSR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"DBAR1 = 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"DBAR2 = 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"LCCR0 = 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"LCCR1 = 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"LCCR2 = 0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"LCCR3 = 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sa1100fb_info*)* @sa1100fb_enable_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sa1100fb_enable_controller(%struct.sa1100fb_info* %0) #0 {
  %2 = alloca %struct.sa1100fb_info*, align 8
  store %struct.sa1100fb_info* %0, %struct.sa1100fb_info** %2, align 8
  %3 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %2, align 8
  %5 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = and i32 %8, 53247
  store i32 %9, i32* %7, align 4
  %10 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %2, align 8
  %11 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @palette_pbs(i32* %12)
  %14 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %2, align 8
  %15 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %13
  store i32 %19, i32* %17, align 4
  %20 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %2, align 8
  %21 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* @LCCR3, align 4
  %23 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %2, align 8
  %24 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* @LCCR2, align 4
  %26 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %2, align 8
  %27 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* @LCCR1, align 4
  %29 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %2, align 8
  %30 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @LCCR0_LEN, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  store i32 %34, i32* @LCCR0, align 4
  %35 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %2, align 8
  %36 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* @DBAR1, align 4
  %38 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %2, align 8
  %39 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* @DBAR2, align 4
  %41 = load i32, i32* @LCCR0_LEN, align 4
  %42 = load i32, i32* @LCCR0, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* @LCCR0, align 4
  %44 = call i64 (...) @machine_is_shannon()
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %1
  %47 = load i32, i32* @SHANNON_GPIO_DISP_EN, align 4
  %48 = load i32, i32* @GPDR, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* @GPDR, align 4
  %50 = load i32, i32* @SHANNON_GPIO_DISP_EN, align 4
  %51 = load i32, i32* @GPSR, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* @GPSR, align 4
  br label %53

53:                                               ; preds = %46, %1
  %54 = load i32, i32* @DBAR1, align 4
  %55 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @DBAR2, align 4
  %57 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @LCCR0, align 4
  %59 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @LCCR1, align 4
  %61 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @LCCR2, align 4
  %63 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @LCCR3, align 4
  %65 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %64)
  ret void
}

declare dso_local i32 @DPRINTK(i8*, ...) #1

declare dso_local i32 @palette_pbs(i32*) #1

declare dso_local i64 @machine_is_shannon(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
