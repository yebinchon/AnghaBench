; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_input.c_sctp_v4_err.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_input.c_sctp_v4_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32, i8*, i8*, i64 }
%struct.iphdr = type { i32 }
%struct.sock = type { i32, i32, i32 (%struct.sock*)* }
%struct.sctp_association = type { i32 }
%struct.sctp_transport = type { i32 }
%struct.inet_sock = type { i64 }
%struct.TYPE_3__ = type { i32, i32 }

@init_net = common dso_local global i32 0, align 4
@ICMP_MIB_INERRORS = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@NR_ICMP_UNREACH = common dso_local global i32 0, align 4
@ICMP_FRAG_NEEDED = common dso_local global i32 0, align 4
@ICMP_PROT_UNREACH = common dso_local global i32 0, align 4
@icmp_err_convert = common dso_local global %struct.TYPE_4__* null, align 8
@ICMP_EXC_FRAGTIME = common dso_local global i32 0, align 4
@EHOSTUNREACH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_v4_err(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iphdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.sctp_association*, align 8
  %11 = alloca %struct.sctp_transport*, align 8
  %12 = alloca %struct.inet_sock*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32 %1, i32* %4, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.iphdr*
  store %struct.iphdr* %19, %struct.iphdr** %5, align 8
  %20 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %21 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %22, 4
  store i32 %23, i32* %6, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %25 = call %struct.TYPE_3__* @icmp_hdr(%struct.sk_buff* %24)
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %29 = call %struct.TYPE_3__* @icmp_hdr(%struct.sk_buff* %28)
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %8, align 4
  store %struct.sctp_association* null, %struct.sctp_association** %10, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 8
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %2
  %39 = load i32, i32* @ICMP_MIB_INERRORS, align 4
  %40 = call i32 @ICMP_INC_STATS_BH(i32* @init_net, i32 %39)
  br label %142

41:                                               ; preds = %2
  %42 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %13, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %14, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %49 = call i32 @skb_reset_network_header(%struct.sk_buff* %48)
  %50 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @skb_set_transport_header(%struct.sk_buff* %50, i32 %51)
  %53 = load i32, i32* @AF_INET, align 4
  %54 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %56 = call i32 @sctp_hdr(%struct.sk_buff* %55)
  %57 = call %struct.sock* @sctp_err_lookup(i32 %53, %struct.sk_buff* %54, i32 %56, %struct.sctp_association** %10, %struct.sctp_transport** %11)
  store %struct.sock* %57, %struct.sock** %9, align 8
  %58 = load i8*, i8** %13, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  %61 = load i8*, i8** %14, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  %64 = load %struct.sock*, %struct.sock** %9, align 8
  %65 = icmp ne %struct.sock* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %41
  %67 = load i32, i32* @ICMP_MIB_INERRORS, align 4
  %68 = call i32 @ICMP_INC_STATS_BH(i32* @init_net, i32 %67)
  br label %142

69:                                               ; preds = %41
  %70 = load i32, i32* %7, align 4
  switch i32 %70, label %112 [
    i32 129, label %71
    i32 130, label %73
    i32 128, label %105
  ]

71:                                               ; preds = %69
  %72 = load i32, i32* @EPROTO, align 4
  store i32 %72, i32* %15, align 4
  br label %113

73:                                               ; preds = %69
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @NR_ICMP_UNREACH, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %138

78:                                               ; preds = %73
  %79 = load i32, i32* @ICMP_FRAG_NEEDED, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %78
  %83 = load %struct.sock*, %struct.sock** %9, align 8
  %84 = load %struct.sctp_association*, %struct.sctp_association** %10, align 8
  %85 = load %struct.sctp_transport*, %struct.sctp_transport** %11, align 8
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @sctp_icmp_frag_needed(%struct.sock* %83, %struct.sctp_association* %84, %struct.sctp_transport* %85, i32 %86)
  br label %138

88:                                               ; preds = %78
  %89 = load i32, i32* @ICMP_PROT_UNREACH, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = load %struct.sock*, %struct.sock** %9, align 8
  %94 = load %struct.sctp_association*, %struct.sctp_association** %10, align 8
  %95 = load %struct.sctp_transport*, %struct.sctp_transport** %11, align 8
  %96 = call i32 @sctp_icmp_proto_unreachable(%struct.sock* %93, %struct.sctp_association* %94, %struct.sctp_transport* %95)
  br label %138

97:                                               ; preds = %88
  br label %98

98:                                               ; preds = %97
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** @icmp_err_convert, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %15, align 4
  br label %113

105:                                              ; preds = %69
  %106 = load i32, i32* @ICMP_EXC_FRAGTIME, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  br label %138

110:                                              ; preds = %105
  %111 = load i32, i32* @EHOSTUNREACH, align 4
  store i32 %111, i32* %15, align 4
  br label %113

112:                                              ; preds = %69
  br label %138

113:                                              ; preds = %110, %98, %71
  %114 = load %struct.sock*, %struct.sock** %9, align 8
  %115 = call %struct.inet_sock* @inet_sk(%struct.sock* %114)
  store %struct.inet_sock* %115, %struct.inet_sock** %12, align 8
  %116 = load %struct.sock*, %struct.sock** %9, align 8
  %117 = call i32 @sock_owned_by_user(%struct.sock* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %133, label %119

119:                                              ; preds = %113
  %120 = load %struct.inet_sock*, %struct.inet_sock** %12, align 8
  %121 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %119
  %125 = load i32, i32* %15, align 4
  %126 = load %struct.sock*, %struct.sock** %9, align 8
  %127 = getelementptr inbounds %struct.sock, %struct.sock* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  %128 = load %struct.sock*, %struct.sock** %9, align 8
  %129 = getelementptr inbounds %struct.sock, %struct.sock* %128, i32 0, i32 2
  %130 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %129, align 8
  %131 = load %struct.sock*, %struct.sock** %9, align 8
  %132 = call i32 %130(%struct.sock* %131)
  br label %137

133:                                              ; preds = %119, %113
  %134 = load i32, i32* %15, align 4
  %135 = load %struct.sock*, %struct.sock** %9, align 8
  %136 = getelementptr inbounds %struct.sock, %struct.sock* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 4
  br label %137

137:                                              ; preds = %133, %124
  br label %138

138:                                              ; preds = %137, %112, %109, %92, %82, %77
  %139 = load %struct.sock*, %struct.sock** %9, align 8
  %140 = load %struct.sctp_association*, %struct.sctp_association** %10, align 8
  %141 = call i32 @sctp_err_finish(%struct.sock* %139, %struct.sctp_association* %140)
  br label %142

142:                                              ; preds = %138, %66, %38
  ret void
}

declare dso_local %struct.TYPE_3__* @icmp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ICMP_INC_STATS_BH(i32*, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_set_transport_header(%struct.sk_buff*, i32) #1

declare dso_local %struct.sock* @sctp_err_lookup(i32, %struct.sk_buff*, i32, %struct.sctp_association**, %struct.sctp_transport**) #1

declare dso_local i32 @sctp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @sctp_icmp_frag_needed(%struct.sock*, %struct.sctp_association*, %struct.sctp_transport*, i32) #1

declare dso_local i32 @sctp_icmp_proto_unreachable(%struct.sock*, %struct.sctp_association*, %struct.sctp_transport*) #1

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i32 @sock_owned_by_user(%struct.sock*) #1

declare dso_local i32 @sctp_err_finish(%struct.sock*, %struct.sctp_association*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
