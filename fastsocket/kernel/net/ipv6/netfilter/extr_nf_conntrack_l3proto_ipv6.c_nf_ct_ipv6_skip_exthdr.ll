; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/netfilter/extr_nf_conntrack_l3proto_ipv6.c_nf_ct_ipv6_skip_exthdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/netfilter/extr_nf_conntrack_l3proto_ipv6.c_nf_ct_ipv6_skip_exthdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ipv6_opt_hdr = type { i32, i64 }

@NEXTHDR_NONE = common dso_local global i64 0, align 8
@NEXTHDR_FRAGMENT = common dso_local global i64 0, align 8
@NEXTHDR_AUTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i64*, i32)* @nf_ct_ipv6_skip_exthdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_ct_ipv6_skip_exthdr(%struct.sk_buff* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.ipv6_opt_hdr, align 8
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i64*, i64** %8, align 8
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %10, align 8
  br label %15

15:                                               ; preds = %51, %4
  %16 = load i64, i64* %10, align 8
  %17 = call i64 @ipv6_ext_hdr(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %60

19:                                               ; preds = %15
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 16
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 -1, i32* %5, align 4
  br label %64

23:                                               ; preds = %19
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* @NEXTHDR_NONE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %60

28:                                               ; preds = %23
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* @NEXTHDR_FRAGMENT, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %60

33:                                               ; preds = %28
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i64 @skb_copy_bits(%struct.sk_buff* %34, i32 %35, %struct.ipv6_opt_hdr* %11, i32 16)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = call i32 (...) @BUG()
  br label %40

40:                                               ; preds = %38, %33
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* @NEXTHDR_AUTH, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.ipv6_opt_hdr, %struct.ipv6_opt_hdr* %11, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 2
  %48 = shl i32 %47, 2
  store i32 %48, i32* %12, align 4
  br label %51

49:                                               ; preds = %40
  %50 = call i32 @ipv6_optlen(%struct.ipv6_opt_hdr* %11)
  store i32 %50, i32* %12, align 4
  br label %51

51:                                               ; preds = %49, %44
  %52 = getelementptr inbounds %struct.ipv6_opt_hdr, %struct.ipv6_opt_hdr* %11, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %10, align 8
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %9, align 4
  %56 = sub nsw i32 %55, %54
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %7, align 4
  br label %15

60:                                               ; preds = %32, %27, %15
  %61 = load i64, i64* %10, align 8
  %62 = load i64*, i64** %8, align 8
  store i64 %61, i64* %62, align 8
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %60, %22
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i64 @ipv6_ext_hdr(i64) #1

declare dso_local i64 @skb_copy_bits(%struct.sk_buff*, i32, %struct.ipv6_opt_hdr*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @ipv6_optlen(%struct.ipv6_opt_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
