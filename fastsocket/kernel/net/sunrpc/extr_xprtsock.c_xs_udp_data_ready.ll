; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprtsock.c_xs_udp_data_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprtsock.c_xs_udp_data_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.rpc_task = type { i32 }
%struct.rpc_xprt = type { i32 }
%struct.rpc_rqst = type { %struct.TYPE_2__, %struct.rpc_task* }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"RPC:       xs_udp_data_ready...\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"RPC:       impossible RPC reply size %d!\0A\00", align 1
@UDP_MIB_INERRORS = common dso_local global i32 0, align 4
@UDP_MIB_INDATAGRAMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32)* @xs_udp_data_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xs_udp_data_ready(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_task*, align 8
  %6 = alloca %struct.rpc_xprt*, align 8
  %7 = alloca %struct.rpc_rqst*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.sock*, %struct.sock** %3, align 8
  %15 = getelementptr inbounds %struct.sock, %struct.sock* %14, i32 0, i32 0
  %16 = call i32 @read_lock_bh(i32* %15)
  %17 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.sock*, %struct.sock** %3, align 8
  %19 = call %struct.rpc_xprt* @xprt_from_sock(%struct.sock* %18)
  store %struct.rpc_xprt* %19, %struct.rpc_xprt** %6, align 8
  %20 = icmp ne %struct.rpc_xprt* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %99

22:                                               ; preds = %2
  %23 = load %struct.sock*, %struct.sock** %3, align 8
  %24 = call %struct.sk_buff* @skb_recv_datagram(%struct.sock* %23, i32 0, i32 1, i32* %9)
  store %struct.sk_buff* %24, %struct.sk_buff** %8, align 8
  %25 = icmp eq %struct.sk_buff* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %99

27:                                               ; preds = %22
  %28 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = sub i64 %31, 4
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %34, 4
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load i32, i32* %10, align 4
  %38 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %95

39:                                               ; preds = %27
  %40 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %41 = call i32* @skb_header_pointer(%struct.sk_buff* %40, i32 4, i32 4, i32* %12)
  store i32* %41, i32** %13, align 8
  %42 = load i32*, i32** %13, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %95

45:                                               ; preds = %39
  %46 = load %struct.rpc_xprt*, %struct.rpc_xprt** %6, align 8
  %47 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %46, i32 0, i32 0
  %48 = call i32 @spin_lock(i32* %47)
  %49 = load %struct.rpc_xprt*, %struct.rpc_xprt** %6, align 8
  %50 = load i32*, i32** %13, align 8
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.rpc_rqst* @xprt_lookup_rqst(%struct.rpc_xprt* %49, i32 %51)
  store %struct.rpc_rqst* %52, %struct.rpc_rqst** %7, align 8
  %53 = load %struct.rpc_rqst*, %struct.rpc_rqst** %7, align 8
  %54 = icmp ne %struct.rpc_rqst* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %45
  br label %91

56:                                               ; preds = %45
  %57 = load %struct.rpc_rqst*, %struct.rpc_rqst** %7, align 8
  %58 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %57, i32 0, i32 1
  %59 = load %struct.rpc_task*, %struct.rpc_task** %58, align 8
  store %struct.rpc_task* %59, %struct.rpc_task** %5, align 8
  %60 = load %struct.rpc_rqst*, %struct.rpc_rqst** %7, align 8
  %61 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %56
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %66, %56
  %69 = load %struct.rpc_rqst*, %struct.rpc_rqst** %7, align 8
  %70 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %69, i32 0, i32 0
  %71 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %72 = call i64 @csum_partial_copy_to_xdr(%struct.TYPE_2__* %70, %struct.sk_buff* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load %struct.sock*, %struct.sock** %3, align 8
  %76 = load i32, i32* @UDP_MIB_INERRORS, align 4
  %77 = call i32 @UDPX_INC_STATS_BH(%struct.sock* %75, i32 %76)
  br label %91

78:                                               ; preds = %68
  %79 = load %struct.sock*, %struct.sock** %3, align 8
  %80 = load i32, i32* @UDP_MIB_INDATAGRAMS, align 4
  %81 = call i32 @UDPX_INC_STATS_BH(%struct.sock* %79, i32 %80)
  %82 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %83 = call i32 @skb_dst(%struct.sk_buff* %82)
  %84 = call i32 @dst_confirm(i32 %83)
  %85 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @xprt_adjust_cwnd(%struct.rpc_task* %85, i32 %86)
  %88 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @xprt_complete_rqst(%struct.rpc_task* %88, i32 %89)
  br label %91

91:                                               ; preds = %78, %74, %55
  %92 = load %struct.rpc_xprt*, %struct.rpc_xprt** %6, align 8
  %93 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %92, i32 0, i32 0
  %94 = call i32 @spin_unlock(i32* %93)
  br label %95

95:                                               ; preds = %91, %44, %36
  %96 = load %struct.sock*, %struct.sock** %3, align 8
  %97 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %98 = call i32 @skb_free_datagram(%struct.sock* %96, %struct.sk_buff* %97)
  br label %99

99:                                               ; preds = %95, %26, %21
  %100 = load %struct.sock*, %struct.sock** %3, align 8
  %101 = getelementptr inbounds %struct.sock, %struct.sock* %100, i32 0, i32 0
  %102 = call i32 @read_unlock_bh(i32* %101)
  ret void
}

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local %struct.rpc_xprt* @xprt_from_sock(%struct.sock*) #1

declare dso_local %struct.sk_buff* @skb_recv_datagram(%struct.sock*, i32, i32, i32*) #1

declare dso_local i32* @skb_header_pointer(%struct.sk_buff*, i32, i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.rpc_rqst* @xprt_lookup_rqst(%struct.rpc_xprt*, i32) #1

declare dso_local i64 @csum_partial_copy_to_xdr(%struct.TYPE_2__*, %struct.sk_buff*) #1

declare dso_local i32 @UDPX_INC_STATS_BH(%struct.sock*, i32) #1

declare dso_local i32 @dst_confirm(i32) #1

declare dso_local i32 @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @xprt_adjust_cwnd(%struct.rpc_task*, i32) #1

declare dso_local i32 @xprt_complete_rqst(%struct.rpc_task*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @skb_free_datagram(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
