; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_connect_rsp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_connect_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { i32 }
%struct.l2cap_cmd_hdr = type { i32 }
%struct.l2cap_conn_rsp = type { i32, i32, i32, i32 }
%struct.sock = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [56 x i8] c"dcid 0x%4.4x scid 0x%4.4x result 0x%2.2x status 0x%2.2x\00", align 1
@BT_CONFIG = common dso_local global i32 0, align 4
@L2CAP_CONF_REQ_SENT = common dso_local global i32 0, align 4
@L2CAP_CONF_CONNECT_PEND = common dso_local global i32 0, align 4
@L2CAP_CONF_REQ = common dso_local global i32 0, align 4
@ECONNREFUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, i32*)* @l2cap_connect_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_connect_rsp(%struct.l2cap_conn* %0, %struct.l2cap_cmd_hdr* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.l2cap_conn*, align 8
  %6 = alloca %struct.l2cap_cmd_hdr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.l2cap_conn_rsp*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sock*, align 8
  %14 = alloca [128 x i32], align 16
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %5, align 8
  store %struct.l2cap_cmd_hdr* %1, %struct.l2cap_cmd_hdr** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = bitcast i32* %15 to %struct.l2cap_conn_rsp*
  store %struct.l2cap_conn_rsp* %16, %struct.l2cap_conn_rsp** %8, align 8
  %17 = load %struct.l2cap_conn_rsp*, %struct.l2cap_conn_rsp** %8, align 8
  %18 = getelementptr inbounds %struct.l2cap_conn_rsp, %struct.l2cap_conn_rsp* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @__le16_to_cpu(i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.l2cap_conn_rsp*, %struct.l2cap_conn_rsp** %8, align 8
  %22 = getelementptr inbounds %struct.l2cap_conn_rsp, %struct.l2cap_conn_rsp* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @__le16_to_cpu(i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load %struct.l2cap_conn_rsp*, %struct.l2cap_conn_rsp** %8, align 8
  %26 = getelementptr inbounds %struct.l2cap_conn_rsp, %struct.l2cap_conn_rsp* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @__le16_to_cpu(i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load %struct.l2cap_conn_rsp*, %struct.l2cap_conn_rsp** %8, align 8
  %30 = getelementptr inbounds %struct.l2cap_conn_rsp, %struct.l2cap_conn_rsp* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @__le16_to_cpu(i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @BT_DBG(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34, i32 %35, i32 %36)
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %3
  %41 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %42 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %41, i32 0, i32 0
  %43 = load i32, i32* %9, align 4
  %44 = call %struct.sock* @l2cap_get_chan_by_scid(i32* %42, i32 %43)
  store %struct.sock* %44, %struct.sock** %13, align 8
  %45 = load %struct.sock*, %struct.sock** %13, align 8
  %46 = icmp ne %struct.sock* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %114

48:                                               ; preds = %40
  br label %60

49:                                               ; preds = %3
  %50 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %51 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %50, i32 0, i32 0
  %52 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %6, align 8
  %53 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call %struct.sock* @l2cap_get_chan_by_ident(i32* %51, i32 %54)
  store %struct.sock* %55, %struct.sock** %13, align 8
  %56 = load %struct.sock*, %struct.sock** %13, align 8
  %57 = icmp ne %struct.sock* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %114

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59, %48
  %61 = load i32, i32* %11, align 4
  switch i32 %61, label %107 [
    i32 128, label %62
    i32 129, label %100
  ]

62:                                               ; preds = %60
  %63 = load i32, i32* @BT_CONFIG, align 4
  %64 = load %struct.sock*, %struct.sock** %13, align 8
  %65 = getelementptr inbounds %struct.sock, %struct.sock* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load %struct.sock*, %struct.sock** %13, align 8
  %67 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %66)
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 3
  store i32 0, i32* %68, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.sock*, %struct.sock** %13, align 8
  %71 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %70)
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 4
  %73 = load i32, i32* @L2CAP_CONF_REQ_SENT, align 4
  %74 = load %struct.sock*, %struct.sock** %13, align 8
  %75 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %74)
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %73
  store i32 %78, i32* %76, align 4
  %79 = load i32, i32* @L2CAP_CONF_CONNECT_PEND, align 4
  %80 = xor i32 %79, -1
  %81 = load %struct.sock*, %struct.sock** %13, align 8
  %82 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %81)
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, %80
  store i32 %85, i32* %83, align 4
  %86 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %87 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %88 = call i32 @l2cap_get_ident(%struct.l2cap_conn* %87)
  %89 = load i32, i32* @L2CAP_CONF_REQ, align 4
  %90 = load %struct.sock*, %struct.sock** %13, align 8
  %91 = getelementptr inbounds [128 x i32], [128 x i32]* %14, i64 0, i64 0
  %92 = call i32 @l2cap_build_conf_req(%struct.sock* %90, i32* %91)
  %93 = getelementptr inbounds [128 x i32], [128 x i32]* %14, i64 0, i64 0
  %94 = call i32 @l2cap_send_cmd(%struct.l2cap_conn* %86, i32 %88, i32 %89, i32 %92, i32* %93)
  %95 = load %struct.sock*, %struct.sock** %13, align 8
  %96 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %95)
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  br label %111

100:                                              ; preds = %60
  %101 = load i32, i32* @L2CAP_CONF_CONNECT_PEND, align 4
  %102 = load %struct.sock*, %struct.sock** %13, align 8
  %103 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %102)
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %101
  store i32 %106, i32* %104, align 4
  br label %111

107:                                              ; preds = %60
  %108 = load %struct.sock*, %struct.sock** %13, align 8
  %109 = load i32, i32* @ECONNREFUSED, align 4
  %110 = call i32 @l2cap_chan_del(%struct.sock* %108, i32 %109)
  br label %111

111:                                              ; preds = %107, %100, %62
  %112 = load %struct.sock*, %struct.sock** %13, align 8
  %113 = call i32 @bh_unlock_sock(%struct.sock* %112)
  store i32 0, i32* %4, align 4
  br label %114

114:                                              ; preds = %111, %58, %47
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @BT_DBG(i8*, i32, i32, i32, i32) #1

declare dso_local %struct.sock* @l2cap_get_chan_by_scid(i32*, i32) #1

declare dso_local %struct.sock* @l2cap_get_chan_by_ident(i32*, i32) #1

declare dso_local %struct.TYPE_2__* @l2cap_pi(%struct.sock*) #1

declare dso_local i32 @l2cap_send_cmd(%struct.l2cap_conn*, i32, i32, i32, i32*) #1

declare dso_local i32 @l2cap_get_ident(%struct.l2cap_conn*) #1

declare dso_local i32 @l2cap_build_conf_req(%struct.sock*, i32*) #1

declare dso_local i32 @l2cap_chan_del(%struct.sock*, i32) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
