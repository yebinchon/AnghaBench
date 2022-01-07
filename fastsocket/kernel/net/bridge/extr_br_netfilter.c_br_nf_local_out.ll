; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_netfilter.c_br_nf_local_out.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_netfilter.c_br_nf_local_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, %struct.nf_bridge_info* }
%struct.nf_bridge_info = type { i32, %struct.net_device*, i32 }
%struct.net_device = type { i32 }

@NF_ACCEPT = common dso_local global i32 0, align 4
@NF_DROP = common dso_local global i32 0, align 4
@BRNF_BRIDGED_DNAT = common dso_local global i32 0, align 4
@BRNF_PKT_TYPE = common dso_local global i32 0, align 4
@PACKET_OTHERHOST = common dso_local global i32 0, align 4
@PF_BRIDGE = common dso_local global i32 0, align 4
@NF_BR_FORWARD = common dso_local global i32 0, align 4
@br_forward_finish = common dso_local global i32 0, align 4
@NF_STOLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sk_buff*, %struct.net_device*, %struct.net_device*, i32 (%struct.sk_buff*)*)* @br_nf_local_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @br_nf_local_out(i32 %0, %struct.sk_buff* %1, %struct.net_device* %2, %struct.net_device* %3, i32 (%struct.sk_buff*)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32 (%struct.sk_buff*)*, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca %struct.nf_bridge_info*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store %struct.net_device* %2, %struct.net_device** %9, align 8
  store %struct.net_device* %3, %struct.net_device** %10, align 8
  store i32 (%struct.sk_buff*)* %4, i32 (%struct.sk_buff*)** %11, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 2
  %16 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %15, align 8
  %17 = icmp ne %struct.nf_bridge_info* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %19, i32* %6, align 4
  br label %78

20:                                               ; preds = %5
  %21 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %22 = call i32 @nf_bridge_unshare(%struct.sk_buff* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @NF_DROP, align 4
  store i32 %25, i32* %6, align 4
  br label %78

26:                                               ; preds = %20
  %27 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 2
  %29 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %28, align 8
  store %struct.nf_bridge_info* %29, %struct.nf_bridge_info** %13, align 8
  %30 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %13, align 8
  %31 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @BRNF_BRIDGED_DNAT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %26
  %37 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %37, i32* %6, align 4
  br label %78

38:                                               ; preds = %26
  %39 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %13, align 8
  %43 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %13, align 8
  %45 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %44, i32 0, i32 1
  %46 = load %struct.net_device*, %struct.net_device** %45, align 8
  store %struct.net_device* %46, %struct.net_device** %12, align 8
  %47 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %13, align 8
  %48 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @BRNF_PKT_TYPE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %38
  %54 = load i32, i32* @PACKET_OTHERHOST, align 4
  %55 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @BRNF_PKT_TYPE, align 4
  %58 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %13, align 8
  %59 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = xor i32 %60, %57
  store i32 %61, i32* %59, align 8
  br label %62

62:                                               ; preds = %53, %38
  %63 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %64 = call i32 @nf_bridge_push_encap_header(%struct.sk_buff* %63)
  %65 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %66 = call i32 @IPCB(%struct.sk_buff* %65)
  %67 = call i32 @memset(i32 %66, i32 0, i32 4)
  %68 = load i32, i32* @PF_BRIDGE, align 4
  %69 = load i32, i32* @NF_BR_FORWARD, align 4
  %70 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %71 = load %struct.net_device*, %struct.net_device** %12, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @br_forward_finish, align 4
  %76 = call i32 @NF_HOOK(i32 %68, i32 %69, %struct.sk_buff* %70, %struct.net_device* %71, i32 %74, i32 %75)
  %77 = load i32, i32* @NF_STOLEN, align 4
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %62, %36, %24, %18
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local i32 @nf_bridge_unshare(%struct.sk_buff*) #1

declare dso_local i32 @nf_bridge_push_encap_header(%struct.sk_buff*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @IPCB(%struct.sk_buff*) #1

declare dso_local i32 @NF_HOOK(i32, i32, %struct.sk_buff*, %struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
