; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_ftdi-elan.c_have_ed_get_response.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_ftdi-elan.c_have_ed_get_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ftdi = type { i32, i8*, i64, i64, i32 }
%struct.u132_target = type { i32, i32, i32, i64, i64, i32 }

@TD_DEVNOTRESP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.usb_ftdi*, %struct.u132_target*, i32, i32, i32, i8*)* @have_ed_get_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @have_ed_get_response(%struct.usb_ftdi* %0, %struct.u132_target* %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.usb_ftdi*, align 8
  %8 = alloca %struct.u132_target*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.usb_ftdi* %0, %struct.usb_ftdi** %7, align 8
  store %struct.u132_target* %1, %struct.u132_target** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %13 = load %struct.usb_ftdi*, %struct.usb_ftdi** %7, align 8
  %14 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %13, i32 0, i32 4
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load i32, i32* @TD_DEVNOTRESP, align 4
  %17 = load %struct.u132_target*, %struct.u132_target** %8, align 8
  %18 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %17, i32 0, i32 5
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* %9, align 4
  %20 = ashr i32 %19, 0
  %21 = and i32 %20, 511
  %22 = load %struct.u132_target*, %struct.u132_target** %8, align 8
  %23 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %9, align 4
  %25 = ashr i32 %24, 15
  %26 = and i32 %25, 1
  %27 = load %struct.u132_target*, %struct.u132_target** %8, align 8
  %28 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %9, align 4
  %30 = ashr i32 %29, 11
  %31 = and i32 %30, 15
  %32 = load %struct.u132_target*, %struct.u132_target** %8, align 8
  %33 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.usb_ftdi*, %struct.usb_ftdi** %7, align 8
  %35 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %34, i32 0, i32 4
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load %struct.u132_target*, %struct.u132_target** %8, align 8
  %38 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %6
  %42 = load %struct.usb_ftdi*, %struct.usb_ftdi** %7, align 8
  %43 = load %struct.u132_target*, %struct.u132_target** %8, align 8
  %44 = call i32 @ftdi_elan_do_callback(%struct.usb_ftdi* %42, %struct.u132_target* %43, i32* null, i32 0)
  br label %45

45:                                               ; preds = %41, %6
  %46 = load %struct.u132_target*, %struct.u132_target** %8, align 8
  %47 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %46, i32 0, i32 3
  store i64 0, i64* %47, align 8
  %48 = load %struct.usb_ftdi*, %struct.usb_ftdi** %7, align 8
  %49 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %48, i32 0, i32 3
  store i64 0, i64* %49, align 8
  %50 = load %struct.usb_ftdi*, %struct.usb_ftdi** %7, align 8
  %51 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %50, i32 0, i32 0
  store i32 4, i32* %51, align 8
  %52 = load %struct.usb_ftdi*, %struct.usb_ftdi** %7, align 8
  %53 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %52, i32 0, i32 2
  store i64 0, i64* %53, align 8
  %54 = load %struct.usb_ftdi*, %struct.usb_ftdi** %7, align 8
  %55 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  ret i8* %56
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ftdi_elan_do_callback(%struct.usb_ftdi*, %struct.u132_target*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
