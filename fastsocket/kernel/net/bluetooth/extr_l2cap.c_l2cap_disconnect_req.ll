; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_disconnect_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_disconnect_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { i32 }
%struct.l2cap_cmd_hdr = type { i32 }
%struct.l2cap_disconn_req = type { i32, i32 }
%struct.l2cap_disconn_rsp = type { i8*, i8* }
%struct.sock = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"scid 0x%4.4x dcid 0x%4.4x\00", align 1
@L2CAP_DISCONN_RSP = common dso_local global i32 0, align 4
@SHUTDOWN_MASK = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, i32*)* @l2cap_disconnect_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_disconnect_req(%struct.l2cap_conn* %0, %struct.l2cap_cmd_hdr* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.l2cap_conn*, align 8
  %6 = alloca %struct.l2cap_cmd_hdr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.l2cap_disconn_req*, align 8
  %9 = alloca %struct.l2cap_disconn_rsp, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sock*, align 8
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %5, align 8
  store %struct.l2cap_cmd_hdr* %1, %struct.l2cap_cmd_hdr** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = bitcast i32* %13 to %struct.l2cap_disconn_req*
  store %struct.l2cap_disconn_req* %14, %struct.l2cap_disconn_req** %8, align 8
  %15 = load %struct.l2cap_disconn_req*, %struct.l2cap_disconn_req** %8, align 8
  %16 = getelementptr inbounds %struct.l2cap_disconn_req, %struct.l2cap_disconn_req* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @__le16_to_cpu(i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load %struct.l2cap_disconn_req*, %struct.l2cap_disconn_req** %8, align 8
  %20 = getelementptr inbounds %struct.l2cap_disconn_req, %struct.l2cap_disconn_req* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @__le16_to_cpu(i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @BT_DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  %26 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %27 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %26, i32 0, i32 0
  %28 = load i32, i32* %10, align 4
  %29 = call %struct.sock* @l2cap_get_chan_by_scid(i32* %27, i32 %28)
  store %struct.sock* %29, %struct.sock** %12, align 8
  %30 = load %struct.sock*, %struct.sock** %12, align 8
  %31 = icmp ne %struct.sock* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %76

33:                                               ; preds = %3
  %34 = load %struct.sock*, %struct.sock** %12, align 8
  %35 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @cpu_to_le16(i32 %37)
  %39 = getelementptr inbounds %struct.l2cap_disconn_rsp, %struct.l2cap_disconn_rsp* %9, i32 0, i32 1
  store i8* %38, i8** %39, align 8
  %40 = load %struct.sock*, %struct.sock** %12, align 8
  %41 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %40)
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @cpu_to_le16(i32 %43)
  %45 = getelementptr inbounds %struct.l2cap_disconn_rsp, %struct.l2cap_disconn_rsp* %9, i32 0, i32 0
  store i8* %44, i8** %45, align 8
  %46 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %47 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %6, align 8
  %48 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @L2CAP_DISCONN_RSP, align 4
  %51 = call i32 @l2cap_send_cmd(%struct.l2cap_conn* %46, i32 %49, i32 %50, i32 16, %struct.l2cap_disconn_rsp* %9)
  %52 = load i32, i32* @SHUTDOWN_MASK, align 4
  %53 = load %struct.sock*, %struct.sock** %12, align 8
  %54 = getelementptr inbounds %struct.sock, %struct.sock* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.sock*, %struct.sock** %12, align 8
  %56 = call i32 @TX_QUEUE(%struct.sock* %55)
  %57 = call i32 @skb_queue_purge(i32 %56)
  %58 = load %struct.sock*, %struct.sock** %12, align 8
  %59 = call i32 @SREJ_QUEUE(%struct.sock* %58)
  %60 = call i32 @skb_queue_purge(i32 %59)
  %61 = load %struct.sock*, %struct.sock** %12, align 8
  %62 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %61)
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = call i32 @del_timer(i32* %63)
  %65 = load %struct.sock*, %struct.sock** %12, align 8
  %66 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %65)
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = call i32 @del_timer(i32* %67)
  %69 = load %struct.sock*, %struct.sock** %12, align 8
  %70 = load i32, i32* @ECONNRESET, align 4
  %71 = call i32 @l2cap_chan_del(%struct.sock* %69, i32 %70)
  %72 = load %struct.sock*, %struct.sock** %12, align 8
  %73 = call i32 @bh_unlock_sock(%struct.sock* %72)
  %74 = load %struct.sock*, %struct.sock** %12, align 8
  %75 = call i32 @l2cap_sock_kill(%struct.sock* %74)
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %33, %32
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local %struct.sock* @l2cap_get_chan_by_scid(i32*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local %struct.TYPE_2__* @l2cap_pi(%struct.sock*) #1

declare dso_local i32 @l2cap_send_cmd(%struct.l2cap_conn*, i32, i32, i32, %struct.l2cap_disconn_rsp*) #1

declare dso_local i32 @skb_queue_purge(i32) #1

declare dso_local i32 @TX_QUEUE(%struct.sock*) #1

declare dso_local i32 @SREJ_QUEUE(%struct.sock*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @l2cap_chan_del(%struct.sock*, i32) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @l2cap_sock_kill(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
