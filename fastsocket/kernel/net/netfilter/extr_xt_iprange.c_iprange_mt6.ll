; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_iprange.c_iprange_mt6.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_iprange.c_iprange_mt6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_match_param = type { %struct.xt_iprange_mtinfo* }
%struct.xt_iprange_mtinfo = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ipv6hdr = type { i32, i32 }

@IPRANGE_SRC = common dso_local global i32 0, align 4
@IPRANGE_SRC_INV = common dso_local global i32 0, align 4
@IPRANGE_DST = common dso_local global i32 0, align 4
@IPRANGE_DST_INV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_match_param*)* @iprange_mt6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iprange_mt6(%struct.sk_buff* %0, %struct.xt_match_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_match_param*, align 8
  %6 = alloca %struct.xt_iprange_mtinfo*, align 8
  %7 = alloca %struct.ipv6hdr*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_match_param* %1, %struct.xt_match_param** %5, align 8
  %9 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %10 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %9, i32 0, i32 0
  %11 = load %struct.xt_iprange_mtinfo*, %struct.xt_iprange_mtinfo** %10, align 8
  store %struct.xt_iprange_mtinfo* %11, %struct.xt_iprange_mtinfo** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %12)
  store %struct.ipv6hdr* %13, %struct.ipv6hdr** %7, align 8
  %14 = load %struct.xt_iprange_mtinfo*, %struct.xt_iprange_mtinfo** %6, align 8
  %15 = getelementptr inbounds %struct.xt_iprange_mtinfo, %struct.xt_iprange_mtinfo* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IPRANGE_SRC, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %54

20:                                               ; preds = %2
  %21 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %22 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %21, i32 0, i32 1
  %23 = load %struct.xt_iprange_mtinfo*, %struct.xt_iprange_mtinfo** %6, align 8
  %24 = getelementptr inbounds %struct.xt_iprange_mtinfo, %struct.xt_iprange_mtinfo* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = call i64 @iprange_ipv6_sub(i32* %22, i32* %25)
  %27 = icmp slt i64 %26, 0
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %8, align 4
  %29 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %30 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %29, i32 0, i32 1
  %31 = load %struct.xt_iprange_mtinfo*, %struct.xt_iprange_mtinfo** %6, align 8
  %32 = getelementptr inbounds %struct.xt_iprange_mtinfo, %struct.xt_iprange_mtinfo* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = call i64 @iprange_ipv6_sub(i32* %30, i32* %33)
  %35 = icmp sgt i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = load i32, i32* %8, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %8, align 4
  %39 = load %struct.xt_iprange_mtinfo*, %struct.xt_iprange_mtinfo** %6, align 8
  %40 = getelementptr inbounds %struct.xt_iprange_mtinfo, %struct.xt_iprange_mtinfo* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @IPRANGE_SRC_INV, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* %8, align 4
  %49 = xor i32 %48, %47
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %96

53:                                               ; preds = %20
  br label %54

54:                                               ; preds = %53, %2
  %55 = load %struct.xt_iprange_mtinfo*, %struct.xt_iprange_mtinfo** %6, align 8
  %56 = getelementptr inbounds %struct.xt_iprange_mtinfo, %struct.xt_iprange_mtinfo* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @IPRANGE_DST, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %95

61:                                               ; preds = %54
  %62 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %63 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %62, i32 0, i32 0
  %64 = load %struct.xt_iprange_mtinfo*, %struct.xt_iprange_mtinfo** %6, align 8
  %65 = getelementptr inbounds %struct.xt_iprange_mtinfo, %struct.xt_iprange_mtinfo* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = call i64 @iprange_ipv6_sub(i32* %63, i32* %66)
  %68 = icmp slt i64 %67, 0
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %8, align 4
  %70 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %71 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %70, i32 0, i32 0
  %72 = load %struct.xt_iprange_mtinfo*, %struct.xt_iprange_mtinfo** %6, align 8
  %73 = getelementptr inbounds %struct.xt_iprange_mtinfo, %struct.xt_iprange_mtinfo* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = call i64 @iprange_ipv6_sub(i32* %71, i32* %74)
  %76 = icmp sgt i64 %75, 0
  %77 = zext i1 %76 to i32
  %78 = load i32, i32* %8, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %8, align 4
  %80 = load %struct.xt_iprange_mtinfo*, %struct.xt_iprange_mtinfo** %6, align 8
  %81 = getelementptr inbounds %struct.xt_iprange_mtinfo, %struct.xt_iprange_mtinfo* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @IPRANGE_DST_INV, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  %89 = load i32, i32* %8, align 4
  %90 = xor i32 %89, %88
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %96

94:                                               ; preds = %61
  br label %95

95:                                               ; preds = %94, %54
  store i32 1, i32* %3, align 4
  br label %96

96:                                               ; preds = %95, %93, %52
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i64 @iprange_ipv6_sub(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
