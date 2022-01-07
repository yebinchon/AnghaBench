; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_sig_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_sig_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { i32 }
%struct.sk_buff = type { i32, %struct.l2cap_cmd_rej* }
%struct.l2cap_cmd_rej = type { i32 }
%struct.l2cap_cmd_hdr = type { i32, i32, i32 }

@L2CAP_CMD_HDR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"code 0x%2.2x len %d id 0x%2.2x\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"corrupted command\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Unknown signaling command 0x%2.2x\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"error %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_conn*, %struct.sk_buff*)* @l2cap_sig_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_sig_channel(%struct.l2cap_conn* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.l2cap_conn*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.l2cap_cmd_rej*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.l2cap_cmd_hdr, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.l2cap_cmd_rej, align 4
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 1
  %13 = load %struct.l2cap_cmd_rej*, %struct.l2cap_cmd_rej** %12, align 8
  store %struct.l2cap_cmd_rej* %13, %struct.l2cap_cmd_rej** %5, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %17 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call i32 @l2cap_raw_recv(%struct.l2cap_conn* %17, %struct.sk_buff* %18)
  br label %20

20:                                               ; preds = %119, %2
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @L2CAP_CMD_HDR_SIZE, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %127

24:                                               ; preds = %20
  %25 = load %struct.l2cap_cmd_rej*, %struct.l2cap_cmd_rej** %5, align 8
  %26 = load i32, i32* @L2CAP_CMD_HDR_SIZE, align 4
  %27 = call i32 @memcpy(%struct.l2cap_cmd_hdr* %7, %struct.l2cap_cmd_rej* %25, i32 %26)
  %28 = load i32, i32* @L2CAP_CMD_HDR_SIZE, align 4
  %29 = load %struct.l2cap_cmd_rej*, %struct.l2cap_cmd_rej** %5, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds %struct.l2cap_cmd_rej, %struct.l2cap_cmd_rej* %29, i64 %30
  store %struct.l2cap_cmd_rej* %31, %struct.l2cap_cmd_rej** %5, align 8
  %32 = load i32, i32* @L2CAP_CMD_HDR_SIZE, align 4
  %33 = load i32, i32* %6, align 4
  %34 = sub nsw i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %7, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @le16_to_cpu(i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %7, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %9, align 4
  %41 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %7, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40, i32 %42)
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %24
  %48 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %7, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %47, %24
  %52 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %127

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %7, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  switch i32 %55, label %101 [
    i32 138, label %56
    i32 135, label %60
    i32 134, label %64
    i32 137, label %68
    i32 136, label %73
    i32 133, label %77
    i32 132, label %81
    i32 131, label %85
    i32 130, label %92
    i32 129, label %93
    i32 128, label %97
  ]

56:                                               ; preds = %53
  %57 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %58 = load %struct.l2cap_cmd_rej*, %struct.l2cap_cmd_rej** %5, align 8
  %59 = call i32 @l2cap_command_rej(%struct.l2cap_conn* %57, %struct.l2cap_cmd_hdr* %7, %struct.l2cap_cmd_rej* %58)
  br label %107

60:                                               ; preds = %53
  %61 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %62 = load %struct.l2cap_cmd_rej*, %struct.l2cap_cmd_rej** %5, align 8
  %63 = call i32 @l2cap_connect_req(%struct.l2cap_conn* %61, %struct.l2cap_cmd_hdr* %7, %struct.l2cap_cmd_rej* %62)
  store i32 %63, i32* %8, align 4
  br label %107

64:                                               ; preds = %53
  %65 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %66 = load %struct.l2cap_cmd_rej*, %struct.l2cap_cmd_rej** %5, align 8
  %67 = call i32 @l2cap_connect_rsp(%struct.l2cap_conn* %65, %struct.l2cap_cmd_hdr* %7, %struct.l2cap_cmd_rej* %66)
  store i32 %67, i32* %8, align 4
  br label %107

68:                                               ; preds = %53
  %69 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.l2cap_cmd_rej*, %struct.l2cap_cmd_rej** %5, align 8
  %72 = call i32 @l2cap_config_req(%struct.l2cap_conn* %69, %struct.l2cap_cmd_hdr* %7, i32 %70, %struct.l2cap_cmd_rej* %71)
  store i32 %72, i32* %8, align 4
  br label %107

73:                                               ; preds = %53
  %74 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %75 = load %struct.l2cap_cmd_rej*, %struct.l2cap_cmd_rej** %5, align 8
  %76 = call i32 @l2cap_config_rsp(%struct.l2cap_conn* %74, %struct.l2cap_cmd_hdr* %7, %struct.l2cap_cmd_rej* %75)
  store i32 %76, i32* %8, align 4
  br label %107

