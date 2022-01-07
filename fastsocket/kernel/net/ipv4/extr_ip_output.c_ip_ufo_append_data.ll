; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_output.c_ip_ufo_append_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_output.c_ip_ufo_append_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.sk_buff = type { i32, i64, i64, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@MSG_DONTWAIT = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i32 0, align 4
@SKB_GSO_UDP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff_head*, i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)*, i8*, i32, i32, i32, i32, i32, i32)* @ip_ufo_append_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_ufo_append_data(%struct.sock* %0, %struct.sk_buff_head* %1, i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)* %2, i8* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.sock*, align 8
  %13 = alloca %struct.sk_buff_head*, align 8
  %14 = alloca i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.sk_buff*, align 8
  %23 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %12, align 8
  store %struct.sk_buff_head* %1, %struct.sk_buff_head** %13, align 8
  store i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)* %2, i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)** %14, align 8
  store i8* %3, i8** %15, align 8
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  %24 = load %struct.sk_buff_head*, %struct.sk_buff_head** %13, align 8
  %25 = call %struct.sk_buff* @skb_peek_tail(%struct.sk_buff_head* %24)
  store %struct.sk_buff* %25, %struct.sk_buff** %22, align 8
  %26 = icmp eq %struct.sk_buff* %25, null
  br i1 %26, label %27, label %67

27:                                               ; preds = %10
  %28 = load %struct.sock*, %struct.sock** %12, align 8
  %29 = load i32, i32* %17, align 4
  %30 = load i32, i32* %18, align 4
  %31 = add nsw i32 %29, %30
  %32 = load i32, i32* %19, align 4
  %33 = add nsw i32 %31, %32
  %34 = add nsw i32 %33, 20
  %35 = load i32, i32* %21, align 4
  %36 = load i32, i32* @MSG_DONTWAIT, align 4
  %37 = and i32 %35, %36
  %38 = call %struct.sk_buff* @sock_alloc_send_skb(%struct.sock* %28, i32 %34, i32 %37, i32* %23)
  store %struct.sk_buff* %38, %struct.sk_buff** %22, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %40 = icmp eq %struct.sk_buff* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %27
  %42 = load i32, i32* %23, align 4
  store i32 %42, i32* %11, align 4
  br label %96

43:                                               ; preds = %27
  %44 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %45 = load i32, i32* %17, align 4
  %46 = call i32 @skb_reserve(%struct.sk_buff* %44, i32 %45)
  %47 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %48 = load i32, i32* %18, align 4
  %49 = load i32, i32* %19, align 4
  %50 = add nsw i32 %48, %49
  %51 = call i32 @skb_put(%struct.sk_buff* %47, i32 %50)
  %52 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %53 = call i32 @skb_reset_network_header(%struct.sk_buff* %52)
  %54 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %18, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %56, %58
  %60 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 3
  store i64 %59, i64* %61, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 1
  store i64 0, i64* %63, align 8
  %64 = load %struct.sk_buff_head*, %struct.sk_buff_head** %13, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %66 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %64, %struct.sk_buff* %65)
  br label %73

67:                                               ; preds = %10
  %68 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %69 = call i64 @skb_is_gso(%struct.sk_buff* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %87

72:                                               ; preds = %67
  br label %73

73:                                               ; preds = %72, %43
  %74 = load i32, i32* @CHECKSUM_PARTIAL, align 4
  %75 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* %20, align 4
  %78 = load i32, i32* %18, align 4
  %79 = sub nsw i32 %77, %78
  %80 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %81 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %80)
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 4
  %83 = load i32, i32* @SKB_GSO_UDP, align 4
  %84 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %85 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %84)
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  store i32 %83, i32* %86, align 4
  br label %87

87:                                               ; preds = %73, %71
  %88 = load %struct.sock*, %struct.sock** %12, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %90 = load i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)*, i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)** %14, align 8
  %91 = load i8*, i8** %15, align 8
  %92 = load i32, i32* %16, align 4
  %93 = load i32, i32* %19, align 4
  %94 = sub nsw i32 %92, %93
  %95 = call i32 @skb_append_datato_frags(%struct.sock* %88, %struct.sk_buff* %89, i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)* %90, i8* %91, i32 %94)
  store i32 %95, i32* %11, align 4
  br label %96

96:                                               ; preds = %87, %41
  %97 = load i32, i32* %11, align 4
  ret i32 %97
}

declare dso_local %struct.sk_buff* @skb_peek_tail(%struct.sk_buff_head*) #1

declare dso_local %struct.sk_buff* @sock_alloc_send_skb(%struct.sock*, i32, i32, i32*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_append_datato_frags(%struct.sock*, %struct.sk_buff*, i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
