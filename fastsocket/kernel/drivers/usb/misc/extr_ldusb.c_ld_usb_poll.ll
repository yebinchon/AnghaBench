; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_ldusb.c_ld_usb_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_ldusb.c_ld_usb_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.ld_usb* }
%struct.ld_usb = type { i64, i64, i32, i32, i32, i32 }

@POLLERR = common dso_local global i32 0, align 4
@POLLHUP = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @ld_usb_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ld_usb_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ld_usb*, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.ld_usb*, %struct.ld_usb** %9, align 8
  store %struct.ld_usb* %10, %struct.ld_usb** %6, align 8
  %11 = load %struct.ld_usb*, %struct.ld_usb** %6, align 8
  %12 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @POLLERR, align 4
  %17 = load i32, i32* @POLLHUP, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %3, align 4
  br label %56

19:                                               ; preds = %2
  %20 = load %struct.file*, %struct.file** %4, align 8
  %21 = load %struct.ld_usb*, %struct.ld_usb** %6, align 8
  %22 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %21, i32 0, i32 4
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @poll_wait(%struct.file* %20, i32* %22, i32* %23)
  %25 = load %struct.file*, %struct.file** %4, align 8
  %26 = load %struct.ld_usb*, %struct.ld_usb** %6, align 8
  %27 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %26, i32 0, i32 3
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @poll_wait(%struct.file* %25, i32* %27, i32* %28)
  %30 = load %struct.ld_usb*, %struct.ld_usb** %6, align 8
  %31 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.ld_usb*, %struct.ld_usb** %6, align 8
  %34 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %19
  %38 = load i32, i32* @POLLIN, align 4
  %39 = load i32, i32* @POLLRDNORM, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %37, %19
  %44 = load %struct.ld_usb*, %struct.ld_usb** %6, align 8
  %45 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @POLLOUT, align 4
  %50 = load i32, i32* @POLLWRNORM, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* %7, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %48, %43
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %15
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
