; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_core.c_rfcomm_queue_disc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_core.c_rfcomm_queue_disc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_dlc = type { i32, i32, i32 }
%struct.rfcomm_cmd = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"dlc %p dlci %d\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RFCOMM_DISC = common dso_local global i32 0, align 4
@RFCOMM_SCHED_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rfcomm_dlc*)* @rfcomm_queue_disc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfcomm_queue_disc(%struct.rfcomm_dlc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rfcomm_dlc*, align 8
  %4 = alloca %struct.rfcomm_cmd*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.rfcomm_dlc* %0, %struct.rfcomm_dlc** %3, align 8
  %6 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %7 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %8 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.rfcomm_dlc* %6, i32 %9)
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.sk_buff* @alloc_skb(i32 16, i32 %11)
  store %struct.sk_buff* %12, %struct.sk_buff** %5, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = icmp ne %struct.sk_buff* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %46

18:                                               ; preds = %1
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = call i64 @__skb_put(%struct.sk_buff* %19, i32 16)
  %21 = inttoptr i64 %20 to i8*
  %22 = bitcast i8* %21 to %struct.rfcomm_cmd*
  store %struct.rfcomm_cmd* %22, %struct.rfcomm_cmd** %4, align 8
  %23 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %24 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.rfcomm_cmd*, %struct.rfcomm_cmd** %4, align 8
  %27 = getelementptr inbounds %struct.rfcomm_cmd, %struct.rfcomm_cmd* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @RFCOMM_DISC, align 4
  %29 = call i32 @__ctrl(i32 %28, i32 1)
  %30 = load %struct.rfcomm_cmd*, %struct.rfcomm_cmd** %4, align 8
  %31 = getelementptr inbounds %struct.rfcomm_cmd, %struct.rfcomm_cmd* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = call i32 @__len8(i32 0)
  %33 = load %struct.rfcomm_cmd*, %struct.rfcomm_cmd** %4, align 8
  %34 = getelementptr inbounds %struct.rfcomm_cmd, %struct.rfcomm_cmd* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.rfcomm_cmd*, %struct.rfcomm_cmd** %4, align 8
  %36 = bitcast %struct.rfcomm_cmd* %35 to i32*
  %37 = call i32 @__fcs2(i32* %36)
  %38 = load %struct.rfcomm_cmd*, %struct.rfcomm_cmd** %4, align 8
  %39 = getelementptr inbounds %struct.rfcomm_cmd, %struct.rfcomm_cmd* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %41 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %40, i32 0, i32 0
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = call i32 @skb_queue_tail(i32* %41, %struct.sk_buff* %42)
  %44 = load i32, i32* @RFCOMM_SCHED_TX, align 4
  %45 = call i32 @rfcomm_schedule(i32 %44)
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %18, %15
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @BT_DBG(i8*, %struct.rfcomm_dlc*, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i64 @__skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @__ctrl(i32, i32) #1

declare dso_local i32 @__len8(i32) #1

declare dso_local i32 @__fcs2(i32*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @rfcomm_schedule(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
