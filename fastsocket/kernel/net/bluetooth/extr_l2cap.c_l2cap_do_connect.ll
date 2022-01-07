; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_do_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_do_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i64, i32 }
%struct.l2cap_conn = type { i32 }
%struct.hci_conn = type { i64 }
%struct.hci_dev = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64, i32 }

@.str = private unnamed_addr constant [21 x i8] c"%s -> %s psm 0x%2.2x\00", align 1
@EHOSTUNREACH = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i64 0, align 8
@HCI_AT_DEDICATED_BONDING_MITM = common dso_local global i32 0, align 4
@HCI_AT_DEDICATED_BONDING = common dso_local global i32 0, align 4
@HCI_AT_NO_BONDING = common dso_local global i32 0, align 4
@HCI_AT_NO_BONDING_MITM = common dso_local global i32 0, align 4
@BT_SECURITY_LOW = common dso_local global i32 0, align 4
@BT_SECURITY_SDP = common dso_local global i32 0, align 4
@HCI_AT_GENERAL_BONDING_MITM = common dso_local global i32 0, align 4
@HCI_AT_GENERAL_BONDING = common dso_local global i32 0, align 4
@ACL_LINK = common dso_local global i32 0, align 4
@BT_CONNECT = common dso_local global i64 0, align 8
@BT_CONNECTED = common dso_local global i64 0, align 8
@SOCK_SEQPACKET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*)* @l2cap_do_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_do_connect(%struct.sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.l2cap_conn*, align 8
  %7 = alloca %struct.hci_conn*, align 8
  %8 = alloca %struct.hci_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = call %struct.TYPE_4__* @bt_sk(%struct.sock* %11)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  store i32* %13, i32** %4, align 8
  %14 = load %struct.sock*, %struct.sock** %3, align 8
  %15 = call %struct.TYPE_4__* @bt_sk(%struct.sock* %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @batostr(i32* %17)
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @batostr(i32* %19)
  %21 = load %struct.sock*, %struct.sock** %3, align 8
  %22 = call %struct.TYPE_3__* @l2cap_pi(%struct.sock* %21)
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @BT_DBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %20, i64 %24)
  %26 = load i32*, i32** %5, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = call %struct.hci_dev* @hci_get_route(i32* %26, i32* %27)
  store %struct.hci_dev* %28, %struct.hci_dev** %8, align 8
  %29 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %30 = icmp ne %struct.hci_dev* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %1
  %32 = load i32, i32* @EHOSTUNREACH, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %165

34:                                               ; preds = %1
  %35 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %36 = call i32 @hci_dev_lock_bh(%struct.hci_dev* %35)
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %10, align 4
  %39 = load %struct.sock*, %struct.sock** %3, align 8
  %40 = getelementptr inbounds %struct.sock, %struct.sock* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SOCK_RAW, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %34
  %45 = load %struct.sock*, %struct.sock** %3, align 8
  %46 = call %struct.TYPE_3__* @l2cap_pi(%struct.sock* %45)
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  switch i32 %48, label %53 [
    i32 129, label %49
    i32 128, label %51
  ]

49:                                               ; preds = %44
  %50 = load i32, i32* @HCI_AT_DEDICATED_BONDING_MITM, align 4
  store i32 %50, i32* %9, align 4
  br label %55

51:                                               ; preds = %44
  %52 = load i32, i32* @HCI_AT_DEDICATED_BONDING, align 4
  store i32 %52, i32* %9, align 4
  br label %55

53:                                               ; preds = %44
  %54 = load i32, i32* @HCI_AT_NO_BONDING, align 4
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %53, %51, %49
  br label %99

56:                                               ; preds = %34
  %57 = load %struct.sock*, %struct.sock** %3, align 8
  %58 = call %struct.TYPE_3__* @l2cap_pi(%struct.sock* %57)
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @cpu_to_le16(i32 1)
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %86

63:                                               ; preds = %56
  %64 = load %struct.sock*, %struct.sock** %3, align 8
  %65 = call %struct.TYPE_3__* @l2cap_pi(%struct.sock* %64)
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %67, 129
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* @HCI_AT_NO_BONDING_MITM, align 4
  store i32 %70, i32* %9, align 4
  br label %73

71:                                               ; preds = %63
  %72 = load i32, i32* @HCI_AT_NO_BONDING, align 4
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = load %struct.sock*, %struct.sock** %3, align 8
  %75 = call %struct.TYPE_3__* @l2cap_pi(%struct.sock* %74)
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @BT_SECURITY_LOW, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %73
  %81 = load i32, i32* @BT_SECURITY_SDP, align 4
  %82 = load %struct.sock*, %struct.sock** %3, align 8
  %83 = call %struct.TYPE_3__* @l2cap_pi(%struct.sock* %82)
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  store i32 %81, i32* %84, align 8
  br label %85

85:                                               ; preds = %80, %73
  br label %98

86:                                               ; preds = %56
  %87 = load %struct.sock*, %struct.sock** %3, align 8
  %88 = call %struct.TYPE_3__* @l2cap_pi(%struct.sock* %87)
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  switch i32 %90, label %95 [
    i32 129, label %91
    i32 128, label %93
  ]

91:                                               ; preds = %86
  %92 = load i32, i32* @HCI_AT_GENERAL_BONDING_MITM, align 4
  store i32 %92, i32* %9, align 4
  br label %97

93:                                               ; preds = %86
  %94 = load i32, i32* @HCI_AT_GENERAL_BONDING, align 4
  store i32 %94, i32* %9, align 4
  br label %97

95:                                               ; preds = %86
  %96 = load i32, i32* @HCI_AT_NO_BONDING, align 4
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %95, %93, %91
  br label %98

98:                                               ; preds = %97, %85
  br label %99

99:                                               ; preds = %98, %55
  %100 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %101 = load i32, i32* @ACL_LINK, align 4
  %102 = load i32*, i32** %5, align 8
  %103 = load %struct.sock*, %struct.sock** %3, align 8
  %104 = call %struct.TYPE_3__* @l2cap_pi(%struct.sock* %103)
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = call %struct.hci_conn* @hci_connect(%struct.hci_dev* %100, i32 %101, i32* %102, i32 %106, i32 %107)
  store %struct.hci_conn* %108, %struct.hci_conn** %7, align 8
  %109 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %110 = icmp ne %struct.hci_conn* %109, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %99
  br label %159

112:                                              ; preds = %99
  %113 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %114 = call %struct.l2cap_conn* @l2cap_conn_add(%struct.hci_conn* %113, i32 0)
  store %struct.l2cap_conn* %114, %struct.l2cap_conn** %6, align 8
  %115 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %116 = icmp ne %struct.l2cap_conn* %115, null
  br i1 %116, label %120, label %117

117:                                              ; preds = %112
  %118 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %119 = call i32 @hci_conn_put(%struct.hci_conn* %118)
  br label %159

120:                                              ; preds = %112
  store i32 0, i32* %10, align 4
  %121 = load i32*, i32** %4, align 8
  %122 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %123 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @bacpy(i32* %121, i32 %124)
  %126 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %127 = load %struct.sock*, %struct.sock** %3, align 8
  %128 = call i32 @l2cap_chan_add(%struct.l2cap_conn* %126, %struct.sock* %127, i32* null)
  %129 = load i64, i64* @BT_CONNECT, align 8
  %130 = load %struct.sock*, %struct.sock** %3, align 8
  %131 = getelementptr inbounds %struct.sock, %struct.sock* %130, i32 0, i32 1
  store i64 %129, i64* %131, align 8
  %132 = load %struct.sock*, %struct.sock** %3, align 8
  %133 = load %struct.sock*, %struct.sock** %3, align 8
  %134 = getelementptr inbounds %struct.sock, %struct.sock* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @l2cap_sock_set_timer(%struct.sock* %132, i32 %135)
  %137 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %138 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @BT_CONNECTED, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %158

142:                                              ; preds = %120
  %143 = load %struct.sock*, %struct.sock** %3, align 8
  %144 = getelementptr inbounds %struct.sock, %struct.sock* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @SOCK_SEQPACKET, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %154

148:                                              ; preds = %142
  %149 = load %struct.sock*, %struct.sock** %3, align 8
  %150 = call i32 @l2cap_sock_clear_timer(%struct.sock* %149)
  %151 = load i64, i64* @BT_CONNECTED, align 8
  %152 = load %struct.sock*, %struct.sock** %3, align 8
  %153 = getelementptr inbounds %struct.sock, %struct.sock* %152, i32 0, i32 1
  store i64 %151, i64* %153, align 8
  br label %157

154:                                              ; preds = %142
  %155 = load %struct.sock*, %struct.sock** %3, align 8
  %156 = call i32 @l2cap_do_start(%struct.sock* %155)
  br label %157

157:                                              ; preds = %154, %148
  br label %158

158:                                              ; preds = %157, %120
  br label %159

159:                                              ; preds = %158, %117, %111
  %160 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %161 = call i32 @hci_dev_unlock_bh(%struct.hci_dev* %160)
  %162 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %163 = call i32 @hci_dev_put(%struct.hci_dev* %162)
  %164 = load i32, i32* %10, align 4
  store i32 %164, i32* %2, align 4
  br label %165

165:                                              ; preds = %159, %31
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local %struct.TYPE_4__* @bt_sk(%struct.sock*) #1

declare dso_local i32 @BT_DBG(i8*, i32, i32, i64) #1

declare dso_local i32 @batostr(i32*) #1

declare dso_local %struct.TYPE_3__* @l2cap_pi(%struct.sock*) #1

declare dso_local %struct.hci_dev* @hci_get_route(i32*, i32*) #1

declare dso_local i32 @hci_dev_lock_bh(%struct.hci_dev*) #1

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local %struct.hci_conn* @hci_connect(%struct.hci_dev*, i32, i32*, i32, i32) #1

declare dso_local %struct.l2cap_conn* @l2cap_conn_add(%struct.hci_conn*, i32) #1

declare dso_local i32 @hci_conn_put(%struct.hci_conn*) #1

declare dso_local i32 @bacpy(i32*, i32) #1

declare dso_local i32 @l2cap_chan_add(%struct.l2cap_conn*, %struct.sock*, i32*) #1

declare dso_local i32 @l2cap_sock_set_timer(%struct.sock*, i32) #1

declare dso_local i32 @l2cap_sock_clear_timer(%struct.sock*) #1

declare dso_local i32 @l2cap_do_start(%struct.sock*) #1

declare dso_local i32 @hci_dev_unlock_bh(%struct.hci_dev*) #1

declare dso_local i32 @hci_dev_put(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
