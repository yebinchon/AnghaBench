; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c___l2cap_sock_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c___l2cap_sock_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32, i32 }
%struct.l2cap_conn = type { i32 }
%struct.l2cap_conn_rsp = type { i8*, i8*, i8*, i8* }
%struct.TYPE_3__ = type { i32, i32, i32, %struct.l2cap_conn* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"sk %p state %d socket %p\00", align 1
@SOCK_SEQPACKET = common dso_local global i32 0, align 4
@L2CAP_CR_SEC_BLOCK = common dso_local global i32 0, align 4
@L2CAP_CR_BAD_PSM = common dso_local global i32 0, align 4
@L2CAP_CS_NO_INFO = common dso_local global i32 0, align 4
@L2CAP_CONN_RSP = common dso_local global i32 0, align 4
@SOCK_ZAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32)* @__l2cap_sock_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__l2cap_sock_close(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.l2cap_conn*, align 8
  %6 = alloca %struct.l2cap_conn*, align 8
  %7 = alloca %struct.l2cap_conn_rsp, align 8
  %8 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = getelementptr inbounds %struct.sock, %struct.sock* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.sock*, %struct.sock** %3, align 8
  %14 = getelementptr inbounds %struct.sock, %struct.sock* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @BT_DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.sock* %9, i32 %12, i32 %15)
  %17 = load %struct.sock*, %struct.sock** %3, align 8
  %18 = getelementptr inbounds %struct.sock, %struct.sock* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %104 [
    i32 128, label %20
    i32 130, label %23
    i32 133, label %23
    i32 131, label %49
    i32 132, label %100
    i32 129, label %100
  ]

20:                                               ; preds = %2
  %21 = load %struct.sock*, %struct.sock** %3, align 8
  %22 = call i32 @l2cap_sock_cleanup_listen(%struct.sock* %21)
  br label %108

23:                                               ; preds = %2, %2
  %24 = load %struct.sock*, %struct.sock** %3, align 8
  %25 = getelementptr inbounds %struct.sock, %struct.sock* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @SOCK_SEQPACKET, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %23
  %30 = load %struct.sock*, %struct.sock** %3, align 8
  %31 = call %struct.TYPE_3__* @l2cap_pi(%struct.sock* %30)
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 3
  %33 = load %struct.l2cap_conn*, %struct.l2cap_conn** %32, align 8
  store %struct.l2cap_conn* %33, %struct.l2cap_conn** %5, align 8
  %34 = load %struct.sock*, %struct.sock** %3, align 8
  %35 = getelementptr inbounds %struct.sock, %struct.sock* %34, i32 0, i32 0
  store i32 129, i32* %35, align 4
  %36 = load %struct.sock*, %struct.sock** %3, align 8
  %37 = load %struct.sock*, %struct.sock** %3, align 8
  %38 = getelementptr inbounds %struct.sock, %struct.sock* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @l2cap_sock_set_timer(%struct.sock* %36, i32 %39)
  %41 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %42 = load %struct.sock*, %struct.sock** %3, align 8
  %43 = call i32 @l2cap_send_disconn_req(%struct.l2cap_conn* %41, %struct.sock* %42)
  br label %48

44:                                               ; preds = %23
  %45 = load %struct.sock*, %struct.sock** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @l2cap_chan_del(%struct.sock* %45, i32 %46)
  br label %48

48:                                               ; preds = %44, %29
  br label %108

49:                                               ; preds = %2
  %50 = load %struct.sock*, %struct.sock** %3, align 8
  %51 = getelementptr inbounds %struct.sock, %struct.sock* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SOCK_SEQPACKET, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %95

55:                                               ; preds = %49
  %56 = load %struct.sock*, %struct.sock** %3, align 8
  %57 = call %struct.TYPE_3__* @l2cap_pi(%struct.sock* %56)
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 3
  %59 = load %struct.l2cap_conn*, %struct.l2cap_conn** %58, align 8
  store %struct.l2cap_conn* %59, %struct.l2cap_conn** %6, align 8
  %60 = load %struct.sock*, %struct.sock** %3, align 8
  %61 = call %struct.TYPE_4__* @bt_sk(%struct.sock* %60)
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %55
  %66 = load i32, i32* @L2CAP_CR_SEC_BLOCK, align 4
  store i32 %66, i32* %8, align 4
  br label %69

