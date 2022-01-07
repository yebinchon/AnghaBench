; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_proto_tcp.c_tcp_in_window.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_proto_tcp.c_tcp_in_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nf_conntrack_tuple }
%struct.nf_conntrack_tuple = type { i32 }
%struct.ip_ct_tcp = type { i64, i32, i32, i32, i32, i32, i64, %struct.ip_ct_tcp_state* }
%struct.ip_ct_tcp_state = type { i32, i32, i32, i64, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.tcphdr = type { i64, i64, i32, i32, i32, i32 }
%struct.net = type { i32 }

@IP_CT_TCP_FLAG_SACK_PERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"tcp_in_window: START\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"tcp_in_window: \00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"seq=%u ack=%u+(%d) sack=%u+(%d) win=%u end=%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [104 x i8] c"tcp_in_window: sender end=%u maxend=%u maxwin=%u scale=%i receiver end=%u maxend=%u maxwin=%u scale=%i\0A\00", align 1
@IP_CT_TCP_FLAG_WINDOW_SCALE = common dso_local global i32 0, align 4
@TCP_CONNTRACK_SYN_SENT = common dso_local global i64 0, align 8
@IP_CT_DIR_ORIGINAL = common dso_local global i32 0, align 4
@TCP_CONNTRACK_SYN_RECV = common dso_local global i64 0, align 8
@IP_CT_DIR_REPLY = common dso_local global i32 0, align 4
@TCP_FLAG_ACK = common dso_local global i32 0, align 4
@TCP_FLAG_RST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"tcp_in_window: I=%i II=%i III=%i IV=%i\0A\00", align 1
@IP_CT_TCP_FLAG_DATA_UNACKNOWLEDGED = common dso_local global i32 0, align 4
@IP_CT_TCP_FLAG_MAXACK_SET = common dso_local global i32 0, align 4
@TCP_ACK_SET = common dso_local global i32 0, align 4
@IP_CT_TCP_FLAG_BE_LIBERAL = common dso_local global i32 0, align 4
@nf_ct_tcp_be_liberal = common dso_local global i64 0, align 8
@IPPROTO_TCP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"nf_ct_tcp: %s \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"BUG\00", align 1
@.str.7 = private unnamed_addr constant [59 x i8] c"ACK is under the lower bound (possible overly delayed ACK)\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"ACK is over the upper bound (ACKed data not seen yet)\00", align 1
@.str.9 = private unnamed_addr constant [64 x i8] c"SEQ is under the lower bound (already ACKed data retransmitted)\00", align 1
@.str.10 = private unnamed_addr constant [62 x i8] c"SEQ is over the upper bound (over the window of the receiver)\00", align 1
@.str.11 = private unnamed_addr constant [93 x i8] c"tcp_in_window: res=%u sender end=%u maxend=%u maxwin=%u receiver end=%u maxend=%u maxwin=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conn*, %struct.ip_ct_tcp*, i32, i32, %struct.sk_buff*, i32, %struct.tcphdr*, i32)* @tcp_in_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_in_window(%struct.nf_conn* %0, %struct.ip_ct_tcp* %1, i32 %2, i32 %3, %struct.sk_buff* %4, i32 %5, %struct.tcphdr* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.nf_conn*, align 8
  %11 = alloca %struct.ip_ct_tcp*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.tcphdr*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.net*, align 8
  %19 = alloca %struct.ip_ct_tcp_state*, align 8
  %20 = alloca %struct.ip_ct_tcp_state*, align 8
  %21 = alloca %struct.nf_conntrack_tuple*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.nf_conn* %0, %struct.nf_conn** %10, align 8
  store %struct.ip_ct_tcp* %1, %struct.ip_ct_tcp** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store %struct.sk_buff* %4, %struct.sk_buff** %14, align 8
  store i32 %5, i32* %15, align 4
  store %struct.tcphdr* %6, %struct.tcphdr** %16, align 8
  store i32 %7, i32* %17, align 4
  %30 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %31 = call %struct.net* @nf_ct_net(%struct.nf_conn* %30)
  store %struct.net* %31, %struct.net** %18, align 8
  %32 = load %struct.ip_ct_tcp*, %struct.ip_ct_tcp** %11, align 8
  %33 = getelementptr inbounds %struct.ip_ct_tcp, %struct.ip_ct_tcp* %32, i32 0, i32 7
  %34 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %33, align 8
  %35 = load i32, i32* %12, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %34, i64 %36
  store %struct.ip_ct_tcp_state* %37, %struct.ip_ct_tcp_state** %19, align 8
  %38 = load %struct.ip_ct_tcp*, %struct.ip_ct_tcp** %11, align 8
  %39 = getelementptr inbounds %struct.ip_ct_tcp, %struct.ip_ct_tcp* %38, i32 0, i32 7
  %40 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %39, align 8
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %40, i64 %45
  store %struct.ip_ct_tcp_state* %46, %struct.ip_ct_tcp_state** %20, align 8
  %47 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %48 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %12, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store %struct.nf_conntrack_tuple* %53, %struct.nf_conntrack_tuple** %21, align 8
  %54 = load %struct.tcphdr*, %struct.tcphdr** %16, align 8
  %55 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ntohl(i32 %56)
  store i32 %57, i32* %22, align 4
  %58 = load %struct.tcphdr*, %struct.tcphdr** %16, align 8
  %59 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @ntohl(i32 %60)
  store i32 %61, i32* %24, align 4
  store i32 %61, i32* %23, align 4
  %62 = load %struct.tcphdr*, %struct.tcphdr** %16, align 8
  %63 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ntohs(i32 %64)
  store i32 %65, i32* %26, align 4
  %66 = load i32, i32* %22, align 4
  %67 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %15, align 4
  %71 = load %struct.tcphdr*, %struct.tcphdr** %16, align 8
  %72 = call i32 @segment_seq_plus_len(i32 %66, i32 %69, i32 %70, %struct.tcphdr* %71)
  store i32 %72, i32* %25, align 4
  %73 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %20, align 8
  %74 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @IP_CT_TCP_FLAG_SACK_PERM, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %81 = load i32, i32* %15, align 4
  %82 = load %struct.tcphdr*, %struct.tcphdr** %16, align 8
  %83 = call i32 @tcp_sack(%struct.sk_buff* %80, i32 %81, %struct.tcphdr* %82, i32* %24)
  br label %84

84:                                               ; preds = %79, %8
  %85 = load i32, i32* %17, align 4
  %86 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = load i32, i32* %23, align 4
  %92 = sub nsw i32 %91, 1
  %93 = call i32 @NAT_OFFSET(i32 %85, %struct.nf_conn* %86, i32 %90, i32 %92)
  store i32 %93, i32* %28, align 4
  %94 = load i32, i32* %28, align 4
  %95 = load i32, i32* %23, align 4
  %96 = sub nsw i32 %95, %94
  store i32 %96, i32* %23, align 4
  %97 = load i32, i32* %28, align 4
  %98 = load i32, i32* %24, align 4
  %99 = sub nsw i32 %98, %97
  store i32 %99, i32* %24, align 4
  %100 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %101 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %102 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %21, align 8
  %103 = call i32 @nf_ct_dump_tuple(%struct.nf_conntrack_tuple* %102)
  %104 = load i32, i32* %22, align 4
  %105 = load i32, i32* %23, align 4
  %106 = load i32, i32* %28, align 4
  %107 = load i32, i32* %24, align 4
  %108 = load i32, i32* %28, align 4
  %109 = load i32, i32* %26, align 4
  %110 = load i32, i32* %25, align 4
  %111 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %104, i32 %105, i32 %106, i32 %107, i32 %108, i32 %109, i32 %110)
  %112 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %113 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %116 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %119 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %122 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %20, align 8
  %125 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %20, align 8
  %128 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %20, align 8
  %131 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %20, align 8
  %134 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.3, i64 0, i64 0), i32 %114, i32 %117, i64 %120, i32 %123, i32 %126, i32 %129, i64 %132, i32 %135)
  %137 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %138 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %216

