; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597-hcd.c_r8a66597_check_syssts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597-hcd.c_r8a66597_check_syssts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8a66597 = type { i64 }

@SE0 = common dso_local global i64 0, align 8
@ATTCH = common dso_local global i32 0, align 4
@ATTCHE = common dso_local global i32 0, align 4
@FS_JSTS = common dso_local global i64 0, align 8
@HSE = common dso_local global i32 0, align 4
@LS_JSTS = common dso_local global i64 0, align 8
@DTCH = common dso_local global i32 0, align 4
@DTCHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8a66597*, i32, i64)* @r8a66597_check_syssts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r8a66597_check_syssts(%struct.r8a66597* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.r8a66597*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.r8a66597* %0, %struct.r8a66597** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @SE0, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %3
  %11 = load %struct.r8a66597*, %struct.r8a66597** %4, align 8
  %12 = load i32, i32* @ATTCH, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @get_intsts_reg(i32 %14)
  %16 = call i32 @r8a66597_write(%struct.r8a66597* %11, i32 %13, i32 %15)
  %17 = load %struct.r8a66597*, %struct.r8a66597** %4, align 8
  %18 = load i32, i32* @ATTCHE, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @get_intenb_reg(i32 %19)
  %21 = call i32 @r8a66597_bset(%struct.r8a66597* %17, i32 %18, i32 %20)
  br label %64

22:                                               ; preds = %3
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @FS_JSTS, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load %struct.r8a66597*, %struct.r8a66597** %4, align 8
  %28 = load i32, i32* @HSE, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @get_syscfg_reg(i32 %29)
  %31 = call i32 @r8a66597_bset(%struct.r8a66597* %27, i32 %28, i32 %30)
  br label %43

32:                                               ; preds = %22
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @LS_JSTS, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load %struct.r8a66597*, %struct.r8a66597** %4, align 8
  %38 = load i32, i32* @HSE, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @get_syscfg_reg(i32 %39)
  %41 = call i32 @r8a66597_bclr(%struct.r8a66597* %37, i32 %38, i32 %40)
  br label %42

42:                                               ; preds = %36, %32
  br label %43

43:                                               ; preds = %42, %26
  %44 = load %struct.r8a66597*, %struct.r8a66597** %4, align 8
  %45 = load i32, i32* @DTCH, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @get_intsts_reg(i32 %47)
  %49 = call i32 @r8a66597_write(%struct.r8a66597* %44, i32 %46, i32 %48)
  %50 = load %struct.r8a66597*, %struct.r8a66597** %4, align 8
  %51 = load i32, i32* @DTCHE, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @get_intenb_reg(i32 %52)
  %54 = call i32 @r8a66597_bset(%struct.r8a66597* %50, i32 %51, i32 %53)
  %55 = load %struct.r8a66597*, %struct.r8a66597** %4, align 8
  %56 = getelementptr inbounds %struct.r8a66597, %struct.r8a66597* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %43
  %60 = load %struct.r8a66597*, %struct.r8a66597** %4, align 8
  %61 = call i32 @r8a66597_to_hcd(%struct.r8a66597* %60)
  %62 = call i32 @usb_hcd_resume_root_hub(i32 %61)
  br label %63

63:                                               ; preds = %59, %43
  br label %64

64:                                               ; preds = %63, %10
  %65 = load %struct.r8a66597*, %struct.r8a66597** %4, align 8
  %66 = call i32 @r8a66597_to_hcd(%struct.r8a66597* %65)
  %67 = call i32 @usb_hcd_poll_rh_status(i32 %66)
  ret void
}

declare dso_local i32 @r8a66597_write(%struct.r8a66597*, i32, i32) #1

declare dso_local i32 @get_intsts_reg(i32) #1

declare dso_local i32 @r8a66597_bset(%struct.r8a66597*, i32, i32) #1

declare dso_local i32 @get_intenb_reg(i32) #1

declare dso_local i32 @get_syscfg_reg(i32) #1

declare dso_local i32 @r8a66597_bclr(%struct.r8a66597*, i32, i32) #1

declare dso_local i32 @usb_hcd_resume_root_hub(i32) #1

declare dso_local i32 @r8a66597_to_hcd(%struct.r8a66597*) #1

declare dso_local i32 @usb_hcd_poll_rh_status(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
