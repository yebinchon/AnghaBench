; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mip6.c_mip6_rthdr_offset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mip6.c_mip6_rthdr_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.ipv6_opt_hdr = type { i32 }
%struct.ipv6_rt_hdr = type { i32 }
%struct.TYPE_2__ = type { i32 }

@IPV6_TLV_HAO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, %struct.sk_buff*, i32**)* @mip6_rthdr_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mip6_rthdr_offset(%struct.xfrm_state* %0, %struct.sk_buff* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfrm_state*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ipv6_opt_hdr*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ipv6_rt_hdr*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32** %2, i32*** %7, align 8
  store i32 4, i32* %8, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = call %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 1
  %17 = bitcast %struct.TYPE_2__* %16 to %struct.ipv6_opt_hdr*
  store %struct.ipv6_opt_hdr* %17, %struct.ipv6_opt_hdr** %9, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = call i8* @skb_network_header(%struct.sk_buff* %18)
  store i8* %19, i8** %10, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sub i32 %22, %25
  store i32 %26, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = call %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32**, i32*** %7, align 8
  store i32* %29, i32** %30, align 8
  br label %31

31:                                               ; preds = %76, %3
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  %34 = load i32, i32* %11, align 4
  %35 = icmp ule i32 %33, %34
  br i1 %35, label %36, label %91

36:                                               ; preds = %31
  %37 = load i32**, i32*** %7, align 8
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %74 [
    i32 129, label %40
    i32 128, label %41
    i32 130, label %60
  ]

40:                                               ; preds = %36
  br label %76

41:                                               ; preds = %36
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 3
  %44 = load i32, i32* %11, align 4
  %45 = icmp ule i32 %43, %44
  br i1 %45, label %46, label %59

46:                                               ; preds = %41
  %47 = load i8*, i8** %10, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = bitcast i8* %50 to %struct.ipv6_rt_hdr*
  store %struct.ipv6_rt_hdr* %51, %struct.ipv6_rt_hdr** %13, align 8
  %52 = load %struct.ipv6_rt_hdr*, %struct.ipv6_rt_hdr** %13, align 8
  %53 = getelementptr inbounds %struct.ipv6_rt_hdr, %struct.ipv6_rt_hdr* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %4, align 4
  br label %93

58:                                               ; preds = %46
  br label %59

59:                                               ; preds = %58, %41
  store i32 1, i32* %12, align 4
  br label %76

60:                                               ; preds = %36
  %61 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @IPV6_TLV_HAO, align 4
  %64 = call i32 @ipv6_find_tlv(%struct.sk_buff* %61, i32 %62, i32 %63)
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %4, align 4
  br label %93

68:                                               ; preds = %60
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %4, align 4
  br label %93

73:                                               ; preds = %68
  br label %76

74:                                               ; preds = %36
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %4, align 4
  br label %93

76:                                               ; preds = %73, %59, %40
  %77 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %9, align 8
  %78 = call i64 @ipv6_optlen(%struct.ipv6_opt_hdr* %77)
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %80, %78
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %8, align 4
  %83 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %9, align 8
  %84 = getelementptr inbounds %struct.ipv6_opt_hdr, %struct.ipv6_opt_hdr* %83, i32 0, i32 0
  %85 = load i32**, i32*** %7, align 8
  store i32* %84, i32** %85, align 8
  %86 = load i8*, i8** %10, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = bitcast i8* %89 to %struct.ipv6_opt_hdr*
  store %struct.ipv6_opt_hdr* %90, %struct.ipv6_opt_hdr** %9, align 8
  br label %31

91:                                               ; preds = %31
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %91, %74, %71, %66, %56
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i8* @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_find_tlv(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @ipv6_optlen(%struct.ipv6_opt_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
