; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_tcpudp.c_tcp_mt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_tcpudp.c_tcp_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_match_param = type { i32, i32*, i32, %struct.xt_tcp* }
%struct.xt_tcp = type { i32, i8, i8, i64, i32*, i32* }
%struct.tcphdr = type { i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Dropping evil TCP offset=1 frag.\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Dropping evil TCP offset=0 tinygram.\0A\00", align 1
@XT_TCP_INV_SRCPT = common dso_local global i32 0, align 4
@XT_TCP_INV_DSTPT = common dso_local global i32 0, align 4
@XT_TCP_INV_FLAGS = common dso_local global i32 0, align 4
@XT_TCP_INV_OPTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_match_param*)* @tcp_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_mt(%struct.sk_buff* %0, %struct.xt_match_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_match_param*, align 8
  %6 = alloca %struct.tcphdr*, align 8
  %7 = alloca %struct.tcphdr, align 4
  %8 = alloca %struct.xt_tcp*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_match_param* %1, %struct.xt_match_param** %5, align 8
  %9 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %10 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %9, i32 0, i32 3
  %11 = load %struct.xt_tcp*, %struct.xt_tcp** %10, align 8
  store %struct.xt_tcp* %11, %struct.xt_tcp** %8, align 8
  %12 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %13 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %18 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = call i32 @duprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %24 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  store i32 1, i32* %25, align 4
  br label %26

26:                                               ; preds = %21, %16
  store i32 0, i32* %3, align 4
  br label %167

27:                                               ; preds = %2
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %30 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.tcphdr* @skb_header_pointer(%struct.sk_buff* %28, i32 %31, i32 12, %struct.tcphdr* %7)
  store %struct.tcphdr* %32, %struct.tcphdr** %6, align 8
  %33 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %34 = icmp eq %struct.tcphdr* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %27
  %36 = call i32 @duprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %38 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  store i32 1, i32* %39, align 4
  store i32 0, i32* %3, align 4
  br label %167

40:                                               ; preds = %27
  %41 = load %struct.xt_tcp*, %struct.xt_tcp** %8, align 8
  %42 = getelementptr inbounds %struct.xt_tcp, %struct.xt_tcp* %41, i32 0, i32 5
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.xt_tcp*, %struct.xt_tcp** %8, align 8
  %47 = getelementptr inbounds %struct.xt_tcp, %struct.xt_tcp* %46, i32 0, i32 5
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %52 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ntohs(i32 %53)
  %55 = load %struct.xt_tcp*, %struct.xt_tcp** %8, align 8
  %56 = getelementptr inbounds %struct.xt_tcp, %struct.xt_tcp* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @XT_TCP_INV_SRCPT, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i32 @port_match(i32 %45, i32 %50, i32 %54, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %167

67:                                               ; preds = %40
  %68 = load %struct.xt_tcp*, %struct.xt_tcp** %8, align 8
  %69 = getelementptr inbounds %struct.xt_tcp, %struct.xt_tcp* %68, i32 0, i32 4
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.xt_tcp*, %struct.xt_tcp** %8, align 8
  %74 = getelementptr inbounds %struct.xt_tcp, %struct.xt_tcp* %73, i32 0, i32 4
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %79 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @ntohs(i32 %80)
  %82 = load %struct.xt_tcp*, %struct.xt_tcp** %8, align 8
  %83 = getelementptr inbounds %struct.xt_tcp, %struct.xt_tcp* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @XT_TCP_INV_DSTPT, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = call i32 @port_match(i32 %72, i32 %77, i32 %81, i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %67
  store i32 0, i32* %3, align 4
  br label %167

94:                                               ; preds = %67
  %95 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %96 = bitcast %struct.tcphdr* %95 to i8*
  %97 = getelementptr inbounds i8, i8* %96, i64 13
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = load %struct.xt_tcp*, %struct.xt_tcp** %8, align 8
  %101 = getelementptr inbounds %struct.xt_tcp, %struct.xt_tcp* %100, i32 0, i32 1
  %102 = load i8, i8* %101, align 4
  %103 = zext i8 %102 to i32
  %104 = and i32 %99, %103
  %105 = load %struct.xt_tcp*, %struct.xt_tcp** %8, align 8
  %106 = getelementptr inbounds %struct.xt_tcp, %struct.xt_tcp* %105, i32 0, i32 2
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = icmp eq i32 %104, %108
  %110 = zext i1 %109 to i32
  %111 = load %struct.xt_tcp*, %struct.xt_tcp** %8, align 8
  %112 = getelementptr inbounds %struct.xt_tcp, %struct.xt_tcp* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @XT_TCP_INV_FLAGS, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  %117 = xor i1 %116, true
  %118 = xor i1 %117, true
  %119 = zext i1 %118 to i32
  %120 = xor i32 %110, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %94
  store i32 0, i32* %3, align 4
  br label %167

123:                                              ; preds = %94
  %124 = load %struct.xt_tcp*, %struct.xt_tcp** %8, align 8
  %125 = getelementptr inbounds %struct.xt_tcp, %struct.xt_tcp* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %166

128:                                              ; preds = %123
  %129 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %130 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = mul nsw i32 %131, 4
  %133 = sext i32 %132 to i64
  %134 = icmp ult i64 %133, 12
  br i1 %134, label %135, label %139

135:                                              ; preds = %128
  %136 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %137 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  store i32 1, i32* %138, align 4
  store i32 0, i32* %3, align 4
  br label %167

139:                                              ; preds = %128
  %140 = load %struct.xt_tcp*, %struct.xt_tcp** %8, align 8
  %141 = getelementptr inbounds %struct.xt_tcp, %struct.xt_tcp* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %144 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %145 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %148 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = mul nsw i32 %149, 4
  %151 = sext i32 %150 to i64
  %152 = sub i64 %151, 12
  %153 = trunc i64 %152 to i32
  %154 = load %struct.xt_tcp*, %struct.xt_tcp** %8, align 8
  %155 = getelementptr inbounds %struct.xt_tcp, %struct.xt_tcp* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @XT_TCP_INV_OPTION, align 4
  %158 = and i32 %156, %157
  %159 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %160 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = call i32 @tcp_find_option(i64 %142, %struct.sk_buff* %143, i32 %146, i32 %153, i32 %158, i32* %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %139
  store i32 0, i32* %3, align 4
  br label %167

165:                                              ; preds = %139
  br label %166

166:                                              ; preds = %165, %123
  store i32 1, i32* %3, align 4
  br label %167

167:                                              ; preds = %166, %164, %135, %122, %93, %66, %35, %26
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local i32 @duprintf(i8*) #1

declare dso_local %struct.tcphdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.tcphdr*) #1

declare dso_local i32 @port_match(i32, i32, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @tcp_find_option(i64, %struct.sk_buff*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
