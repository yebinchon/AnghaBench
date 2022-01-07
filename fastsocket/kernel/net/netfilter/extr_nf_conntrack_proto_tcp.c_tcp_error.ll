; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_proto_tcp.c_tcp_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_proto_tcp.c_tcp_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.sk_buff = type { i32 }
%struct.tcphdr = type { i32 }

@IPPROTO_TCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"nf_ct_tcp: short packet \00", align 1
@NF_ACCEPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"nf_ct_tcp: truncated/malformed packet \00", align 1
@NF_INET_PRE_ROUTING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"nf_ct_tcp: bad TCP checksum \00", align 1
@TH_ECE = common dso_local global i64 0, align 8
@TH_CWR = common dso_local global i64 0, align 8
@TH_PUSH = common dso_local global i64 0, align 8
@tcp_valid_flags = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"nf_ct_tcp: invalid TCP flag combination \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sk_buff*, i32, i32*, i64, i32)* @tcp_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_error(%struct.net* %0, %struct.sk_buff* %1, i32 %2, i32* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.tcphdr*, align 8
  %15 = alloca %struct.tcphdr, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %10, align 4
  %22 = sub i32 %20, %21
  store i32 %22, i32* %16, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call %struct.tcphdr* @skb_header_pointer(%struct.sk_buff* %23, i32 %24, i32 4, %struct.tcphdr* %15)
  store %struct.tcphdr* %25, %struct.tcphdr** %14, align 8
  %26 = load %struct.tcphdr*, %struct.tcphdr** %14, align 8
  %27 = icmp eq %struct.tcphdr* %26, null
  br i1 %27, label %28, label %40

28:                                               ; preds = %6
  %29 = load %struct.net*, %struct.net** %8, align 8
  %30 = load i32, i32* @IPPROTO_TCP, align 4
  %31 = call i64 @LOG_INVALID(%struct.net* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i64, i64* %12, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %36 = call i32 @nf_log_packet(i64 %34, i32 0, %struct.sk_buff* %35, i32* null, i32* null, i32* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %33, %28
  %38 = load i32, i32* @NF_ACCEPT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %7, align 4
  br label %127

40:                                               ; preds = %6
  %41 = load %struct.tcphdr*, %struct.tcphdr** %14, align 8
  %42 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %43, 4
  %45 = sext i32 %44 to i64
  %46 = icmp ult i64 %45, 4
  br i1 %46, label %54, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* %16, align 4
  %49 = load %struct.tcphdr*, %struct.tcphdr** %14, align 8
  %50 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %51, 4
  %53 = icmp ult i32 %48, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %47, %40
  %55 = load %struct.net*, %struct.net** %8, align 8
  %56 = load i32, i32* @IPPROTO_TCP, align 4
  %57 = call i64 @LOG_INVALID(%struct.net* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i64, i64* %12, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %62 = call i32 @nf_log_packet(i64 %60, i32 0, %struct.sk_buff* %61, i32* null, i32* null, i32* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %63

63:                                               ; preds = %59, %54
  %64 = load i32, i32* @NF_ACCEPT, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %7, align 4
  br label %127

66:                                               ; preds = %47
  %67 = load %struct.net*, %struct.net** %8, align 8
  %68 = getelementptr inbounds %struct.net, %struct.net* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %96

72:                                               ; preds = %66
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* @NF_INET_PRE_ROUTING, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %96

76:                                               ; preds = %72
  %77 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @IPPROTO_TCP, align 4
  %81 = load i64, i64* %12, align 8
  %82 = call i64 @nf_checksum(%struct.sk_buff* %77, i32 %78, i32 %79, i32 %80, i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %76
  %85 = load %struct.net*, %struct.net** %8, align 8
  %86 = load i32, i32* @IPPROTO_TCP, align 4
  %87 = call i64 @LOG_INVALID(%struct.net* %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load i64, i64* %12, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %92 = call i32 @nf_log_packet(i64 %90, i32 0, %struct.sk_buff* %91, i32* null, i32* null, i32* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %93

93:                                               ; preds = %89, %84
  %94 = load i32, i32* @NF_ACCEPT, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %7, align 4
  br label %127

96:                                               ; preds = %76, %72, %66
  %97 = load %struct.tcphdr*, %struct.tcphdr** %14, align 8
  %98 = bitcast %struct.tcphdr* %97 to i64*
  %99 = getelementptr inbounds i64, i64* %98, i64 13
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @TH_ECE, align 8
  %102 = load i64, i64* @TH_CWR, align 8
  %103 = or i64 %101, %102
  %104 = load i64, i64* @TH_PUSH, align 8
  %105 = or i64 %103, %104
  %106 = xor i64 %105, -1
  %107 = and i64 %100, %106
  store i64 %107, i64* %17, align 8
  %108 = load i32*, i32** @tcp_valid_flags, align 8
  %109 = load i64, i64* %17, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %125, label %113

113:                                              ; preds = %96
  %114 = load %struct.net*, %struct.net** %8, align 8
  %115 = load i32, i32* @IPPROTO_TCP, align 4
  %116 = call i64 @LOG_INVALID(%struct.net* %114, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %113
  %119 = load i64, i64* %12, align 8
  %120 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %121 = call i32 @nf_log_packet(i64 %119, i32 0, %struct.sk_buff* %120, i32* null, i32* null, i32* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %122

122:                                              ; preds = %118, %113
  %123 = load i32, i32* @NF_ACCEPT, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %7, align 4
  br label %127

125:                                              ; preds = %96
  %126 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %126, i32* %7, align 4
  br label %127

127:                                              ; preds = %125, %122, %93, %63, %37
  %128 = load i32, i32* %7, align 4
  ret i32 %128
}

declare dso_local %struct.tcphdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.tcphdr*) #1

declare dso_local i64 @LOG_INVALID(%struct.net*, i32) #1

declare dso_local i32 @nf_log_packet(i64, i32, %struct.sk_buff*, i32*, i32*, i32*, i8*) #1

declare dso_local i64 @nf_checksum(%struct.sk_buff*, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
