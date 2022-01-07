; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_driver.c_line6_send_raw_message.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_driver.c_line6_send_raw_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_line6 = type { i32, i32, i32, i64 }

@LINE6_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"usb_interrupt_msg failed (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @line6_send_raw_message(%struct.usb_line6* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.usb_line6*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.usb_line6* %0, %struct.usb_line6** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %57, %3
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %65

17:                                               ; preds = %13
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  store i8* %21, i8** %10, align 8
  %22 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %23 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = sub nsw i32 %25, %26
  %28 = call i32 @min(i64 %24, i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %30 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %33 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %36 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @usb_sndintpipe(i32 %34, i32 %37)
  %39 = load i8*, i8** %10, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @LINE6_TIMEOUT, align 4
  %42 = load i32, i32* @HZ, align 4
  %43 = mul nsw i32 %41, %42
  %44 = call i32 @usb_interrupt_msg(i32 %31, i32 %38, i8* %39, i32 %40, i32* %9, i32 %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %17
  %48 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %49 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @dev_err(i32 %50, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %65

53:                                               ; preds = %17
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %53
  %58 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %59 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %60
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %7, align 4
  br label %13

65:                                               ; preds = %47, %13
  %66 = load i32, i32* %8, align 4
  ret i32 %66
}

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @usb_interrupt_msg(i32, i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @usb_sndintpipe(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
