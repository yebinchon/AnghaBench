; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597-hcd.c_prepare_setup_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597-hcd.c_prepare_setup_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8a66597 = type { i32 }
%struct.r8a66597_td = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@USBREQ = common dso_local global i64 0, align 8
@DCPMAXP = common dso_local global i64 0, align 8
@SIGN = common dso_local global i32 0, align 4
@SACK = common dso_local global i32 0, align 4
@INTSTS1 = common dso_local global i64 0, align 8
@SUREQ = common dso_local global i32 0, align 4
@DCPCTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8a66597*, %struct.r8a66597_td*)* @prepare_setup_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_setup_packet(%struct.r8a66597* %0, %struct.r8a66597_td* %1) #0 {
  %3 = alloca %struct.r8a66597*, align 8
  %4 = alloca %struct.r8a66597_td*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.r8a66597* %0, %struct.r8a66597** %3, align 8
  store %struct.r8a66597_td* %1, %struct.r8a66597_td** %4, align 8
  %8 = load %struct.r8a66597_td*, %struct.r8a66597_td** %4, align 8
  %9 = getelementptr inbounds %struct.r8a66597_td, %struct.r8a66597_td* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i32*
  store i32* %13, i32** %6, align 8
  %14 = load i64, i64* @USBREQ, align 8
  store i64 %14, i64* %7, align 8
  %15 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %16 = load %struct.r8a66597_td*, %struct.r8a66597_td** %4, align 8
  %17 = getelementptr inbounds %struct.r8a66597_td, %struct.r8a66597_td* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @make_devsel(i32 %18)
  %20 = load %struct.r8a66597_td*, %struct.r8a66597_td** %4, align 8
  %21 = getelementptr inbounds %struct.r8a66597_td, %struct.r8a66597_td* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = or i32 %19, %22
  %24 = load i64, i64* @DCPMAXP, align 8
  %25 = call i32 @r8a66597_write(%struct.r8a66597* %15, i32 %23, i64 %24)
  %26 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %27 = load i32, i32* @SIGN, align 4
  %28 = load i32, i32* @SACK, align 4
  %29 = or i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = load i64, i64* @INTSTS1, align 8
  %32 = call i32 @r8a66597_write(%struct.r8a66597* %26, i32 %30, i64 %31)
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %48, %2
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 4
  br i1 %35, label %36, label %51

36:                                               ; preds = %33
  %37 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le16_to_cpu(i32 %42)
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @r8a66597_write(%struct.r8a66597* %37, i32 %43, i64 %44)
  %46 = load i64, i64* %7, align 8
  %47 = add i64 %46, 2
  store i64 %47, i64* %7, align 8
  br label %48

48:                                               ; preds = %36
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %33

51:                                               ; preds = %33
  %52 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %53 = load i32, i32* @SUREQ, align 4
  %54 = load i64, i64* @DCPCTR, align 8
  %55 = call i32 @r8a66597_write(%struct.r8a66597* %52, i32 %53, i64 %54)
  ret void
}

declare dso_local i32 @r8a66597_write(%struct.r8a66597*, i32, i64) #1

declare dso_local i32 @make_devsel(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
