; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_proto_tcp.c_tcp_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_proto_tcp.c_tcp_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32, i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i64, %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.nf_conntrack_tuple }
%struct.nf_conntrack_tuple = type { i32 }
%struct.sk_buff = type { i32 }
%struct.net = type { i32 }
%struct.tcphdr = type { i64, i64, i64, i64, i32, i32, i32 }
%struct.ip_ct_tcp_state = type { i32, i32 }

@tcp_conntracks = common dso_local global i32*** null, align 8
@TCP_CONNTRACK_TIME_WAIT = common dso_local global i32 0, align 4
@IP_CT_TCP_FLAG_CLOSE_INIT = common dso_local global i32 0, align 4
@TCP_RST_SET = common dso_local global i32 0, align 4
@NF_REPEAT = common dso_local global i32 0, align 4
@NF_DROP = common dso_local global i32 0, align 4
@TCP_SYNACK_SET = common dso_local global i32 0, align 4
@TCP_SYN_SET = common dso_local global i32 0, align 4
@TCP_CONNTRACK_SYN_RECV = common dso_local global i32 0, align 4
@IP_CT_DIR_ORIGINAL = common dso_local global i32 0, align 4
@IP_CT_TCP_FLAG_WINDOW_SCALE = common dso_local global i32 0, align 4
@IP_CT_TCP_FLAG_SACK_PERM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"nf_ct_tcp: invalid packet ignored \00", align 1
@NF_ACCEPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"nf_ct_tcp: Invalid dir=%i index=%u ostate=%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"nf_ct_tcp: invalid state \00", align 1
@IP_CT_TCP_FLAG_MAXACK_SET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"nf_ct_tcp: invalid RST \00", align 1
@IPS_SEEN_REPLY_BIT = common dso_local global i32 0, align 4
@IPS_ASSURED_BIT = common dso_local global i32 0, align 4
@TCP_ACK_SET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"tcp_conntracks: \00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"syn=%i ack=%i fin=%i rst=%i old=%i new=%i\0A\00", align 1
@TCP_CONNTRACK_FIN_WAIT = common dso_local global i32 0, align 4
@nf_ct_tcp_max_retrans = common dso_local global i64 0, align 8
@tcp_timeouts = common dso_local global i64* null, align 8
@nf_ct_tcp_timeout_max_retrans = common dso_local global i64 0, align 8
@IP_CT_TCP_FLAG_DATA_UNACKNOWLEDGED = common dso_local global i32 0, align 4
@nf_ct_tcp_timeout_unacknowledged = common dso_local global i64 0, align 8
@IPCT_PROTOINFO = common dso_local global i32 0, align 4
@TCP_CONNTRACK_ESTABLISHED = common dso_local global i32 0, align 4
@IPCT_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conn*, %struct.sk_buff*, i32, i32, i32, i32)* @tcp_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_packet(%struct.nf_conn* %0, %struct.sk_buff* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nf_conn*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.net*, align 8
  %15 = alloca %struct.nf_conntrack_tuple*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.tcphdr*, align 8
  %20 = alloca %struct.tcphdr, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.ip_ct_tcp_state, align 4
  store %struct.nf_conn* %0, %struct.nf_conn** %8, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %24 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %25 = call %struct.net* @nf_ct_net(%struct.nf_conn* %24)
  store %struct.net* %25, %struct.net** %14, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call %struct.tcphdr* @skb_header_pointer(%struct.sk_buff* %26, i32 %27, i32 48, %struct.tcphdr* %20)
  store %struct.tcphdr* %28, %struct.tcphdr** %19, align 8
  %29 = load %struct.tcphdr*, %struct.tcphdr** %19, align 8
  %30 = icmp eq %struct.tcphdr* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUG_ON(i32 %31)
  %33 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %34 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %33, i32 0, i32 1
  %35 = call i32 @spin_lock_bh(i32* %34)
  %36 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %37 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %17, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @CTINFO2DIR(i32 %41)
  store i32 %42, i32* %18, align 4
  %43 = load %struct.tcphdr*, %struct.tcphdr** %19, align 8
  %44 = call i32 @get_conntrack_index(%struct.tcphdr* %43)
  store i32 %44, i32* %22, align 4
  %45 = load i32***, i32**** @tcp_conntracks, align 8
  %46 = load i32, i32* %18, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32**, i32*** %45, i64 %47
  %49 = load i32**, i32*** %48, align 8
  %50 = load i32, i32* %22, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %49, i64 %51
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %17, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %16, align 4
  %58 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %59 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %58, i32 0, i32 4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = load i32, i32* %18, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  store %struct.nf_conntrack_tuple* %64, %struct.nf_conntrack_tuple** %15, align 8
  %65 = load i32, i32* %16, align 4
  switch i32 %65, label %494 [
    i32 128, label %66
    i32 130, label %128
    i32 129, label %373
    i32 131, label %393
  ]

66:                                               ; preds = %6
  %67 = load i32, i32* %17, align 4
  %68 = load i32, i32* @TCP_CONNTRACK_TIME_WAIT, align 4
  %69 = icmp ult i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %495

71:                                               ; preds = %66
  %72 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %73 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 5
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = load i32, i32* %18, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %83 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 5
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = load i32, i32* %18, align 4
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %81, %94
  %96 = load i32, i32* @IP_CT_TCP_FLAG_CLOSE_INIT, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %115, label %99

99:                                               ; preds = %71
  %100 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %101 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %18, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %127

107:                                              ; preds = %99
  %108 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %109 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @TCP_RST_SET, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %127

115:                                              ; preds = %107, %71
  %116 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %117 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %116, i32 0, i32 1
  %118 = call i32 @spin_unlock_bh(i32* %117)
  %119 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %120 = call i32 @nf_ct_kill(%struct.nf_conn* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %115
  %123 = load i32, i32* @NF_REPEAT, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %7, align 4
  br label %700

125:                                              ; preds = %115
  %126 = load i32, i32* @NF_DROP, align 4
  store i32 %126, i32* %7, align 4
  br label %700

127:                                              ; preds = %107, %99
  br label %128

128:                                              ; preds = %6, %127
  %129 = load i32, i32* %22, align 4
  %130 = load i32, i32* @TCP_SYNACK_SET, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %268

132:                                              ; preds = %128
  %133 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %134 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @TCP_SYN_SET, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %268

140:                                              ; preds = %132
  %141 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %142 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %18, align 4
  %147 = icmp ne i32 %145, %146
  br i1 %147, label %148, label %268

148:                                              ; preds = %140
  %149 = load %struct.tcphdr*, %struct.tcphdr** %19, align 8
  %150 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @ntohl(i32 %151)
  %153 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %154 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 6
  %157 = load i32, i32* %156, align 8
  %158 = icmp eq i32 %152, %157
  br i1 %158, label %159, label %268

159:                                              ; preds = %148
  store i32 128, i32* %17, align 4
  %160 = load i32, i32* @TCP_CONNTRACK_SYN_RECV, align 4
  store i32 %160, i32* %16, align 4
  %161 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %162 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 6
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %167 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 5
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %169, align 8
  %171 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %172 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 5
  store i32 %165, i32* %178, align 4
  %179 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %180 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 6
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %185 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 5
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %187, align 8
  %189 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %190 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 4
  store i32 %183, i32* %196, align 4
  %197 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %198 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %159
  br label %210

204:                                              ; preds = %159
  %205 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %206 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  br label %210

210:                                              ; preds = %204, %203
  %211 = phi i32 [ 1, %203 ], [ %209, %204 ]
  %212 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %213 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 5
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %215, align 8
  %217 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %218 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 1
  store i32 %211, i32* %224, align 4
  %225 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %226 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %225, i32 0, i32 3
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %230 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 5
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** %232, align 8
  %234 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %235 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %234, i32 0, i32 2
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 2
  store i32 %228, i32* %241, align 4
  %242 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %243 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %242, i32 0, i32 3
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %247 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %246, i32 0, i32 2
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 5
  %250 = load %struct.TYPE_10__*, %struct.TYPE_10__** %249, align 8
  %251 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %252 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %251, i32 0, i32 2
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %257, i32 0, i32 0
  store i32 %245, i32* %258, align 4
  %259 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %260 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %259, i32 0, i32 2
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i32 0, i32 5
  %263 = load %struct.TYPE_10__*, %struct.TYPE_10__** %262, align 8
  %264 = load i32, i32* %18, align 4
  %265 = zext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i64 %265
  %267 = call i32 @memset(%struct.TYPE_10__* %266, i32 0, i32 8)
  br label %495

268:                                              ; preds = %148, %140, %132, %128
  %269 = load i32, i32* %22, align 4
  %270 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %271 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %270, i32 0, i32 2
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %272, i32 0, i32 2
  store i32 %269, i32* %273, align 8
  %274 = load i32, i32* %18, align 4
  %275 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %276 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %275, i32 0, i32 2
  %277 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %277, i32 0, i32 1
  store i32 %274, i32* %278, align 4
  %279 = load %struct.tcphdr*, %struct.tcphdr** %19, align 8
  %280 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %279, i32 0, i32 5
  %281 = load i32, i32* %280, align 4
  %282 = call i32 @ntohl(i32 %281)
  %283 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %284 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %283, i32 0, i32 2
  %285 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %285, i32 0, i32 7
  store i32 %282, i32* %286, align 4
  %287 = load %struct.tcphdr*, %struct.tcphdr** %19, align 8
  %288 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %287, i32 0, i32 5
  %289 = load i32, i32* %288, align 4
  %290 = call i32 @ntohl(i32 %289)
  %291 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %292 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = load i32, i32* %10, align 4
  %295 = load %struct.tcphdr*, %struct.tcphdr** %19, align 8
  %296 = call i32 @segment_seq_plus_len(i32 %290, i32 %293, i32 %294, %struct.tcphdr* %295)
  %297 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %298 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %297, i32 0, i32 2
  %299 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %299, i32 0, i32 6
  store i32 %296, i32* %300, align 8
  %301 = load %struct.tcphdr*, %struct.tcphdr** %19, align 8
  %302 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %301, i32 0, i32 6
  %303 = load i32, i32* %302, align 8
  %304 = call i32 @ntohs(i32 %303)
  %305 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %306 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %305, i32 0, i32 2
  %307 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %306, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %307, i32 0, i32 3
  store i32 %304, i32* %308, align 4
  %309 = load i32, i32* %22, align 4
  %310 = load i32, i32* @TCP_SYN_SET, align 4
  %311 = icmp eq i32 %309, %310
  br i1 %311, label %312, label %359

312:                                              ; preds = %268
  %313 = load i32, i32* %18, align 4
  %314 = load i32, i32* @IP_CT_DIR_ORIGINAL, align 4
  %315 = icmp eq i32 %313, %314
  br i1 %315, label %316, label %359

316:                                              ; preds = %312
  %317 = bitcast %struct.ip_ct_tcp_state* %23 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %317, i8 0, i64 8, i1 false)
  %318 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %319 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %318, i32 0, i32 3
  %320 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %319, i32 0, i32 0
  store i32 0, i32* %320, align 8
  %321 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %322 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %321, i32 0, i32 3
  %323 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %322, i32 0, i32 1
  store i32 0, i32* %323, align 4
  %324 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %325 = load i32, i32* %10, align 4
  %326 = load %struct.tcphdr*, %struct.tcphdr** %19, align 8
  %327 = call i32 @tcp_options(%struct.sk_buff* %324, i32 %325, %struct.tcphdr* %326, %struct.ip_ct_tcp_state* %23)
  %328 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %23, i32 0, i32 0
  %329 = load i32, i32* %328, align 4
  %330 = load i32, i32* @IP_CT_TCP_FLAG_WINDOW_SCALE, align 4
  %331 = and i32 %329, %330
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %345

333:                                              ; preds = %316
  %334 = load i32, i32* @IP_CT_TCP_FLAG_WINDOW_SCALE, align 4
  %335 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %336 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %335, i32 0, i32 3
  %337 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %336, i32 0, i32 1
  %338 = load i32, i32* %337, align 4
  %339 = or i32 %338, %334
  store i32 %339, i32* %337, align 4
  %340 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %23, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %343 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %342, i32 0, i32 3
  %344 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %343, i32 0, i32 0
  store i32 %341, i32* %344, align 8
  br label %345

345:                                              ; preds = %333, %316
  %346 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %23, i32 0, i32 0
  %347 = load i32, i32* %346, align 4
  %348 = load i32, i32* @IP_CT_TCP_FLAG_SACK_PERM, align 4
  %349 = and i32 %347, %348
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %358

351:                                              ; preds = %345
  %352 = load i32, i32* @IP_CT_TCP_FLAG_SACK_PERM, align 4
  %353 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %354 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %353, i32 0, i32 3
  %355 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 4
  %357 = or i32 %356, %352
  store i32 %357, i32* %355, align 4
  br label %358

358:                                              ; preds = %351, %345
  br label %359

359:                                              ; preds = %358, %312, %268
  %360 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %361 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %360, i32 0, i32 1
  %362 = call i32 @spin_unlock_bh(i32* %361)
  %363 = load %struct.net*, %struct.net** %14, align 8
  %364 = load i32, i32* @IPPROTO_TCP, align 4
  %365 = call i32 @LOG_INVALID(%struct.net* %363, i32 %364)
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %371

367:                                              ; preds = %359
  %368 = load i32, i32* %12, align 4
  %369 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %370 = call i32 @nf_log_packet(i32 %368, i32 0, %struct.sk_buff* %369, i32* null, i32* null, i32* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %371

371:                                              ; preds = %367, %359
  %372 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %372, i32* %7, align 4
  br label %700

373:                                              ; preds = %6
  %374 = load i32, i32* %18, align 4
  %375 = load %struct.tcphdr*, %struct.tcphdr** %19, align 8
  %376 = call i32 @get_conntrack_index(%struct.tcphdr* %375)
  %377 = load i32, i32* %17, align 4
  %378 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %374, i32 %376, i32 %377)
  %379 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %380 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %379, i32 0, i32 1
  %381 = call i32 @spin_unlock_bh(i32* %380)
  %382 = load %struct.net*, %struct.net** %14, align 8
  %383 = load i32, i32* @IPPROTO_TCP, align 4
  %384 = call i32 @LOG_INVALID(%struct.net* %382, i32 %383)
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %390

386:                                              ; preds = %373
  %387 = load i32, i32* %12, align 4
  %388 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %389 = call i32 @nf_log_packet(i32 %387, i32 0, %struct.sk_buff* %388, i32* null, i32* null, i32* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %390

390:                                              ; preds = %386, %373
  %391 = load i32, i32* @NF_ACCEPT, align 4
  %392 = sub nsw i32 0, %391
  store i32 %392, i32* %7, align 4
  br label %700

393:                                              ; preds = %6
  %394 = load i32, i32* %22, align 4
  %395 = load i32, i32* @TCP_RST_SET, align 4
  %396 = icmp eq i32 %394, %395
  br i1 %396, label %397, label %449

397:                                              ; preds = %393
  %398 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %399 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %398, i32 0, i32 2
  %400 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %399, i32 0, i32 0
  %401 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %400, i32 0, i32 5
  %402 = load %struct.TYPE_10__*, %struct.TYPE_10__** %401, align 8
  %403 = load i32, i32* %18, align 4
  %404 = icmp ne i32 %403, 0
  %405 = xor i1 %404, true
  %406 = zext i1 %405 to i32
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %402, i64 %407
  %409 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 4
  %411 = load i32, i32* @IP_CT_TCP_FLAG_MAXACK_SET, align 4
  %412 = and i32 %410, %411
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %449

414:                                              ; preds = %397
  %415 = load %struct.tcphdr*, %struct.tcphdr** %19, align 8
  %416 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %415, i32 0, i32 5
  %417 = load i32, i32* %416, align 4
  %418 = call i32 @ntohl(i32 %417)
  %419 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %420 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %419, i32 0, i32 2
  %421 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %420, i32 0, i32 0
  %422 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %421, i32 0, i32 5
  %423 = load %struct.TYPE_10__*, %struct.TYPE_10__** %422, align 8
  %424 = load i32, i32* %18, align 4
  %425 = icmp ne i32 %424, 0
  %426 = xor i1 %425, true
  %427 = zext i1 %426 to i32
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %423, i64 %428
  %430 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %429, i32 0, i32 3
  %431 = load i32, i32* %430, align 4
  %432 = call i32 @before(i32 %418, i32 %431)
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %449

434:                                              ; preds = %414
  %435 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %436 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %435, i32 0, i32 1
  %437 = call i32 @spin_unlock_bh(i32* %436)
  %438 = load %struct.net*, %struct.net** %14, align 8
  %439 = load i32, i32* @IPPROTO_TCP, align 4
  %440 = call i32 @LOG_INVALID(%struct.net* %438, i32 %439)
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %446

442:                                              ; preds = %434
  %443 = load i32, i32* %12, align 4
  %444 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %445 = call i32 @nf_log_packet(i32 %443, i32 0, %struct.sk_buff* %444, i32* null, i32* null, i32* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %446

446:                                              ; preds = %442, %434
  %447 = load i32, i32* @NF_ACCEPT, align 4
  %448 = sub nsw i32 0, %447
  store i32 %448, i32* %7, align 4
  br label %700

449:                                              ; preds = %414, %397, %393
  %450 = load i32, i32* %22, align 4
  %451 = load i32, i32* @TCP_RST_SET, align 4
  %452 = icmp eq i32 %450, %451
  br i1 %452, label %453, label %493

453:                                              ; preds = %449
  %454 = load i32, i32* @IPS_SEEN_REPLY_BIT, align 4
  %455 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %456 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %455, i32 0, i32 0
  %457 = call i64 @test_bit(i32 %454, i32* %456)
  %458 = icmp ne i64 %457, 0
  br i1 %458, label %459, label %467

459:                                              ; preds = %453
  %460 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %461 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %460, i32 0, i32 2
  %462 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %461, i32 0, i32 0
  %463 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %462, i32 0, i32 2
  %464 = load i32, i32* %463, align 8
  %465 = load i32, i32* @TCP_SYN_SET, align 4
  %466 = icmp eq i32 %464, %465
  br i1 %466, label %481, label %467

467:                                              ; preds = %459, %453
  %468 = load i32, i32* @IPS_ASSURED_BIT, align 4
  %469 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %470 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %469, i32 0, i32 0
  %471 = call i64 @test_bit(i32 %468, i32* %470)
  %472 = icmp ne i64 %471, 0
  br i1 %472, label %493, label %473

473:                                              ; preds = %467
  %474 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %475 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %474, i32 0, i32 2
  %476 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %475, i32 0, i32 0
  %477 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %476, i32 0, i32 2
  %478 = load i32, i32* %477, align 8
  %479 = load i32, i32* @TCP_ACK_SET, align 4
  %480 = icmp eq i32 %478, %479
  br i1 %480, label %481, label %493

481:                                              ; preds = %473, %459
  %482 = load %struct.tcphdr*, %struct.tcphdr** %19, align 8
  %483 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %482, i32 0, i32 4
  %484 = load i32, i32* %483, align 8
  %485 = call i32 @ntohl(i32 %484)
  %486 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %487 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %486, i32 0, i32 2
  %488 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %487, i32 0, i32 0
  %489 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %488, i32 0, i32 6
  %490 = load i32, i32* %489, align 8
  %491 = icmp eq i32 %485, %490
  br i1 %491, label %492, label %493

492:                                              ; preds = %481
  br label %515

493:                                              ; preds = %481, %473, %467, %449
  br label %494

494:                                              ; preds = %6, %493
  br label %495

495:                                              ; preds = %494, %210, %70
  %496 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %497 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %498 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %497, i32 0, i32 2
  %499 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %498, i32 0, i32 0
  %500 = load i32, i32* %18, align 4
  %501 = load i32, i32* %22, align 4
  %502 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %503 = load i32, i32* %10, align 4
  %504 = load %struct.tcphdr*, %struct.tcphdr** %19, align 8
  %505 = load i32, i32* %12, align 4
  %506 = call i32 @tcp_in_window(%struct.nf_conn* %496, %struct.TYPE_9__* %499, i32 %500, i32 %501, %struct.sk_buff* %502, i32 %503, %struct.tcphdr* %504, i32 %505)
  %507 = icmp ne i32 %506, 0
  br i1 %507, label %514, label %508

508:                                              ; preds = %495
  %509 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %510 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %509, i32 0, i32 1
  %511 = call i32 @spin_unlock_bh(i32* %510)
  %512 = load i32, i32* @NF_ACCEPT, align 4
  %513 = sub nsw i32 0, %512
  store i32 %513, i32* %7, align 4
  br label %700

514:                                              ; preds = %495
  br label %515

515:                                              ; preds = %514, %492
  %516 = load i32, i32* %22, align 4
  %517 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %518 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %517, i32 0, i32 2
  %519 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %518, i32 0, i32 0
  %520 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %519, i32 0, i32 2
  store i32 %516, i32* %520, align 8
  %521 = load i32, i32* %18, align 4
  %522 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %523 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %522, i32 0, i32 2
  %524 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %523, i32 0, i32 0
  %525 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %524, i32 0, i32 1
  store i32 %521, i32* %525, align 4
  %526 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %527 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %15, align 8
  %528 = call i32 @nf_ct_dump_tuple(%struct.nf_conntrack_tuple* %527)
  %529 = load %struct.tcphdr*, %struct.tcphdr** %19, align 8
  %530 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %529, i32 0, i32 3
  %531 = load i64, i64* %530, align 8
  %532 = icmp ne i64 %531, 0
  %533 = zext i1 %532 to i64
  %534 = select i1 %532, i32 1, i32 0
  %535 = load %struct.tcphdr*, %struct.tcphdr** %19, align 8
  %536 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %535, i32 0, i32 2
  %537 = load i64, i64* %536, align 8
  %538 = icmp ne i64 %537, 0
  %539 = zext i1 %538 to i64
  %540 = select i1 %538, i32 1, i32 0
  %541 = load %struct.tcphdr*, %struct.tcphdr** %19, align 8
  %542 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %541, i32 0, i32 1
  %543 = load i64, i64* %542, align 8
  %544 = icmp ne i64 %543, 0
  %545 = zext i1 %544 to i64
  %546 = select i1 %544, i32 1, i32 0
  %547 = load %struct.tcphdr*, %struct.tcphdr** %19, align 8
  %548 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %547, i32 0, i32 0
  %549 = load i64, i64* %548, align 8
  %550 = icmp ne i64 %549, 0
  %551 = zext i1 %550 to i64
  %552 = select i1 %550, i32 1, i32 0
  %553 = load i32, i32* %17, align 4
  %554 = load i32, i32* %16, align 4
  %555 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %534, i32 %540, i32 %546, i32 %552, i32 %553, i32 %554)
  %556 = load i32, i32* %16, align 4
  %557 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %558 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %557, i32 0, i32 2
  %559 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %558, i32 0, i32 0
  %560 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %559, i32 0, i32 0
  store i32 %556, i32* %560, align 8
  %561 = load i32, i32* %17, align 4
  %562 = load i32, i32* %16, align 4
  %563 = icmp ne i32 %561, %562
  br i1 %563, label %564, label %581

564:                                              ; preds = %515
  %565 = load i32, i32* %16, align 4
  %566 = load i32, i32* @TCP_CONNTRACK_FIN_WAIT, align 4
  %567 = icmp eq i32 %565, %566
  br i1 %567, label %568, label %581

568:                                              ; preds = %564
  %569 = load i32, i32* @IP_CT_TCP_FLAG_CLOSE_INIT, align 4
  %570 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %571 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %570, i32 0, i32 2
  %572 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %571, i32 0, i32 0
  %573 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %572, i32 0, i32 5
  %574 = load %struct.TYPE_10__*, %struct.TYPE_10__** %573, align 8
  %575 = load i32, i32* %18, align 4
  %576 = zext i32 %575 to i64
  %577 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %574, i64 %576
  %578 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %577, i32 0, i32 0
  %579 = load i32, i32* %578, align 4
  %580 = or i32 %579, %569
  store i32 %580, i32* %578, align 4
  br label %581

581:                                              ; preds = %568, %564, %515
  %582 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %583 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %582, i32 0, i32 2
  %584 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %583, i32 0, i32 0
  %585 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %584, i32 0, i32 4
  %586 = load i64, i64* %585, align 8
  %587 = load i64, i64* @nf_ct_tcp_max_retrans, align 8
  %588 = icmp sge i64 %586, %587
  br i1 %588, label %589, label %599

589:                                              ; preds = %581
  %590 = load i64*, i64** @tcp_timeouts, align 8
  %591 = load i32, i32* %16, align 4
  %592 = zext i32 %591 to i64
  %593 = getelementptr inbounds i64, i64* %590, i64 %592
  %594 = load i64, i64* %593, align 8
  %595 = load i64, i64* @nf_ct_tcp_timeout_max_retrans, align 8
  %596 = icmp ugt i64 %594, %595
  br i1 %596, label %597, label %599

597:                                              ; preds = %589
  %598 = load i64, i64* @nf_ct_tcp_timeout_max_retrans, align 8
  store i64 %598, i64* %21, align 8
  br label %637

599:                                              ; preds = %589, %581
  %600 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %601 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %600, i32 0, i32 2
  %602 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %601, i32 0, i32 0
  %603 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %602, i32 0, i32 5
  %604 = load %struct.TYPE_10__*, %struct.TYPE_10__** %603, align 8
  %605 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %604, i64 0
  %606 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %605, i32 0, i32 0
  %607 = load i32, i32* %606, align 4
  %608 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %609 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %608, i32 0, i32 2
  %610 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %609, i32 0, i32 0
  %611 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %610, i32 0, i32 5
  %612 = load %struct.TYPE_10__*, %struct.TYPE_10__** %611, align 8
  %613 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %612, i64 1
  %614 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %613, i32 0, i32 0
  %615 = load i32, i32* %614, align 4
  %616 = or i32 %607, %615
  %617 = load i32, i32* @IP_CT_TCP_FLAG_DATA_UNACKNOWLEDGED, align 4
  %618 = and i32 %616, %617
  %619 = icmp ne i32 %618, 0
  br i1 %619, label %620, label %630

620:                                              ; preds = %599
  %621 = load i64*, i64** @tcp_timeouts, align 8
  %622 = load i32, i32* %16, align 4
  %623 = zext i32 %622 to i64
  %624 = getelementptr inbounds i64, i64* %621, i64 %623
  %625 = load i64, i64* %624, align 8
  %626 = load i64, i64* @nf_ct_tcp_timeout_unacknowledged, align 8
  %627 = icmp ugt i64 %625, %626
  br i1 %627, label %628, label %630

628:                                              ; preds = %620
  %629 = load i64, i64* @nf_ct_tcp_timeout_unacknowledged, align 8
  store i64 %629, i64* %21, align 8
  br label %636

630:                                              ; preds = %620, %599
  %631 = load i64*, i64** @tcp_timeouts, align 8
  %632 = load i32, i32* %16, align 4
  %633 = zext i32 %632 to i64
  %634 = getelementptr inbounds i64, i64* %631, i64 %633
  %635 = load i64, i64* %634, align 8
  store i64 %635, i64* %21, align 8
  br label %636

636:                                              ; preds = %630, %628
  br label %637

637:                                              ; preds = %636, %597
  %638 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %639 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %638, i32 0, i32 1
  %640 = call i32 @spin_unlock_bh(i32* %639)
  %641 = load i32, i32* %16, align 4
  %642 = load i32, i32* %17, align 4
  %643 = icmp ne i32 %641, %642
  br i1 %643, label %644, label %648

644:                                              ; preds = %637
  %645 = load i32, i32* @IPCT_PROTOINFO, align 4
  %646 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %647 = call i32 @nf_conntrack_event_cache(i32 %645, %struct.nf_conn* %646)
  br label %648

648:                                              ; preds = %644, %637
  %649 = load i32, i32* @IPS_SEEN_REPLY_BIT, align 4
  %650 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %651 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %650, i32 0, i32 0
  %652 = call i64 @test_bit(i32 %649, i32* %651)
  %653 = icmp ne i64 %652, 0
  br i1 %653, label %666, label %654

654:                                              ; preds = %648
  %655 = load %struct.tcphdr*, %struct.tcphdr** %19, align 8
  %656 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %655, i32 0, i32 0
  %657 = load i64, i64* %656, align 8
  %658 = icmp ne i64 %657, 0
  br i1 %658, label %659, label %665

659:                                              ; preds = %654
  %660 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %661 = load i32, i32* %11, align 4
  %662 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %663 = call i32 @nf_ct_kill_acct(%struct.nf_conn* %660, i32 %661, %struct.sk_buff* %662)
  %664 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %664, i32* %7, align 4
  br label %700

665:                                              ; preds = %654
  br label %693

666:                                              ; preds = %648
  %667 = load i32, i32* @IPS_ASSURED_BIT, align 4
  %668 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %669 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %668, i32 0, i32 0
  %670 = call i64 @test_bit(i32 %667, i32* %669)
  %671 = icmp ne i64 %670, 0
  br i1 %671, label %692, label %672

672:                                              ; preds = %666
  %673 = load i32, i32* %17, align 4
  %674 = load i32, i32* @TCP_CONNTRACK_SYN_RECV, align 4
  %675 = icmp eq i32 %673, %674
  br i1 %675, label %680, label %676

676:                                              ; preds = %672
  %677 = load i32, i32* %17, align 4
  %678 = load i32, i32* @TCP_CONNTRACK_ESTABLISHED, align 4
  %679 = icmp eq i32 %677, %678
  br i1 %679, label %680, label %692

680:                                              ; preds = %676, %672
  %681 = load i32, i32* %16, align 4
  %682 = load i32, i32* @TCP_CONNTRACK_ESTABLISHED, align 4
  %683 = icmp eq i32 %681, %682
  br i1 %683, label %684, label %692

684:                                              ; preds = %680
  %685 = load i32, i32* @IPS_ASSURED_BIT, align 4
  %686 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %687 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %686, i32 0, i32 0
  %688 = call i32 @set_bit(i32 %685, i32* %687)
  %689 = load i32, i32* @IPCT_STATUS, align 4
  %690 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %691 = call i32 @nf_conntrack_event_cache(i32 %689, %struct.nf_conn* %690)
  br label %692

692:                                              ; preds = %684, %680, %676, %666
  br label %693

693:                                              ; preds = %692, %665
  %694 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %695 = load i32, i32* %11, align 4
  %696 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %697 = load i64, i64* %21, align 8
  %698 = call i32 @nf_ct_refresh_acct(%struct.nf_conn* %694, i32 %695, %struct.sk_buff* %696, i64 %697)
  %699 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %699, i32* %7, align 4
  br label %700

700:                                              ; preds = %693, %659, %508, %446, %390, %371, %125, %122
  %701 = load i32, i32* %7, align 4
  ret i32 %701
}

declare dso_local %struct.net* @nf_ct_net(%struct.nf_conn*) #1

declare dso_local %struct.tcphdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.tcphdr*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @CTINFO2DIR(i32) #1

declare dso_local i32 @get_conntrack_index(%struct.tcphdr*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @nf_ct_kill(%struct.nf_conn*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @segment_seq_plus_len(i32, i32, i32, %struct.tcphdr*) #1

declare dso_local i32 @ntohs(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @tcp_options(%struct.sk_buff*, i32, %struct.tcphdr*, %struct.ip_ct_tcp_state*) #1

declare dso_local i32 @LOG_INVALID(%struct.net*, i32) #1

declare dso_local i32 @nf_log_packet(i32, i32, %struct.sk_buff*, i32*, i32*, i32*, i8*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @before(i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @tcp_in_window(%struct.nf_conn*, %struct.TYPE_9__*, i32, i32, %struct.sk_buff*, i32, %struct.tcphdr*, i32) #1

declare dso_local i32 @nf_ct_dump_tuple(%struct.nf_conntrack_tuple*) #1

declare dso_local i32 @nf_conntrack_event_cache(i32, %struct.nf_conn*) #1

declare dso_local i32 @nf_ct_kill_acct(%struct.nf_conn*, i32, %struct.sk_buff*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @nf_ct_refresh_acct(%struct.nf_conn*, i32, %struct.sk_buff*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