77:                                               ; preds = %53
  %78 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %79 = load %struct.l2cap_cmd_rej*, %struct.l2cap_cmd_rej** %5, align 8
  %80 = call i32 @l2cap_disconnect_req(%struct.l2cap_conn* %78, %struct.l2cap_cmd_hdr* %7, %struct.l2cap_cmd_rej* %79)
  store i32 %80, i32* %8, align 4
  br label %107

81:                                               ; preds = %53
  %82 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %83 = load %struct.l2cap_cmd_rej*, %struct.l2cap_cmd_rej** %5, align 8
  %84 = call i32 @l2cap_disconnect_rsp(%struct.l2cap_conn* %82, %struct.l2cap_cmd_hdr* %7, %struct.l2cap_cmd_rej* %83)
  store i32 %84, i32* %8, align 4
  br label %107

85:                                               ; preds = %53
  %86 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %87 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %7, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.l2cap_cmd_rej*, %struct.l2cap_cmd_rej** %5, align 8
  %91 = call i32 @l2cap_send_cmd(%struct.l2cap_conn* %86, i32 %88, i32 130, i32 %89, %struct.l2cap_cmd_rej* %90)
  br label %107

92:                                               ; preds = %53
  br label %107

93:                                               ; preds = %53
  %94 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %95 = load %struct.l2cap_cmd_rej*, %struct.l2cap_cmd_rej** %5, align 8
  %96 = call i32 @l2cap_information_req(%struct.l2cap_conn* %94, %struct.l2cap_cmd_hdr* %7, %struct.l2cap_cmd_rej* %95)
  store i32 %96, i32* %8, align 4
  br label %107

97:                                               ; preds = %53
  %98 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %99 = load %struct.l2cap_cmd_rej*, %struct.l2cap_cmd_rej** %5, align 8
  %100 = call i32 @l2cap_information_rsp(%struct.l2cap_conn* %98, %struct.l2cap_cmd_hdr* %7, %struct.l2cap_cmd_rej* %99)
  store i32 %100, i32* %8, align 4
  br label %107

101:                                              ; preds = %53
  %102 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %7, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @BT_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %8, align 4
  br label %107

107:                                              ; preds = %101, %97, %93, %92, %85, %81, %77, %73, %68, %64, %60, %56
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %107
  %111 = load i32, i32* %8, align 4
  %112 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %111)
  %113 = call i32 @cpu_to_le16(i32 0)
  %114 = getelementptr inbounds %struct.l2cap_cmd_rej, %struct.l2cap_cmd_rej* %10, i32 0, i32 0
  store i32 %113, i32* %114, align 4
  %115 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %116 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %7, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @l2cap_send_cmd(%struct.l2cap_conn* %115, i32 %117, i32 138, i32 4, %struct.l2cap_cmd_rej* %10)
  br label %119

119:                                              ; preds = %110, %107
  %120 = load i32, i32* %9, align 4
  %121 = load %struct.l2cap_cmd_rej*, %struct.l2cap_cmd_rej** %5, align 8
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds %struct.l2cap_cmd_rej, %struct.l2cap_cmd_rej* %121, i64 %122
  store %struct.l2cap_cmd_rej* %123, %struct.l2cap_cmd_rej** %5, align 8
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* %6, align 4
  %126 = sub nsw i32 %125, %124
  store i32 %126, i32* %6, align 4
  br label %20

127:                                              ; preds = %51, %20
  %128 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %129 = call i32 @kfree_skb(%struct.sk_buff* %128)
  ret void
}

declare dso_local i32 @l2cap_raw_recv(%struct.l2cap_conn*, %struct.sk_buff*) #1

declare dso_local i32 @memcpy(%struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_rej*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @BT_DBG(i8*, ...) #1

declare dso_local i32 @l2cap_command_rej(%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_rej*) #1

declare dso_local i32 @l2cap_connect_req(%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_rej*) #1

declare dso_local i32 @l2cap_connect_rsp(%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_rej*) #1

declare dso_local i32 @l2cap_config_req(%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, i32, %struct.l2cap_cmd_rej*) #1

declare dso_local i32 @l2cap_config_rsp(%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_rej*) #1

declare dso_local i32 @l2cap_disconnect_req(%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_rej*) #1

declare dso_local i32 @l2cap_disconnect_rsp(%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_rej*) #1

declare dso_local i32 @l2cap_send_cmd(%struct.l2cap_conn*, i32, i32, i32, %struct.l2cap_cmd_rej*) #1

declare dso_local i32 @l2cap_information_req(%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_rej*) #1

declare dso_local i32 @l2cap_information_rsp(%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_rej*) #1

declare dso_local i32 @BT_ERR(i8*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
