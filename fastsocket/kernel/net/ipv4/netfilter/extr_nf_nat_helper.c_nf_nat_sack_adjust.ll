; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_helper.c_nf_nat_sack_adjust.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_helper.c_nf_nat_sack_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i8* }
%struct.tcphdr = type { i32 }
%struct.nf_conn = type { i32 }
%struct.nf_conn_nat = type { i32* }

@TCPOPT_SACK = common dso_local global i8 0, align 1
@TCPOLEN_SACK_PERBLOCK = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tcphdr*, %struct.nf_conn*, i32)* @nf_nat_sack_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_nat_sack_adjust(%struct.sk_buff* %0, %struct.tcphdr* %1, %struct.nf_conn* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.tcphdr*, align 8
  %8 = alloca %struct.nf_conn*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.nf_conn_nat*, align 8
  %14 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.tcphdr* %1, %struct.tcphdr** %7, align 8
  store %struct.nf_conn* %2, %struct.nf_conn** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %16 = call %struct.nf_conn_nat* @nfct_nat(%struct.nf_conn* %15)
  store %struct.nf_conn_nat* %16, %struct.nf_conn_nat** %13, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = call i32 @ip_hdrlen(%struct.sk_buff* %17)
  %19 = sext i32 %18 to i64
  %20 = add i64 %19, 4
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %11, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = call i32 @ip_hdrlen(%struct.sk_buff* %22)
  %24 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %25 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %26, 4
  %28 = add nsw i32 %23, %27
  store i32 %28, i32* %12, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @skb_make_writable(%struct.sk_buff* %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %134

34:                                               ; preds = %4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @CTINFO2DIR(i32 %35)
  store i32 %36, i32* %10, align 4
  br label %37

37:                                               ; preds = %132, %53, %34
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %133

41:                                               ; preds = %37
  %42 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  store i8* %47, i8** %14, align 8
  %48 = load i8*, i8** %14, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  switch i32 %51, label %56 [
    i32 129, label %52
    i32 128, label %53
  ]

52:                                               ; preds = %41
  store i32 1, i32* %5, align 4
  br label %134

53:                                               ; preds = %41
  %54 = load i32, i32* %11, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %11, align 4
  br label %37

56:                                               ; preds = %41
  %57 = load i32, i32* %11, align 4
  %58 = add i32 %57, 1
  %59 = load i32, i32* %12, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %76, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %11, align 4
  %63 = load i8*, i8** %14, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = add i32 %62, %66
  %68 = load i32, i32* %12, align 4
  %69 = icmp ugt i32 %67, %68
  br i1 %69, label %76, label %70

70:                                               ; preds = %61
  %71 = load i8*, i8** %14, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp slt i32 %74, 2
  br i1 %75, label %76, label %77

76:                                               ; preds = %70, %61, %56
  store i32 0, i32* %5, align 4
  br label %134

77:                                               ; preds = %70
  %78 = load i8*, i8** %14, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 0
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = load i8, i8* @TCPOPT_SACK, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp eq i32 %81, %83
  br i1 %84, label %85, label %125

85:                                               ; preds = %77
  %86 = load i8*, i8** %14, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 1
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = load i8, i8* @TCPOLEN_SACK_PERBLOCK, align 1
  %91 = zext i8 %90 to i32
  %92 = add nsw i32 2, %91
  %93 = icmp sge i32 %89, %92
  br i1 %93, label %94, label %125

94:                                               ; preds = %85
  %95 = load i8*, i8** %14, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = sub nsw i32 %98, 2
  %100 = load i8, i8* @TCPOLEN_SACK_PERBLOCK, align 1
  %101 = zext i8 %100 to i32
  %102 = srem i32 %99, %101
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %125

104:                                              ; preds = %94
  %105 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %106 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %107 = load i32, i32* %11, align 4
  %108 = add i32 %107, 2
  %109 = load i32, i32* %11, align 4
  %110 = load i8*, i8** %14, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 1
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = add i32 %109, %113
  %115 = load %struct.nf_conn_nat*, %struct.nf_conn_nat** %13, align 8
  %116 = getelementptr inbounds %struct.nf_conn_nat, %struct.nf_conn_nat* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %10, align 4
  %119 = icmp ne i32 %118, 0
  %120 = xor i1 %119, true
  %121 = zext i1 %120 to i32
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %117, i64 %122
  %124 = call i32 @sack_adjust(%struct.sk_buff* %105, %struct.tcphdr* %106, i32 %108, i32 %114, i32* %123)
  br label %125

125:                                              ; preds = %104, %94, %85, %77
  %126 = load i8*, i8** %14, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 1
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = load i32, i32* %11, align 4
  %131 = add i32 %130, %129
  store i32 %131, i32* %11, align 4
  br label %132

132:                                              ; preds = %125
  br label %37

133:                                              ; preds = %37
  store i32 1, i32* %5, align 4
  br label %134

134:                                              ; preds = %133, %76, %52, %33
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local %struct.nf_conn_nat* @nfct_nat(%struct.nf_conn*) #1

declare dso_local i32 @ip_hdrlen(%struct.sk_buff*) #1

declare dso_local i32 @skb_make_writable(%struct.sk_buff*, i32) #1

declare dso_local i32 @CTINFO2DIR(i32) #1

declare dso_local i32 @sack_adjust(%struct.sk_buff*, %struct.tcphdr*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
