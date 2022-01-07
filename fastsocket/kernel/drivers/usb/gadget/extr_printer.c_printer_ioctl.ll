; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_printer.c_printer_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_printer.c_printer_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.printer_dev* }
%struct.printer_dev = type { i32, i64 }

@.str = private unnamed_addr constant [37 x i8] c"printer_ioctl: cmd=0x%4.4x, arg=%lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"printer_ioctl: ERROR cmd=0x%4.4xis not supported\0A\00", align 1
@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i64)* @printer_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @printer_ioctl(%struct.file* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.printer_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load %struct.printer_dev*, %struct.printer_dev** %11, align 8
  store %struct.printer_dev* %12, %struct.printer_dev** %7, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.printer_dev*, %struct.printer_dev** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i64, i64* %6, align 8
  %16 = call i32 (%struct.printer_dev*, i8*, i32, ...) @DBG(%struct.printer_dev* %13, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %14, i64 %15)
  %17 = load %struct.printer_dev*, %struct.printer_dev** %7, align 8
  %18 = getelementptr inbounds %struct.printer_dev, %struct.printer_dev* %17, i32 0, i32 0
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load i32, i32* %5, align 4
  switch i32 %21, label %31 [
    i32 129, label %22
    i32 128, label %27
  ]

22:                                               ; preds = %3
  %23 = load %struct.printer_dev*, %struct.printer_dev** %7, align 8
  %24 = getelementptr inbounds %struct.printer_dev, %struct.printer_dev* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %9, align 4
  br label %37

27:                                               ; preds = %3
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.printer_dev*, %struct.printer_dev** %7, align 8
  %30 = getelementptr inbounds %struct.printer_dev, %struct.printer_dev* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  br label %37

31:                                               ; preds = %3
  %32 = load %struct.printer_dev*, %struct.printer_dev** %7, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 (%struct.printer_dev*, i8*, i32, ...) @DBG(%struct.printer_dev* %32, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @ENOTTY, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %31, %27, %22
  %38 = load %struct.printer_dev*, %struct.printer_dev** %7, align 8
  %39 = getelementptr inbounds %struct.printer_dev, %struct.printer_dev* %38, i32 0, i32 0
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  ret i64 %43
}

declare dso_local i32 @DBG(%struct.printer_dev*, i8*, i32, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
