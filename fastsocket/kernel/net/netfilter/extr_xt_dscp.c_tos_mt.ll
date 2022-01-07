; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_dscp.c_tos_mt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_dscp.c_tos_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_match_param = type { %struct.TYPE_3__*, %struct.xt_tos_match_info* }
%struct.TYPE_3__ = type { i64 }
%struct.xt_tos_match_info = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@NFPROTO_IPV4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_match_param*)* @tos_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tos_mt(%struct.sk_buff* %0, %struct.xt_match_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_match_param*, align 8
  %6 = alloca %struct.xt_tos_match_info*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_match_param* %1, %struct.xt_match_param** %5, align 8
  %7 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %8 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %7, i32 0, i32 1
  %9 = load %struct.xt_tos_match_info*, %struct.xt_tos_match_info** %8, align 8
  store %struct.xt_tos_match_info* %9, %struct.xt_tos_match_info** %6, align 8
  %10 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %11 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @NFPROTO_IPV4, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %39

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call %struct.TYPE_4__* @ip_hdr(%struct.sk_buff* %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.xt_tos_match_info*, %struct.xt_tos_match_info** %6, align 8
  %23 = getelementptr inbounds %struct.xt_tos_match_info, %struct.xt_tos_match_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %21, %24
  %26 = load %struct.xt_tos_match_info*, %struct.xt_tos_match_info** %6, align 8
  %27 = getelementptr inbounds %struct.xt_tos_match_info, %struct.xt_tos_match_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %25, %28
  %30 = zext i1 %29 to i32
  %31 = load %struct.xt_tos_match_info*, %struct.xt_tos_match_info** %6, align 8
  %32 = getelementptr inbounds %struct.xt_tos_match_info, %struct.xt_tos_match_info* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = xor i32 %30, %37
  store i32 %38, i32* %3, align 4
  br label %60

39:                                               ; preds = %2
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = call i32 @ipv6_hdr(%struct.sk_buff* %40)
  %42 = call i32 @ipv6_get_dsfield(i32 %41)
  %43 = load %struct.xt_tos_match_info*, %struct.xt_tos_match_info** %6, align 8
  %44 = getelementptr inbounds %struct.xt_tos_match_info, %struct.xt_tos_match_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %42, %45
  %47 = load %struct.xt_tos_match_info*, %struct.xt_tos_match_info** %6, align 8
  %48 = getelementptr inbounds %struct.xt_tos_match_info, %struct.xt_tos_match_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %46, %49
  %51 = zext i1 %50 to i32
  %52 = load %struct.xt_tos_match_info*, %struct.xt_tos_match_info** %6, align 8
  %53 = getelementptr inbounds %struct.xt_tos_match_info, %struct.xt_tos_match_info* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = xor i32 %51, %58
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %39, %17
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.TYPE_4__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_get_dsfield(i32) #1

declare dso_local i32 @ipv6_hdr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
