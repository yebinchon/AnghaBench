; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_tcpmss.c_tcpmss_mt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_tcpmss.c_tcpmss_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_match_param = type { i32*, i64, %struct.xt_tcpmss_match_info* }
%struct.xt_tcpmss_match_info = type { i32, i32, i32 }
%struct.tcphdr = type { i32 }

@TCPOPT_MSS = common dso_local global i32 0, align 4
@TCPOLEN_MSS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_match_param*)* @tcpmss_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpmss_mt(%struct.sk_buff* %0, %struct.xt_match_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_match_param*, align 8
  %6 = alloca %struct.xt_tcpmss_match_info*, align 8
  %7 = alloca %struct.tcphdr*, align 8
  %8 = alloca %struct.tcphdr, align 4
  %9 = alloca i32*, align 8
  %10 = alloca [56 x %struct.tcphdr], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_match_param* %1, %struct.xt_match_param** %5, align 8
  %14 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %15 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %14, i32 0, i32 2
  %16 = load %struct.xt_tcpmss_match_info*, %struct.xt_tcpmss_match_info** %15, align 8
  store %struct.xt_tcpmss_match_info* %16, %struct.xt_tcpmss_match_info** %6, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %19 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i8* @skb_header_pointer(%struct.sk_buff* %17, i64 %20, i32 4, %struct.tcphdr* %8)
  %22 = bitcast i8* %21 to %struct.tcphdr*
  store %struct.tcphdr* %22, %struct.tcphdr** %7, align 8
  %23 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %24 = icmp eq %struct.tcphdr* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %149

26:                                               ; preds = %2
  %27 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %28 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %29, 4
  %31 = sext i32 %30 to i64
  %32 = icmp ult i64 %31, 4
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %149

34:                                               ; preds = %26
  %35 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %36 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %37, 4
  %39 = sext i32 %38 to i64
  %40 = sub i64 %39, 4
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %34
  br label %145

45:                                               ; preds = %34
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %48 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %49, 4
  %51 = load i32, i32* %12, align 4
  %52 = getelementptr inbounds [56 x %struct.tcphdr], [56 x %struct.tcphdr]* %10, i64 0, i64 0
  %53 = call i8* @skb_header_pointer(%struct.sk_buff* %46, i64 %50, i32 %51, %struct.tcphdr* %52)
  %54 = bitcast i8* %53 to i32*
  store i32* %54, i32** %9, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %45
  br label %149

58:                                               ; preds = %45
  store i32 0, i32* %11, align 4
  br label %59

59:                                               ; preds = %143, %58
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %63, label %144

63:                                               ; preds = %59
  %64 = load i32*, i32** %9, align 8
  %65 = load i32, i32* %11, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @TCPOPT_MSS, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %119

71:                                               ; preds = %63
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %11, align 4
  %74 = sub i32 %72, %73
  %75 = load i32, i32* @TCPOLEN_MSS, align 4
  %76 = icmp uge i32 %74, %75
  br i1 %76, label %77, label %119

77:                                               ; preds = %71
  %78 = load i32*, i32** %9, align 8
  %79 = load i32, i32* %11, align 4
  %80 = add i32 %79, 1
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @TCPOLEN_MSS, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %119

86:                                               ; preds = %77
  %87 = load i32*, i32** %9, align 8
  %88 = load i32, i32* %11, align 4
  %89 = add i32 %88, 2
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = shl i32 %92, 8
  %94 = load i32*, i32** %9, align 8
  %95 = load i32, i32* %11, align 4
  %96 = add i32 %95, 3
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %93, %99
  store i32 %100, i32* %13, align 4
  %101 = load i32, i32* %13, align 4
  %102 = load %struct.xt_tcpmss_match_info*, %struct.xt_tcpmss_match_info** %6, align 8
  %103 = getelementptr inbounds %struct.xt_tcpmss_match_info, %struct.xt_tcpmss_match_info* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp uge i32 %101, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %86
  %107 = load i32, i32* %13, align 4
  %108 = load %struct.xt_tcpmss_match_info*, %struct.xt_tcpmss_match_info** %6, align 8
  %109 = getelementptr inbounds %struct.xt_tcpmss_match_info, %struct.xt_tcpmss_match_info* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp ule i32 %107, %110
  br label %112

112:                                              ; preds = %106, %86
  %113 = phi i1 [ false, %86 ], [ %111, %106 ]
  %114 = zext i1 %113 to i32
  %115 = load %struct.xt_tcpmss_match_info*, %struct.xt_tcpmss_match_info** %6, align 8
  %116 = getelementptr inbounds %struct.xt_tcpmss_match_info, %struct.xt_tcpmss_match_info* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = xor i32 %114, %117
  store i32 %118, i32* %3, align 4
  br label %153

119:                                              ; preds = %77, %71, %63
  %120 = load i32*, i32** %9, align 8
  %121 = load i32, i32* %11, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = icmp ult i32 %124, 2
  br i1 %125, label %126, label %129

126:                                              ; preds = %119
  %127 = load i32, i32* %11, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %11, align 4
  br label %143

129:                                              ; preds = %119
  %130 = load i32*, i32** %9, align 8
  %131 = load i32, i32* %11, align 4
  %132 = add i32 %131, 1
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %130, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %129
  br label %139

138:                                              ; preds = %129
  br label %139

139:                                              ; preds = %138, %137
  %140 = phi i32 [ %135, %137 ], [ 1, %138 ]
  %141 = load i32, i32* %11, align 4
  %142 = add i32 %141, %140
  store i32 %142, i32* %11, align 4
  br label %143

143:                                              ; preds = %139, %126
  br label %59

144:                                              ; preds = %59
  br label %145

145:                                              ; preds = %144, %44
  %146 = load %struct.xt_tcpmss_match_info*, %struct.xt_tcpmss_match_info** %6, align 8
  %147 = getelementptr inbounds %struct.xt_tcpmss_match_info, %struct.xt_tcpmss_match_info* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %3, align 4
  br label %153

149:                                              ; preds = %57, %33, %25
  %150 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %151 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  store i32 1, i32* %152, align 4
  store i32 0, i32* %3, align 4
  br label %153

153:                                              ; preds = %149, %145, %112
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i8* @skb_header_pointer(%struct.sk_buff*, i64, i32, %struct.tcphdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
