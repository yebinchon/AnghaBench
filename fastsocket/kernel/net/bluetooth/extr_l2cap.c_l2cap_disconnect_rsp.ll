; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_disconnect_rsp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_disconnect_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { i32 }
%struct.l2cap_cmd_hdr = type { i32 }
%struct.l2cap_disconn_rsp = type { i32, i32 }
%struct.sock = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"dcid 0x%4.4x scid 0x%4.4x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, i32*)* @l2cap_disconnect_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_disconnect_rsp(%struct.l2cap_conn* %0, %struct.l2cap_cmd_hdr* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.l2cap_conn*, align 8
  %6 = alloca %struct.l2cap_cmd_hdr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.l2cap_disconn_rsp*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sock*, align 8
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %5, align 8
  store %struct.l2cap_cmd_hdr* %1, %struct.l2cap_cmd_hdr** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = bitcast i32* %12 to %struct.l2cap_disconn_rsp*
  store %struct.l2cap_disconn_rsp* %13, %struct.l2cap_disconn_rsp** %8, align 8
  %14 = load %struct.l2cap_disconn_rsp*, %struct.l2cap_disconn_rsp** %8, align 8
  %15 = getelementptr inbounds %struct.l2cap_disconn_rsp, %struct.l2cap_disconn_rsp* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @__le16_to_cpu(i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load %struct.l2cap_disconn_rsp*, %struct.l2cap_disconn_rsp** %8, align 8
  %19 = getelementptr inbounds %struct.l2cap_disconn_rsp, %struct.l2cap_disconn_rsp* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @__le16_to_cpu(i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @BT_DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  %25 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %26 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %25, i32 0, i32 0
  %27 = load i32, i32* %10, align 4
  %28 = call %struct.sock* @l2cap_get_chan_by_scid(i32* %26, i32 %27)
  store %struct.sock* %28, %struct.sock** %11, align 8
  %29 = load %struct.sock*, %struct.sock** %11, align 8
  %30 = icmp ne %struct.sock* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %53

32:                                               ; preds = %3
  %33 = load %struct.sock*, %struct.sock** %11, align 8
  %34 = call i32 @TX_QUEUE(%struct.sock* %33)
  %35 = call i32 @skb_queue_purge(i32 %34)
  %36 = load %struct.sock*, %struct.sock** %11, align 8
  %37 = call i32 @SREJ_QUEUE(%struct.sock* %36)
  %38 = call i32 @skb_queue_purge(i32 %37)
  %39 = load %struct.sock*, %struct.sock** %11, align 8
  %40 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %39)
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = call i32 @del_timer(i32* %41)
  %43 = load %struct.sock*, %struct.sock** %11, align 8
  %44 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %43)
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = call i32 @del_timer(i32* %45)
  %47 = load %struct.sock*, %struct.sock** %11, align 8
  %48 = call i32 @l2cap_chan_del(%struct.sock* %47, i32 0)
  %49 = load %struct.sock*, %struct.sock** %11, align 8
  %50 = call i32 @bh_unlock_sock(%struct.sock* %49)
  %51 = load %struct.sock*, %struct.sock** %11, align 8
  %52 = call i32 @l2cap_sock_kill(%struct.sock* %51)
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %32, %31
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local %struct.sock* @l2cap_get_chan_by_scid(i32*, i32) #1

declare dso_local i32 @skb_queue_purge(i32) #1

declare dso_local i32 @TX_QUEUE(%struct.sock*) #1

declare dso_local i32 @SREJ_QUEUE(%struct.sock*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local %struct.TYPE_2__* @l2cap_pi(%struct.sock*) #1

declare dso_local i32 @l2cap_chan_del(%struct.sock*, i32) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @l2cap_sock_kill(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