67:                                               ; preds = %55
  %68 = load i32, i32* @L2CAP_CR_BAD_PSM, align 4
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = load %struct.sock*, %struct.sock** %3, align 8
  %71 = call %struct.TYPE_3__* @l2cap_pi(%struct.sock* %70)
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i8* @cpu_to_le16(i32 %73)
  %75 = getelementptr inbounds %struct.l2cap_conn_rsp, %struct.l2cap_conn_rsp* %7, i32 0, i32 3
  store i8* %74, i8** %75, align 8
  %76 = load %struct.sock*, %struct.sock** %3, align 8
  %77 = call %struct.TYPE_3__* @l2cap_pi(%struct.sock* %76)
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @cpu_to_le16(i32 %79)
  %81 = getelementptr inbounds %struct.l2cap_conn_rsp, %struct.l2cap_conn_rsp* %7, i32 0, i32 2
  store i8* %80, i8** %81, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i8* @cpu_to_le16(i32 %82)
  %84 = getelementptr inbounds %struct.l2cap_conn_rsp, %struct.l2cap_conn_rsp* %7, i32 0, i32 1
  store i8* %83, i8** %84, align 8
  %85 = load i32, i32* @L2CAP_CS_NO_INFO, align 4
  %86 = call i8* @cpu_to_le16(i32 %85)
  %87 = getelementptr inbounds %struct.l2cap_conn_rsp, %struct.l2cap_conn_rsp* %7, i32 0, i32 0
  store i8* %86, i8** %87, align 8
  %88 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %89 = load %struct.sock*, %struct.sock** %3, align 8
  %90 = call %struct.TYPE_3__* @l2cap_pi(%struct.sock* %89)
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @L2CAP_CONN_RSP, align 4
  %94 = call i32 @l2cap_send_cmd(%struct.l2cap_conn* %88, i32 %92, i32 %93, i32 32, %struct.l2cap_conn_rsp* %7)
  br label %99

95:                                               ; preds = %49
  %96 = load %struct.sock*, %struct.sock** %3, align 8
  %97 = load i32, i32* %4, align 4
  %98 = call i32 @l2cap_chan_del(%struct.sock* %96, i32 %97)
  br label %99

99:                                               ; preds = %95, %69
  br label %108

100:                                              ; preds = %2, %2
  %101 = load %struct.sock*, %struct.sock** %3, align 8
  %102 = load i32, i32* %4, align 4
  %103 = call i32 @l2cap_chan_del(%struct.sock* %101, i32 %102)
  br label %108

104:                                              ; preds = %2
  %105 = load %struct.sock*, %struct.sock** %3, align 8
  %106 = load i32, i32* @SOCK_ZAPPED, align 4
  %107 = call i32 @sock_set_flag(%struct.sock* %105, i32 %106)
  br label %108

108:                                              ; preds = %104, %100, %99, %48, %20
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.sock*, i32, i32) #1

declare dso_local i32 @l2cap_sock_cleanup_listen(%struct.sock*) #1

declare dso_local %struct.TYPE_3__* @l2cap_pi(%struct.sock*) #1

declare dso_local i32 @l2cap_sock_set_timer(%struct.sock*, i32) #1

declare dso_local i32 @l2cap_send_disconn_req(%struct.l2cap_conn*, %struct.sock*) #1

declare dso_local i32 @l2cap_chan_del(%struct.sock*, i32) #1

declare dso_local %struct.TYPE_4__* @bt_sk(%struct.sock*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @l2cap_send_cmd(%struct.l2cap_conn*, i32, i32, i32, %struct.l2cap_conn_rsp*) #1

declare dso_local i32 @sock_set_flag(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
