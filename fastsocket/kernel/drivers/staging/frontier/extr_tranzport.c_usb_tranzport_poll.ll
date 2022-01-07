; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/frontier/extr_tranzport.c_usb_tranzport_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/frontier/extr_tranzport.c_usb_tranzport_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.usb_tranzport* }
%struct.usb_tranzport = type { i64, i64, i32, i32, i32 }

@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @usb_tranzport_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_tranzport_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.usb_tranzport*, align 8
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.usb_tranzport*, %struct.usb_tranzport** %8, align 8
  store %struct.usb_tranzport* %9, %struct.usb_tranzport** %5, align 8
  %10 = load %struct.file*, %struct.file** %3, align 8
  %11 = load %struct.usb_tranzport*, %struct.usb_tranzport** %5, align 8
  %12 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %11, i32 0, i32 4
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @poll_wait(%struct.file* %10, i32* %12, i32* %13)
  %15 = load %struct.file*, %struct.file** %3, align 8
  %16 = load %struct.usb_tranzport*, %struct.usb_tranzport** %5, align 8
  %17 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %16, i32 0, i32 3
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @poll_wait(%struct.file* %15, i32* %17, i32* %18)
  %20 = load %struct.usb_tranzport*, %struct.usb_tranzport** %5, align 8
  %21 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.usb_tranzport*, %struct.usb_tranzport** %5, align 8
  %24 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %2
  %28 = load i32, i32* @POLLIN, align 4
  %29 = load i32, i32* @POLLRDNORM, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %27, %2
  %34 = load %struct.usb_tranzport*, %struct.usb_tranzport** %5, align 8
  %35 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @POLLOUT, align 4
  %40 = load i32, i32* @POLLWRNORM, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %38, %33
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