141:                                              ; preds = %84
  %142 = load %struct.tcphdr*, %struct.tcphdr** %16, align 8
  %143 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %192

146:                                              ; preds = %141
  %147 = load i32, i32* %25, align 4
  %148 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %149 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %148, i32 0, i32 2
  store i32 %147, i32* %149, align 8
  %150 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %151 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %150, i32 0, i32 1
  store i32 %147, i32* %151, align 4
  %152 = load i32, i32* %26, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %146
  br label %157

155:                                              ; preds = %146
  %156 = load i32, i32* %26, align 4
  br label %157

157:                                              ; preds = %155, %154
  %158 = phi i32 [ 1, %154 ], [ %156, %155 ]
  %159 = sext i32 %158 to i64
  %160 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %161 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %160, i32 0, i32 3
  store i64 %159, i64* %161, align 8
  %162 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %163 = load i32, i32* %15, align 4
  %164 = load %struct.tcphdr*, %struct.tcphdr** %16, align 8
  %165 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %166 = call i32 @tcp_options(%struct.sk_buff* %162, i32 %163, %struct.tcphdr* %164, %struct.ip_ct_tcp_state* %165)
  %167 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %168 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @IP_CT_TCP_FLAG_WINDOW_SCALE, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %157
  %174 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %20, align 8
  %175 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @IP_CT_TCP_FLAG_WINDOW_SCALE, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %185, label %180

180:                                              ; preds = %173, %157
  %181 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %20, align 8
  %182 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %181, i32 0, i32 4
  store i32 0, i32* %182, align 8
  %183 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %184 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %183, i32 0, i32 4
  store i32 0, i32* %184, align 8
  br label %185

185:                                              ; preds = %180, %173
  %186 = load %struct.tcphdr*, %struct.tcphdr** %16, align 8
  %187 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %191, label %190

