; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_dccp.c_dccp_mt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_dccp.c_dccp_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_match_param = type { i64, i32*, i32, %struct.xt_dccp_info* }
%struct.xt_dccp_info = type { i64*, i64*, i32, i32, i32, i32 }
%struct.dccp_hdr = type { i32, i32 }

@XT_DCCP_SRC_PORTS = common dso_local global i32 0, align 4
@XT_DCCP_DEST_PORTS = common dso_local global i32 0, align 4
@XT_DCCP_TYPE = common dso_local global i32 0, align 4
@XT_DCCP_OPTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_match_param*)* @dccp_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dccp_mt(%struct.sk_buff* %0, %struct.xt_match_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_match_param*, align 8
  %6 = alloca %struct.xt_dccp_info*, align 8
  %7 = alloca %struct.dccp_hdr*, align 8
  %8 = alloca %struct.dccp_hdr, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_match_param* %1, %struct.xt_match_param** %5, align 8
  %9 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %10 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %9, i32 0, i32 3
  %11 = load %struct.xt_dccp_info*, %struct.xt_dccp_info** %10, align 8
  store %struct.xt_dccp_info* %11, %struct.xt_dccp_info** %6, align 8
  %12 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %13 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %137

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %20 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.dccp_hdr* @skb_header_pointer(%struct.sk_buff* %18, i32 %21, i32 8, %struct.dccp_hdr* %8)
  store %struct.dccp_hdr* %22, %struct.dccp_hdr** %7, align 8
  %23 = load %struct.dccp_hdr*, %struct.dccp_hdr** %7, align 8
  %24 = icmp eq %struct.dccp_hdr* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %27 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  store i32 1, i32* %28, align 4
  store i32 0, i32* %3, align 4
  br label %137

29:                                               ; preds = %17
  %30 = load %struct.dccp_hdr*, %struct.dccp_hdr** %7, align 8
  %31 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @ntohs(i32 %32)
  %34 = load %struct.xt_dccp_info*, %struct.xt_dccp_info** %6, align 8
  %35 = getelementptr inbounds %struct.xt_dccp_info, %struct.xt_dccp_info* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sge i64 %33, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %29
  %41 = load %struct.dccp_hdr*, %struct.dccp_hdr** %7, align 8
  %42 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @ntohs(i32 %43)
  %45 = load %struct.xt_dccp_info*, %struct.xt_dccp_info** %6, align 8
  %46 = getelementptr inbounds %struct.xt_dccp_info, %struct.xt_dccp_info* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp sle i64 %44, %49
  br label %51

51:                                               ; preds = %40, %29
  %52 = phi i1 [ false, %29 ], [ %50, %40 ]
  %53 = zext i1 %52 to i32
  %54 = load i32, i32* @XT_DCCP_SRC_PORTS, align 4
  %55 = load %struct.xt_dccp_info*, %struct.xt_dccp_info** %6, align 8
  %56 = getelementptr inbounds %struct.xt_dccp_info, %struct.xt_dccp_info* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.xt_dccp_info*, %struct.xt_dccp_info** %6, align 8
  %59 = getelementptr inbounds %struct.xt_dccp_info, %struct.xt_dccp_info* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @DCCHECK(i32 %53, i32 %54, i32 %57, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %134

63:                                               ; preds = %51
  %64 = load %struct.dccp_hdr*, %struct.dccp_hdr** %7, align 8
  %65 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @ntohs(i32 %66)
  %68 = load %struct.xt_dccp_info*, %struct.xt_dccp_info** %6, align 8
  %69 = getelementptr inbounds %struct.xt_dccp_info, %struct.xt_dccp_info* %68, i32 0, i32 1
  %70 = load i64*, i64** %69, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp sge i64 %67, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %63
  %75 = load %struct.dccp_hdr*, %struct.dccp_hdr** %7, align 8
  %76 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @ntohs(i32 %77)
  %79 = load %struct.xt_dccp_info*, %struct.xt_dccp_info** %6, align 8
  %80 = getelementptr inbounds %struct.xt_dccp_info, %struct.xt_dccp_info* %79, i32 0, i32 1
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp sle i64 %78, %83
  br label %85

85:                                               ; preds = %74, %63
  %86 = phi i1 [ false, %63 ], [ %84, %74 ]
  %87 = zext i1 %86 to i32
  %88 = load i32, i32* @XT_DCCP_DEST_PORTS, align 4
  %89 = load %struct.xt_dccp_info*, %struct.xt_dccp_info** %6, align 8
  %90 = getelementptr inbounds %struct.xt_dccp_info, %struct.xt_dccp_info* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.xt_dccp_info*, %struct.xt_dccp_info** %6, align 8
  %93 = getelementptr inbounds %struct.xt_dccp_info, %struct.xt_dccp_info* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @DCCHECK(i32 %87, i32 %88, i32 %91, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %134

97:                                               ; preds = %85
  %98 = load %struct.dccp_hdr*, %struct.dccp_hdr** %7, align 8
  %99 = load %struct.xt_dccp_info*, %struct.xt_dccp_info** %6, align 8
  %100 = getelementptr inbounds %struct.xt_dccp_info, %struct.xt_dccp_info* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @match_types(%struct.dccp_hdr* %98, i32 %101)
  %103 = load i32, i32* @XT_DCCP_TYPE, align 4
  %104 = load %struct.xt_dccp_info*, %struct.xt_dccp_info** %6, align 8
  %105 = getelementptr inbounds %struct.xt_dccp_info, %struct.xt_dccp_info* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.xt_dccp_info*, %struct.xt_dccp_info** %6, align 8
  %108 = getelementptr inbounds %struct.xt_dccp_info, %struct.xt_dccp_info* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @DCCHECK(i32 %102, i32 %103, i32 %106, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %134

112:                                              ; preds = %97
  %113 = load %struct.xt_dccp_info*, %struct.xt_dccp_info** %6, align 8
  %114 = getelementptr inbounds %struct.xt_dccp_info, %struct.xt_dccp_info* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %117 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %118 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.dccp_hdr*, %struct.dccp_hdr** %7, align 8
  %121 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %122 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = call i32 @match_option(i32 %115, %struct.sk_buff* %116, i32 %119, %struct.dccp_hdr* %120, i32* %123)
  %125 = load i32, i32* @XT_DCCP_OPTION, align 4
  %126 = load %struct.xt_dccp_info*, %struct.xt_dccp_info** %6, align 8
  %127 = getelementptr inbounds %struct.xt_dccp_info, %struct.xt_dccp_info* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.xt_dccp_info*, %struct.xt_dccp_info** %6, align 8
  %130 = getelementptr inbounds %struct.xt_dccp_info, %struct.xt_dccp_info* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = call i64 @DCCHECK(i32 %124, i32 %125, i32 %128, i32 %131)
  %133 = icmp ne i64 %132, 0
  br label %134

134:                                              ; preds = %112, %97, %85, %51
  %135 = phi i1 [ false, %97 ], [ false, %85 ], [ false, %51 ], [ %133, %112 ]
  %136 = zext i1 %135 to i32
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %134, %25, %16
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local %struct.dccp_hdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.dccp_hdr*) #1

declare dso_local i64 @DCCHECK(i32, i32, i32, i32) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @match_types(%struct.dccp_hdr*, i32) #1

declare dso_local i32 @match_option(i32, %struct.sk_buff*, i32, %struct.dccp_hdr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
