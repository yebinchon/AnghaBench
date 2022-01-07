; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_hwa-rc.c_hwarc_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_hwa-rc.c_hwarc_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { %struct.hwarc* }
%struct.hwarc = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.uwb_rccb = type { i32 }

@WA_EXEC_RC_CMD = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uwb_rc*, %struct.uwb_rccb*, i64)* @hwarc_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwarc_cmd(%struct.uwb_rc* %0, %struct.uwb_rccb* %1, i64 %2) #0 {
  %4 = alloca %struct.uwb_rc*, align 8
  %5 = alloca %struct.uwb_rccb*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.hwarc*, align 8
  store %struct.uwb_rc* %0, %struct.uwb_rc** %4, align 8
  store %struct.uwb_rccb* %1, %struct.uwb_rccb** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %9 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %8, i32 0, i32 0
  %10 = load %struct.hwarc*, %struct.hwarc** %9, align 8
  store %struct.hwarc* %10, %struct.hwarc** %7, align 8
  %11 = load %struct.hwarc*, %struct.hwarc** %7, align 8
  %12 = getelementptr inbounds %struct.hwarc, %struct.hwarc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.hwarc*, %struct.hwarc** %7, align 8
  %15 = getelementptr inbounds %struct.hwarc, %struct.hwarc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @usb_sndctrlpipe(i32 %16, i32 0)
  %18 = load i32, i32* @WA_EXEC_RC_CMD, align 4
  %19 = load i32, i32* @USB_DIR_OUT, align 4
  %20 = load i32, i32* @USB_TYPE_CLASS, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.hwarc*, %struct.hwarc** %7, align 8
  %25 = getelementptr inbounds %struct.hwarc, %struct.hwarc* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.uwb_rccb*, %struct.uwb_rccb** %5, align 8
  %33 = bitcast %struct.uwb_rccb* %32 to i8*
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @usb_control_msg(i32 %13, i32 %17, i32 %18, i32 %23, i32 0, i32 %31, i8* %33, i64 %34, i32 100)
  ret i32 %35
}

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i8*, i64, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
