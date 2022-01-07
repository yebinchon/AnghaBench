; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_proto_tcp.c_tcp_sack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_proto_tcp.c_tcp_sack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tcphdr = type { i32 }

@TCPOLEN_TSTAMP_ALIGNED = common dso_local global i32 0, align 4
@TCPOPT_TIMESTAMP = common dso_local global i32 0, align 4
@TCPOLEN_TIMESTAMP = common dso_local global i32 0, align 4
@TCPOPT_SACK = common dso_local global i32 0, align 4
@TCPOLEN_SACK_BASE = common dso_local global i32 0, align 4
@TCPOLEN_SACK_PERBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i32, %struct.tcphdr*, i32*)* @tcp_sack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_sack(%struct.sk_buff* %0, i32 %1, %struct.tcphdr* %2, i32* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tcphdr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [56 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.tcphdr* %2, %struct.tcphdr** %7, align 8
  store i32* %3, i32** %8, align 8
  %16 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %17 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %18, 4
  %20 = sext i32 %19 to i64
  %21 = sub i64 %20, 4
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %4
  br label %138

26:                                               ; preds = %4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = zext i32 %28 to i64
  %30 = add i64 %29, 4
  %31 = trunc i64 %30 to i32
  %32 = load i32, i32* %11, align 4
  %33 = getelementptr inbounds [56 x i8], [56 x i8]* %9, i64 0, i64 0
  %34 = call i8* @skb_header_pointer(%struct.sk_buff* %27, i32 %31, i32 %32, i8* %33)
  store i8* %34, i8** %10, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = icmp eq i8* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 @BUG_ON(i32 %37)
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @TCPOLEN_TSTAMP_ALIGNED, align 4
  %41 = mul nsw i32 %40, 4
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %26
  %44 = load i8*, i8** %10, align 8
  %45 = bitcast i8* %44 to i64*
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* @TCPOPT_TIMESTAMP, align 4
  %48 = shl i32 %47, 8
  %49 = or i32 -2139095040, %48
  %50 = load i32, i32* @TCPOLEN_TIMESTAMP, align 4
  %51 = or i32 %49, %50
  %52 = call i64 @htonl(i32 %51)
  %53 = icmp eq i64 %46, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %43
  br label %138

55:                                               ; preds = %43, %26
  br label %56

56:                                               ; preds = %137, %66, %55
  %57 = load i32, i32* %11, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %138

59:                                               ; preds = %56
  %60 = load i8*, i8** %10, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %10, align 8
  %62 = load i8, i8* %60, align 1
  %63 = zext i8 %62 to i32
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  switch i32 %64, label %69 [
    i32 129, label %65
    i32 128, label %66
  ]

65:                                               ; preds = %59
  br label %138

66:                                               ; preds = %59
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %11, align 4
  br label %56

69:                                               ; preds = %59
  %70 = load i8*, i8** %10, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %10, align 8
  %72 = load i8, i8* %70, align 1
  %73 = zext i8 %72 to i32
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %14, align 4
  %75 = icmp slt i32 %74, 2
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %138

77:                                               ; preds = %69
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %137

82:                                               ; preds = %77
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* @TCPOPT_SACK, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %128

86:                                               ; preds = %82
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* @TCPOLEN_SACK_BASE, align 4
  %89 = load i32, i32* @TCPOLEN_SACK_PERBLOCK, align 4
  %90 = add nsw i32 %88, %89
  %91 = icmp sge i32 %87, %90
  br i1 %91, label %92, label %128

92:                                               ; preds = %86
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* @TCPOLEN_SACK_BASE, align 4
  %95 = sub nsw i32 %93, %94
  %96 = load i32, i32* @TCPOLEN_SACK_PERBLOCK, align 4
  %97 = srem i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %128, label %99

99:                                               ; preds = %92
  store i32 0, i32* %15, align 4
  br label %100

100:                                              ; preds = %123, %99
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* @TCPOLEN_SACK_BASE, align 4
  %104 = sub nsw i32 %102, %103
  %105 = icmp slt i32 %101, %104
  br i1 %105, label %106, label %127

106:                                              ; preds = %100
  %107 = load i8*, i8** %10, align 8
  %108 = load i32, i32* %15, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  %111 = bitcast i8* %110 to i64*
  %112 = getelementptr inbounds i64, i64* %111, i64 1
  %113 = call i32 @get_unaligned_be32(i64* %112)
  store i32 %113, i32* %12, align 4
  %114 = load i32, i32* %12, align 4
  %115 = load i32*, i32** %8, align 8
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @after(i32 %114, i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %106
  %120 = load i32, i32* %12, align 4
  %121 = load i32*, i32** %8, align 8
  store i32 %120, i32* %121, align 4
  br label %122

122:                                              ; preds = %119, %106
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* @TCPOLEN_SACK_PERBLOCK, align 4
  %125 = load i32, i32* %15, align 4
  %126 = add nsw i32 %125, %124
  store i32 %126, i32* %15, align 4
  br label %100

127:                                              ; preds = %100
  br label %138

128:                                              ; preds = %92, %86, %82
  %129 = load i32, i32* %14, align 4
  %130 = sub nsw i32 %129, 2
  %131 = load i8*, i8** %10, align 8
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds i8, i8* %131, i64 %132
  store i8* %133, i8** %10, align 8
  %134 = load i32, i32* %14, align 4
  %135 = load i32, i32* %11, align 4
  %136 = sub nsw i32 %135, %134
  store i32 %136, i32* %11, align 4
  br label %137

137:                                              ; preds = %128, %81
  br label %56

138:                                              ; preds = %25, %54, %65, %76, %127, %56
  ret void
}

declare dso_local i8* @skb_header_pointer(%struct.sk_buff*, i32, i32, i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @htonl(i32) #1

declare dso_local i32 @get_unaligned_be32(i64*) #1

declare dso_local i32 @after(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
