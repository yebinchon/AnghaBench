; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_f_phonet.c_pn_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_f_phonet.c_pn_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_function = type { i32 }
%struct.f_phonet = type { i32 }
%struct.phonet_port = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_function*)* @pn_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pn_disconnect(%struct.usb_function* %0) #0 {
  %2 = alloca %struct.usb_function*, align 8
  %3 = alloca %struct.f_phonet*, align 8
  %4 = alloca %struct.phonet_port*, align 8
  %5 = alloca i64, align 8
  store %struct.usb_function* %0, %struct.usb_function** %2, align 8
  %6 = load %struct.usb_function*, %struct.usb_function** %2, align 8
  %7 = call %struct.f_phonet* @func_to_pn(%struct.usb_function* %6)
  store %struct.f_phonet* %7, %struct.f_phonet** %3, align 8
  %8 = load %struct.f_phonet*, %struct.f_phonet** %3, align 8
  %9 = getelementptr inbounds %struct.f_phonet, %struct.f_phonet* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.phonet_port* @netdev_priv(i32 %10)
  store %struct.phonet_port* %11, %struct.phonet_port** %4, align 8
  %12 = load %struct.phonet_port*, %struct.phonet_port** %4, align 8
  %13 = getelementptr inbounds %struct.phonet_port, %struct.phonet_port* %12, i32 0, i32 0
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.usb_function*, %struct.usb_function** %2, align 8
  %17 = call i32 @__pn_reset(%struct.usb_function* %16)
  %18 = load %struct.phonet_port*, %struct.phonet_port** %4, align 8
  %19 = getelementptr inbounds %struct.phonet_port, %struct.phonet_port* %18, i32 0, i32 0
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* %19, i64 %20)
  ret void
}

declare dso_local %struct.f_phonet* @func_to_pn(%struct.usb_function*) #1

declare dso_local %struct.phonet_port* @netdev_priv(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__pn_reset(%struct.usb_function*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
