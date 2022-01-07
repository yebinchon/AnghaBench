; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_gre.c_gre_build_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_gre.c_gre_build_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.tnl_ptk_info = type { i32, i64, i64, i32 }
%struct.gre_base_hdr = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@TUNNEL_KEY = common dso_local global i32 0, align 4
@TUNNEL_CSUM = common dso_local global i32 0, align 4
@TUNNEL_SEQ = common dso_local global i32 0, align 4
@SKB_GSO_GRE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gre_build_header(%struct.sk_buff* %0, %struct.tnl_ptk_info* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.tnl_ptk_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gre_base_hdr*, align 8
  %8 = alloca i64*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.tnl_ptk_info* %1, %struct.tnl_ptk_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @skb_push(%struct.sk_buff* %9, i32 %10)
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.gre_base_hdr*
  store %struct.gre_base_hdr* %15, %struct.gre_base_hdr** %7, align 8
  %16 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %5, align 8
  %17 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @tnl_flags_to_gre_flags(i32 %18)
  %20 = load %struct.gre_base_hdr*, %struct.gre_base_hdr** %7, align 8
  %21 = getelementptr inbounds %struct.gre_base_hdr, %struct.gre_base_hdr* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %5, align 8
  %23 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.gre_base_hdr*, %struct.gre_base_hdr** %7, align 8
  %26 = getelementptr inbounds %struct.gre_base_hdr, %struct.gre_base_hdr* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %5, align 8
  %28 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @TUNNEL_KEY, align 4
  %31 = load i32, i32* @TUNNEL_CSUM, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @TUNNEL_SEQ, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %29, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %98

37:                                               ; preds = %3
  %38 = load %struct.gre_base_hdr*, %struct.gre_base_hdr** %7, align 8
  %39 = bitcast %struct.gre_base_hdr* %38 to i32*
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = getelementptr inbounds i32, i32* %42, i64 -4
  %44 = bitcast i32* %43 to i64*
  store i64* %44, i64** %8, align 8
  %45 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %5, align 8
  %46 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @TUNNEL_SEQ, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %37
  %52 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %5, align 8
  %53 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64*, i64** %8, align 8
  store i64 %54, i64* %55, align 8
  %56 = load i64*, i64** %8, align 8
  %57 = getelementptr inbounds i64, i64* %56, i32 -1
  store i64* %57, i64** %8, align 8
  br label %58

58:                                               ; preds = %51, %37
  %59 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %5, align 8
  %60 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @TUNNEL_KEY, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %58
  %66 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %5, align 8
  %67 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64*, i64** %8, align 8
  store i64 %68, i64* %69, align 8
  %70 = load i64*, i64** %8, align 8
  %71 = getelementptr inbounds i64, i64* %70, i32 -1
  store i64* %71, i64** %8, align 8
  br label %72

72:                                               ; preds = %65, %58
  %73 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %5, align 8
  %74 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @TUNNEL_CSUM, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %97

79:                                               ; preds = %72
  %80 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %81 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %80)
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @SKB_GSO_GRE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %97, label %87

87:                                               ; preds = %79
  %88 = load i64*, i64** %8, align 8
  store i64 0, i64* %88, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %91 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @skb_checksum(%struct.sk_buff* %89, i32 0, i32 %92, i32 0)
  %94 = call i32 @csum_fold(i32 %93)
  %95 = load i64*, i64** %8, align 8
  %96 = bitcast i64* %95 to i32*
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %87, %79, %72
  br label %98

98:                                               ; preds = %97, %3
  ret void
}

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @tnl_flags_to_gre_flags(i32) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @csum_fold(i32) #1

declare dso_local i32 @skb_checksum(%struct.sk_buff*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
