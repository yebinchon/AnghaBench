; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/extr_lsm_audit.c_ipv4_skb_to_auditdata.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/extr_lsm_audit.c_ipv4_skb_to_auditdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.common_audit_data = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.iphdr = type { i32, i32, i32, i32 }
%struct.tcphdr = type { i32, i32 }
%struct.udphdr = type { i32, i32 }
%struct.dccp_hdr = type { i32, i32 }
%struct.sctphdr = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IP_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipv4_skb_to_auditdata(%struct.sk_buff* %0, %struct.common_audit_data* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.common_audit_data*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.iphdr*, align 8
  %10 = alloca %struct.tcphdr*, align 8
  %11 = alloca %struct.udphdr*, align 8
  %12 = alloca %struct.dccp_hdr*, align 8
  %13 = alloca %struct.sctphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.common_audit_data* %1, %struct.common_audit_data** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %14)
  store %struct.iphdr* %15, %struct.iphdr** %9, align 8
  %16 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %17 = icmp eq %struct.iphdr* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %147

21:                                               ; preds = %3
  %22 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %23 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.common_audit_data*, %struct.common_audit_data** %6, align 8
  %26 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store i32 %24, i32* %29, align 4
  %30 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %31 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.common_audit_data*, %struct.common_audit_data** %6, align 8
  %34 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 %32, i32* %37, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %21
  %41 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %42 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %7, align 8
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %40, %21
  %46 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %47 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ntohs(i32 %48)
  %50 = load i32, i32* @IP_OFFSET, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %147

54:                                               ; preds = %45
  %55 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %56 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  switch i32 %57, label %142 [
    i32 129, label %58
    i32 128, label %79
    i32 131, label %100
    i32 130, label %121
  ]

58:                                               ; preds = %54
  %59 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %60 = call %struct.tcphdr* @tcp_hdr(%struct.sk_buff* %59)
  store %struct.tcphdr* %60, %struct.tcphdr** %10, align 8
  %61 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %62 = icmp eq %struct.tcphdr* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %145

64:                                               ; preds = %58
  %65 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %66 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.common_audit_data*, %struct.common_audit_data** %6, align 8
  %69 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  store i32 %67, i32* %71, align 4
  %72 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %73 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.common_audit_data*, %struct.common_audit_data** %6, align 8
  %76 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  store i32 %74, i32* %78, align 4
  br label %145

79:                                               ; preds = %54
  %80 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %81 = call %struct.udphdr* @udp_hdr(%struct.sk_buff* %80)
  store %struct.udphdr* %81, %struct.udphdr** %11, align 8
  %82 = load %struct.udphdr*, %struct.udphdr** %11, align 8
  %83 = icmp eq %struct.udphdr* %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %145

85:                                               ; preds = %79
  %86 = load %struct.udphdr*, %struct.udphdr** %11, align 8
  %87 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.common_audit_data*, %struct.common_audit_data** %6, align 8
  %90 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  store i32 %88, i32* %92, align 4
  %93 = load %struct.udphdr*, %struct.udphdr** %11, align 8
  %94 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.common_audit_data*, %struct.common_audit_data** %6, align 8
  %97 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  store i32 %95, i32* %99, align 4
  br label %145

100:                                              ; preds = %54
  %101 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %102 = call %struct.dccp_hdr* @dccp_hdr(%struct.sk_buff* %101)
  store %struct.dccp_hdr* %102, %struct.dccp_hdr** %12, align 8
  %103 = load %struct.dccp_hdr*, %struct.dccp_hdr** %12, align 8
  %104 = icmp eq %struct.dccp_hdr* %103, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %145

106:                                              ; preds = %100
  %107 = load %struct.dccp_hdr*, %struct.dccp_hdr** %12, align 8
  %108 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.common_audit_data*, %struct.common_audit_data** %6, align 8
  %111 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  store i32 %109, i32* %113, align 4
  %114 = load %struct.dccp_hdr*, %struct.dccp_hdr** %12, align 8
  %115 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.common_audit_data*, %struct.common_audit_data** %6, align 8
  %118 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  store i32 %116, i32* %120, align 4
  br label %145

121:                                              ; preds = %54
  %122 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %123 = call %struct.sctphdr* @sctp_hdr(%struct.sk_buff* %122)
  store %struct.sctphdr* %123, %struct.sctphdr** %13, align 8
  %124 = load %struct.sctphdr*, %struct.sctphdr** %13, align 8
  %125 = icmp eq %struct.sctphdr* %124, null
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  br label %145

127:                                              ; preds = %121
  %128 = load %struct.sctphdr*, %struct.sctphdr** %13, align 8
  %129 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.common_audit_data*, %struct.common_audit_data** %6, align 8
  %132 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 1
  store i32 %130, i32* %134, align 4
  %135 = load %struct.sctphdr*, %struct.sctphdr** %13, align 8
  %136 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.common_audit_data*, %struct.common_audit_data** %6, align 8
  %139 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  store i32 %137, i32* %141, align 4
  br label %145

142:                                              ; preds = %54
  %143 = load i32, i32* @EINVAL, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %8, align 4
  br label %145

145:                                              ; preds = %142, %127, %126, %106, %105, %85, %84, %64, %63
  %146 = load i32, i32* %8, align 4
  store i32 %146, i32* %4, align 4
  br label %147

147:                                              ; preds = %145, %53, %18
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.tcphdr* @tcp_hdr(%struct.sk_buff*) #1

declare dso_local %struct.udphdr* @udp_hdr(%struct.sk_buff*) #1

declare dso_local %struct.dccp_hdr* @dccp_hdr(%struct.sk_buff*) #1

declare dso_local %struct.sctphdr* @sctp_hdr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
