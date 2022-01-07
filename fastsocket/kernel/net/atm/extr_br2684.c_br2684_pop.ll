; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_br2684.c_br2684_pop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_br2684.c_br2684_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { i32 }
%struct.sk_buff = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.br2684_vcc = type { i32 (%struct.atm_vcc.0*, %struct.sk_buff*)* }
%struct.atm_vcc.0 = type opaque

@.str = private unnamed_addr constant [34 x i8] c"br2684_pop(vcc %p ; net_dev %p )\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atm_vcc*, %struct.sk_buff*)* @br2684_pop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @br2684_pop(%struct.atm_vcc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.atm_vcc*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.br2684_vcc*, align 8
  %6 = alloca %struct.net_device*, align 8
  store %struct.atm_vcc* %0, %struct.atm_vcc** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %8 = call %struct.br2684_vcc* @BR2684_VCC(%struct.atm_vcc* %7)
  store %struct.br2684_vcc* %8, %struct.br2684_vcc** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %6, align 8
  %12 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.atm_vcc* %12, %struct.net_device* %13)
  %15 = load %struct.br2684_vcc*, %struct.br2684_vcc** %5, align 8
  %16 = getelementptr inbounds %struct.br2684_vcc, %struct.br2684_vcc* %15, i32 0, i32 0
  %17 = load i32 (%struct.atm_vcc.0*, %struct.sk_buff*)*, i32 (%struct.atm_vcc.0*, %struct.sk_buff*)** %16, align 8
  %18 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %19 = bitcast %struct.atm_vcc* %18 to %struct.atm_vcc.0*
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call i32 %17(%struct.atm_vcc.0* %19, %struct.sk_buff* %20)
  %22 = load %struct.net_device*, %struct.net_device** %6, align 8
  %23 = icmp ne %struct.net_device* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  br label %32

25:                                               ; preds = %2
  %26 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %27 = call i64 @atm_may_send(%struct.atm_vcc* %26, i32 0)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load %struct.net_device*, %struct.net_device** %6, align 8
  %31 = call i32 @netif_wake_queue(%struct.net_device* %30)
  br label %32

32:                                               ; preds = %24, %29, %25
  ret void
}

declare dso_local %struct.br2684_vcc* @BR2684_VCC(%struct.atm_vcc*) #1

declare dso_local i32 @pr_debug(i8*, %struct.atm_vcc*, %struct.net_device*) #1

declare dso_local i64 @atm_may_send(%struct.atm_vcc*, i32) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
