; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_conn_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_conn_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { %struct.l2cap_chan_list }
%struct.l2cap_chan_list = type { i32, %struct.sock* }
%struct.sock = type { i64, i64, i32 (%struct.sock*, i32)* }
%struct.l2cap_conn_req = type { i8*, i8*, i8*, i8*, i32 }
%struct.l2cap_conn_rsp = type { i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, %struct.sock* }
%struct.TYPE_4__ = type { %struct.sock*, i64 }

@.str = private unnamed_addr constant [8 x i8] c"conn %p\00", align 1
@SOCK_SEQPACKET = common dso_local global i64 0, align 8
@BT_CONNECT = common dso_local global i64 0, align 8
@L2CAP_CONN_REQ = common dso_local global i32 0, align 4
@BT_CONNECT2 = common dso_local global i64 0, align 8
@L2CAP_CR_PEND = common dso_local global i32 0, align 4
@L2CAP_CS_AUTHOR_PEND = common dso_local global i32 0, align 4
@BT_CONFIG = common dso_local global i64 0, align 8
@L2CAP_CR_SUCCESS = common dso_local global i32 0, align 4
@L2CAP_CS_NO_INFO = common dso_local global i32 0, align 4
@L2CAP_CS_AUTHEN_PEND = common dso_local global i32 0, align 4
@L2CAP_CONN_RSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_conn*)* @l2cap_conn_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_conn_start(%struct.l2cap_conn* %0) #0 {
  %2 = alloca %struct.l2cap_conn*, align 8
  %3 = alloca %struct.l2cap_chan_list*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.l2cap_conn_req, align 8
  %6 = alloca %struct.l2cap_conn_rsp, align 8
  %7 = alloca %struct.sock*, align 8
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %2, align 8
  %8 = load %struct.l2cap_conn*, %struct.l2cap_conn** %2, align 8
  %9 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %8, i32 0, i32 0
  store %struct.l2cap_chan_list* %9, %struct.l2cap_chan_list** %3, align 8
  %10 = load %struct.l2cap_conn*, %struct.l2cap_conn** %2, align 8
  %11 = call i32 @BT_DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.l2cap_conn* %10)
  %12 = load %struct.l2cap_chan_list*, %struct.l2cap_chan_list** %3, align 8
  %13 = getelementptr inbounds %struct.l2cap_chan_list, %struct.l2cap_chan_list* %12, i32 0, i32 0
  %14 = call i32 @read_lock(i32* %13)
  %15 = load %struct.l2cap_chan_list*, %struct.l2cap_chan_list** %3, align 8
  %16 = getelementptr inbounds %struct.l2cap_chan_list, %struct.l2cap_chan_list* %15, i32 0, i32 1
  %17 = load %struct.sock*, %struct.sock** %16, align 8
  store %struct.sock* %17, %struct.sock** %4, align 8
  br label %18

18:                                               ; preds = %142, %1
  %19 = load %struct.sock*, %struct.sock** %4, align 8
  %20 = icmp ne %struct.sock* %19, null
  br i1 %20, label %21, label %147

21:                                               ; preds = %18
  %22 = load %struct.sock*, %struct.sock** %4, align 8
  %23 = call i32 @bh_lock_sock(%struct.sock* %22)
  %24 = load %struct.sock*, %struct.sock** %4, align 8
  %25 = getelementptr inbounds %struct.sock, %struct.sock* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SOCK_SEQPACKET, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load %struct.sock*, %struct.sock** %4, align 8
  %31 = call i32 @bh_unlock_sock(%struct.sock* %30)
  br label %142

32:                                               ; preds = %21
  %33 = load %struct.sock*, %struct.sock** %4, align 8
  %34 = getelementptr inbounds %struct.sock, %struct.sock* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @BT_CONNECT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %68

