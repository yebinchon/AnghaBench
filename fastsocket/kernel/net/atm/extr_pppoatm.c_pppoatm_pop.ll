; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_pppoatm.c_pppoatm_pop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_pppoatm.c_pppoatm_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { i32 }
%struct.sk_buff = type { i32 }
%struct.pppoatm_vcc = type { i32, i32 (%struct.atm_vcc.0*, %struct.sk_buff*)* }
%struct.atm_vcc.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atm_vcc*, %struct.sk_buff*)* @pppoatm_pop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pppoatm_pop(%struct.atm_vcc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.atm_vcc*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.pppoatm_vcc*, align 8
  store %struct.atm_vcc* %0, %struct.atm_vcc** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %7 = call %struct.pppoatm_vcc* @atmvcc_to_pvcc(%struct.atm_vcc* %6)
  store %struct.pppoatm_vcc* %7, %struct.pppoatm_vcc** %5, align 8
  %8 = load %struct.pppoatm_vcc*, %struct.pppoatm_vcc** %5, align 8
  %9 = getelementptr inbounds %struct.pppoatm_vcc, %struct.pppoatm_vcc* %8, i32 0, i32 1
  %10 = load i32 (%struct.atm_vcc.0*, %struct.sk_buff*)*, i32 (%struct.atm_vcc.0*, %struct.sk_buff*)** %9, align 8
  %11 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %12 = bitcast %struct.atm_vcc* %11 to %struct.atm_vcc.0*
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = call i32 %10(%struct.atm_vcc.0* %12, %struct.sk_buff* %13)
  %15 = load %struct.pppoatm_vcc*, %struct.pppoatm_vcc** %5, align 8
  %16 = getelementptr inbounds %struct.pppoatm_vcc, %struct.pppoatm_vcc* %15, i32 0, i32 0
  %17 = call i32 @tasklet_schedule(i32* %16)
  ret void
}

declare dso_local %struct.pppoatm_vcc* @atmvcc_to_pvcc(%struct.atm_vcc*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
