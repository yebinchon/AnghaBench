; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_lec.c_lec_pop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_lec.c_lec_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { i32 }
%struct.sk_buff = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.lec_vcc_priv = type { i64, i32 (%struct.atm_vcc.0*, %struct.sk_buff*)* }
%struct.atm_vcc.0 = type opaque

@.str = private unnamed_addr constant [31 x i8] c"lec_pop(): vpriv = NULL!?!?!?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atm_vcc*, %struct.sk_buff*)* @lec_pop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lec_pop(%struct.atm_vcc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.atm_vcc*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.lec_vcc_priv*, align 8
  %6 = alloca %struct.net_device*, align 8
  store %struct.atm_vcc* %0, %struct.atm_vcc** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %8 = call %struct.lec_vcc_priv* @LEC_VCC_PRIV(%struct.atm_vcc* %7)
  store %struct.lec_vcc_priv* %8, %struct.lec_vcc_priv** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %6, align 8
  %12 = load %struct.lec_vcc_priv*, %struct.lec_vcc_priv** %5, align 8
  %13 = icmp eq %struct.lec_vcc_priv* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %46

16:                                               ; preds = %2
  %17 = load %struct.lec_vcc_priv*, %struct.lec_vcc_priv** %5, align 8
  %18 = getelementptr inbounds %struct.lec_vcc_priv, %struct.lec_vcc_priv* %17, i32 0, i32 1
  %19 = load i32 (%struct.atm_vcc.0*, %struct.sk_buff*)*, i32 (%struct.atm_vcc.0*, %struct.sk_buff*)** %18, align 8
  %20 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %21 = bitcast %struct.atm_vcc* %20 to %struct.atm_vcc.0*
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = call i32 %19(%struct.atm_vcc.0* %21, %struct.sk_buff* %22)
  %24 = load %struct.lec_vcc_priv*, %struct.lec_vcc_priv** %5, align 8
  %25 = getelementptr inbounds %struct.lec_vcc_priv, %struct.lec_vcc_priv* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %16
  %29 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %30 = call i64 @atm_may_send(%struct.atm_vcc* %29, i32 0)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %28
  %33 = load %struct.lec_vcc_priv*, %struct.lec_vcc_priv** %5, align 8
  %34 = getelementptr inbounds %struct.lec_vcc_priv, %struct.lec_vcc_priv* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = load %struct.net_device*, %struct.net_device** %6, align 8
  %36 = call i64 @netif_running(%struct.net_device* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load %struct.net_device*, %struct.net_device** %6, align 8
  %40 = call i64 @netif_queue_stopped(%struct.net_device* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load %struct.net_device*, %struct.net_device** %6, align 8
  %44 = call i32 @netif_wake_queue(%struct.net_device* %43)
  br label %45

45:                                               ; preds = %42, %38, %32
  br label %46

46:                                               ; preds = %14, %45, %28, %16
  ret void
}

declare dso_local %struct.lec_vcc_priv* @LEC_VCC_PRIV(%struct.atm_vcc*) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i64 @atm_may_send(%struct.atm_vcc*, i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
