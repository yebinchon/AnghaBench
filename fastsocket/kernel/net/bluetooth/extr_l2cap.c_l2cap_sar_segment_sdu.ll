; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_sar_segment_sdu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_sar_segment_sdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32* }
%struct.msghdr = type { i32 }
%struct.l2cap_pinfo = type { i64 }
%struct.sk_buff = type { i32 }
%struct.sk_buff_head = type { i32* }

@L2CAP_SDU_START = common dso_local global i32 0, align 4
@L2CAP_SDU_CONTINUE = common dso_local global i32 0, align 4
@L2CAP_SDU_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.msghdr*, i64)* @l2cap_sar_segment_sdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_sar_segment_sdu(%struct.sock* %0, %struct.msghdr* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.msghdr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.l2cap_pinfo*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.sk_buff_head, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.msghdr* %1, %struct.msghdr** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.sock*, %struct.sock** %5, align 8
  %15 = call %struct.l2cap_pinfo* @l2cap_pi(%struct.sock* %14)
  store %struct.l2cap_pinfo* %15, %struct.l2cap_pinfo** %8, align 8
  store i64 0, i64* %12, align 8
  %16 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %10)
  %17 = load i32, i32* @L2CAP_SDU_START, align 4
  store i32 %17, i32* %11, align 4
  %18 = load %struct.sock*, %struct.sock** %5, align 8
  %19 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %20 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %8, align 8
  %21 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load i64, i64* %7, align 8
  %25 = call %struct.sk_buff* @l2cap_create_iframe_pdu(%struct.sock* %18, %struct.msghdr* %19, i64 %22, i32 %23, i64 %24)
  store %struct.sk_buff* %25, %struct.sk_buff** %9, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %27 = call i64 @IS_ERR(%struct.sk_buff* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %31 = call i32 @PTR_ERR(%struct.sk_buff* %30)
  store i32 %31, i32* %4, align 4
  br label %104

32:                                               ; preds = %3
  %33 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %34 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %10, %struct.sk_buff* %33)
  %35 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %8, align 8
  %36 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = sub i64 %38, %37
  store i64 %39, i64* %7, align 8
  %40 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %8, align 8
  %41 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %12, align 8
  %44 = add i64 %43, %42
  store i64 %44, i64* %12, align 8
  store i32 0, i32* %11, align 4
  br label %45

45:                                               ; preds = %79, %32
  %46 = load i64, i64* %7, align 8
  %47 = icmp ugt i64 %46, 0
  br i1 %47, label %48, label %88

48:                                               ; preds = %45
  %49 = load i64, i64* %7, align 8
  %50 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %8, align 8
  %51 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ugt i64 %49, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %48
  %55 = load i32, i32* @L2CAP_SDU_CONTINUE, align 4
  %56 = load i32, i32* %11, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %11, align 4
  %58 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %8, align 8
  %59 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %13, align 8
  br label %66

61:                                               ; preds = %48
  %62 = load i32, i32* @L2CAP_SDU_END, align 4
  %63 = load i32, i32* %11, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %11, align 4
  %65 = load i64, i64* %7, align 8
  store i64 %65, i64* %13, align 8
  br label %66

66:                                               ; preds = %61, %54
  %67 = load %struct.sock*, %struct.sock** %5, align 8
  %68 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %69 = load i64, i64* %13, align 8
  %70 = load i32, i32* %11, align 4
  %71 = call %struct.sk_buff* @l2cap_create_iframe_pdu(%struct.sock* %67, %struct.msghdr* %68, i64 %69, i32 %70, i64 0)
  store %struct.sk_buff* %71, %struct.sk_buff** %9, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %73 = call i64 @IS_ERR(%struct.sk_buff* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %66
  %76 = call i32 @skb_queue_purge(%struct.sk_buff_head* %10)
  %77 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %78 = call i32 @PTR_ERR(%struct.sk_buff* %77)
  store i32 %78, i32* %4, align 4
  br label %104

79:                                               ; preds = %66
  %80 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %81 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %10, %struct.sk_buff* %80)
  %82 = load i64, i64* %13, align 8
  %83 = load i64, i64* %7, align 8
  %84 = sub i64 %83, %82
  store i64 %84, i64* %7, align 8
  %85 = load i64, i64* %13, align 8
  %86 = load i64, i64* %12, align 8
  %87 = add i64 %86, %85
  store i64 %87, i64* %12, align 8
  store i32 0, i32* %11, align 4
  br label %45

88:                                               ; preds = %45
  %89 = load %struct.sock*, %struct.sock** %5, align 8
  %90 = call i32 @TX_QUEUE(%struct.sock* %89)
  %91 = call i32 @skb_queue_splice_tail(%struct.sk_buff_head* %10, i32 %90)
  %92 = load %struct.sock*, %struct.sock** %5, align 8
  %93 = getelementptr inbounds %struct.sock, %struct.sock* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = icmp eq i32* %94, null
  br i1 %95, label %96, label %101

96:                                               ; preds = %88
  %97 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %10, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.sock*, %struct.sock** %5, align 8
  %100 = getelementptr inbounds %struct.sock, %struct.sock* %99, i32 0, i32 0
  store i32* %98, i32** %100, align 8
  br label %101

101:                                              ; preds = %96, %88
  %102 = load i64, i64* %12, align 8
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %101, %75, %29
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local %struct.l2cap_pinfo* @l2cap_pi(%struct.sock*) #1

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local %struct.sk_buff* @l2cap_create_iframe_pdu(%struct.sock*, %struct.msghdr*, i64, i32, i64) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local i32 @skb_queue_purge(%struct.sk_buff_head*) #1

declare dso_local i32 @skb_queue_splice_tail(%struct.sk_buff_head*, i32) #1

declare dso_local i32 @TX_QUEUE(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