190:                                              ; preds = %185
  store i32 1, i32* %9, align 4
  br label %715

191:                                              ; preds = %185
  br label %215

192:                                              ; preds = %141
  %193 = load i32, i32* %25, align 4
  %194 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %195 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %194, i32 0, i32 1
  store i32 %193, i32* %195, align 4
  %196 = load i32, i32* %26, align 4
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %192
  br label %201

199:                                              ; preds = %192
  %200 = load i32, i32* %26, align 4
  br label %201

201:                                              ; preds = %199, %198
  %202 = phi i32 [ 1, %198 ], [ %200, %199 ]
  %203 = sext i32 %202 to i64
  %204 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %205 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %204, i32 0, i32 3
  store i64 %203, i64* %205, align 8
  %206 = load i32, i32* %25, align 4
  %207 = sext i32 %206 to i64
  %208 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %209 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %208, i32 0, i32 3
  %210 = load i64, i64* %209, align 8
  %211 = add nsw i64 %207, %210
  %212 = trunc i64 %211 to i32
  %213 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %214 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %213, i32 0, i32 2
  store i32 %212, i32* %214, align 8
  br label %215

215:                                              ; preds = %201, %191
  br label %265

216:                                              ; preds = %84
  %217 = load %struct.ip_ct_tcp*, %struct.ip_ct_tcp** %11, align 8
  %218 = getelementptr inbounds %struct.ip_ct_tcp, %struct.ip_ct_tcp* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @TCP_CONNTRACK_SYN_SENT, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %222, label %226

222:                                              ; preds = %216
  %223 = load i32, i32* %12, align 4
  %224 = load i32, i32* @IP_CT_DIR_ORIGINAL, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %236, label %226

226:                                              ; preds = %222, %216
  %227 = load %struct.ip_ct_tcp*, %struct.ip_ct_tcp** %11, align 8
  %228 = getelementptr inbounds %struct.ip_ct_tcp, %struct.ip_ct_tcp* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @TCP_CONNTRACK_SYN_RECV, align 8
  %231 = icmp eq i64 %229, %230
  br i1 %231, label %232, label %264

232:                                              ; preds = %226
  %233 = load i32, i32* %12, align 4
  %234 = load i32, i32* @IP_CT_DIR_REPLY, align 4
  %235 = icmp eq i32 %233, %234
  br i1 %235, label %236, label %264

