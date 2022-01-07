; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_proto_dccp.c_dccp_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_proto_dccp.c_dccp_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.sk_buff = type { i32 }
%struct.dccp_hdr = type { i32, i32, i64 }

@.str = private unnamed_addr constant [26 x i8] c"nf_ct_dccp: short packet \00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"nf_ct_dccp: truncated/malformed packet \00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"nf_ct_dccp: bad checksum coverage \00", align 1
@NF_INET_PRE_ROUTING = common dso_local global i32 0, align 4
@IPPROTO_DCCP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"nf_ct_dccp: bad checksum \00", align 1
@DCCP_PKT_INVALID = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [34 x i8] c"nf_ct_dccp: reserved packet type \00", align 1
@NF_ACCEPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sk_buff*, i32, i32*, i32, i32)* @dccp_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dccp_error(%struct.net* %0, %struct.sk_buff* %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.dccp_hdr, align 8
  %15 = alloca %struct.dccp_hdr*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %10, align 4
  %23 = sub i32 %21, %22
  store i32 %23, i32* %16, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call %struct.dccp_hdr* @skb_header_pointer(%struct.sk_buff* %24, i32 %25, i32 16, %struct.dccp_hdr* %14)
  store %struct.dccp_hdr* %26, %struct.dccp_hdr** %15, align 8
  %27 = load %struct.dccp_hdr*, %struct.dccp_hdr** %15, align 8
  %28 = icmp eq %struct.dccp_hdr* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %6
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  br label %91

30:                                               ; preds = %6
  %31 = load %struct.dccp_hdr*, %struct.dccp_hdr** %15, align 8
  %32 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = mul nsw i32 %33, 4
  %35 = sext i32 %34 to i64
  %36 = icmp ult i64 %35, 16
  br i1 %36, label %44, label %37

37:                                               ; preds = %30
  %38 = load %struct.dccp_hdr*, %struct.dccp_hdr** %15, align 8
  %39 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = mul nsw i32 %40, 4
  %42 = load i32, i32* %16, align 4
  %43 = icmp ugt i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %37, %30
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8** %18, align 8
  br label %91

45:                                               ; preds = %37
  %46 = load i32, i32* %16, align 4
  store i32 %46, i32* %17, align 4
  %47 = load %struct.dccp_hdr*, %struct.dccp_hdr** %15, align 8
  %48 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %45
  %52 = load %struct.dccp_hdr*, %struct.dccp_hdr** %15, align 8
  %53 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %54, 1
  %56 = mul nsw i32 %55, 4
  store i32 %56, i32* %17, align 4
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* %16, align 4
  %59 = icmp ugt i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8** %18, align 8
  br label %91

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %61, %45
  %63 = load %struct.net*, %struct.net** %8, align 8
  %64 = getelementptr inbounds %struct.net, %struct.net* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %62
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* @NF_INET_PRE_ROUTING, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %68
  %73 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %17, align 4
  %77 = load i32, i32* @IPPROTO_DCCP, align 4
  %78 = load i32, i32* %12, align 4
  %79 = call i64 @nf_checksum_partial(%struct.sk_buff* %73, i32 %74, i32 %75, i32 %76, i32 %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8** %18, align 8
  br label %91

82:                                               ; preds = %72, %68, %62
  %83 = load %struct.dccp_hdr*, %struct.dccp_hdr** %15, align 8
  %84 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @DCCP_PKT_INVALID, align 8
  %87 = icmp sge i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8** %18, align 8
  br label %91

89:                                               ; preds = %82
  %90 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %90, i32* %7, align 4
  br label %104

91:                                               ; preds = %88, %81, %60, %44, %29
  %92 = load %struct.net*, %struct.net** %8, align 8
  %93 = load i32, i32* @IPPROTO_DCCP, align 4
  %94 = call i64 @LOG_INVALID(%struct.net* %92, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load i32, i32* %12, align 4
  %98 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %99 = load i8*, i8** %18, align 8
  %100 = call i32 @nf_log_packet(i32 %97, i32 0, %struct.sk_buff* %98, i32* null, i32* null, i32* null, i8* %99)
  br label %101

101:                                              ; preds = %96, %91
  %102 = load i32, i32* @NF_ACCEPT, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %7, align 4
  br label %104

104:                                              ; preds = %101, %89
  %105 = load i32, i32* %7, align 4
  ret i32 %105
}

declare dso_local %struct.dccp_hdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.dccp_hdr*) #1

declare dso_local i64 @nf_checksum_partial(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @LOG_INVALID(%struct.net*, i32) #1

declare dso_local i32 @nf_log_packet(i32, i32, %struct.sk_buff*, i32*, i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
