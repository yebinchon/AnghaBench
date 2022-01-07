; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_do_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_do_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ftdi = type { i32 }
%struct.u132_target = type { i32, i32, i32, i32, i32, i32, i32, i32, void (i8*, %struct.urb*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32, i8*, %struct.urb* }
%struct.urb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ftdi*, %struct.u132_target*, i32*, i32)* @ftdi_elan_do_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ftdi_elan_do_callback(%struct.usb_ftdi* %0, %struct.u132_target* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.usb_ftdi*, align 8
  %6 = alloca %struct.u132_target*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.urb*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca void (i8*, %struct.urb*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, align 8
  store %struct.usb_ftdi* %0, %struct.usb_ftdi** %5, align 8
  store %struct.u132_target* %1, %struct.u132_target** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %19 = load %struct.u132_target*, %struct.u132_target** %6, align 8
  %20 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %19, i32 0, i32 11
  %21 = load %struct.urb*, %struct.urb** %20, align 8
  store %struct.urb* %21, %struct.urb** %9, align 8
  %22 = load %struct.u132_target*, %struct.u132_target** %6, align 8
  %23 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %10, align 4
  %25 = load %struct.u132_target*, %struct.u132_target** %6, align 8
  %26 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %11, align 4
  %28 = load %struct.u132_target*, %struct.u132_target** %6, align 8
  %29 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %12, align 4
  %31 = load %struct.u132_target*, %struct.u132_target** %6, align 8
  %32 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %13, align 4
  %34 = load %struct.u132_target*, %struct.u132_target** %6, align 8
  %35 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %14, align 4
  %37 = load %struct.u132_target*, %struct.u132_target** %6, align 8
  %38 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %15, align 4
  %40 = load %struct.u132_target*, %struct.u132_target** %6, align 8
  %41 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %16, align 4
  %43 = load %struct.u132_target*, %struct.u132_target** %6, align 8
  %44 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %17, align 4
  %46 = load %struct.u132_target*, %struct.u132_target** %6, align 8
  %47 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %46, i32 0, i32 8
  %48 = load void (i8*, %struct.urb*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, void (i8*, %struct.urb*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32)** %47, align 8
  store void (i8*, %struct.urb*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* %48, void (i8*, %struct.urb*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32)** %18, align 8
  %49 = load %struct.u132_target*, %struct.u132_target** %6, align 8
  %50 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %49, i32 0, i32 9
  %51 = load i32, i32* %50, align 8
  %52 = sub nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  %53 = load %struct.u132_target*, %struct.u132_target** %6, align 8
  %54 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %53, i32 0, i32 8
  store void (i8*, %struct.urb*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, void (i8*, %struct.urb*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32)** %54, align 8
  %55 = load void (i8*, %struct.urb*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, void (i8*, %struct.urb*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32)** %18, align 8
  %56 = load %struct.u132_target*, %struct.u132_target** %6, align 8
  %57 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %56, i32 0, i32 10
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.urb*, %struct.urb** %9, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* %17, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %13, align 4
  call void %55(i8* %58, %struct.urb* %59, i32* %60, i32 %61, i32 %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 %67, i32 %68, i32 %69)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
