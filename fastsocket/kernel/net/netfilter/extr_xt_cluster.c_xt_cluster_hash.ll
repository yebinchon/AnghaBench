; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_cluster.c_xt_cluster_hash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_cluster.c_xt_cluster_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32 }
%struct.xt_cluster_match_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conn*, %struct.xt_cluster_match_info*)* @xt_cluster_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xt_cluster_hash(%struct.nf_conn* %0, %struct.xt_cluster_match_info* %1) #0 {
  %3 = alloca %struct.nf_conn*, align 8
  %4 = alloca %struct.xt_cluster_match_info*, align 8
  %5 = alloca i32, align 4
  store %struct.nf_conn* %0, %struct.nf_conn** %3, align 8
  store %struct.xt_cluster_match_info* %1, %struct.xt_cluster_match_info** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %7 = call i32 @nf_ct_l3num(%struct.nf_conn* %6)
  switch i32 %7, label %18 [
    i32 129, label %8
    i32 128, label %13
  ]

8:                                                ; preds = %2
  %9 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %10 = call i32 @nf_ct_orig_ipv4_src(%struct.nf_conn* %9)
  %11 = load %struct.xt_cluster_match_info*, %struct.xt_cluster_match_info** %4, align 8
  %12 = call i32 @xt_cluster_hash_ipv4(i32 %10, %struct.xt_cluster_match_info* %11)
  store i32 %12, i32* %5, align 4
  br label %20

13:                                               ; preds = %2
  %14 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %15 = call i32 @nf_ct_orig_ipv6_src(%struct.nf_conn* %14)
  %16 = load %struct.xt_cluster_match_info*, %struct.xt_cluster_match_info** %4, align 8
  %17 = call i32 @xt_cluster_hash_ipv6(i32 %15, %struct.xt_cluster_match_info* %16)
  store i32 %17, i32* %5, align 4
  br label %20

18:                                               ; preds = %2
  %19 = call i32 @WARN_ON(i32 1)
  br label %20

20:                                               ; preds = %18, %13, %8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.xt_cluster_match_info*, %struct.xt_cluster_match_info** %4, align 8
  %23 = getelementptr inbounds %struct.xt_cluster_match_info, %struct.xt_cluster_match_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %21, %24
  %26 = ashr i32 %25, 32
  ret i32 %26
}

declare dso_local i32 @nf_ct_l3num(%struct.nf_conn*) #1

declare dso_local i32 @xt_cluster_hash_ipv4(i32, %struct.xt_cluster_match_info*) #1

declare dso_local i32 @nf_ct_orig_ipv4_src(%struct.nf_conn*) #1

declare dso_local i32 @xt_cluster_hash_ipv6(i32, %struct.xt_cluster_match_info*) #1

declare dso_local i32 @nf_ct_orig_ipv6_src(%struct.nf_conn*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