236:                                              ; preds = %232, %222
  %237 = load i32, i32* %25, align 4
  %238 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %239 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = call i64 @after(i32 %237, i32 %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %264

243:                                              ; preds = %236
  %244 = load i32, i32* %25, align 4
  %245 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %246 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %245, i32 0, i32 2
  store i32 %244, i32* %246, align 8
  %247 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %248 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %247, i32 0, i32 1
  store i32 %244, i32* %248, align 4
  %249 = load i32, i32* %26, align 4
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %243
  br label %254

252:                                              ; preds = %243
  %253 = load i32, i32* %26, align 4
  br label %254

254:                                              ; preds = %252, %251
  %255 = phi i32 [ 1, %251 ], [ %253, %252 ]
  %256 = sext i32 %255 to i64
  %257 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %258 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %257, i32 0, i32 3
  store i64 %256, i64* %258, align 8
  %259 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %260 = load i32, i32* %15, align 4
  %261 = load %struct.tcphdr*, %struct.tcphdr** %16, align 8
  %262 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %263 = call i32 @tcp_options(%struct.sk_buff* %259, i32 %260, %struct.tcphdr* %261, %struct.ip_ct_tcp_state* %262)
  br label %264

264:                                              ; preds = %254, %236, %232, %226
  br label %265

265:                                              ; preds = %264, %215
  %266 = load %struct.tcphdr*, %struct.tcphdr** %16, align 8
  %267 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %274, label %270

270:                                              ; preds = %265
  %271 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %20, align 8
  %272 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  store i32 %273, i32* %24, align 4
  store i32 %273, i32* %23, align 4
  br label %293

274:                                              ; preds = %265
  %275 = load %struct.tcphdr*, %struct.tcphdr** %16, align 8
  %276 = call i32 @tcp_flag_word(%struct.tcphdr* %275)
  %277 = load i32, i32* @TCP_FLAG_ACK, align 4
  %278 = load i32, i32* @TCP_FLAG_RST, align 4
  %279 = or i32 %277, %278
  %280 = and i32 %276, %279
  %281 = load i32, i32* @TCP_FLAG_ACK, align 4
  %282 = load i32, i32* @TCP_FLAG_RST, align 4
  %283 = or i32 %281, %282
  %284 = icmp eq i32 %280, %283
  br i1 %284, label %285, label %292

285:                                              ; preds = %274
  %286 = load i32, i32* %23, align 4
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %292

288:                                              ; preds = %285
  %289 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %20, align 8
  %290 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  store i32 %291, i32* %24, align 4
  store i32 %291, i32* %23, align 4
  br label %292

292:                                              ; preds = %288, %285, %274
  br label %293

293:                                              ; preds = %292, %270
  %294 = load i32, i32* %22, align 4
  %295 = load i32, i32* %25, align 4
  %296 = icmp eq i32 %294, %295
  br i1 %296, label %297, label %315

297:                                              ; preds = %293
  %298 = load %struct.tcphdr*, %struct.tcphdr** %16, align 8
  %299 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 8
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %311

302:                                              ; preds = %297
  %303 = load i32, i32* %22, align 4
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %305, label %315

305:                                              ; preds = %302
  %306 = load %struct.ip_ct_tcp*, %struct.ip_ct_tcp** %11, align 8
  %307 = getelementptr inbounds %struct.ip_ct_tcp, %struct.ip_ct_tcp* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = load i64, i64* @TCP_CONNTRACK_SYN_SENT, align 8
  %310 = icmp eq i64 %308, %309
  br i1 %310, label %311, label %315

311:                                              ; preds = %305, %297
  %312 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %313 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 4
  store i32 %314, i32* %25, align 4
  store i32 %314, i32* %22, align 4
  br label %315

315:                                              ; preds = %311, %305, %302, %293
  %316 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %317 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %21, align 8
  %318 = call i32 @nf_ct_dump_tuple(%struct.nf_conntrack_tuple* %317)
  %319 = load i32, i32* %22, align 4
  %320 = load i32, i32* %23, align 4
  %321 = load i32, i32* %28, align 4
  %322 = load i32, i32* %24, align 4
  %323 = load i32, i32* %28, align 4
  %324 = load i32, i32* %26, align 4
  %325 = load i32, i32* %25, align 4
  %326 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %319, i32 %320, i32 %321, i32 %322, i32 %323, i32 %324, i32 %325)
  %327 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %328 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %327, i32 0, i32 1
  %329 = load i32, i32* %328, align 4
  %330 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %331 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %330, i32 0, i32 2
  %332 = load i32, i32* %331, align 8
  %333 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %334 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %333, i32 0, i32 3
  %335 = load i64, i64* %334, align 8
  %336 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %337 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %336, i32 0, i32 4
  %338 = load i32, i32* %337, align 8
  %339 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %20, align 8
  %340 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %20, align 8
  %343 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %342, i32 0, i32 2
  %344 = load i32, i32* %343, align 8
  %345 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %20, align 8
  %346 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %345, i32 0, i32 3
  %347 = load i64, i64* %346, align 8
  %348 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %20, align 8
  %349 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %348, i32 0, i32 4
  %350 = load i32, i32* %349, align 8
  %351 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.3, i64 0, i64 0), i32 %329, i32 %332, i64 %335, i32 %338, i32 %341, i32 %344, i64 %347, i32 %350)
  %352 = load i32, i32* %22, align 4
  %353 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %354 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %353, i32 0, i32 2
  %355 = load i32, i32* %354, align 8
  %356 = add nsw i32 %355, 1
  %357 = call i64 @before(i32 %352, i32 %356)
  %358 = load i32, i32* %25, align 4
  %359 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %360 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  %362 = sext i32 %361 to i64
  %363 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %20, align 8
  %364 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %363, i32 0, i32 3
  %365 = load i64, i64* %364, align 8
  %366 = sub nsw i64 %362, %365
  %367 = sub nsw i64 %366, 1
  %368 = trunc i64 %367 to i32
  %369 = call i64 @after(i32 %358, i32 %368)
  %370 = load i32, i32* %24, align 4
  %371 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %20, align 8
  %372 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %371, i32 0, i32 1
  %373 = load i32, i32* %372, align 4
  %374 = add nsw i32 %373, 1
  %375 = call i64 @before(i32 %370, i32 %374)
  %376 = load i32, i32* %24, align 4
  %377 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %20, align 8
  %378 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %377, i32 0, i32 1
  %379 = load i32, i32* %378, align 4
  %380 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %381 = call i32 @MAXACKWINDOW(%struct.ip_ct_tcp_state* %380)
  %382 = sub nsw i32 %379, %381
  %383 = sub nsw i32 %382, 1
  %384 = call i64 @after(i32 %376, i32 %383)
  %385 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i64 %357, i64 %369, i64 %375, i64 %384)
  %386 = load i32, i32* %22, align 4
  %387 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %388 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %387, i32 0, i32 2
  %389 = load i32, i32* %388, align 8
  %390 = add nsw i32 %389, 1
  %391 = call i64 @before(i32 %386, i32 %390)
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %393, label %618

393:                                              ; preds = %315
  %394 = load i32, i32* %25, align 4
  %395 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %396 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %395, i32 0, i32 1
  %397 = load i32, i32* %396, align 4
  %398 = sext i32 %397 to i64
  %399 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %20, align 8
  %400 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %399, i32 0, i32 3
  %401 = load i64, i64* %400, align 8
  %402 = sub nsw i64 %398, %401
  %403 = sub nsw i64 %402, 1
  %404 = trunc i64 %403 to i32
  %405 = call i64 @after(i32 %394, i32 %404)
  %406 = icmp ne i64 %405, 0
  br i1 %406, label %407, label %618

