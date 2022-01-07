; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_mct_u232.c_mct_u232_calculate_baud_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_mct_u232.c_mct_u232_calculate_baud_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MCT_U232_SITECOM_PID = common dso_local global i64 0, align 8
@MCT_U232_BELKIN_F5U109_PID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial*, i32, i32*)* @mct_u232_calculate_baud_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mct_u232_calculate_baud_rate(%struct.usb_serial* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_serial*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.usb_serial* %0, %struct.usb_serial** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load i32, i32* %6, align 4
  %9 = load i32*, i32** %7, align 8
  store i32 %8, i32* %9, align 4
  %10 = load %struct.usb_serial*, %struct.usb_serial** %5, align 8
  %11 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @le16_to_cpu(i32 %15)
  %17 = load i64, i64* @MCT_U232_SITECOM_PID, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %29, label %19

19:                                               ; preds = %3
  %20 = load %struct.usb_serial*, %struct.usb_serial** %5, align 8
  %21 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @le16_to_cpu(i32 %25)
  %27 = load i64, i64* @MCT_U232_BELKIN_F5U109_PID, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %19, %3
  %30 = load i32, i32* %6, align 4
  switch i32 %30, label %41 [
    i32 300, label %31
    i32 600, label %32
    i32 1200, label %33
    i32 2400, label %34
    i32 4800, label %35
    i32 9600, label %36
    i32 19200, label %37
    i32 38400, label %38
    i32 57600, label %39
    i32 115200, label %40
  ]

31:                                               ; preds = %29
  store i32 1, i32* %4, align 4
  br label %60

32:                                               ; preds = %29
  store i32 2, i32* %4, align 4
  br label %60

33:                                               ; preds = %29
  store i32 3, i32* %4, align 4
  br label %60

34:                                               ; preds = %29
  store i32 4, i32* %4, align 4
  br label %60

35:                                               ; preds = %29
  store i32 6, i32* %4, align 4
  br label %60

36:                                               ; preds = %29
  store i32 8, i32* %4, align 4
  br label %60

37:                                               ; preds = %29
  store i32 9, i32* %4, align 4
  br label %60

38:                                               ; preds = %29
  store i32 10, i32* %4, align 4
  br label %60

39:                                               ; preds = %29
  store i32 11, i32* %4, align 4
  br label %60

40:                                               ; preds = %29
  store i32 12, i32* %4, align 4
  br label %60

41:                                               ; preds = %29
  %42 = load i32*, i32** %7, align 8
  store i32 9600, i32* %42, align 4
  store i32 8, i32* %4, align 4
  br label %60

43:                                               ; preds = %19
  %44 = load i32, i32* %6, align 4
  switch i32 %44, label %55 [
    i32 300, label %45
    i32 600, label %46
    i32 1200, label %47
    i32 2400, label %48
    i32 4800, label %49
    i32 9600, label %50
    i32 19200, label %51
    i32 38400, label %52
    i32 57600, label %53
    i32 115200, label %54
  ]

45:                                               ; preds = %43
  br label %57

46:                                               ; preds = %43
  br label %57

47:                                               ; preds = %43
  br label %57

48:                                               ; preds = %43
  br label %57

49:                                               ; preds = %43
  br label %57

50:                                               ; preds = %43
  br label %57

51:                                               ; preds = %43
  br label %57

52:                                               ; preds = %43
  br label %57

53:                                               ; preds = %43
  br label %57

54:                                               ; preds = %43
  br label %57

55:                                               ; preds = %43
  store i32 9600, i32* %6, align 4
  %56 = load i32*, i32** %7, align 8
  store i32 9600, i32* %56, align 4
  br label %57

57:                                               ; preds = %55, %54, %53, %52, %51, %50, %49, %48, %47, %46, %45
  %58 = load i32, i32* %6, align 4
  %59 = sdiv i32 115200, %58
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %57, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i64 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
