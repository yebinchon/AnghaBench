; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_stub_tx.c_setup_ret_submit_pdu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_stub_tx.c_setup_ret_submit_pdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbip_header = type { i32 }
%struct.urb = type { i64 }
%struct.stub_priv = type { i32 }

@USBIP_RET_SUBMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbip_header*, %struct.urb*)* @setup_ret_submit_pdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_ret_submit_pdu(%struct.usbip_header* %0, %struct.urb* %1) #0 {
  %3 = alloca %struct.usbip_header*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca %struct.stub_priv*, align 8
  store %struct.usbip_header* %0, %struct.usbip_header** %3, align 8
  store %struct.urb* %1, %struct.urb** %4, align 8
  %6 = load %struct.urb*, %struct.urb** %4, align 8
  %7 = getelementptr inbounds %struct.urb, %struct.urb* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.stub_priv*
  store %struct.stub_priv* %9, %struct.stub_priv** %5, align 8
  %10 = load %struct.usbip_header*, %struct.usbip_header** %3, align 8
  %11 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %10, i32 0, i32 0
  %12 = load i32, i32* @USBIP_RET_SUBMIT, align 4
  %13 = load %struct.stub_priv*, %struct.stub_priv** %5, align 8
  %14 = getelementptr inbounds %struct.stub_priv, %struct.stub_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @setup_base_pdu(i32* %11, i32 %12, i32 %15)
  %17 = load %struct.usbip_header*, %struct.usbip_header** %3, align 8
  %18 = load %struct.urb*, %struct.urb** %4, align 8
  %19 = load i32, i32* @USBIP_RET_SUBMIT, align 4
  %20 = call i32 @usbip_pack_pdu(%struct.usbip_header* %17, %struct.urb* %18, i32 %19, i32 1)
  ret void
}

declare dso_local i32 @setup_base_pdu(i32*, i32, i32) #1

declare dso_local i32 @usbip_pack_pdu(%struct.usbip_header*, %struct.urb*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
