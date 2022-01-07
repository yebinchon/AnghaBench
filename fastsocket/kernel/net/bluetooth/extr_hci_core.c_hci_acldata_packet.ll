; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_core.c_hci_acldata_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_core.c_hci_acldata_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_proto = type { i32 (%struct.hci_conn.0*, %struct.sk_buff*, i32)* }
%struct.hci_conn.0 = type opaque
%struct.sk_buff = type { i32, i64 }
%struct.hci_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hci_acl_hdr = type { i32 }
%struct.hci_conn = type { i32 }

@HCI_ACL_HDR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%s len %d handle 0x%x flags 0x%x\00", align 1
@hci_proto = common dso_local global %struct.hci_proto** null, align 8
@HCI_PROTO_L2CAP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"%s ACL packet for unknown connection handle %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_acldata_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_acldata_packet(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_acl_hdr*, align 8
  %6 = alloca %struct.hci_conn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hci_proto*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to %struct.hci_acl_hdr*
  store %struct.hci_acl_hdr* %14, %struct.hci_acl_hdr** %5, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = load i32, i32* @HCI_ACL_HDR_SIZE, align 4
  %17 = call i32 @skb_pull(%struct.sk_buff* %15, i32 %16)
  %18 = load %struct.hci_acl_hdr*, %struct.hci_acl_hdr** %5, align 8
  %19 = getelementptr inbounds %struct.hci_acl_hdr, %struct.hci_acl_hdr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @__le16_to_cpu(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @hci_flags(i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @hci_handle(i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %27 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @BT_DBG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %31, i32 %32, i32 %33)
  %35 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %36 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %41 = call i32 @hci_dev_lock(%struct.hci_dev* %40)
  %42 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev* %42, i32 %43)
  store %struct.hci_conn* %44, %struct.hci_conn** %6, align 8
  %45 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %46 = call i32 @hci_dev_unlock(%struct.hci_dev* %45)
  %47 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %48 = icmp ne %struct.hci_conn* %47, null
  br i1 %48, label %49, label %72

49:                                               ; preds = %2
  %50 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %51 = call i32 @hci_conn_enter_active_mode(%struct.hci_conn* %50)
  %52 = load %struct.hci_proto**, %struct.hci_proto*** @hci_proto, align 8
  %53 = load i64, i64* @HCI_PROTO_L2CAP, align 8
  %54 = getelementptr inbounds %struct.hci_proto*, %struct.hci_proto** %52, i64 %53
  %55 = load %struct.hci_proto*, %struct.hci_proto** %54, align 8
  store %struct.hci_proto* %55, %struct.hci_proto** %9, align 8
  %56 = icmp ne %struct.hci_proto* %55, null
  br i1 %56, label %57, label %71

57:                                               ; preds = %49
  %58 = load %struct.hci_proto*, %struct.hci_proto** %9, align 8
  %59 = getelementptr inbounds %struct.hci_proto, %struct.hci_proto* %58, i32 0, i32 0
  %60 = load i32 (%struct.hci_conn.0*, %struct.sk_buff*, i32)*, i32 (%struct.hci_conn.0*, %struct.sk_buff*, i32)** %59, align 8
  %61 = icmp ne i32 (%struct.hci_conn.0*, %struct.sk_buff*, i32)* %60, null
  br i1 %61, label %62, label %71

62:                                               ; preds = %57
  %63 = load %struct.hci_proto*, %struct.hci_proto** %9, align 8
  %64 = getelementptr inbounds %struct.hci_proto, %struct.hci_proto* %63, i32 0, i32 0
  %65 = load i32 (%struct.hci_conn.0*, %struct.sk_buff*, i32)*, i32 (%struct.hci_conn.0*, %struct.sk_buff*, i32)** %64, align 8
  %66 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %67 = bitcast %struct.hci_conn* %66 to %struct.hci_conn.0*
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 %65(%struct.hci_conn.0* %67, %struct.sk_buff* %68, i32 %69)
  br label %81

71:                                               ; preds = %57, %49
  br label %78

72:                                               ; preds = %2
  %73 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %74 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @BT_ERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %72, %71
  %79 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %80 = call i32 @kfree_skb(%struct.sk_buff* %79)
  br label %81

81:                                               ; preds = %78, %62
  ret void
}

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @hci_flags(i32) #1

declare dso_local i32 @hci_handle(i32) #1

declare dso_local i32 @BT_DBG(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

declare dso_local i32 @hci_conn_enter_active_mode(%struct.hci_conn*) #1

declare dso_local i32 @BT_ERR(i8*, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
