; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_ark3116.c_ARK3116_RCV.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_ark3116.c_ARK3116_RCV.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"%03d < %d bytes [0x%02X]\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%03d < 0 bytes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_serial*, i32, i32, i32, i32, i32, i32, i8*)* @ARK3116_RCV to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ARK3116_RCV(%struct.usb_serial* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i8* %7) #0 {
  %9 = alloca %struct.usb_serial*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.usb_serial* %0, %struct.usb_serial** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i8* %7, i8** %16, align 8
  %18 = load %struct.usb_serial*, %struct.usb_serial** %9, align 8
  %19 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.usb_serial*, %struct.usb_serial** %9, align 8
  %22 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @usb_rcvctrlpipe(i32 %23, i32 0)
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* %14, align 4
  %29 = load i8*, i8** %16, align 8
  %30 = call i32 @usb_control_msg(i32 %20, i32 %24, i32 %25, i32 %26, i32 %27, i32 %28, i8* %29, i32 1, i32 1000)
  store i32 %30, i32* %17, align 4
  %31 = load i32, i32* %17, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %8
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %17, align 4
  %36 = load i8*, i8** %16, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = call i32 (i8*, i32, ...) @dbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35, i32 %39)
  br label %44

41:                                               ; preds = %8
  %42 = load i32, i32* %10, align 4
  %43 = call i32 (i8*, i32, ...) @dbg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %41, %33
  ret void
}

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @dbg(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
