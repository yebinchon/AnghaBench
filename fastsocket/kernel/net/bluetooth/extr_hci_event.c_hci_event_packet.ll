; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_event.c_hci_event_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_event.c_hci_event_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i64 }
%struct.hci_event_hdr = type { i32 }

@HCI_EVENT_HDR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"%s event 0x%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hci_event_packet(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_event_hdr*, align 8
  %6 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = bitcast i8* %10 to %struct.hci_event_hdr*
  store %struct.hci_event_hdr* %11, %struct.hci_event_hdr** %5, align 8
  %12 = load %struct.hci_event_hdr*, %struct.hci_event_hdr** %5, align 8
  %13 = getelementptr inbounds %struct.hci_event_hdr, %struct.hci_event_hdr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = load i32, i32* @HCI_EVENT_HDR_SIZE, align 4
  %17 = call i32 @skb_pull(%struct.sk_buff* %15, i32 %16)
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %147 [
    i32 149, label %19
    i32 148, label %23
    i32 154, label %27
    i32 153, label %31
    i32 152, label %35
    i32 159, label %39
    i32 134, label %43
    i32 151, label %47
    i32 158, label %51
    i32 136, label %55
    i32 133, label %59
    i32 138, label %63
    i32 156, label %67
    i32 155, label %71
    i32 132, label %75
    i32 142, label %79
    i32 143, label %83
    i32 141, label %87
    i32 144, label %91
    i32 145, label %95
    i32 157, label %99
    i32 140, label %103
    i32 139, label %107
    i32 147, label %111
    i32 137, label %115
    i32 128, label %119
    i32 129, label %123
    i32 130, label %127
    i32 150, label %131
    i32 146, label %135
    i32 131, label %139
    i32 135, label %143
  ]

19:                                               ; preds = %2
  %20 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call i32 @hci_inquiry_complete_evt(%struct.hci_dev* %20, %struct.sk_buff* %21)
  br label %153

23:                                               ; preds = %2
  %24 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = call i32 @hci_inquiry_result_evt(%struct.hci_dev* %24, %struct.sk_buff* %25)
  br label %153

27:                                               ; preds = %2
  %28 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = call i32 @hci_conn_complete_evt(%struct.hci_dev* %28, %struct.sk_buff* %29)
  br label %153

31:                                               ; preds = %2
  %32 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = call i32 @hci_conn_request_evt(%struct.hci_dev* %32, %struct.sk_buff* %33)
  br label %153

35:                                               ; preds = %2
  %36 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = call i32 @hci_disconn_complete_evt(%struct.hci_dev* %36, %struct.sk_buff* %37)
  br label %153

39:                                               ; preds = %2
  %40 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = call i32 @hci_auth_complete_evt(%struct.hci_dev* %40, %struct.sk_buff* %41)
  br label %153

43:                                               ; preds = %2
  %44 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = call i32 @hci_remote_name_evt(%struct.hci_dev* %44, %struct.sk_buff* %45)
  br label %153

47:                                               ; preds = %2
  %48 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = call i32 @hci_encrypt_change_evt(%struct.hci_dev* %48, %struct.sk_buff* %49)
  br label %153

51:                                               ; preds = %2
  %52 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = call i32 @hci_change_link_key_complete_evt(%struct.hci_dev* %52, %struct.sk_buff* %53)
  br label %153

55:                                               ; preds = %2
  %56 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = call i32 @hci_remote_features_evt(%struct.hci_dev* %56, %struct.sk_buff* %57)
  br label %153

59:                                               ; preds = %2
  %60 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = call i32 @hci_remote_version_evt(%struct.hci_dev* %60, %struct.sk_buff* %61)
  br label %153

63:                                               ; preds = %2
  %64 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = call i32 @hci_qos_setup_complete_evt(%struct.hci_dev* %64, %struct.sk_buff* %65)
  br label %153

67:                                               ; preds = %2
  %68 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %70 = call i32 @hci_cmd_complete_evt(%struct.hci_dev* %68, %struct.sk_buff* %69)
  br label %153

71:                                               ; preds = %2
  %72 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %74 = call i32 @hci_cmd_status_evt(%struct.hci_dev* %72, %struct.sk_buff* %73)
  br label %153

75:                                               ; preds = %2
  %76 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %78 = call i32 @hci_role_change_evt(%struct.hci_dev* %76, %struct.sk_buff* %77)
  br label %153

79:                                               ; preds = %2
  %80 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %82 = call i32 @hci_num_comp_pkts_evt(%struct.hci_dev* %80, %struct.sk_buff* %81)
  br label %153

