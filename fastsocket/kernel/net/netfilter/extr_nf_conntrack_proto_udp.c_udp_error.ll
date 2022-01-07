; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_proto_udp.c_udp_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_proto_udp.c_udp_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.sk_buff = type { i32 }
%struct.udphdr = type { i32, i32 }

@IPPROTO_UDP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"nf_ct_udp: short packet \00", align 1
@NF_ACCEPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"nf_ct_udp: truncated/malformed packet \00", align 1
@NF_INET_PRE_ROUTING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"nf_ct_udp: bad UDP checksum \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sk_buff*, i32, i32*, i32, i32)* @udp_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udp_error(%struct.net* %0, %struct.sk_buff* %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.udphdr*, align 8
  %16 = alloca %struct.udphdr, align 4
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %10, align 4
  %21 = sub i32 %19, %20
  store i32 %21, i32* %14, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call %struct.udphdr* @skb_header_pointer(%struct.sk_buff* %22, i32 %23, i32 8, %struct.udphdr* %16)
  store %struct.udphdr* %24, %struct.udphdr** %15, align 8
  %25 = load %struct.udphdr*, %struct.udphdr** %15, align 8
  %26 = icmp eq %struct.udphdr* %25, null
  br i1 %26, label %27, label %39

27:                                               ; preds = %6
  %28 = load %struct.net*, %struct.net** %8, align 8
  %29 = load i32, i32* @IPPROTO_UDP, align 4
  %30 = call i64 @LOG_INVALID(%struct.net* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* %12, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %35 = call i32 @nf_log_packet(i32 %33, i32 0, %struct.sk_buff* %34, i32* null, i32* null, i32* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %32, %27
  %37 = load i32, i32* @NF_ACCEPT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %7, align 4
  br label %104

39:                                               ; preds = %6
  %40 = load %struct.udphdr*, %struct.udphdr** %15, align 8
  %41 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ntohs(i32 %42)
  %44 = load i32, i32* %14, align 4
  %45 = icmp ugt i32 %43, %44
  br i1 %45, label %53, label %46

46:                                               ; preds = %39
  %47 = load %struct.udphdr*, %struct.udphdr** %15, align 8
  %48 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ntohs(i32 %49)
  %51 = sext i32 %50 to i64
  %52 = icmp ult i64 %51, 8
  br i1 %52, label %53, label %65

53:                                               ; preds = %46, %39
  %54 = load %struct.net*, %struct.net** %8, align 8
  %55 = load i32, i32* @IPPROTO_UDP, align 4
  %56 = call i64 @LOG_INVALID(%struct.net* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i32, i32* %12, align 4
  %60 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %61 = call i32 @nf_log_packet(i32 %59, i32 0, %struct.sk_buff* %60, i32* null, i32* null, i32* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %58, %53
  %63 = load i32, i32* @NF_ACCEPT, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %7, align 4
  br label %104

65:                                               ; preds = %46
  %66 = load %struct.udphdr*, %struct.udphdr** %15, align 8
  %67 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %71, i32* %7, align 4
  br label %104

72:                                               ; preds = %65
  %73 = load %struct.net*, %struct.net** %8, align 8
  %74 = getelementptr inbounds %struct.net, %struct.net* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %102

78:                                               ; preds = %72
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* @NF_INET_PRE_ROUTING, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %102

82:                                               ; preds = %78
  %83 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @IPPROTO_UDP, align 4
  %87 = load i32, i32* %12, align 4
  %88 = call i64 @nf_checksum(%struct.sk_buff* %83, i32 %84, i32 %85, i32 %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %82
  %91 = load %struct.net*, %struct.net** %8, align 8
  %92 = load i32, i32* @IPPROTO_UDP, align 4
  %93 = call i64 @LOG_INVALID(%struct.net* %91, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = load i32, i32* %12, align 4
  %97 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %98 = call i32 @nf_log_packet(i32 %96, i32 0, %struct.sk_buff* %97, i32* null, i32* null, i32* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %99

99:                                               ; preds = %95, %90
  %100 = load i32, i32* @NF_ACCEPT, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %7, align 4
  br label %104

102:                                              ; preds = %82, %78, %72
  %103 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %103, i32* %7, align 4
  br label %104

104:                                              ; preds = %102, %99, %70, %62, %36
  %105 = load i32, i32* %7, align 4
  ret i32 %105
}

declare dso_local %struct.udphdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.udphdr*) #1

declare dso_local i64 @LOG_INVALID(%struct.net*, i32) #1

declare dso_local i32 @nf_log_packet(i32, i32, %struct.sk_buff*, i32*, i32*, i32*, i8*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i64 @nf_checksum(%struct.sk_buff*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
