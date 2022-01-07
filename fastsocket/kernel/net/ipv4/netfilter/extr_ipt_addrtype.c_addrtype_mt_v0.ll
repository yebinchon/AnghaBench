; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_ipt_addrtype.c_addrtype_mt_v0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_ipt_addrtype.c_addrtype_mt_v0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_match_param = type { %struct.ipt_addrtype_info*, i64, i64 }
%struct.ipt_addrtype_info = type { i32, i32, i64, i64 }
%struct.net = type { i32 }
%struct.iphdr = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_match_param*)* @addrtype_mt_v0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addrtype_mt_v0(%struct.sk_buff* %0, %struct.xt_match_param* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.xt_match_param*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.ipt_addrtype_info*, align 8
  %7 = alloca %struct.iphdr*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.xt_match_param* %1, %struct.xt_match_param** %4, align 8
  %9 = load %struct.xt_match_param*, %struct.xt_match_param** %4, align 8
  %10 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.xt_match_param*, %struct.xt_match_param** %4, align 8
  %15 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  br label %21

17:                                               ; preds = %2
  %18 = load %struct.xt_match_param*, %struct.xt_match_param** %4, align 8
  %19 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  br label %21

21:                                               ; preds = %17, %13
  %22 = phi i64 [ %16, %13 ], [ %20, %17 ]
  %23 = call %struct.net* @dev_net(i64 %22)
  store %struct.net* %23, %struct.net** %5, align 8
  %24 = load %struct.xt_match_param*, %struct.xt_match_param** %4, align 8
  %25 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %24, i32 0, i32 0
  %26 = load %struct.ipt_addrtype_info*, %struct.ipt_addrtype_info** %25, align 8
  store %struct.ipt_addrtype_info* %26, %struct.ipt_addrtype_info** %6, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %28 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %27)
  store %struct.iphdr* %28, %struct.iphdr** %7, align 8
  store i32 1, i32* %8, align 4
  %29 = load %struct.ipt_addrtype_info*, %struct.ipt_addrtype_info** %6, align 8
  %30 = getelementptr inbounds %struct.ipt_addrtype_info, %struct.ipt_addrtype_info* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %21
  %34 = load %struct.net*, %struct.net** %5, align 8
  %35 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %36 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ipt_addrtype_info*, %struct.ipt_addrtype_info** %6, align 8
  %39 = getelementptr inbounds %struct.ipt_addrtype_info, %struct.ipt_addrtype_info* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @match_type(%struct.net* %34, i32* null, i32 %37, i64 %40)
  %42 = load %struct.ipt_addrtype_info*, %struct.ipt_addrtype_info** %6, align 8
  %43 = getelementptr inbounds %struct.ipt_addrtype_info, %struct.ipt_addrtype_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = xor i32 %41, %44
  %46 = load i32, i32* %8, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %33, %21
  %49 = load %struct.ipt_addrtype_info*, %struct.ipt_addrtype_info** %6, align 8
  %50 = getelementptr inbounds %struct.ipt_addrtype_info, %struct.ipt_addrtype_info* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %48
  %54 = load %struct.net*, %struct.net** %5, align 8
  %55 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %56 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ipt_addrtype_info*, %struct.ipt_addrtype_info** %6, align 8
  %59 = getelementptr inbounds %struct.ipt_addrtype_info, %struct.ipt_addrtype_info* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @match_type(%struct.net* %54, i32* null, i32 %57, i64 %60)
  %62 = load %struct.ipt_addrtype_info*, %struct.ipt_addrtype_info** %6, align 8
  %63 = getelementptr inbounds %struct.ipt_addrtype_info, %struct.ipt_addrtype_info* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = xor i32 %61, %64
  %66 = load i32, i32* %8, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %53, %48
  %69 = load i32, i32* %8, align 4
  ret i32 %69
}

declare dso_local %struct.net* @dev_net(i64) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @match_type(%struct.net*, i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
