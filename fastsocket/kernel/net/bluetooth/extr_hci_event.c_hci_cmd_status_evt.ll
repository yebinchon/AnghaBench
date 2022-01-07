; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_event.c_hci_cmd_status_evt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_event.c_hci_cmd_status_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.hci_ev_cmd_status = type { i64, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"%s opcode 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_cmd_status_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_cmd_status_evt(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_ev_cmd_status*, align 8
  %6 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = bitcast i8* %10 to %struct.hci_ev_cmd_status*
  store %struct.hci_ev_cmd_status* %11, %struct.hci_ev_cmd_status** %5, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = call i32 @skb_pull(%struct.sk_buff* %12, i32 16)
  %14 = load %struct.hci_ev_cmd_status*, %struct.hci_ev_cmd_status** %5, align 8
  %15 = getelementptr inbounds %struct.hci_ev_cmd_status, %struct.hci_ev_cmd_status* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @__le16_to_cpu(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %85 [
    i32 134, label %19
    i32 136, label %25
    i32 138, label %31
    i32 137, label %37
    i32 129, label %43
    i32 131, label %49
    i32 132, label %55
    i32 133, label %61
    i32 130, label %67
    i32 128, label %73
    i32 135, label %79
  ]

19:                                               ; preds = %2
  %20 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %21 = load %struct.hci_ev_cmd_status*, %struct.hci_ev_cmd_status** %5, align 8
  %22 = getelementptr inbounds %struct.hci_ev_cmd_status, %struct.hci_ev_cmd_status* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @hci_cs_inquiry(%struct.hci_dev* %20, i32 %23)
  br label %91

25:                                               ; preds = %2
  %26 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %27 = load %struct.hci_ev_cmd_status*, %struct.hci_ev_cmd_status** %5, align 8
  %28 = getelementptr inbounds %struct.hci_ev_cmd_status, %struct.hci_ev_cmd_status* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @hci_cs_create_conn(%struct.hci_dev* %26, i32 %29)
  br label %91

31:                                               ; preds = %2
  %32 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %33 = load %struct.hci_ev_cmd_status*, %struct.hci_ev_cmd_status** %5, align 8
  %34 = getelementptr inbounds %struct.hci_ev_cmd_status, %struct.hci_ev_cmd_status* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @hci_cs_add_sco(%struct.hci_dev* %32, i32 %35)
  br label %91

37:                                               ; preds = %2
  %38 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %39 = load %struct.hci_ev_cmd_status*, %struct.hci_ev_cmd_status** %5, align 8
  %40 = getelementptr inbounds %struct.hci_ev_cmd_status, %struct.hci_ev_cmd_status* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @hci_cs_auth_requested(%struct.hci_dev* %38, i32 %41)
  br label %91

43:                                               ; preds = %2
  %44 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %45 = load %struct.hci_ev_cmd_status*, %struct.hci_ev_cmd_status** %5, align 8
  %46 = getelementptr inbounds %struct.hci_ev_cmd_status, %struct.hci_ev_cmd_status* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @hci_cs_set_conn_encrypt(%struct.hci_dev* %44, i32 %47)
  br label %91

49:                                               ; preds = %2
  %50 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %51 = load %struct.hci_ev_cmd_status*, %struct.hci_ev_cmd_status** %5, align 8
  %52 = getelementptr inbounds %struct.hci_ev_cmd_status, %struct.hci_ev_cmd_status* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @hci_cs_remote_name_req(%struct.hci_dev* %50, i32 %53)
  br label %91

55:                                               ; preds = %2
  %56 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %57 = load %struct.hci_ev_cmd_status*, %struct.hci_ev_cmd_status** %5, align 8
  %58 = getelementptr inbounds %struct.hci_ev_cmd_status, %struct.hci_ev_cmd_status* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @hci_cs_read_remote_features(%struct.hci_dev* %56, i32 %59)
  br label %91

61:                                               ; preds = %2
  %62 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %63 = load %struct.hci_ev_cmd_status*, %struct.hci_ev_cmd_status** %5, align 8
  %64 = getelementptr inbounds %struct.hci_ev_cmd_status, %struct.hci_ev_cmd_status* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @hci_cs_read_remote_ext_features(%struct.hci_dev* %62, i32 %65)
  br label %91

67:                                               ; preds = %2
  %68 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %69 = load %struct.hci_ev_cmd_status*, %struct.hci_ev_cmd_status** %5, align 8
  %70 = getelementptr inbounds %struct.hci_ev_cmd_status, %struct.hci_ev_cmd_status* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @hci_cs_setup_sync_conn(%struct.hci_dev* %68, i32 %71)
  br label %91

73:                                               ; preds = %2
  %74 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %75 = load %struct.hci_ev_cmd_status*, %struct.hci_ev_cmd_status** %5, align 8
  %76 = getelementptr inbounds %struct.hci_ev_cmd_status, %struct.hci_ev_cmd_status* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @hci_cs_sniff_mode(%struct.hci_dev* %74, i32 %77)
  br label %91

79:                                               ; preds = %2
  %80 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %81 = load %struct.hci_ev_cmd_status*, %struct.hci_ev_cmd_status** %5, align 8
  %82 = getelementptr inbounds %struct.hci_ev_cmd_status, %struct.hci_ev_cmd_status* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @hci_cs_exit_sniff_mode(%struct.hci_dev* %80, i32 %83)
  br label %91

85:                                               ; preds = %2
  %86 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %87 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %85, %79, %73, %67, %61, %55, %49, %43, %37, %31, %25, %19
  %92 = load %struct.hci_ev_cmd_status*, %struct.hci_ev_cmd_status** %5, align 8
  %93 = getelementptr inbounds %struct.hci_ev_cmd_status, %struct.hci_ev_cmd_status* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %91
  %97 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %98 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %97, i32 0, i32 1
  %99 = call i32 @atomic_set(i32* %98, i32 1)
  %100 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %101 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %100, i32 0, i32 0
  %102 = call i32 @skb_queue_empty(i32* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %96
  %105 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %106 = call i32 @hci_sched_cmd(%struct.hci_dev* %105)
  br label %107

107:                                              ; preds = %104, %96
  br label %108

108:                                              ; preds = %107, %91
  ret void
}

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @hci_cs_inquiry(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_cs_create_conn(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_cs_add_sco(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_cs_auth_requested(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_cs_set_conn_encrypt(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_cs_remote_name_req(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_cs_read_remote_features(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_cs_read_remote_ext_features(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_cs_setup_sync_conn(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_cs_sniff_mode(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_cs_exit_sniff_mode(%struct.hci_dev*, i32) #1

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
