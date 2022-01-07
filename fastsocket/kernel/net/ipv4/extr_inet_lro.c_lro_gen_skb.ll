; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_lro.c_lro_gen_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_lro.c_lro_gen_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.net_lro_mgr = type { i32, i32 }
%struct.skb_frag_struct = type { i32, i32 }
%struct.TYPE_2__ = type { %struct.skb_frag_struct*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.net_lro_mgr*, %struct.skb_frag_struct*, i32, i32, i8*, i32, i32, i32)* @lro_gen_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @lro_gen_skb(%struct.net_lro_mgr* %0, %struct.skb_frag_struct* %1, i32 %2, i32 %3, i8* %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.net_lro_mgr*, align 8
  %11 = alloca %struct.skb_frag_struct*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.sk_buff*, align 8
  %19 = alloca %struct.skb_frag_struct*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.net_lro_mgr* %0, %struct.net_lro_mgr** %10, align 8
  store %struct.skb_frag_struct* %1, %struct.skb_frag_struct** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %22 = load i32, i32* %12, align 4
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %15, align 4
  %25 = call i32 @min(i32 %23, i32 %24)
  store i32 %25, i32* %21, align 4
  %26 = load %struct.net_lro_mgr*, %struct.net_lro_mgr** %10, align 8
  %27 = getelementptr inbounds %struct.net_lro_mgr, %struct.net_lro_mgr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %15, align 4
  %30 = load %struct.net_lro_mgr*, %struct.net_lro_mgr** %10, align 8
  %31 = getelementptr inbounds %struct.net_lro_mgr, %struct.net_lro_mgr* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %29, %32
  %34 = call %struct.sk_buff* @netdev_alloc_skb(i32 %28, i32 %33)
  store %struct.sk_buff* %34, %struct.sk_buff** %18, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %36 = icmp ne %struct.sk_buff* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %8
  store %struct.sk_buff* null, %struct.sk_buff** %9, align 8
  br label %127

38:                                               ; preds = %8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %40 = load %struct.net_lro_mgr*, %struct.net_lro_mgr** %10, align 8
  %41 = getelementptr inbounds %struct.net_lro_mgr, %struct.net_lro_mgr* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @skb_reserve(%struct.sk_buff* %39, i32 %42)
  %44 = load i32, i32* %12, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %21, align 4
  %49 = sub nsw i32 %47, %48
  %50 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %13, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, %52
  store i32 %56, i32* %54, align 4
  %57 = load i32, i32* %21, align 4
  %58 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 7
  %64 = load i32, i32* %63, align 4
  %65 = load i8*, i8** %14, align 8
  %66 = load i32, i32* %21, align 4
  %67 = call i32 @memcpy(i32 %64, i8* %65, i32 %66)
  %68 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %69 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %68)
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %70, align 8
  store %struct.skb_frag_struct* %71, %struct.skb_frag_struct** %19, align 8
  br label %72

72:                                               ; preds = %75, %38
  %73 = load i32, i32* %20, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %94

75:                                               ; preds = %72
  %76 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %19, align 8
  %77 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %11, align 8
  %78 = bitcast %struct.skb_frag_struct* %76 to i8*
  %79 = bitcast %struct.skb_frag_struct* %77 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %78, i8* align 4 %79, i64 8, i1 false)
  %80 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %11, align 8
  %81 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %20, align 4
  %84 = sub nsw i32 %83, %82
  store i32 %84, i32* %20, align 4
  %85 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %19, align 8
  %86 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %85, i32 1
  store %struct.skb_frag_struct* %86, %struct.skb_frag_struct** %19, align 8
  %87 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %11, align 8
  %88 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %87, i32 1
  store %struct.skb_frag_struct* %88, %struct.skb_frag_struct** %11, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %90 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %89)
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 8
  br label %72

94:                                               ; preds = %72
  %95 = load i32, i32* %21, align 4
  %96 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %97 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %96)
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %98, align 8
  %100 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %99, i64 0
  %101 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, %95
  store i32 %103, i32* %101, align 4
  %104 = load i32, i32* %21, align 4
  %105 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %106 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %105)
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %107, align 8
  %109 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %108, i64 0
  %110 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = sub nsw i32 %111, %104
  store i32 %112, i32* %110, align 4
  %113 = load i32, i32* %17, align 4
  %114 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %115 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %114, i32 0, i32 6
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* %16, align 4
  %117 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %118 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %117, i32 0, i32 5
  store i32 %116, i32* %118, align 4
  %119 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %120 = load %struct.net_lro_mgr*, %struct.net_lro_mgr** %10, align 8
  %121 = getelementptr inbounds %struct.net_lro_mgr, %struct.net_lro_mgr* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @eth_type_trans(%struct.sk_buff* %119, i32 %122)
  %124 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %125 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %124, i32 0, i32 4
  store i32 %123, i32* %125, align 4
  %126 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  store %struct.sk_buff* %126, %struct.sk_buff** %9, align 8
  br label %127

127:                                              ; preds = %94, %37
  %128 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  ret %struct.sk_buff* %128
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
