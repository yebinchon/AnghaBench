; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_devio.c_check_ctrlrecip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_devio.c_check_ctrlrecip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@USB_STATE_UNAUTHENTICATED = common dso_local global i64 0, align 8
@USB_STATE_ADDRESS = common dso_local global i64 0, align 8
@USB_STATE_CONFIGURED = common dso_local global i64 0, align 8
@EHOSTUNREACH = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_TYPE_MASK = common dso_local global i32 0, align 4
@USB_RECIP_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dev_state*, i32, i32)* @check_ctrlrecip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_ctrlrecip(%struct.dev_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dev_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dev_state* %0, %struct.dev_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.dev_state*, %struct.dev_state** %5, align 8
  %10 = getelementptr inbounds %struct.dev_state, %struct.dev_state* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @USB_STATE_UNAUTHENTICATED, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %35

16:                                               ; preds = %3
  %17 = load %struct.dev_state*, %struct.dev_state** %5, align 8
  %18 = getelementptr inbounds %struct.dev_state, %struct.dev_state* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @USB_STATE_ADDRESS, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %16
  %25 = load %struct.dev_state*, %struct.dev_state** %5, align 8
  %26 = getelementptr inbounds %struct.dev_state, %struct.dev_state* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @USB_STATE_CONFIGURED, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i32, i32* @EHOSTUNREACH, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %67

35:                                               ; preds = %24, %16, %3
  %36 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %37 = load i32, i32* @USB_TYPE_MASK, align 4
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %67

42:                                               ; preds = %35
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, 255
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @USB_RECIP_MASK, align 4
  %47 = and i32 %45, %46
  switch i32 %47, label %65 [
    i32 129, label %48
    i32 128, label %61
  ]

48:                                               ; preds = %42
  %49 = load %struct.dev_state*, %struct.dev_state** %5, align 8
  %50 = getelementptr inbounds %struct.dev_state, %struct.dev_state* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @findintfep(%struct.TYPE_2__* %51, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load %struct.dev_state*, %struct.dev_state** %5, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @checkintf(%struct.dev_state* %57, i32 %58)
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %56, %48
  br label %65

61:                                               ; preds = %42
  %62 = load %struct.dev_state*, %struct.dev_state** %5, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @checkintf(%struct.dev_state* %62, i32 %63)
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %42, %61, %60
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %65, %41, %32
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @findintfep(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @checkintf(%struct.dev_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
