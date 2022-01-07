; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_pptp.c_conntrack_pptp_help.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_pptp.c_conntrack_pptp_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conn = type { i32 }
%struct.nf_ct_pptp_master = type { i32, i32 }
%struct.tcphdr = type { i32, i32, i32, i32 }
%struct.pptp_pkt_hdr = type { i32, i32, i32, i32 }
%struct.PptpControlHeader = type { i32, i32, i32, i32 }
%union.pptp_ctrl_union = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nf_ct_pptp_master }

@IP_CT_ESTABLISHED = common dso_local global i32 0, align 4
@IP_CT_IS_REPLY = common dso_local global i32 0, align 4
@NF_ACCEPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"no full PPTP header, can't track\0A\00", align 1
@PPTP_PACKET_CONTROL = common dso_local global i64 0, align 8
@PPTP_MAGIC_COOKIE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"not a control packet\0A\00", align 1
@PPTP_MSG_MAX = common dso_local global i64 0, align 8
@pptp_msg_size = common dso_local global i32* null, align 8
@nf_pptp_lock = common dso_local global i32 0, align 4
@IP_CT_DIR_ORIGINAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"sstate: %d->%d, cstate: %d->%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, %struct.nf_conn*, i32)* @conntrack_pptp_help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @conntrack_pptp_help(%struct.sk_buff* %0, i32 %1, %struct.nf_conn* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nf_conn*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nf_ct_pptp_master*, align 8
  %12 = alloca %struct.tcphdr*, align 8
  %13 = alloca %struct.tcphdr, align 4
  %14 = alloca %struct.pptp_pkt_hdr*, align 8
  %15 = alloca %struct.pptp_pkt_hdr, align 4
  %16 = alloca %struct.PptpControlHeader, align 4
  %17 = alloca %struct.PptpControlHeader*, align 8
  %18 = alloca %union.pptp_ctrl_union, align 4
  %19 = alloca %union.pptp_ctrl_union*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.nf_conn* %2, %struct.nf_conn** %8, align 8
  store i32 %3, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @CTINFO2DIR(i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %31 = call %struct.TYPE_4__* @nfct_help(%struct.nf_conn* %30)
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store %struct.nf_ct_pptp_master* %33, %struct.nf_ct_pptp_master** %11, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = sub i32 %36, %37
  store i32 %38, i32* %20, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @IP_CT_ESTABLISHED, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @IP_CT_ESTABLISHED, align 4
  %45 = load i32, i32* @IP_CT_IS_REPLY, align 4
  %46 = add nsw i32 %44, %45
  %47 = icmp ne i32 %43, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %49, i32* %5, align 4
  br label %204

50:                                               ; preds = %42, %4
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %23, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %53 = load i32, i32* %23, align 4
  %54 = bitcast %struct.tcphdr* %13 to %union.pptp_ctrl_union*
  %55 = call i8* @skb_header_pointer(%struct.sk_buff* %52, i32 %53, i32 16, %union.pptp_ctrl_union* %54)
  %56 = bitcast i8* %55 to %struct.tcphdr*
  store %struct.tcphdr* %56, %struct.tcphdr** %12, align 8
  %57 = load %struct.tcphdr*, %struct.tcphdr** %12, align 8
  %58 = icmp ne %struct.tcphdr* %57, null
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = call i32 @BUG_ON(i32 %60)
  %62 = load %struct.tcphdr*, %struct.tcphdr** %12, align 8
  %63 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 %64, 4
  %66 = load i32, i32* %23, align 4
  %67 = add i32 %66, %65
  store i32 %67, i32* %23, align 4
  %68 = load i32, i32* %20, align 4
  %69 = load %struct.tcphdr*, %struct.tcphdr** %12, align 8
  %70 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = mul nsw i32 %71, 4
  %73 = sub i32 %68, %72
  store i32 %73, i32* %21, align 4
  %74 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %75 = load i32, i32* %23, align 4
  %76 = bitcast %struct.pptp_pkt_hdr* %15 to %union.pptp_ctrl_union*
  %77 = call i8* @skb_header_pointer(%struct.sk_buff* %74, i32 %75, i32 16, %union.pptp_ctrl_union* %76)
  %78 = bitcast i8* %77 to %struct.pptp_pkt_hdr*
  store %struct.pptp_pkt_hdr* %78, %struct.pptp_pkt_hdr** %14, align 8
  %79 = load %struct.pptp_pkt_hdr*, %struct.pptp_pkt_hdr** %14, align 8
  %80 = icmp ne %struct.pptp_pkt_hdr* %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %50
  %82 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %83 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %83, i32* %5, align 4
  br label %204

84:                                               ; preds = %50
  %85 = load i32, i32* %23, align 4
  %86 = zext i32 %85 to i64
  %87 = add i64 %86, 16
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %23, align 4
  %89 = load i32, i32* %21, align 4
  %90 = zext i32 %89 to i64
  %91 = sub i64 %90, 16
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %21, align 4
  %93 = load %struct.pptp_pkt_hdr*, %struct.pptp_pkt_hdr** %14, align 8
  %94 = getelementptr inbounds %struct.pptp_pkt_hdr, %struct.pptp_pkt_hdr* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @ntohs(i32 %95)
  %97 = load i64, i64* @PPTP_PACKET_CONTROL, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %106, label %99

99:                                               ; preds = %84
  %100 = load %struct.pptp_pkt_hdr*, %struct.pptp_pkt_hdr** %14, align 8
  %101 = getelementptr inbounds %struct.pptp_pkt_hdr, %struct.pptp_pkt_hdr* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @ntohl(i32 %102)
  %104 = load i64, i64* @PPTP_MAGIC_COOKIE, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %99, %84
  %107 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %108 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %108, i32* %5, align 4
  br label %204

109:                                              ; preds = %99
  %110 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %111 = load i32, i32* %23, align 4
  %112 = bitcast %struct.PptpControlHeader* %16 to %union.pptp_ctrl_union*
  %113 = call i8* @skb_header_pointer(%struct.sk_buff* %110, i32 %111, i32 16, %union.pptp_ctrl_union* %112)
  %114 = bitcast i8* %113 to %struct.PptpControlHeader*
  store %struct.PptpControlHeader* %114, %struct.PptpControlHeader** %17, align 8
  %115 = load %struct.PptpControlHeader*, %struct.PptpControlHeader** %17, align 8
  %116 = icmp ne %struct.PptpControlHeader* %115, null
  br i1 %116, label %119, label %117

117:                                              ; preds = %109
  %118 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %118, i32* %5, align 4
  br label %204

119:                                              ; preds = %109
  %120 = load i32, i32* %23, align 4
  %121 = zext i32 %120 to i64
  %122 = add i64 %121, 16
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %23, align 4
  %124 = load i32, i32* %21, align 4
  %125 = zext i32 %124 to i64
  %126 = sub i64 %125, 16
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %21, align 4
  %128 = load i32, i32* %21, align 4
  store i32 %128, i32* %22, align 4
  %129 = load %struct.PptpControlHeader*, %struct.PptpControlHeader** %17, align 8
  %130 = getelementptr inbounds %struct.PptpControlHeader, %struct.PptpControlHeader* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i64 @ntohs(i32 %131)
  store i64 %132, i64* %27, align 8
  %133 = load i64, i64* %27, align 8
  %134 = icmp ugt i64 %133, 0
  br i1 %134, label %135, label %148

135:                                              ; preds = %119
  %136 = load i64, i64* %27, align 8
  %137 = load i64, i64* @PPTP_MSG_MAX, align 8
  %138 = icmp ule i64 %136, %137
  br i1 %138, label %139, label %148

139:                                              ; preds = %135
  %140 = load i32, i32* %22, align 4
  %141 = load i32*, i32** @pptp_msg_size, align 8
  %142 = load i64, i64* %27, align 8
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = icmp ult i32 %140, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %139
  %147 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %147, i32* %5, align 4
  br label %204

148:                                              ; preds = %139, %135, %119
  %149 = load i32, i32* %22, align 4
  %150 = zext i32 %149 to i64
  %151 = icmp ugt i64 %150, 4
  br i1 %151, label %152, label %153

152:                                              ; preds = %148
  store i32 4, i32* %22, align 4
  br label %153

153:                                              ; preds = %152, %148
  %154 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %155 = load i32, i32* %23, align 4
  %156 = load i32, i32* %22, align 4
  %157 = call i8* @skb_header_pointer(%struct.sk_buff* %154, i32 %155, i32 %156, %union.pptp_ctrl_union* %18)
  %158 = bitcast i8* %157 to %union.pptp_ctrl_union*
  store %union.pptp_ctrl_union* %158, %union.pptp_ctrl_union** %19, align 8
  %159 = load %union.pptp_ctrl_union*, %union.pptp_ctrl_union** %19, align 8
  %160 = icmp ne %union.pptp_ctrl_union* %159, null
  br i1 %160, label %163, label %161

161:                                              ; preds = %153
  %162 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %162, i32* %5, align 4
  br label %204

163:                                              ; preds = %153
  %164 = load %struct.nf_ct_pptp_master*, %struct.nf_ct_pptp_master** %11, align 8
  %165 = getelementptr inbounds %struct.nf_ct_pptp_master, %struct.nf_ct_pptp_master* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  store i32 %166, i32* %24, align 4
  %167 = load %struct.nf_ct_pptp_master*, %struct.nf_ct_pptp_master** %11, align 8
  %168 = getelementptr inbounds %struct.nf_ct_pptp_master, %struct.nf_ct_pptp_master* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  store i32 %169, i32* %25, align 4
  %170 = call i32 @spin_lock_bh(i32* @nf_pptp_lock)
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* @IP_CT_DIR_ORIGINAL, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %183

174:                                              ; preds = %163
  %175 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %176 = load %struct.PptpControlHeader*, %struct.PptpControlHeader** %17, align 8
  %177 = bitcast %struct.PptpControlHeader* %176 to %union.pptp_ctrl_union*
  %178 = load %union.pptp_ctrl_union*, %union.pptp_ctrl_union** %19, align 8
  %179 = load i32, i32* %22, align 4
  %180 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %181 = load i32, i32* %9, align 4
  %182 = call i32 @pptp_outbound_pkt(%struct.sk_buff* %175, %union.pptp_ctrl_union* %177, %union.pptp_ctrl_union* %178, i32 %179, %struct.nf_conn* %180, i32 %181)
  store i32 %182, i32* %26, align 4
  br label %192

183:                                              ; preds = %163
  %184 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %185 = load %struct.PptpControlHeader*, %struct.PptpControlHeader** %17, align 8
  %186 = bitcast %struct.PptpControlHeader* %185 to %union.pptp_ctrl_union*
  %187 = load %union.pptp_ctrl_union*, %union.pptp_ctrl_union** %19, align 8
  %188 = load i32, i32* %22, align 4
  %189 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %190 = load i32, i32* %9, align 4
  %191 = call i32 @pptp_inbound_pkt(%struct.sk_buff* %184, %union.pptp_ctrl_union* %186, %union.pptp_ctrl_union* %187, i32 %188, %struct.nf_conn* %189, i32 %190)
  store i32 %191, i32* %26, align 4
  br label %192

192:                                              ; preds = %183, %174
  %193 = load i32, i32* %24, align 4
  %194 = load %struct.nf_ct_pptp_master*, %struct.nf_ct_pptp_master** %11, align 8
  %195 = getelementptr inbounds %struct.nf_ct_pptp_master, %struct.nf_ct_pptp_master* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* %25, align 4
  %198 = load %struct.nf_ct_pptp_master*, %struct.nf_ct_pptp_master** %11, align 8
  %199 = getelementptr inbounds %struct.nf_ct_pptp_master, %struct.nf_ct_pptp_master* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %193, i32 %196, i32 %197, i32 %200)
  %202 = call i32 @spin_unlock_bh(i32* @nf_pptp_lock)
  %203 = load i32, i32* %26, align 4
  store i32 %203, i32* %5, align 4
  br label %204

204:                                              ; preds = %192, %161, %146, %117, %106, %81, %48
  %205 = load i32, i32* %5, align 4
  ret i32 %205
}

declare dso_local i32 @CTINFO2DIR(i32) #1

declare dso_local %struct.TYPE_4__* @nfct_help(%struct.nf_conn*) #1

declare dso_local i8* @skb_header_pointer(%struct.sk_buff*, i32, i32, %union.pptp_ctrl_union*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @pptp_outbound_pkt(%struct.sk_buff*, %union.pptp_ctrl_union*, %union.pptp_ctrl_union*, i32, %struct.nf_conn*, i32) #1

declare dso_local i32 @pptp_inbound_pkt(%struct.sk_buff*, %union.pptp_ctrl_union*, %union.pptp_ctrl_union*, i32, %struct.nf_conn*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