407:                                              ; preds = %393
  %408 = load i32, i32* %24, align 4
  %409 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %20, align 8
  %410 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %409, i32 0, i32 1
  %411 = load i32, i32* %410, align 4
  %412 = add nsw i32 %411, 1
  %413 = call i64 @before(i32 %408, i32 %412)
  %414 = icmp ne i64 %413, 0
  br i1 %414, label %415, label %618

415:                                              ; preds = %407
  %416 = load i32, i32* %24, align 4
  %417 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %20, align 8
  %418 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %417, i32 0, i32 1
  %419 = load i32, i32* %418, align 4
  %420 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %421 = call i32 @MAXACKWINDOW(%struct.ip_ct_tcp_state* %420)
  %422 = sub nsw i32 %419, %421
  %423 = sub nsw i32 %422, 1
  %424 = call i64 @after(i32 %416, i32 %423)
  %425 = icmp ne i64 %424, 0
  br i1 %425, label %426, label %618

426:                                              ; preds = %415
  %427 = load %struct.tcphdr*, %struct.tcphdr** %16, align 8
  %428 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %427, i32 0, i32 1
  %429 = load i64, i64* %428, align 8
  %430 = icmp ne i64 %429, 0
  br i1 %430, label %437, label %431

431:                                              ; preds = %426
  %432 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %433 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %432, i32 0, i32 4
  %434 = load i32, i32* %433, align 8
  %435 = load i32, i32* %26, align 4
  %436 = shl i32 %435, %434
  store i32 %436, i32* %26, align 4
  br label %437

437:                                              ; preds = %431, %426
  %438 = load i32, i32* %26, align 4
  %439 = load i32, i32* %24, align 4
  %440 = load i32, i32* %23, align 4
  %441 = sub nsw i32 %439, %440
  %442 = add nsw i32 %438, %441
  store i32 %442, i32* %27, align 4
  %443 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %444 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %443, i32 0, i32 3
  %445 = load i64, i64* %444, align 8
  %446 = load i32, i32* %27, align 4
  %447 = sext i32 %446 to i64
  %448 = icmp slt i64 %445, %447
  br i1 %448, label %449, label %454

449:                                              ; preds = %437
  %450 = load i32, i32* %27, align 4
  %451 = sext i32 %450 to i64
  %452 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %453 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %452, i32 0, i32 3
  store i64 %451, i64* %453, align 8
  br label %454

454:                                              ; preds = %449, %437
  %455 = load i32, i32* %25, align 4
  %456 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %457 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %456, i32 0, i32 1
  %458 = load i32, i32* %457, align 4
  %459 = call i64 @after(i32 %455, i32 %458)
  %460 = icmp ne i64 %459, 0
  br i1 %460, label %461, label %470

461:                                              ; preds = %454
  %462 = load i32, i32* %25, align 4
  %463 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %464 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %463, i32 0, i32 1
  store i32 %462, i32* %464, align 4
  %465 = load i32, i32* @IP_CT_TCP_FLAG_DATA_UNACKNOWLEDGED, align 4
  %466 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %467 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %466, i32 0, i32 0
  %468 = load i32, i32* %467, align 8
  %469 = or i32 %468, %465
  store i32 %469, i32* %467, align 8
  br label %470

470:                                              ; preds = %461, %454
  %471 = load %struct.tcphdr*, %struct.tcphdr** %16, align 8
  %472 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %471, i32 0, i32 0
  %473 = load i64, i64* %472, align 8
  %474 = icmp ne i64 %473, 0
  br i1 %474, label %475, label %504

475:                                              ; preds = %470
  %476 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %477 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %476, i32 0, i32 0
  %478 = load i32, i32* %477, align 8
  %479 = load i32, i32* @IP_CT_TCP_FLAG_MAXACK_SET, align 4
  %480 = and i32 %478, %479
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %491, label %482

482:                                              ; preds = %475
  %483 = load i32, i32* %23, align 4
  %484 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %485 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %484, i32 0, i32 5
  store i32 %483, i32* %485, align 4
  %486 = load i32, i32* @IP_CT_TCP_FLAG_MAXACK_SET, align 4
  %487 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %488 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %487, i32 0, i32 0
  %489 = load i32, i32* %488, align 8
  %490 = or i32 %489, %486
  store i32 %490, i32* %488, align 8
  br label %503

491:                                              ; preds = %475
  %492 = load i32, i32* %23, align 4
  %493 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %494 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %493, i32 0, i32 5
  %495 = load i32, i32* %494, align 4
  %496 = call i64 @after(i32 %492, i32 %495)
  %497 = icmp ne i64 %496, 0
  br i1 %497, label %498, label %502

