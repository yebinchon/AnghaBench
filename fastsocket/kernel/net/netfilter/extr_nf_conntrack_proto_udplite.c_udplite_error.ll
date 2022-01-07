; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_proto_udplite.c_udplite_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_proto_udplite.c_udplite_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.sk_buff = type { i32 }
%struct.udphdr = type { i32, i32 }

@IPPROTO_UDPLITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"nf_ct_udplite: short packet \00", align 1
@NF_ACCEPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"nf_ct_udplite: invalid checksum coverage \00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"nf_ct_udplite: checksum missing \00", align 1
@NF_INET_PRE_ROUTING = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"nf_ct_udplite: bad UDPLite checksum \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sk_buff*, i32, i32*, i32, i32)* @udplite_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udplite_error(%struct.net* %0, %struct.sk_buff* %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
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
  %17 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %10, align 4
  %22 = sub i32 %20, %21
  store i32 %22, i32* %14, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call %struct.udphdr* @skb_header_pointer(%struct.sk_buff* %23, i32 %24, i32 8, %struct.udphdr* %16)
  store %struct.udphdr* %25, %struct.udphdr** %15, align 8
  %26 = load %struct.udphdr*, %struct.udphdr** %15, align 8
  %27 = icmp eq %struct.udphdr* %26, null
  br i1 %27, label %28, label %40

28:                                               ; preds = %6
  %29 = load %struct.net*, %struct.net** %8, align 8
  %30 = load i32, i32* @IPPROTO_UDPLITE, align 4
  %31 = call i64 @LOG_INVALID(%struct.net* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %36 = call i32 @nf_log_packet(i32 %34, i32 0, %struct.sk_buff* %35, i32* null, i32* null, i32* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %33, %28
  %38 = load i32, i32* @NF_ACCEPT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %7, align 4
  br label %120

40:                                               ; preds = %6
  %41 = load %struct.udphdr*, %struct.udphdr** %15, align 8
  %42 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ntohs(i32 %43)
  store i32 %44, i32* %17, align 4
  %45 = load i32, i32* %17, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* %14, align 4
  store i32 %48, i32* %17, align 4
  br label %70

49:                                               ; preds = %40
  %50 = load i32, i32* %17, align 4
  %51 = zext i32 %50 to i64
  %52 = icmp ult i64 %51, 8
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %17, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp ugt i32 %54, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %53, %49
  %58 = load %struct.net*, %struct.net** %8, align 8
  %59 = load i32, i32* @IPPROTO_UDPLITE, align 4
  %60 = call i64 @LOG_INVALID(%struct.net* %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i32, i32* %12, align 4
  %64 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %65 = call i32 @nf_log_packet(i32 %63, i32 0, %struct.sk_buff* %64, i32* null, i32* null, i32* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %66

66:                                               ; preds = %62, %57
  %67 = load i32, i32* @NF_ACCEPT, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %7, align 4
  br label %120

69:                                               ; preds = %53
  br label %70

70:                                               ; preds = %69, %47
  %71 = load %struct.udphdr*, %struct.udphdr** %15, align 8
  %72 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %87, label %75

75:                                               ; preds = %70
  %76 = load %struct.net*, %struct.net** %8, align 8
  %77 = load i32, i32* @IPPROTO_UDPLITE, align 4
  %78 = call i64 @LOG_INVALID(%struct.net* %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load i32, i32* %12, align 4
  %82 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %83 = call i32 @nf_log_packet(i32 %81, i32 0, %struct.sk_buff* %82, i32* null, i32* null, i32* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %84

84:                                               ; preds = %80, %75
  %85 = load i32, i32* @NF_ACCEPT, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %7, align 4
  br label %120

87:                                               ; preds = %70
  %88 = load %struct.net*, %struct.net** %8, align 8
  %89 = getelementptr inbounds %struct.net, %struct.net* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %118

93:                                               ; preds = %87
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* @NF_INET_PRE_ROUTING, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %118

97:                                               ; preds = %93
  %98 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %17, align 4
  %102 = load i32, i32* @IPPROTO_UDP, align 4
  %103 = load i32, i32* %12, align 4
  %104 = call i64 @nf_checksum_partial(%struct.sk_buff* %98, i32 %99, i32 %100, i32 %101, i32 %102, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %97
  %107 = load %struct.net*, %struct.net** %8, align 8
  %108 = load i32, i32* @IPPROTO_UDPLITE, align 4
  %109 = call i64 @LOG_INVALID(%struct.net* %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load i32, i32* %12, align 4
  %113 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %114 = call i32 @nf_log_packet(i32 %112, i32 0, %struct.sk_buff* %113, i32* null, i32* null, i32* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %115

115:                                              ; preds = %111, %106
  %116 = load i32, i32* @NF_ACCEPT, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %7, align 4
  br label %120

118:                                              ; preds = %97, %93, %87
  %119 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %119, i32* %7, align 4
  br label %120

120:                                              ; preds = %118, %115, %84, %66, %37
  %121 = load i32, i32* %7, align 4
  ret i32 %121
}

declare dso_local %struct.udphdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.udphdr*) #1

declare dso_local i64 @LOG_INVALID(%struct.net*, i32) #1

declare dso_local i32 @nf_log_packet(i32, i32, %struct.sk_buff*, i32*, i32*, i32*, i8*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i64 @nf_checksum_partial(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
