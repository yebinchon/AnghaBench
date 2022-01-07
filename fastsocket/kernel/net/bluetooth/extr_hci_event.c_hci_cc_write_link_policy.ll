; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_event.c_hci_cc_write_link_policy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_event.c_hci_cc_write_link_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i64 }
%struct.hci_rp_write_link_policy = type { i32, i64 }
%struct.hci_conn = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"%s status 0x%x\00", align 1
@HCI_OP_WRITE_LINK_POLICY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_cc_write_link_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_cc_write_link_policy(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_rp_write_link_policy*, align 8
  %6 = alloca %struct.hci_conn*, align 8
  %7 = alloca i8*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = bitcast i8* %11 to %struct.hci_rp_write_link_policy*
  store %struct.hci_rp_write_link_policy* %12, %struct.hci_rp_write_link_policy** %5, align 8
  %13 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %14 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.hci_rp_write_link_policy*, %struct.hci_rp_write_link_policy** %5, align 8
  %17 = getelementptr inbounds %struct.hci_rp_write_link_policy, %struct.hci_rp_write_link_policy* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %15, i64 %18)
  %20 = load %struct.hci_rp_write_link_policy*, %struct.hci_rp_write_link_policy** %5, align 8
  %21 = getelementptr inbounds %struct.hci_rp_write_link_policy, %struct.hci_rp_write_link_policy* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %52

25:                                               ; preds = %2
  %26 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %27 = load i32, i32* @HCI_OP_WRITE_LINK_POLICY, align 4
  %28 = call i8* @hci_sent_cmd_data(%struct.hci_dev* %26, i32 %27)
  store i8* %28, i8** %7, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  br label %52

32:                                               ; preds = %25
  %33 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %34 = call i32 @hci_dev_lock(%struct.hci_dev* %33)
  %35 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %36 = load %struct.hci_rp_write_link_policy*, %struct.hci_rp_write_link_policy** %5, align 8
  %37 = getelementptr inbounds %struct.hci_rp_write_link_policy, %struct.hci_rp_write_link_policy* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @__le16_to_cpu(i32 %38)
  %40 = call %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev* %35, i32 %39)
  store %struct.hci_conn* %40, %struct.hci_conn** %6, align 8
  %41 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %42 = icmp ne %struct.hci_conn* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %32
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr i8, i8* %44, i64 2
  %46 = call i32 @get_unaligned_le16(i8* %45)
  %47 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %48 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %43, %32
  %50 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %51 = call i32 @hci_dev_unlock(%struct.hci_dev* %50)
  br label %52

52:                                               ; preds = %49, %31, %24
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i64) #1

declare dso_local i8* @hci_sent_cmd_data(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev*, i32) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @get_unaligned_le16(i8*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