498:                                              ; preds = %491
  %499 = load i32, i32* %23, align 4
  %500 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %501 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %500, i32 0, i32 5
  store i32 %499, i32* %501, align 4
  br label %502

502:                                              ; preds = %498, %491
  br label %503

503:                                              ; preds = %502, %482
  br label %504

504:                                              ; preds = %503, %470
  %505 = load i32, i32* %25, align 4
  %506 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %507 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %506, i32 0, i32 2
  %508 = load i32, i32* %507, align 8
  %509 = call i64 @after(i32 %505, i32 %508)
  %510 = icmp ne i64 %509, 0
  br i1 %510, label %511, label %522

511:                                              ; preds = %504
  %512 = load i32, i32* %25, align 4
  %513 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %514 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %513, i32 0, i32 2
  %515 = load i32, i32* %514, align 8
  %516 = sub nsw i32 %512, %515
  %517 = sext i32 %516 to i64
  %518 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %20, align 8
  %519 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %518, i32 0, i32 3
  %520 = load i64, i64* %519, align 8
  %521 = add nsw i64 %520, %517
  store i64 %521, i64* %519, align 8
  br label %522

522:                                              ; preds = %511, %504
  %523 = load i32, i32* %24, align 4
  %524 = load i32, i32* %26, align 4
  %525 = add nsw i32 %523, %524
  %526 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %20, align 8
  %527 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %526, i32 0, i32 2
  %528 = load i32, i32* %527, align 8
  %529 = sub nsw i32 %528, 1
  %530 = call i64 @after(i32 %525, i32 %529)
  %531 = icmp ne i64 %530, 0
  br i1 %531, label %532, label %546

532:                                              ; preds = %522
  %533 = load i32, i32* %24, align 4
  %534 = load i32, i32* %26, align 4
  %535 = add nsw i32 %533, %534
  %536 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %20, align 8
  %537 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %536, i32 0, i32 2
  store i32 %535, i32* %537, align 8
  %538 = load i32, i32* %26, align 4
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %540, label %545

540:                                              ; preds = %532
  %541 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %20, align 8
  %542 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %541, i32 0, i32 2
  %543 = load i32, i32* %542, align 8
  %544 = add nsw i32 %543, 1
  store i32 %544, i32* %542, align 8
  br label %545

545:                                              ; preds = %540, %532
  br label %546

546:                                              ; preds = %545, %522
  %547 = load i32, i32* %23, align 4
  %548 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %20, align 8
  %549 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %548, i32 0, i32 1
  %550 = load i32, i32* %549, align 4
  %551 = icmp eq i32 %547, %550
  br i1 %551, label %552, label %559

552:                                              ; preds = %546
  %553 = load i32, i32* @IP_CT_TCP_FLAG_DATA_UNACKNOWLEDGED, align 4
  %554 = xor i32 %553, -1
  %555 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %20, align 8
  %556 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %555, i32 0, i32 0
  %557 = load i32, i32* %556, align 8
  %558 = and i32 %557, %554
  store i32 %558, i32* %556, align 8
  br label %559

559:                                              ; preds = %552, %546
  %560 = load i32, i32* %13, align 4
  %561 = load i32, i32* @TCP_ACK_SET, align 4
  %562 = icmp eq i32 %560, %561
  br i1 %562, label %563, label %617

563:                                              ; preds = %559
  %564 = load %struct.ip_ct_tcp*, %struct.ip_ct_tcp** %11, align 8
  %565 = getelementptr inbounds %struct.ip_ct_tcp, %struct.ip_ct_tcp* %564, i32 0, i32 1
  %566 = load i32, i32* %565, align 8
  %567 = load i32, i32* %12, align 4
  %568 = icmp eq i32 %566, %567
  br i1 %568, label %569, label %598

569:                                              ; preds = %563
  %570 = load %struct.ip_ct_tcp*, %struct.ip_ct_tcp** %11, align 8
  %571 = getelementptr inbounds %struct.ip_ct_tcp, %struct.ip_ct_tcp* %570, i32 0, i32 2
  %572 = load i32, i32* %571, align 4
  %573 = load i32, i32* %22, align 4
  %574 = icmp eq i32 %572, %573
  br i1 %574, label %575, label %598

575:                                              ; preds = %569
  %576 = load %struct.ip_ct_tcp*, %struct.ip_ct_tcp** %11, align 8
  %577 = getelementptr inbounds %struct.ip_ct_tcp, %struct.ip_ct_tcp* %576, i32 0, i32 3
  %578 = load i32, i32* %577, align 8
  %579 = load i32, i32* %23, align 4
  %580 = icmp eq i32 %578, %579
  br i1 %580, label %581, label %598

581:                                              ; preds = %575
  %582 = load %struct.ip_ct_tcp*, %struct.ip_ct_tcp** %11, align 8
  %583 = getelementptr inbounds %struct.ip_ct_tcp, %struct.ip_ct_tcp* %582, i32 0, i32 4
  %584 = load i32, i32* %583, align 4
  %585 = load i32, i32* %25, align 4
  %586 = icmp eq i32 %584, %585
  br i1 %586, label %587, label %598

