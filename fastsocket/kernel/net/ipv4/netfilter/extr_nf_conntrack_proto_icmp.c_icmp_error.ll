; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_conntrack_proto_icmp.c_icmp_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_conntrack_proto_icmp.c_icmp_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.sk_buff = type { i32 }
%struct.icmphdr = type { i64 }

@IPPROTO_ICMP = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"nf_ct_icmp: short packet \00", align 1
@NF_ACCEPT = common dso_local global i32 0, align 4
@NF_INET_PRE_ROUTING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"nf_ct_icmp: bad HW ICMP checksum \00", align 1
@NR_ICMP_TYPES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"nf_ct_icmp: invalid ICMP type \00", align 1
@ICMP_DEST_UNREACH = common dso_local global i64 0, align 8
@ICMP_SOURCE_QUENCH = common dso_local global i64 0, align 8
@ICMP_TIME_EXCEEDED = common dso_local global i64 0, align 8
@ICMP_PARAMETERPROB = common dso_local global i64 0, align 8
@ICMP_REDIRECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sk_buff*, i32, i32*, i32, i32)* @icmp_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icmp_error(%struct.net* %0, %struct.sk_buff* %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.icmphdr*, align 8
  %15 = alloca %struct.icmphdr, align 8
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %18 = call i32 @ip_hdrlen(%struct.sk_buff* %17)
  %19 = call %struct.icmphdr* @skb_header_pointer(%struct.sk_buff* %16, i32 %18, i32 8, %struct.icmphdr* %15)
  store %struct.icmphdr* %19, %struct.icmphdr** %14, align 8
  %20 = load %struct.icmphdr*, %struct.icmphdr** %14, align 8
  %21 = icmp eq %struct.icmphdr* %20, null
  br i1 %21, label %22, label %34

22:                                               ; preds = %6
  %23 = load %struct.net*, %struct.net** %8, align 8
  %24 = load i32, i32* @IPPROTO_ICMP, align 4
  %25 = call i64 @LOG_INVALID(%struct.net* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* @PF_INET, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %30 = call i32 @nf_log_packet(i32 %28, i32 0, %struct.sk_buff* %29, i32* null, i32* null, i32* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %27, %22
  %32 = load i32, i32* @NF_ACCEPT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %118

34:                                               ; preds = %6
  %35 = load %struct.net*, %struct.net** %8, align 8
  %36 = getelementptr inbounds %struct.net, %struct.net* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %62

40:                                               ; preds = %34
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* @NF_INET_PRE_ROUTING, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %40
  %45 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i64 @nf_ip_checksum(%struct.sk_buff* %45, i32 %46, i32 %47, i32 0)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %44
  %51 = load %struct.net*, %struct.net** %8, align 8
  %52 = load i32, i32* @IPPROTO_ICMP, align 4
  %53 = call i64 @LOG_INVALID(%struct.net* %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i32, i32* @PF_INET, align 4
  %57 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %58 = call i32 @nf_log_packet(i32 %56, i32 0, %struct.sk_buff* %57, i32* null, i32* null, i32* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %59

59:                                               ; preds = %55, %50
  %60 = load i32, i32* @NF_ACCEPT, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %7, align 4
  br label %118

62:                                               ; preds = %44, %40, %34
  %63 = load %struct.icmphdr*, %struct.icmphdr** %14, align 8
  %64 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @NR_ICMP_TYPES, align 8
  %67 = icmp sgt i64 %65, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %62
  %69 = load %struct.net*, %struct.net** %8, align 8
  %70 = load i32, i32* @IPPROTO_ICMP, align 4
  %71 = call i64 @LOG_INVALID(%struct.net* %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load i32, i32* @PF_INET, align 4
  %75 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %76 = call i32 @nf_log_packet(i32 %74, i32 0, %struct.sk_buff* %75, i32* null, i32* null, i32* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %77

77:                                               ; preds = %73, %68
  %78 = load i32, i32* @NF_ACCEPT, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %7, align 4
  br label %118

80:                                               ; preds = %62
  %81 = load %struct.icmphdr*, %struct.icmphdr** %14, align 8
  %82 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @ICMP_DEST_UNREACH, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %112

86:                                               ; preds = %80
  %87 = load %struct.icmphdr*, %struct.icmphdr** %14, align 8
  %88 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @ICMP_SOURCE_QUENCH, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %112

92:                                               ; preds = %86
  %93 = load %struct.icmphdr*, %struct.icmphdr** %14, align 8
  %94 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @ICMP_TIME_EXCEEDED, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %112

98:                                               ; preds = %92
  %99 = load %struct.icmphdr*, %struct.icmphdr** %14, align 8
  %100 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @ICMP_PARAMETERPROB, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %98
  %105 = load %struct.icmphdr*, %struct.icmphdr** %14, align 8
  %106 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @ICMP_REDIRECT, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %104
  %111 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %111, i32* %7, align 4
  br label %118

112:                                              ; preds = %104, %98, %92, %86, %80
  %113 = load %struct.net*, %struct.net** %8, align 8
  %114 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %115 = load i32*, i32** %11, align 8
  %116 = load i32, i32* %13, align 4
  %117 = call i32 @icmp_error_message(%struct.net* %113, %struct.sk_buff* %114, i32* %115, i32 %116)
  store i32 %117, i32* %7, align 4
  br label %118

118:                                              ; preds = %112, %110, %77, %59, %31
  %119 = load i32, i32* %7, align 4
  ret i32 %119
}

declare dso_local %struct.icmphdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.icmphdr*) #1

declare dso_local i32 @ip_hdrlen(%struct.sk_buff*) #1

declare dso_local i64 @LOG_INVALID(%struct.net*, i32) #1

declare dso_local i32 @nf_log_packet(i32, i32, %struct.sk_buff*, i32*, i32*, i32*, i8*) #1

declare dso_local i64 @nf_ip_checksum(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @icmp_error_message(%struct.net*, %struct.sk_buff*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
