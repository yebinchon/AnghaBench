; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_mpc.c_purge_egress_shortcut.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_mpc.c_purge_egress_shortcut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.sock = type { i32 (%struct.sock*, i32)*, i32 }
%struct.k_message = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32, i32, i64 }

@.str = private unnamed_addr constant [39 x i8] c"mpoa: purge_egress_shortcut: entering\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"mpoa: purge_egress_shortcut: vcc == NULL\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"mpoa: purge_egress_shortcut: out of memory\0A\00", align 1
@DATA_PLANE_PURGE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"mpoa: purge_egress_shortcut: exiting:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atm_vcc*, %struct.TYPE_5__*)* @purge_egress_shortcut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @purge_egress_shortcut(%struct.atm_vcc* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.atm_vcc*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.k_message*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.atm_vcc* %0, %struct.atm_vcc** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %8 = call i32 @dprintk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %10 = icmp eq %struct.atm_vcc* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %64

13:                                               ; preds = %2
  %14 = load i32, i32* @GFP_ATOMIC, align 4
  %15 = call %struct.sk_buff* @alloc_skb(i32 8, i32 %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %7, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %17 = icmp eq %struct.sk_buff* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = call i32 @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %64

20:                                               ; preds = %13
  %21 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %22 = call i32 @skb_put(%struct.sk_buff* %21, i32 8)
  %23 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @memset(i64 %25, i32 0, i32 8)
  %27 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.k_message*
  store %struct.k_message* %30, %struct.k_message** %6, align 8
  %31 = load i32, i32* @DATA_PLANE_PURGE, align 4
  %32 = load %struct.k_message*, %struct.k_message** %6, align 8
  %33 = getelementptr inbounds %struct.k_message, %struct.k_message* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = icmp ne %struct.TYPE_5__* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %20
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.k_message*, %struct.k_message** %6, align 8
  %41 = getelementptr inbounds %struct.k_message, %struct.k_message* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  br label %43

43:                                               ; preds = %36, %20
  %44 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @atm_force_charge(%struct.atm_vcc* %44, i32 %47)
  %49 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %50 = call %struct.sock* @sk_atm(%struct.atm_vcc* %49)
  store %struct.sock* %50, %struct.sock** %5, align 8
  %51 = load %struct.sock*, %struct.sock** %5, align 8
  %52 = getelementptr inbounds %struct.sock, %struct.sock* %51, i32 0, i32 1
  %53 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %54 = call i32 @skb_queue_tail(i32* %52, %struct.sk_buff* %53)
  %55 = load %struct.sock*, %struct.sock** %5, align 8
  %56 = getelementptr inbounds %struct.sock, %struct.sock* %55, i32 0, i32 0
  %57 = load i32 (%struct.sock*, i32)*, i32 (%struct.sock*, i32)** %56, align 8
  %58 = load %struct.sock*, %struct.sock** %5, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 %57(%struct.sock* %58, i32 %61)
  %63 = call i32 @dprintk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %64

64:                                               ; preds = %43, %18, %11
  ret void
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @atm_force_charge(%struct.atm_vcc*, i32) #1

declare dso_local %struct.sock* @sk_atm(%struct.atm_vcc*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