587:                                              ; preds = %581
  %588 = load %struct.ip_ct_tcp*, %struct.ip_ct_tcp** %11, align 8
  %589 = getelementptr inbounds %struct.ip_ct_tcp, %struct.ip_ct_tcp* %588, i32 0, i32 5
  %590 = load i32, i32* %589, align 8
  %591 = load i32, i32* %26, align 4
  %592 = icmp eq i32 %590, %591
  br i1 %592, label %593, label %598

593:                                              ; preds = %587
  %594 = load %struct.ip_ct_tcp*, %struct.ip_ct_tcp** %11, align 8
  %595 = getelementptr inbounds %struct.ip_ct_tcp, %struct.ip_ct_tcp* %594, i32 0, i32 6
  %596 = load i64, i64* %595, align 8
  %597 = add nsw i64 %596, 1
  store i64 %597, i64* %595, align 8
  br label %616

598:                                              ; preds = %587, %581, %575, %569, %563
  %599 = load i32, i32* %12, align 4
  %600 = load %struct.ip_ct_tcp*, %struct.ip_ct_tcp** %11, align 8
  %601 = getelementptr inbounds %struct.ip_ct_tcp, %struct.ip_ct_tcp* %600, i32 0, i32 1
  store i32 %599, i32* %601, align 8
  %602 = load i32, i32* %22, align 4
  %603 = load %struct.ip_ct_tcp*, %struct.ip_ct_tcp** %11, align 8
  %604 = getelementptr inbounds %struct.ip_ct_tcp, %struct.ip_ct_tcp* %603, i32 0, i32 2
  store i32 %602, i32* %604, align 4
  %605 = load i32, i32* %23, align 4
  %606 = load %struct.ip_ct_tcp*, %struct.ip_ct_tcp** %11, align 8
  %607 = getelementptr inbounds %struct.ip_ct_tcp, %struct.ip_ct_tcp* %606, i32 0, i32 3
  store i32 %605, i32* %607, align 8
  %608 = load i32, i32* %25, align 4
  %609 = load %struct.ip_ct_tcp*, %struct.ip_ct_tcp** %11, align 8
  %610 = getelementptr inbounds %struct.ip_ct_tcp, %struct.ip_ct_tcp* %609, i32 0, i32 4
  store i32 %608, i32* %610, align 4
  %611 = load i32, i32* %26, align 4
  %612 = load %struct.ip_ct_tcp*, %struct.ip_ct_tcp** %11, align 8
  %613 = getelementptr inbounds %struct.ip_ct_tcp, %struct.ip_ct_tcp* %612, i32 0, i32 5
  store i32 %611, i32* %613, align 8
  %614 = load %struct.ip_ct_tcp*, %struct.ip_ct_tcp** %11, align 8
  %615 = getelementptr inbounds %struct.ip_ct_tcp, %struct.ip_ct_tcp* %614, i32 0, i32 6
  store i64 0, i64* %615, align 8
  br label %616

616:                                              ; preds = %598, %593
  br label %617

617:                                              ; preds = %616, %559
  store i32 1, i32* %29, align 4
  br label %693

618:                                              ; preds = %415, %407, %393, %315
  store i32 0, i32* %29, align 4
  %619 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %620 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %619, i32 0, i32 0
  %621 = load i32, i32* %620, align 8
  %622 = load i32, i32* @IP_CT_TCP_FLAG_BE_LIBERAL, align 4
  %623 = and i32 %621, %622
  %624 = icmp ne i32 %623, 0
  br i1 %624, label %628, label %625

625:                                              ; preds = %618
  %626 = load i64, i64* @nf_ct_tcp_be_liberal, align 8
  %627 = icmp ne i64 %626, 0
  br i1 %627, label %628, label %629

628:                                              ; preds = %625, %618
  store i32 1, i32* %29, align 4
  br label %629

629:                                              ; preds = %628, %625
  %630 = load i32, i32* %29, align 4
  %631 = icmp ne i32 %630, 0
  br i1 %631, label %692, label %632

632:                                              ; preds = %629
  %633 = load %struct.net*, %struct.net** %18, align 8
  %634 = load i32, i32* @IPPROTO_TCP, align 4
  %635 = call i64 @LOG_INVALID(%struct.net* %633, i32 %634)
  %636 = icmp ne i64 %635, 0
  br i1 %636, label %637, label %692

637:                                              ; preds = %632
  %638 = load i32, i32* %17, align 4
  %639 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %640 = load i32, i32* %22, align 4
  %641 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %642 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %641, i32 0, i32 2
  %643 = load i32, i32* %642, align 8
  %644 = add nsw i32 %643, 1
  %645 = call i64 @before(i32 %640, i32 %644)
  %646 = icmp ne i64 %645, 0
  br i1 %646, label %647, label %688

