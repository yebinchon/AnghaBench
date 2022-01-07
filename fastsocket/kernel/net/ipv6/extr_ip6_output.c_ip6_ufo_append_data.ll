; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_output.c_ip6_ufo_append_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_output.c_ip6_ufo_append_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32, i64, i64, i64 }
%struct.rt6_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.frag_hdr = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@MSG_DONTWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i32 0, align 4
@SKB_GSO_UDP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)*, i8*, i32, i32, i32, i32, i32, i32, %struct.rt6_info*)* @ip6_ufo_append_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6_ufo_append_data(%struct.sock* %0, i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, %struct.rt6_info* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.sock*, align 8
  %13 = alloca i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.rt6_info*, align 8
  %22 = alloca %struct.sk_buff*, align 8
  %23 = alloca %struct.frag_hdr, align 4
  %24 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %12, align 8
  store i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)* %1, i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)** %13, align 8
  store i8* %2, i8** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store %struct.rt6_info* %9, %struct.rt6_info** %21, align 8
  %25 = load %struct.sock*, %struct.sock** %12, align 8
  %26 = getelementptr inbounds %struct.sock, %struct.sock* %25, i32 0, i32 0
  %27 = call %struct.sk_buff* @skb_peek_tail(i32* %26)
  store %struct.sk_buff* %27, %struct.sk_buff** %22, align 8
  %28 = icmp eq %struct.sk_buff* %27, null
  br i1 %28, label %29, label %71

29:                                               ; preds = %10
  %30 = load %struct.sock*, %struct.sock** %12, align 8
  %31 = load i32, i32* %16, align 4
  %32 = load i32, i32* %17, align 4
  %33 = add nsw i32 %31, %32
  %34 = load i32, i32* %18, align 4
  %35 = add nsw i32 %33, %34
  %36 = add nsw i32 %35, 20
  %37 = load i32, i32* %20, align 4
  %38 = load i32, i32* @MSG_DONTWAIT, align 4
  %39 = and i32 %37, %38
  %40 = call %struct.sk_buff* @sock_alloc_send_skb(%struct.sock* %30, i32 %36, i32 %39, i32* %24)
  store %struct.sk_buff* %40, %struct.sk_buff** %22, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %42 = icmp eq %struct.sk_buff* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %29
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %11, align 4
  br label %113

46:                                               ; preds = %29
  %47 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %48 = load i32, i32* %16, align 4
  %49 = call i32 @skb_reserve(%struct.sk_buff* %47, i32 %48)
  %50 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %51 = load i32, i32* %17, align 4
  %52 = load i32, i32* %18, align 4
  %53 = add nsw i32 %51, %52
  %54 = call i32 @skb_put(%struct.sk_buff* %50, i32 %53)
  %55 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %56 = call i32 @skb_reset_network_header(%struct.sk_buff* %55)
  %57 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %17, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %59, %61
  %63 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 3
  store i64 %62, i64* %64, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 1
  store i64 0, i64* %66, align 8
  %67 = load %struct.sock*, %struct.sock** %12, align 8
  %68 = getelementptr inbounds %struct.sock, %struct.sock* %67, i32 0, i32 0
  %69 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %70 = call i32 @__skb_queue_tail(i32* %68, %struct.sk_buff* %69)
  br label %77

71:                                               ; preds = %10
  %72 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %73 = call i64 @skb_is_gso(%struct.sk_buff* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  br label %104

76:                                               ; preds = %71
  br label %77

77:                                               ; preds = %76, %46
  %78 = load i32, i32* @CHECKSUM_PARTIAL, align 4
  %79 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %80 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* %19, align 4
  %82 = load i32, i32* %17, align 4
  %83 = sub nsw i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = sub i64 %84, 4
  %86 = and i64 %85, -8
  %87 = trunc i64 %86 to i32
  %88 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %89 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %88)
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 4
  %91 = load i32, i32* @SKB_GSO_UDP, align 4
  %92 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %93 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %92)
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 2
  store i32 %91, i32* %94, align 4
  %95 = load %struct.rt6_info*, %struct.rt6_info** %21, align 8
  %96 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = call i32 @ipv6_select_ident(%struct.frag_hdr* %23, i32* %97)
  %99 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %23, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %102 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %101)
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  store i32 %100, i32* %103, align 4
  br label %104

104:                                              ; preds = %77, %75
  %105 = load %struct.sock*, %struct.sock** %12, align 8
  %106 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %107 = load i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)*, i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)** %13, align 8
  %108 = load i8*, i8** %14, align 8
  %109 = load i32, i32* %15, align 4
  %110 = load i32, i32* %18, align 4
  %111 = sub nsw i32 %109, %110
  %112 = call i32 @skb_append_datato_frags(%struct.sock* %105, %struct.sk_buff* %106, i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)* %107, i8* %108, i32 %111)
  store i32 %112, i32* %11, align 4
  br label %113

113:                                              ; preds = %104, %43
  %114 = load i32, i32* %11, align 4
  ret i32 %114
}

declare dso_local %struct.sk_buff* @skb_peek_tail(i32*) #1

declare dso_local %struct.sk_buff* @sock_alloc_send_skb(%struct.sock*, i32, i32, i32*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @__skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_select_ident(%struct.frag_hdr*, i32*) #1

declare dso_local i32 @skb_append_datato_frags(%struct.sock*, %struct.sk_buff*, i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
