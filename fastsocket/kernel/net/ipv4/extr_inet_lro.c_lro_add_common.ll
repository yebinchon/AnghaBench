; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_lro.c_lro_add_common.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_lro.c_lro_add_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_lro_desc = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, %struct.sk_buff* }
%struct.sk_buff = type { i32, i32 }
%struct.iphdr = type { i32 }
%struct.tcphdr = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_lro_desc*, %struct.iphdr*, %struct.tcphdr*, i32)* @lro_add_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lro_add_common(%struct.net_lro_desc* %0, %struct.iphdr* %1, %struct.tcphdr* %2, i32 %3) #0 {
  %5 = alloca %struct.net_lro_desc*, align 8
  %6 = alloca %struct.iphdr*, align 8
  %7 = alloca %struct.tcphdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32*, align 8
  store %struct.net_lro_desc* %0, %struct.net_lro_desc** %5, align 8
  store %struct.iphdr* %1, %struct.iphdr** %6, align 8
  store %struct.tcphdr* %2, %struct.tcphdr** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.net_lro_desc*, %struct.net_lro_desc** %5, align 8
  %12 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %11, i32 0, i32 9
  %13 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  store %struct.sk_buff* %13, %struct.sk_buff** %9, align 8
  %14 = load %struct.net_lro_desc*, %struct.net_lro_desc** %5, align 8
  %15 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %14, i32 0, i32 8
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.net_lro_desc*, %struct.net_lro_desc** %5, align 8
  %20 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, %18
  store i32 %22, i32* %20, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.net_lro_desc*, %struct.net_lro_desc** %5, align 8
  %25 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %29 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.net_lro_desc*, %struct.net_lro_desc** %5, align 8
  %32 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %31, i32 0, i32 7
  store i32 %30, i32* %32, align 4
  %33 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %34 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.net_lro_desc*, %struct.net_lro_desc** %5, align 8
  %37 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %36, i32 0, i32 6
  store i32 %35, i32* %37, align 8
  %38 = load %struct.net_lro_desc*, %struct.net_lro_desc** %5, align 8
  %39 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %38, i32 0, i32 5
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %4
  %43 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %44 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %43, i64 1
  %45 = bitcast %struct.tcphdr* %44 to i32*
  store i32* %45, i32** %10, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.net_lro_desc*, %struct.net_lro_desc** %5, align 8
  %50 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  br label %51

51:                                               ; preds = %42, %4
  %52 = load %struct.net_lro_desc*, %struct.net_lro_desc** %5, align 8
  %53 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %56 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @lro_tcp_data_csum(%struct.iphdr* %55, %struct.tcphdr* %56, i32 %57)
  %59 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @csum_block_add(i32 %54, i32 %58, i32 %61)
  %63 = load %struct.net_lro_desc*, %struct.net_lro_desc** %5, align 8
  %64 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.net_lro_desc*, %struct.net_lro_desc** %5, align 8
  %77 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = icmp sgt i32 %75, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %51
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.net_lro_desc*, %struct.net_lro_desc** %5, align 8
  %83 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  br label %84

84:                                               ; preds = %80, %51
  ret void
}

declare dso_local i32 @csum_block_add(i32, i32, i32) #1

declare dso_local i32 @lro_tcp_data_csum(%struct.iphdr*, %struct.tcphdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