647:                                              ; preds = %637
  %648 = load i32, i32* %25, align 4
  %649 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %650 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %649, i32 0, i32 1
  %651 = load i32, i32* %650, align 4
  %652 = sext i32 %651 to i64
  %653 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %20, align 8
  %654 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %653, i32 0, i32 3
  %655 = load i64, i64* %654, align 8
  %656 = sub nsw i64 %652, %655
  %657 = sub nsw i64 %656, 1
  %658 = trunc i64 %657 to i32
  %659 = call i64 @after(i32 %648, i32 %658)
  %660 = icmp ne i64 %659, 0
  br i1 %660, label %661, label %685

661:                                              ; preds = %647
  %662 = load i32, i32* %24, align 4
  %663 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %20, align 8
  %664 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %663, i32 0, i32 1
  %665 = load i32, i32* %664, align 4
  %666 = add nsw i32 %665, 1
  %667 = call i64 @before(i32 %662, i32 %666)
  %668 = icmp ne i64 %667, 0
  br i1 %668, label %669, label %682

669:                                              ; preds = %661
  %670 = load i32, i32* %24, align 4
  %671 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %20, align 8
  %672 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %671, i32 0, i32 1
  %673 = load i32, i32* %672, align 4
  %674 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %675 = call i32 @MAXACKWINDOW(%struct.ip_ct_tcp_state* %674)
  %676 = sub nsw i32 %673, %675
  %677 = sub nsw i32 %676, 1
  %678 = call i64 @after(i32 %670, i32 %677)
  %679 = icmp ne i64 %678, 0
  %680 = zext i1 %679 to i64
  %681 = select i1 %679, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i64 0, i64 0)
  br label %683

682:                                              ; preds = %661
  br label %683

683:                                              ; preds = %682, %669
  %684 = phi i8* [ %681, %669 ], [ getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0), %682 ]
  br label %686

685:                                              ; preds = %647
  br label %686

686:                                              ; preds = %685, %683
  %687 = phi i8* [ %684, %683 ], [ getelementptr inbounds ([64 x i8], [64 x i8]* @.str.9, i64 0, i64 0), %685 ]
  br label %689

688:                                              ; preds = %637
  br label %689

689:                                              ; preds = %688, %686
  %690 = phi i8* [ %687, %686 ], [ getelementptr inbounds ([62 x i8], [62 x i8]* @.str.10, i64 0, i64 0), %688 ]
  %691 = call i32 @nf_log_packet(i32 %638, i32 0, %struct.sk_buff* %639, i32* null, i32* null, i32* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %690)
  br label %692

692:                                              ; preds = %689, %632, %629
  br label %693

693:                                              ; preds = %692, %617
  %694 = load i32, i32* %29, align 4
  %695 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %696 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %695, i32 0, i32 1
  %697 = load i32, i32* %696, align 4
  %698 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %699 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %698, i32 0, i32 2
  %700 = load i32, i32* %699, align 8
  %701 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %702 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %701, i32 0, i32 3
  %703 = load i64, i64* %702, align 8
  %704 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %20, align 8
  %705 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %704, i32 0, i32 1
  %706 = load i32, i32* %705, align 4
  %707 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %20, align 8
  %708 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %707, i32 0, i32 2
  %709 = load i32, i32* %708, align 8
  %710 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %20, align 8
  %711 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %710, i32 0, i32 3
  %712 = load i64, i64* %711, align 8
  %713 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.11, i64 0, i64 0), i32 %694, i32 %697, i32 %700, i64 %703, i32 %706, i32 %709, i64 %712)
  %714 = load i32, i32* %29, align 4
  store i32 %714, i32* %9, align 4
  br label %715

715:                                              ; preds = %693, %190
  %716 = load i32, i32* %9, align 4
  ret i32 %716
}

declare dso_local %struct.net* @nf_ct_net(%struct.nf_conn*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @segment_seq_plus_len(i32, i32, i32, %struct.tcphdr*) #1

declare dso_local i32 @tcp_sack(%struct.sk_buff*, i32, %struct.tcphdr*, i32*) #1

declare dso_local i32 @NAT_OFFSET(i32, %struct.nf_conn*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @nf_ct_dump_tuple(%struct.nf_conntrack_tuple*) #1

declare dso_local i32 @tcp_options(%struct.sk_buff*, i32, %struct.tcphdr*, %struct.ip_ct_tcp_state*) #1

declare dso_local i64 @after(i32, i32) #1

declare dso_local i32 @tcp_flag_word(%struct.tcphdr*) #1

declare dso_local i64 @before(i32, i32) #1

declare dso_local i32 @MAXACKWINDOW(%struct.ip_ct_tcp_state*) #1

declare dso_local i64 @LOG_INVALID(%struct.net*, i32) #1

declare dso_local i32 @nf_log_packet(i32, i32, %struct.sk_buff*, i32*, i32*, i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
