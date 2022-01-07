; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_proto_dccp.c_dccp_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_proto_dccp.c_dccp_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i64, i32, i64, i8* }
%struct.sk_buff = type { i32 }
%struct.net = type { i32 }
%struct.dccp_net = type { i32* }
%struct.dccp_hdr = type { i64 }

@DCCP_PKT_RESET = common dso_local global i64 0, align 8
@IPS_SEEN_REPLY_BIT = common dso_local global i32 0, align 4
@NF_ACCEPT = common dso_local global i32 0, align 4
@dccp_state_table = common dso_local global i64*** null, align 8
@CT_DCCP_TIMEWAIT = common dso_local global i64 0, align 8
@CT_DCCP_ROLE_SERVER = common dso_local global i32 0, align 4
@CT_DCCP_ROLE_CLIENT = common dso_local global i8* null, align 8
@DCCP_PKT_ACK = common dso_local global i64 0, align 8
@IPS_ASSURED_BIT = common dso_local global i32 0, align 4
@DCCP_PKT_REQUEST = common dso_local global i64 0, align 8
@DCCP_PKT_RESPONSE = common dso_local global i64 0, align 8
@IPPROTO_DCCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"nf_ct_dccp: invalid packet ignored \00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"nf_ct_dccp: invalid state transition \00", align 1
@IPCT_PROTOINFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conn*, %struct.sk_buff*, i32, i32, i64, i32)* @dccp_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dccp_packet(%struct.nf_conn* %0, %struct.sk_buff* %1, i32 %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nf_conn*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.net*, align 8
  %15 = alloca %struct.dccp_net*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.dccp_hdr, align 8
  %18 = alloca %struct.dccp_hdr*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store %struct.nf_conn* %0, %struct.nf_conn** %8, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %23 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %24 = call %struct.net* @nf_ct_net(%struct.nf_conn* %23)
  store %struct.net* %24, %struct.net** %14, align 8
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @CTINFO2DIR(i32 %25)
  store i32 %26, i32* %16, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call %struct.dccp_hdr* @skb_header_pointer(%struct.sk_buff* %27, i32 %28, i32 8, %struct.dccp_hdr* %17)
  store %struct.dccp_hdr* %29, %struct.dccp_hdr** %18, align 8
  %30 = load %struct.dccp_hdr*, %struct.dccp_hdr** %18, align 8
  %31 = icmp eq %struct.dccp_hdr* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @BUG_ON(i32 %32)
  %34 = load %struct.dccp_hdr*, %struct.dccp_hdr** %18, align 8
  %35 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %19, align 8
  %37 = load i64, i64* %19, align 8
  %38 = load i64, i64* @DCCP_PKT_RESET, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %6
  %41 = load i32, i32* @IPS_SEEN_REPLY_BIT, align 4
  %42 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %43 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %42, i32 0, i32 2
  %44 = call i32 @test_bit(i32 %41, i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %50 = call i32 @nf_ct_kill_acct(%struct.nf_conn* %47, i32 %48, %struct.sk_buff* %49)
  %51 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %51, i32* %7, align 4
  br label %278

52:                                               ; preds = %40, %6
  %53 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %54 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %53, i32 0, i32 0
  %55 = call i32 @spin_lock_bh(i32* %54)
  %56 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %57 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %16, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %22, align 4
  %65 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %66 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %20, align 8
  %70 = load i64***, i64**** @dccp_state_table, align 8
  %71 = load i32, i32* %22, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i64**, i64*** %70, i64 %72
  %74 = load i64**, i64*** %73, align 8
  %75 = load i64, i64* %19, align 8
  %76 = getelementptr inbounds i64*, i64** %74, i64 %75
  %77 = load i64*, i64** %76, align 8
  %78 = load i64, i64* %20, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %21, align 8
  %81 = load i64, i64* %21, align 8
  switch i64 %81, label %238 [
    i64 129, label %82
    i64 128, label %114
    i64 130, label %125
    i64 132, label %147
    i64 131, label %223
  ]

82:                                               ; preds = %52
  %83 = load i64, i64* %20, align 8
  %84 = load i64, i64* @CT_DCCP_TIMEWAIT, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %113

86:                                               ; preds = %82
  %87 = load i32, i32* %22, align 4
  %88 = load i32, i32* @CT_DCCP_ROLE_SERVER, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %113

90:                                               ; preds = %86
  %91 = load i8*, i8** @CT_DCCP_ROLE_CLIENT, align 8
  %92 = ptrtoint i8* %91 to i32
  %93 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %94 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %16, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 %92, i32* %100, align 4
  %101 = load i32, i32* @CT_DCCP_ROLE_SERVER, align 4
  %102 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %103 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %16, align 4
  %108 = icmp ne i32 %107, 0
  %109 = xor i1 %108, true
  %110 = zext i1 %109 to i32
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %106, i64 %111
  store i32 %101, i32* %112, align 4
  br label %113

113:                                              ; preds = %90, %86, %82
  br label %238

114:                                              ; preds = %52
  %115 = load i64, i64* %20, align 8
  %116 = icmp eq i64 %115, 129
  br i1 %116, label %117, label %124

117:                                              ; preds = %114
  %118 = load %struct.dccp_hdr*, %struct.dccp_hdr** %18, align 8
  %119 = call i8* @dccp_hdr_seq(%struct.dccp_hdr* %118)
  %120 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %121 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 4
  store i8* %119, i8** %123, align 8
  br label %124

124:                                              ; preds = %117, %114
  br label %238

125:                                              ; preds = %52
  %126 = load i64, i64* %20, align 8
  %127 = icmp eq i64 %126, 128
  br i1 %127, label %128, label %146

128:                                              ; preds = %125
  %129 = load i64, i64* %19, align 8
  %130 = load i64, i64* @DCCP_PKT_ACK, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %146

132:                                              ; preds = %128
  %133 = load %struct.dccp_hdr*, %struct.dccp_hdr** %18, align 8
  %134 = call i8* @dccp_ack_seq(%struct.dccp_hdr* %133)
  %135 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %136 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 4
  %139 = load i8*, i8** %138, align 8
  %140 = icmp eq i8* %134, %139
  br i1 %140, label %141, label %146

141:                                              ; preds = %132
  %142 = load i32, i32* @IPS_ASSURED_BIT, align 4
  %143 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %144 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %143, i32 0, i32 2
  %145 = call i32 @set_bit(i32 %142, i32* %144)
  br label %146

146:                                              ; preds = %141, %132, %128, %125
  br label %238

147:                                              ; preds = %52
  %148 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %149 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %16, align 4
  %154 = icmp ne i32 %153, 0
  %155 = xor i1 %154, true
  %156 = zext i1 %155 to i32
  %157 = icmp eq i32 %152, %156
  br i1 %157, label %158, label %199

158:                                              ; preds = %147
  %159 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %160 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 3
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @DCCP_PKT_REQUEST, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %199

166:                                              ; preds = %158
  %167 = load i64, i64* %19, align 8
  %168 = load i64, i64* @DCCP_PKT_RESPONSE, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %199

170:                                              ; preds = %166
  %171 = load i8*, i8** @CT_DCCP_ROLE_CLIENT, align 8
  %172 = ptrtoint i8* %171 to i32
  %173 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %174 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %16, align 4
  %179 = icmp ne i32 %178, 0
  %180 = xor i1 %179, true
  %181 = zext i1 %180 to i32
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %177, i64 %182
  store i32 %172, i32* %183, align 4
  %184 = load i32, i32* @CT_DCCP_ROLE_SERVER, align 4
  %185 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %186 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %16, align 4
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  store i32 %184, i32* %192, align 4
  %193 = load %struct.dccp_hdr*, %struct.dccp_hdr** %18, align 8
  %194 = call i8* @dccp_hdr_seq(%struct.dccp_hdr* %193)
  %195 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %196 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 4
  store i8* %194, i8** %198, align 8
  store i64 128, i64* %21, align 8
  br label %238

199:                                              ; preds = %166, %158, %147
  %200 = load i32, i32* %16, align 4
  %201 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %202 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 2
  store i32 %200, i32* %204, align 8
  %205 = load i64, i64* %19, align 8
  %206 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %207 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 3
  store i64 %205, i64* %209, align 8
  %210 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %211 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %210, i32 0, i32 0
  %212 = call i32 @spin_unlock_bh(i32* %211)
  %213 = load %struct.net*, %struct.net** %14, align 8
  %214 = load i32, i32* @IPPROTO_DCCP, align 4
  %215 = call i32 @LOG_INVALID(%struct.net* %213, i32 %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %199
  %218 = load i64, i64* %12, align 8
  %219 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %220 = call i32 @nf_log_packet(i64 %218, i32 0, %struct.sk_buff* %219, i32* null, i32* null, i32* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %221

221:                                              ; preds = %217, %199
  %222 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %222, i32* %7, align 4
  br label %278

223:                                              ; preds = %52
  %224 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %225 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %224, i32 0, i32 0
  %226 = call i32 @spin_unlock_bh(i32* %225)
  %227 = load %struct.net*, %struct.net** %14, align 8
  %228 = load i32, i32* @IPPROTO_DCCP, align 4
  %229 = call i32 @LOG_INVALID(%struct.net* %227, i32 %228)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %223
  %232 = load i64, i64* %12, align 8
  %233 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %234 = call i32 @nf_log_packet(i64 %232, i32 0, %struct.sk_buff* %233, i32* null, i32* null, i32* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %235

235:                                              ; preds = %231, %223
  %236 = load i32, i32* @NF_ACCEPT, align 4
  %237 = sub nsw i32 0, %236
  store i32 %237, i32* %7, align 4
  br label %278

238:                                              ; preds = %52, %170, %146, %124, %113
  %239 = load i32, i32* %16, align 4
  %240 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %241 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 2
  store i32 %239, i32* %243, align 8
  %244 = load i64, i64* %19, align 8
  %245 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %246 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %247, i32 0, i32 3
  store i64 %244, i64* %248, align 8
  %249 = load i64, i64* %21, align 8
  %250 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %251 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %252, i32 0, i32 1
  store i64 %249, i64* %253, align 8
  %254 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %255 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %254, i32 0, i32 0
  %256 = call i32 @spin_unlock_bh(i32* %255)
  %257 = load i64, i64* %21, align 8
  %258 = load i64, i64* %20, align 8
  %259 = icmp ne i64 %257, %258
  br i1 %259, label %260, label %264

260:                                              ; preds = %238
  %261 = load i32, i32* @IPCT_PROTOINFO, align 4
  %262 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %263 = call i32 @nf_conntrack_event_cache(i32 %261, %struct.nf_conn* %262)
  br label %264

264:                                              ; preds = %260, %238
  %265 = load %struct.net*, %struct.net** %14, align 8
  %266 = call %struct.dccp_net* @dccp_pernet(%struct.net* %265)
  store %struct.dccp_net* %266, %struct.dccp_net** %15, align 8
  %267 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %268 = load i32, i32* %11, align 4
  %269 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %270 = load %struct.dccp_net*, %struct.dccp_net** %15, align 8
  %271 = getelementptr inbounds %struct.dccp_net, %struct.dccp_net* %270, i32 0, i32 0
  %272 = load i32*, i32** %271, align 8
  %273 = load i64, i64* %21, align 8
  %274 = getelementptr inbounds i32, i32* %272, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @nf_ct_refresh_acct(%struct.nf_conn* %267, i32 %268, %struct.sk_buff* %269, i32 %275)
  %277 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %277, i32* %7, align 4
  br label %278

278:                                              ; preds = %264, %235, %221, %46
  %279 = load i32, i32* %7, align 4
  ret i32 %279
}

declare dso_local %struct.net* @nf_ct_net(%struct.nf_conn*) #1

declare dso_local i32 @CTINFO2DIR(i32) #1

declare dso_local %struct.dccp_hdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.dccp_hdr*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @nf_ct_kill_acct(%struct.nf_conn*, i32, %struct.sk_buff*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i8* @dccp_hdr_seq(%struct.dccp_hdr*) #1

declare dso_local i8* @dccp_ack_seq(%struct.dccp_hdr*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @LOG_INVALID(%struct.net*, i32) #1

declare dso_local i32 @nf_log_packet(i64, i32, %struct.sk_buff*, i32*, i32*, i32*, i8*) #1

declare dso_local i32 @nf_conntrack_event_cache(i32, %struct.nf_conn*) #1

declare dso_local %struct.dccp_net* @dccp_pernet(%struct.net*) #1

declare dso_local i32 @nf_ct_refresh_acct(%struct.nf_conn*, i32, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
