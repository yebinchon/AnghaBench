; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_core.c_hci_add_acl_hdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_core.c_hci_add_acl_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.hci_acl_hdr = type { i8*, i8* }

@HCI_ACL_HDR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i32, i32)* @hci_add_acl_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_add_acl_hdr(%struct.sk_buff* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hci_acl_hdr*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = load i32, i32* @HCI_ACL_HDR_SIZE, align 4
  %14 = call i32 @skb_push(%struct.sk_buff* %12, i32 %13)
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = call i32 @skb_reset_transport_header(%struct.sk_buff* %15)
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = call i64 @skb_transport_header(%struct.sk_buff* %17)
  %19 = inttoptr i64 %18 to %struct.hci_acl_hdr*
  store %struct.hci_acl_hdr* %19, %struct.hci_acl_hdr** %7, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @hci_handle_pack(i32 %20, i32 %21)
  %23 = call i8* @cpu_to_le16(i32 %22)
  %24 = load %struct.hci_acl_hdr*, %struct.hci_acl_hdr** %7, align 8
  %25 = getelementptr inbounds %struct.hci_acl_hdr, %struct.hci_acl_hdr* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i8* @cpu_to_le16(i32 %26)
  %28 = load %struct.hci_acl_hdr*, %struct.hci_acl_hdr** %7, align 8
  %29 = getelementptr inbounds %struct.hci_acl_hdr, %struct.hci_acl_hdr* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  ret void
}

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i64 @skb_transport_header(%struct.sk_buff*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @hci_handle_pack(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