83:                                               ; preds = %2
  %84 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %86 = call i32 @hci_mode_change_evt(%struct.hci_dev* %84, %struct.sk_buff* %85)
  br label %153

87:                                               ; preds = %2
  %88 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %90 = call i32 @hci_pin_code_request_evt(%struct.hci_dev* %88, %struct.sk_buff* %89)
  br label %153

91:                                               ; preds = %2
  %92 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %94 = call i32 @hci_link_key_request_evt(%struct.hci_dev* %92, %struct.sk_buff* %93)
  br label %153

95:                                               ; preds = %2
  %96 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %97 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %98 = call i32 @hci_link_key_notify_evt(%struct.hci_dev* %96, %struct.sk_buff* %97)
  br label %153

99:                                               ; preds = %2
  %100 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %102 = call i32 @hci_clock_offset_evt(%struct.hci_dev* %100, %struct.sk_buff* %101)
  br label %153

103:                                              ; preds = %2
  %104 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %105 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %106 = call i32 @hci_pkt_type_change_evt(%struct.hci_dev* %104, %struct.sk_buff* %105)
  br label %153

107:                                              ; preds = %2
  %108 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %109 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %110 = call i32 @hci_pscan_rep_mode_evt(%struct.hci_dev* %108, %struct.sk_buff* %109)
  br label %153

111:                                              ; preds = %2
  %112 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %113 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %114 = call i32 @hci_inquiry_result_with_rssi_evt(%struct.hci_dev* %112, %struct.sk_buff* %113)
  br label %153

115:                                              ; preds = %2
  %116 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %117 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %118 = call i32 @hci_remote_ext_features_evt(%struct.hci_dev* %116, %struct.sk_buff* %117)
  br label %153

119:                                              ; preds = %2
  %120 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %121 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %122 = call i32 @hci_sync_conn_complete_evt(%struct.hci_dev* %120, %struct.sk_buff* %121)
  br label %153

123:                                              ; preds = %2
  %124 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %125 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %126 = call i32 @hci_sync_conn_changed_evt(%struct.hci_dev* %124, %struct.sk_buff* %125)
  br label %153

127:                                              ; preds = %2
  %128 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %129 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %130 = call i32 @hci_sniff_subrate_evt(%struct.hci_dev* %128, %struct.sk_buff* %129)
  br label %153

131:                                              ; preds = %2
  %132 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %133 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %134 = call i32 @hci_extended_inquiry_result_evt(%struct.hci_dev* %132, %struct.sk_buff* %133)
  br label %153

135:                                              ; preds = %2
  %136 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %137 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %138 = call i32 @hci_io_capa_request_evt(%struct.hci_dev* %136, %struct.sk_buff* %137)
  br label %153

139:                                              ; preds = %2
  %140 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %141 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %142 = call i32 @hci_simple_pair_complete_evt(%struct.hci_dev* %140, %struct.sk_buff* %141)
  br label %153

143:                                              ; preds = %2
  %144 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %145 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %146 = call i32 @hci_remote_host_features_evt(%struct.hci_dev* %144, %struct.sk_buff* %145)
  br label %153

147:                                              ; preds = %2
  %148 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %149 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %6, align 4
  %152 = call i32 @BT_DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %150, i32 %151)
  br label %153

153:                                              ; preds = %147, %143, %139, %135, %131, %127, %123, %119, %115, %111, %107, %103, %99, %95, %91, %87, %83, %79, %75, %71, %67, %63, %59, %55, %51, %47, %43, %39, %35, %31, %27, %23, %19
  %154 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %155 = call i32 @kfree_skb(%struct.sk_buff* %154)
  %156 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %157 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %158, align 4
  ret void
}

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @hci_inquiry_complete_evt(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_inquiry_result_evt(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_conn_complete_evt(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_conn_request_evt(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_disconn_complete_evt(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_auth_complete_evt(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_remote_name_evt(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_encrypt_change_evt(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_change_link_key_complete_evt(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_remote_features_evt(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_remote_version_evt(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_qos_setup_complete_evt(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cmd_complete_evt(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cmd_status_evt(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_role_change_evt(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_num_comp_pkts_evt(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_mode_change_evt(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_pin_code_request_evt(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_link_key_request_evt(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_link_key_notify_evt(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_clock_offset_evt(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_pkt_type_change_evt(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_pscan_rep_mode_evt(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_inquiry_result_with_rssi_evt(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_remote_ext_features_evt(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_sync_conn_complete_evt(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_sync_conn_changed_evt(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_sniff_subrate_evt(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_extended_inquiry_result_evt(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_io_capa_request_evt(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_simple_pair_complete_evt(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_remote_host_features_evt(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
