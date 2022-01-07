; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/phonet/extr_pep.c_pipe_skb_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/phonet/extr_pep.c_pipe_skb_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.pep_sock = type { i32, i32, i32 }
%struct.pnpipehdr = type { i32, i32, i64 }

@ENOBUFS = common dso_local global i32 0, align 4
@PNS_PIPE_DATA = common dso_local global i32 0, align 4
@pipe_srv = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @pipe_skb_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pipe_skb_send(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.pep_sock*, align 8
  %7 = alloca %struct.pnpipehdr*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.sock*, %struct.sock** %4, align 8
  %9 = call %struct.pep_sock* @pep_sk(%struct.sock* %8)
  store %struct.pep_sock* %9, %struct.pep_sock** %6, align 8
  %10 = load %struct.pep_sock*, %struct.pep_sock** %6, align 8
  %11 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @pn_flow_safe(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load %struct.pep_sock*, %struct.pep_sock** %6, align 8
  %17 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %16, i32 0, i32 1
  %18 = call i32 @atomic_add_unless(i32* %17, i32 -1, i32 0)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = call i32 @kfree_skb(%struct.sk_buff* %21)
  %23 = load i32, i32* @ENOBUFS, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %45

25:                                               ; preds = %15, %2
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = call i32 @skb_push(%struct.sk_buff* %26, i32 3)
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = call i32 @skb_reset_transport_header(%struct.sk_buff* %28)
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = call %struct.pnpipehdr* @pnp_hdr(%struct.sk_buff* %30)
  store %struct.pnpipehdr* %31, %struct.pnpipehdr** %7, align 8
  %32 = load %struct.pnpipehdr*, %struct.pnpipehdr** %7, align 8
  %33 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %32, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* @PNS_PIPE_DATA, align 4
  %35 = load %struct.pnpipehdr*, %struct.pnpipehdr** %7, align 8
  %36 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.pep_sock*, %struct.pep_sock** %6, align 8
  %38 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.pnpipehdr*, %struct.pnpipehdr** %7, align 8
  %41 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.sock*, %struct.sock** %4, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = call i32 @pn_skb_send(%struct.sock* %42, %struct.sk_buff* %43, i32* @pipe_srv)
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %25, %20
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.pep_sock* @pep_sk(%struct.sock*) #1

declare dso_local i64 @pn_flow_safe(i32) #1

declare dso_local i32 @atomic_add_unless(i32*, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local %struct.pnpipehdr* @pnp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @pn_skb_send(%struct.sock*, %struct.sk_buff*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