38:                                               ; preds = %32
  %39 = load %struct.sock*, %struct.sock** %4, align 8
  %40 = call i64 @l2cap_check_security(%struct.sock* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %67

42:                                               ; preds = %38
  %43 = load %struct.sock*, %struct.sock** %4, align 8
  %44 = call %struct.TYPE_3__* @l2cap_pi(%struct.sock* %43)
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @cpu_to_le16(i32 %46)
  %48 = getelementptr inbounds %struct.l2cap_conn_req, %struct.l2cap_conn_req* %5, i32 0, i32 3
  store i8* %47, i8** %48, align 8
  %49 = load %struct.sock*, %struct.sock** %4, align 8
  %50 = call %struct.TYPE_3__* @l2cap_pi(%struct.sock* %49)
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.l2cap_conn_req, %struct.l2cap_conn_req* %5, i32 0, i32 4
  store i32 %52, i32* %53, align 8
  %54 = load %struct.l2cap_conn*, %struct.l2cap_conn** %2, align 8
  %55 = call i32 @l2cap_get_ident(%struct.l2cap_conn* %54)
  %56 = load %struct.sock*, %struct.sock** %4, align 8
  %57 = call %struct.TYPE_3__* @l2cap_pi(%struct.sock* %56)
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 8
  %59 = load %struct.l2cap_conn*, %struct.l2cap_conn** %2, align 8
  %60 = load %struct.sock*, %struct.sock** %4, align 8
  %61 = call %struct.TYPE_3__* @l2cap_pi(%struct.sock* %60)
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @L2CAP_CONN_REQ, align 4
  %65 = bitcast %struct.l2cap_conn_req* %5 to %struct.l2cap_conn_rsp*
  %66 = call i32 @l2cap_send_cmd(%struct.l2cap_conn* %59, i32 %63, i32 %64, i32 40, %struct.l2cap_conn_rsp* %65)
  br label %67

67:                                               ; preds = %42, %38
  br label %139

68:                                               ; preds = %32
  %69 = load %struct.sock*, %struct.sock** %4, align 8
  %70 = getelementptr inbounds %struct.sock, %struct.sock* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @BT_CONNECT2, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %138

74:                                               ; preds = %68
  %75 = load %struct.sock*, %struct.sock** %4, align 8
  %76 = call %struct.TYPE_3__* @l2cap_pi(%struct.sock* %75)
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i8* @cpu_to_le16(i32 %78)
  %80 = getelementptr inbounds %struct.l2cap_conn_rsp, %struct.l2cap_conn_rsp* %6, i32 0, i32 3
  store i8* %79, i8** %80, align 8
  %81 = load %struct.sock*, %struct.sock** %4, align 8
  %82 = call %struct.TYPE_3__* @l2cap_pi(%struct.sock* %81)
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @cpu_to_le16(i32 %84)
  %86 = getelementptr inbounds %struct.l2cap_conn_rsp, %struct.l2cap_conn_rsp* %6, i32 0, i32 2
  store i8* %85, i8** %86, align 8
  %87 = load %struct.sock*, %struct.sock** %4, align 8
  %88 = call i64 @l2cap_check_security(%struct.sock* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %123

90:                                               ; preds = %74
  %91 = load %struct.sock*, %struct.sock** %4, align 8
  %92 = call %struct.TYPE_4__* @bt_sk(%struct.sock* %91)
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %112

96:                                               ; preds = %90
  %97 = load %struct.sock*, %struct.sock** %4, align 8
  %98 = call %struct.TYPE_4__* @bt_sk(%struct.sock* %97)
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load %struct.sock*, %struct.sock** %99, align 8
  store %struct.sock* %100, %struct.sock** %7, align 8
  %101 = load i32, i32* @L2CAP_CR_PEND, align 4
  %102 = call i8* @cpu_to_le16(i32 %101)
  %103 = getelementptr inbounds %struct.l2cap_conn_rsp, %struct.l2cap_conn_rsp* %6, i32 0, i32 1
  store i8* %102, i8** %103, align 8
  %104 = load i32, i32* @L2CAP_CS_AUTHOR_PEND, align 4
  %105 = call i8* @cpu_to_le16(i32 %104)
  %106 = getelementptr inbounds %struct.l2cap_conn_rsp, %struct.l2cap_conn_rsp* %6, i32 0, i32 0
  store i8* %105, i8** %106, align 8
  %107 = load %struct.sock*, %struct.sock** %7, align 8
  %108 = getelementptr inbounds %struct.sock, %struct.sock* %107, i32 0, i32 2
  %109 = load i32 (%struct.sock*, i32)*, i32 (%struct.sock*, i32)** %108, align 8
  %110 = load %struct.sock*, %struct.sock** %7, align 8
  %111 = call i32 %109(%struct.sock* %110, i32 0)
  br label %122

112:                                              ; preds = %90
  %113 = load i64, i64* @BT_CONFIG, align 8
  %114 = load %struct.sock*, %struct.sock** %4, align 8
  %115 = getelementptr inbounds %struct.sock, %struct.sock* %114, i32 0, i32 1
  store i64 %113, i64* %115, align 8
  %116 = load i32, i32* @L2CAP_CR_SUCCESS, align 4
  %117 = call i8* @cpu_to_le16(i32 %116)
  %118 = getelementptr inbounds %struct.l2cap_conn_rsp, %struct.l2cap_conn_rsp* %6, i32 0, i32 1
  store i8* %117, i8** %118, align 8
  %119 = load i32, i32* @L2CAP_CS_NO_INFO, align 4
  %120 = call i8* @cpu_to_le16(i32 %119)
  %121 = getelementptr inbounds %struct.l2cap_conn_rsp, %struct.l2cap_conn_rsp* %6, i32 0, i32 0
  store i8* %120, i8** %121, align 8
  br label %122

122:                                              ; preds = %112, %96
  br label %130

123:                                              ; preds = %74
  %124 = load i32, i32* @L2CAP_CR_PEND, align 4
  %125 = call i8* @cpu_to_le16(i32 %124)
  %126 = getelementptr inbounds %struct.l2cap_conn_rsp, %struct.l2cap_conn_rsp* %6, i32 0, i32 1
  store i8* %125, i8** %126, align 8
  %127 = load i32, i32* @L2CAP_CS_AUTHEN_PEND, align 4
  %128 = call i8* @cpu_to_le16(i32 %127)
  %129 = getelementptr inbounds %struct.l2cap_conn_rsp, %struct.l2cap_conn_rsp* %6, i32 0, i32 0
  store i8* %128, i8** %129, align 8
  br label %130

130:                                              ; preds = %123, %122
  %131 = load %struct.l2cap_conn*, %struct.l2cap_conn** %2, align 8
  %132 = load %struct.sock*, %struct.sock** %4, align 8
  %133 = call %struct.TYPE_3__* @l2cap_pi(%struct.sock* %132)
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @L2CAP_CONN_RSP, align 4
  %137 = call i32 @l2cap_send_cmd(%struct.l2cap_conn* %131, i32 %135, i32 %136, i32 40, %struct.l2cap_conn_rsp* %6)
  br label %138

138:                                              ; preds = %130, %68
  br label %139

139:                                              ; preds = %138, %67
  %140 = load %struct.sock*, %struct.sock** %4, align 8
  %141 = call i32 @bh_unlock_sock(%struct.sock* %140)
  br label %142

142:                                              ; preds = %139, %29
  %143 = load %struct.sock*, %struct.sock** %4, align 8
  %144 = call %struct.TYPE_3__* @l2cap_pi(%struct.sock* %143)
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 4
  %146 = load %struct.sock*, %struct.sock** %145, align 8
  store %struct.sock* %146, %struct.sock** %4, align 8
  br label %18

147:                                              ; preds = %18
  %148 = load %struct.l2cap_chan_list*, %struct.l2cap_chan_list** %3, align 8
  %149 = getelementptr inbounds %struct.l2cap_chan_list, %struct.l2cap_chan_list* %148, i32 0, i32 0
  %150 = call i32 @read_unlock(i32* %149)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_conn*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i64 @l2cap_check_security(%struct.sock*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local %struct.TYPE_3__* @l2cap_pi(%struct.sock*) #1

declare dso_local i32 @l2cap_get_ident(%struct.l2cap_conn*) #1

declare dso_local i32 @l2cap_send_cmd(%struct.l2cap_conn*, i32, i32, i32, %struct.l2cap_conn_rsp*) #1

declare dso_local %struct.TYPE_4__* @bt_sk(%struct.sock*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
