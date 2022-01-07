; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_ch341.c_ch341_set_baudrate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_ch341.c_ch341_set_baudrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.ch341_private = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"ch341_set_baudrate(%d)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CH341_BAUDBASE_FACTOR = common dso_local global i64 0, align 8
@CH341_BAUDBASE_DIVMAX = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, %struct.ch341_private*)* @ch341_set_baudrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ch341_set_baudrate(%struct.usb_device* %0, %struct.ch341_private* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.ch341_private*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i16, align 2
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.ch341_private* %1, %struct.ch341_private** %5, align 8
  %11 = load %struct.ch341_private*, %struct.ch341_private** %5, align 8
  %12 = getelementptr inbounds %struct.ch341_private, %struct.ch341_private* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @dbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load %struct.ch341_private*, %struct.ch341_private** %5, align 8
  %16 = getelementptr inbounds %struct.ch341_private, %struct.ch341_private* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %72

22:                                               ; preds = %2
  %23 = load i64, i64* @CH341_BAUDBASE_FACTOR, align 8
  %24 = load %struct.ch341_private*, %struct.ch341_private** %5, align 8
  %25 = getelementptr inbounds %struct.ch341_private, %struct.ch341_private* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = udiv i64 %23, %26
  store i64 %27, i64* %9, align 8
  %28 = load i16, i16* @CH341_BAUDBASE_DIVMAX, align 2
  store i16 %28, i16* %10, align 2
  br label %29

29:                                               ; preds = %38, %22
  %30 = load i64, i64* %9, align 8
  %31 = icmp ugt i64 %30, 65520
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i16, i16* %10, align 2
  %34 = sext i16 %33 to i32
  %35 = icmp ne i32 %34, 0
  br label %36

36:                                               ; preds = %32, %29
  %37 = phi i1 [ false, %29 ], [ %35, %32 ]
  br i1 %37, label %38, label %43

38:                                               ; preds = %36
  %39 = load i64, i64* %9, align 8
  %40 = lshr i64 %39, 3
  store i64 %40, i64* %9, align 8
  %41 = load i16, i16* %10, align 2
  %42 = add i16 %41, -1
  store i16 %42, i16* %10, align 2
  br label %29

43:                                               ; preds = %36
  %44 = load i64, i64* %9, align 8
  %45 = icmp ugt i64 %44, 65520
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %72

49:                                               ; preds = %43
  %50 = load i64, i64* %9, align 8
  %51 = sub i64 65536, %50
  store i64 %51, i64* %9, align 8
  %52 = load i64, i64* %9, align 8
  %53 = and i64 %52, 65280
  %54 = load i16, i16* %10, align 2
  %55 = sext i16 %54 to i64
  %56 = or i64 %53, %55
  %57 = trunc i64 %56 to i16
  store i16 %57, i16* %6, align 2
  %58 = load i64, i64* %9, align 8
  %59 = and i64 %58, 255
  %60 = trunc i64 %59 to i16
  store i16 %60, i16* %7, align 2
  %61 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %62 = load i16, i16* %6, align 2
  %63 = call i32 @ch341_control_out(%struct.usb_device* %61, i32 154, i32 4882, i16 signext %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %49
  %67 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %68 = load i16, i16* %7, align 2
  %69 = call i32 @ch341_control_out(%struct.usb_device* %67, i32 154, i32 3884, i16 signext %68)
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %66, %49
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %46, %19
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @dbg(i8*, i64) #1

declare dso_local i32 @ch341_control_out(%struct.usb_device*, i32, i32, i16 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
