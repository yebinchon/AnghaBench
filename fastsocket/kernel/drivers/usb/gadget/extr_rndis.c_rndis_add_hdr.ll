; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_rndis.c_rndis_add_hdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_rndis.c_rndis_add_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.rndis_packet_msg_type = type { i8*, i8*, i8*, i8* }

@REMOTE_NDIS_PACKET_MSG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rndis_add_hdr(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.rndis_packet_msg_type*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %4 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %5 = icmp ne %struct.sk_buff* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %36

7:                                                ; preds = %1
  %8 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %9 = call i64 @skb_push(%struct.sk_buff* %8, i32 32)
  %10 = inttoptr i64 %9 to i8*
  %11 = bitcast i8* %10 to %struct.rndis_packet_msg_type*
  store %struct.rndis_packet_msg_type* %11, %struct.rndis_packet_msg_type** %3, align 8
  %12 = load %struct.rndis_packet_msg_type*, %struct.rndis_packet_msg_type** %3, align 8
  %13 = call i32 @memset(%struct.rndis_packet_msg_type* %12, i32 0, i32 32)
  %14 = load i32, i32* @REMOTE_NDIS_PACKET_MSG, align 4
  %15 = call i8* @cpu_to_le32(i32 %14)
  %16 = load %struct.rndis_packet_msg_type*, %struct.rndis_packet_msg_type** %3, align 8
  %17 = getelementptr inbounds %struct.rndis_packet_msg_type, %struct.rndis_packet_msg_type* %16, i32 0, i32 3
  store i8* %15, i8** %17, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @cpu_to_le32(i32 %20)
  %22 = load %struct.rndis_packet_msg_type*, %struct.rndis_packet_msg_type** %3, align 8
  %23 = getelementptr inbounds %struct.rndis_packet_msg_type, %struct.rndis_packet_msg_type* %22, i32 0, i32 2
  store i8* %21, i8** %23, align 8
  %24 = call i8* @cpu_to_le32(i32 36)
  %25 = load %struct.rndis_packet_msg_type*, %struct.rndis_packet_msg_type** %3, align 8
  %26 = getelementptr inbounds %struct.rndis_packet_msg_type, %struct.rndis_packet_msg_type* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = sub i64 %30, 32
  %32 = trunc i64 %31 to i32
  %33 = call i8* @cpu_to_le32(i32 %32)
  %34 = load %struct.rndis_packet_msg_type*, %struct.rndis_packet_msg_type** %3, align 8
  %35 = getelementptr inbounds %struct.rndis_packet_msg_type, %struct.rndis_packet_msg_type* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  br label %36

36:                                               ; preds = %7, %6
  ret void
}

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(%struct.rndis_packet_msg_type*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
