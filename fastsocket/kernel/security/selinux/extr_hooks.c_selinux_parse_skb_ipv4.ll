; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_parse_skb_ipv4.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_parse_skb_ipv4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.common_audit_data = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.iphdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tcphdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.udphdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dccp_hdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IP_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.common_audit_data*, i32*)* @selinux_parse_skb_ipv4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_parse_skb_ipv4(%struct.sk_buff* %0, %struct.common_audit_data* %1, i32* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.common_audit_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iphdr, align 4
  %11 = alloca %struct.iphdr*, align 8
  %12 = alloca %struct.tcphdr, align 4
  %13 = alloca %struct.tcphdr*, align 8
  %14 = alloca %struct.udphdr, align 4
  %15 = alloca %struct.udphdr*, align 8
  %16 = alloca %struct.dccp_hdr, align 4
  %17 = alloca %struct.dccp_hdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.common_audit_data* %1, %struct.common_audit_data** %5, align 8
  store i32* %2, i32** %6, align 8
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %9, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call i32 @skb_network_offset(%struct.sk_buff* %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = load i32, i32* %7, align 4
  %24 = bitcast %struct.iphdr* %10 to %struct.udphdr*
  %25 = call %struct.udphdr* @skb_header_pointer(%struct.sk_buff* %22, i32 %23, i32 36, %struct.udphdr* %24)
  %26 = bitcast %struct.udphdr* %25 to %struct.iphdr*
  store %struct.iphdr* %26, %struct.iphdr** %11, align 8
  %27 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %28 = icmp eq %struct.iphdr* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  br label %175

30:                                               ; preds = %3
  %31 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %32 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 %33, 4
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = icmp ult i64 %36, 36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %175

39:                                               ; preds = %30
  %40 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %41 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %40, i32 0, i32 8
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %44 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i32 %42, i32* %47, align 4
  %48 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %49 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %52 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 %50, i32* %55, align 4
  store i32 0, i32* %9, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %39
  %59 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %60 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %6, align 8
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %58, %39
  %64 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %65 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  switch i32 %66, label %173 [
    i32 129, label %67
    i32 128, label %103
    i32 130, label %137
  ]

67:                                               ; preds = %63
  %68 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %69 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ntohs(i32 %70)
  %72 = load i32, i32* @IP_OFFSET, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %174

76:                                               ; preds = %67
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %7, align 4
  %80 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %81 = load i32, i32* %7, align 4
  %82 = bitcast %struct.tcphdr* %12 to %struct.udphdr*
  %83 = call %struct.udphdr* @skb_header_pointer(%struct.sk_buff* %80, i32 %81, i32 36, %struct.udphdr* %82)
  %84 = bitcast %struct.udphdr* %83 to %struct.tcphdr*
  store %struct.tcphdr* %84, %struct.tcphdr** %13, align 8
  %85 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %86 = icmp eq %struct.tcphdr* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %76
  br label %174

88:                                               ; preds = %76
  %89 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %90 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %93 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  store i32 %91, i32* %95, align 4
  %96 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %97 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %100 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  store i32 %98, i32* %102, align 4
  br label %174

103:                                              ; preds = %63
  %104 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %105 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @ntohs(i32 %106)
  %108 = load i32, i32* @IP_OFFSET, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %103
  br label %174

112:                                              ; preds = %103
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %7, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %7, align 4
  %116 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %117 = load i32, i32* %7, align 4
  %118 = call %struct.udphdr* @skb_header_pointer(%struct.sk_buff* %116, i32 %117, i32 36, %struct.udphdr* %14)
  store %struct.udphdr* %118, %struct.udphdr** %15, align 8
  %119 = load %struct.udphdr*, %struct.udphdr** %15, align 8
  %120 = icmp eq %struct.udphdr* %119, null
  br i1 %120, label %121, label %122

121:                                              ; preds = %112
  br label %174

122:                                              ; preds = %112
  %123 = load %struct.udphdr*, %struct.udphdr** %15, align 8
  %124 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %123, i32 0, i32 6
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %127 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 1
  store i32 %125, i32* %129, align 4
  %130 = load %struct.udphdr*, %struct.udphdr** %15, align 8
  %131 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %134 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  store i32 %132, i32* %136, align 4
  br label %174

137:                                              ; preds = %63
  %138 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %139 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @ntohs(i32 %140)
  %142 = load i32, i32* @IP_OFFSET, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %137
  br label %174

146:                                              ; preds = %137
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* %7, align 4
  %149 = add nsw i32 %148, %147
  store i32 %149, i32* %7, align 4
  %150 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %151 = load i32, i32* %7, align 4
  %152 = bitcast %struct.dccp_hdr* %16 to %struct.udphdr*
  %153 = call %struct.udphdr* @skb_header_pointer(%struct.sk_buff* %150, i32 %151, i32 36, %struct.udphdr* %152)
  %154 = bitcast %struct.udphdr* %153 to %struct.dccp_hdr*
  store %struct.dccp_hdr* %154, %struct.dccp_hdr** %17, align 8
  %155 = load %struct.dccp_hdr*, %struct.dccp_hdr** %17, align 8
  %156 = icmp eq %struct.dccp_hdr* %155, null
  br i1 %156, label %157, label %158

157:                                              ; preds = %146
  br label %174

158:                                              ; preds = %146
  %159 = load %struct.dccp_hdr*, %struct.dccp_hdr** %17, align 8
  %160 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %163 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 1
  store i32 %161, i32* %165, align 4
  %166 = load %struct.dccp_hdr*, %struct.dccp_hdr** %17, align 8
  %167 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %170 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  store i32 %168, i32* %172, align 4
  br label %174

173:                                              ; preds = %63
  br label %174

174:                                              ; preds = %173, %158, %157, %145, %122, %121, %111, %88, %87, %75
  br label %175

175:                                              ; preds = %174, %38, %29
  %176 = load i32, i32* %9, align 4
  ret i32 %176
}

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local %struct.udphdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.udphdr*) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
