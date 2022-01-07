; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_xfrm4_output.c_xfrm4_output.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_xfrm4_output.c_xfrm4_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@PF_INET = common dso_local global i32 0, align 4
@NF_INET_POST_ROUTING = common dso_local global i32 0, align 4
@xfrm4_output_finish = common dso_local global i32 0, align 4
@IPSKB_REROUTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfrm4_output(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %3 = load i32, i32* @PF_INET, align 4
  %4 = load i32, i32* @NF_INET_POST_ROUTING, align 4
  %5 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %7 = call %struct.TYPE_3__* @skb_dst(%struct.sk_buff* %6)
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @xfrm4_output_finish, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %12 = call %struct.TYPE_4__* @IPCB(%struct.sk_buff* %11)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IPSKB_REROUTED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @NF_HOOK_COND(i32 %3, i32 %4, %struct.sk_buff* %5, i32* null, i32 %9, i32 %10, i32 %19)
  ret i32 %20
}

declare dso_local i32 @NF_HOOK_COND(i32, i32, %struct.sk_buff*, i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_3__* @skb_dst(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @IPCB(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
