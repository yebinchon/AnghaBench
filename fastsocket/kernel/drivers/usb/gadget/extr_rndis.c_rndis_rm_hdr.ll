; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_rndis.c_rndis_rm_hdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_rndis.c_rndis_rm_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gether = type { i32 }
%struct.sk_buff = type { i64 }
%struct.sk_buff_head = type { i32 }

@REMOTE_NDIS_PACKET_MSG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rndis_rm_hdr(%struct.gether* %0, %struct.sk_buff* %1, %struct.sk_buff_head* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gether*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sk_buff_head*, align 8
  %8 = alloca i32*, align 8
  store %struct.gether* %0, %struct.gether** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.sk_buff_head* %2, %struct.sk_buff_head** %7, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %8, align 8
  %14 = load i32, i32* @REMOTE_NDIS_PACKET_MSG, align 4
  %15 = call i64 @cpu_to_le32(i32 %14)
  %16 = load i32*, i32** %8, align 8
  %17 = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %17, i32** %8, align 8
  %18 = ptrtoint i32* %16 to i32
  %19 = call i64 @get_unaligned(i32 %18)
  %20 = icmp ne i64 %15, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %22)
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %52

26:                                               ; preds = %3
  %27 = load i32*, i32** %8, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %8, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %8, align 8
  %32 = ptrtoint i32* %30 to i32
  %33 = call i64 @get_unaligned_le32(i32 %32)
  %34 = add nsw i64 %33, 8
  %35 = call i32 @skb_pull(%struct.sk_buff* %29, i64 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %26
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %38)
  %40 = load i32, i32* @EOVERFLOW, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %52

42:                                               ; preds = %26
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %8, align 8
  %46 = ptrtoint i32* %44 to i32
  %47 = call i64 @get_unaligned_le32(i32 %46)
  %48 = call i32 @skb_trim(%struct.sk_buff* %43, i64 %47)
  %49 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %51 = call i32 @skb_queue_tail(%struct.sk_buff_head* %49, %struct.sk_buff* %50)
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %42, %37, %21
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i64 @get_unaligned(i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

declare dso_local i64 @get_unaligned_le32(i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
