; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_lro.c_lro_add_frags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_lro.c_lro_add_frags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_lro_desc = type { %struct.skb_frag_struct*, %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.skb_frag_struct = type { i32, i32 }
%struct.iphdr = type { i32 }
%struct.tcphdr = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_lro_desc*, i32, i32, i32, %struct.skb_frag_struct*, %struct.iphdr*, %struct.tcphdr*)* @lro_add_frags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lro_add_frags(%struct.net_lro_desc* %0, i32 %1, i32 %2, i32 %3, %struct.skb_frag_struct* %4, %struct.iphdr* %5, %struct.tcphdr* %6) #0 {
  %8 = alloca %struct.net_lro_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.skb_frag_struct*, align 8
  %13 = alloca %struct.iphdr*, align 8
  %14 = alloca %struct.tcphdr*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca i32, align 4
  store %struct.net_lro_desc* %0, %struct.net_lro_desc** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.skb_frag_struct* %4, %struct.skb_frag_struct** %12, align 8
  store %struct.iphdr* %5, %struct.iphdr** %13, align 8
  store %struct.tcphdr* %6, %struct.tcphdr** %14, align 8
  %17 = load %struct.net_lro_desc*, %struct.net_lro_desc** %8, align 8
  %18 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %17, i32 0, i32 1
  %19 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  store %struct.sk_buff* %19, %struct.sk_buff** %15, align 8
  %20 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %21 = load %struct.tcphdr*, %struct.tcphdr** %14, align 8
  %22 = call i32 @TCP_PAYLOAD_LENGTH(%struct.iphdr* %20, %struct.tcphdr* %21)
  store i32 %22, i32* %16, align 4
  %23 = load %struct.net_lro_desc*, %struct.net_lro_desc** %8, align 8
  %24 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %25 = load %struct.tcphdr*, %struct.tcphdr** %14, align 8
  %26 = load i32, i32* %16, align 4
  %27 = call i32 @lro_add_common(%struct.net_lro_desc* %23, %struct.iphdr* %24, %struct.tcphdr* %25, i32 %26)
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %12, align 8
  %35 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %34, i64 0
  %36 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, %33
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %12, align 8
  %41 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %40, i64 0
  %42 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %43, %39
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %48, %7
  %46 = load i32, i32* %16, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %71

48:                                               ; preds = %45
  %49 = load %struct.net_lro_desc*, %struct.net_lro_desc** %8, align 8
  %50 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %49, i32 0, i32 0
  %51 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %50, align 8
  %52 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %12, align 8
  %53 = bitcast %struct.skb_frag_struct* %51 to i8*
  %54 = bitcast %struct.skb_frag_struct* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %53, i8* align 4 %54, i64 8, i1 false)
  %55 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %12, align 8
  %56 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %16, align 4
  %59 = sub nsw i32 %58, %57
  store i32 %59, i32* %16, align 4
  %60 = load %struct.net_lro_desc*, %struct.net_lro_desc** %8, align 8
  %61 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %60, i32 0, i32 0
  %62 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %61, align 8
  %63 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %62, i32 1
  store %struct.skb_frag_struct* %63, %struct.skb_frag_struct** %61, align 8
  %64 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %12, align 8
  %65 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %64, i32 1
  store %struct.skb_frag_struct* %65, %struct.skb_frag_struct** %12, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %67 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %66)
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  br label %45

71:                                               ; preds = %45
  ret void
}

declare dso_local i32 @TCP_PAYLOAD_LENGTH(%struct.iphdr*, %struct.tcphdr*) #1

declare dso_local i32 @lro_add_common(%struct.net_lro_desc*, %struct.iphdr*, %struct.tcphdr*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
