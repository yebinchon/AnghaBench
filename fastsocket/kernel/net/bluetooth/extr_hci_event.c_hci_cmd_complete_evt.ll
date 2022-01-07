; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_event.c_hci_cmd_complete_evt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_event.c_hci_cmd_complete_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.hci_ev_cmd_complete = type { i64, i32 }

@.str = private unnamed_addr constant [15 x i8] c"%s opcode 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_cmd_complete_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_cmd_complete_evt(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_ev_cmd_complete*, align 8
  %6 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = bitcast i8* %10 to %struct.hci_ev_cmd_complete*
  store %struct.hci_ev_cmd_complete* %11, %struct.hci_ev_cmd_complete** %5, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = call i32 @skb_pull(%struct.sk_buff* %12, i32 16)
  %14 = load %struct.hci_ev_cmd_complete*, %struct.hci_ev_cmd_complete** %5, align 8
  %15 = getelementptr inbounds %struct.hci_ev_cmd_complete, %struct.hci_ev_cmd_complete* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @__le16_to_cpu(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %123 [
    i32 151, label %19
    i32 153, label %23
    i32 139, label %27
    i32 137, label %31
    i32 146, label %35
    i32 132, label %39
    i32 147, label %43
    i32 134, label %47
    i32 138, label %51
    i32 131, label %55
    i32 143, label %59
    i32 136, label %63
    i32 133, label %67
    i32 130, label %71
    i32 148, label %75
    i32 135, label %79
    i32 140, label %83
    i32 128, label %87
    i32 152, label %91
    i32 141, label %95
    i32 129, label %99
    i32 142, label %103
    i32 145, label %107
    i32 144, label %111
    i32 149, label %115
    i32 150, label %119
  ]

19:                                               ; preds = %2
  %20 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call i32 @hci_cc_inquiry_cancel(%struct.hci_dev* %20, %struct.sk_buff* %21)
  br label %129

23:                                               ; preds = %2
  %24 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = call i32 @hci_cc_exit_periodic_inq(%struct.hci_dev* %24, %struct.sk_buff* %25)
  br label %129

27:                                               ; preds = %2
  %28 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = call i32 @hci_cc_remote_name_req_cancel(%struct.hci_dev* %28, %struct.sk_buff* %29)
  br label %129

31:                                               ; preds = %2
  %32 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = call i32 @hci_cc_role_discovery(%struct.hci_dev* %32, %struct.sk_buff* %33)
  br label %129

35:                                               ; preds = %2
  %36 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = call i32 @hci_cc_read_link_policy(%struct.hci_dev* %36, %struct.sk_buff* %37)
  br label %129

39:                                               ; preds = %2
  %40 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = call i32 @hci_cc_write_link_policy(%struct.hci_dev* %40, %struct.sk_buff* %41)
  br label %129

43:                                               ; preds = %2
  %44 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = call i32 @hci_cc_read_def_link_policy(%struct.hci_dev* %44, %struct.sk_buff* %45)
  br label %129

47:                                               ; preds = %2
  %48 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = call i32 @hci_cc_write_def_link_policy(%struct.hci_dev* %48, %struct.sk_buff* %49)
  br label %129

51:                                               ; preds = %2
  %52 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = call i32 @hci_cc_reset(%struct.hci_dev* %52, %struct.sk_buff* %53)
  br label %129

55:                                               ; preds = %2
  %56 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = call i32 @hci_cc_write_local_name(%struct.hci_dev* %56, %struct.sk_buff* %57)
  br label %129

59:                                               ; preds = %2
  %60 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = call i32 @hci_cc_read_local_name(%struct.hci_dev* %60, %struct.sk_buff* %61)
  br label %129

63:                                               ; preds = %2
  %64 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = call i32 @hci_cc_write_auth_enable(%struct.hci_dev* %64, %struct.sk_buff* %65)
  br label %129

67:                                               ; preds = %2
  %68 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %70 = call i32 @hci_cc_write_encrypt_mode(%struct.hci_dev* %68, %struct.sk_buff* %69)
  br label %129

71:                                               ; preds = %2
  %72 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %74 = call i32 @hci_cc_write_scan_enable(%struct.hci_dev* %72, %struct.sk_buff* %73)
  br label %129

75:                                               ; preds = %2
  %76 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %78 = call i32 @hci_cc_read_class_of_dev(%struct.hci_dev* %76, %struct.sk_buff* %77)
  br label %129

79:                                               ; preds = %2
  %80 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %82 = call i32 @hci_cc_write_class_of_dev(%struct.hci_dev* %80, %struct.sk_buff* %81)
  br label %129

83:                                               ; preds = %2
  %84 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %86 = call i32 @hci_cc_read_voice_setting(%struct.hci_dev* %84, %struct.sk_buff* %85)
  br label %129

87:                                               ; preds = %2
  %88 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %90 = call i32 @hci_cc_write_voice_setting(%struct.hci_dev* %88, %struct.sk_buff* %89)
  br label %129

91:                                               ; preds = %2
  %92 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %94 = call i32 @hci_cc_host_buffer_size(%struct.hci_dev* %92, %struct.sk_buff* %93)
  br label %129

95:                                               ; preds = %2
  %96 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %97 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %98 = call i32 @hci_cc_read_ssp_mode(%struct.hci_dev* %96, %struct.sk_buff* %97)
  br label %129

99:                                               ; preds = %2
  %100 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %102 = call i32 @hci_cc_write_ssp_mode(%struct.hci_dev* %100, %struct.sk_buff* %101)
  br label %129

103:                                              ; preds = %2
  %104 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %105 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %106 = call i32 @hci_cc_read_local_version(%struct.hci_dev* %104, %struct.sk_buff* %105)
  br label %129

107:                                              ; preds = %2
  %108 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %109 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %110 = call i32 @hci_cc_read_local_commands(%struct.hci_dev* %108, %struct.sk_buff* %109)
  br label %129

111:                                              ; preds = %2
  %112 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %113 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %114 = call i32 @hci_cc_read_local_features(%struct.hci_dev* %112, %struct.sk_buff* %113)
  br label %129

115:                                              ; preds = %2
  %116 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %117 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %118 = call i32 @hci_cc_read_buffer_size(%struct.hci_dev* %116, %struct.sk_buff* %117)
  br label %129

119:                                              ; preds = %2
  %120 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %121 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %122 = call i32 @hci_cc_read_bd_addr(%struct.hci_dev* %120, %struct.sk_buff* %121)
  br label %129

123:                                              ; preds = %2
  %124 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %125 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %123, %119, %115, %111, %107, %103, %99, %95, %91, %87, %83, %79, %75, %71, %67, %63, %59, %55, %51, %47, %43, %39, %35, %31, %27, %23, %19
  %130 = load %struct.hci_ev_cmd_complete*, %struct.hci_ev_cmd_complete** %5, align 8
  %131 = getelementptr inbounds %struct.hci_ev_cmd_complete, %struct.hci_ev_cmd_complete* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %146

134:                                              ; preds = %129
  %135 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %136 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %135, i32 0, i32 1
  %137 = call i32 @atomic_set(i32* %136, i32 1)
  %138 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %139 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %138, i32 0, i32 0
  %140 = call i32 @skb_queue_empty(i32* %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %134
  %143 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %144 = call i32 @hci_sched_cmd(%struct.hci_dev* %143)
  br label %145

145:                                              ; preds = %142, %134
  br label %146

146:                                              ; preds = %145, %129
  ret void
}

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @hci_cc_inquiry_cancel(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_exit_periodic_inq(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_remote_name_req_cancel(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_role_discovery(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_read_link_policy(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_write_link_policy(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_read_def_link_policy(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_write_def_link_policy(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_reset(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_write_local_name(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_read_local_name(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_write_auth_enable(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_write_encrypt_mode(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_write_scan_enable(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_read_class_of_dev(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_write_class_of_dev(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_read_voice_setting(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_write_voice_setting(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_host_buffer_size(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_read_ssp_mode(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_write_ssp_mode(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_read_local_version(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_read_local_commands(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_read_local_features(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_read_buffer_size(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_read_bd_addr(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32 @hci_sched_cmd(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
