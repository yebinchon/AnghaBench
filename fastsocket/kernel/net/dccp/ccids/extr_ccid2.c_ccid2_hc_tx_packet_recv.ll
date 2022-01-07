; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/ccids/extr_ccid2.c_ccid2_hc_tx_packet_recv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/ccids/extr_ccid2.c_ccid2_hc_tx_packet_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.dccp_sock = type { i32 }
%struct.ccid2_hc_tx_sock = type { i32, i8*, i8*, i64, i64, %struct.ccid2_seq*, %struct.ccid2_seq* }
%struct.ccid2_seq = type { i8*, i32, %struct.ccid2_seq*, %struct.ccid2_seq* }
%struct.TYPE_2__ = type { i32, i8*, i8* }

@NUMDUPACK = common dso_local global i32 0, align 4
@DCCP_ACKVEC_LEN_MASK = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [28 x i8] c"ackvec start:%llu end:%llu\0A\00", align 1
@DCCP_ACKVEC_STATE_MASK = common dso_local global i8 0, align 1
@DCCP_ACKVEC_STATE_NOT_RECEIVED = common dso_local global i64 0, align 8
@DCCP_ACKVEC_STATE_ECN_MARKED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"Got ack for %llu\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Packet lost: %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff*)* @ccid2_hc_tx_packet_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccid2_hc_tx_packet_recv(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.dccp_sock*, align 8
  %6 = alloca %struct.ccid2_hc_tx_sock*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ccid2_seq*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.ccid2_seq*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %19 = load %struct.sock*, %struct.sock** %3, align 8
  %20 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %19)
  store %struct.dccp_sock* %20, %struct.dccp_sock** %5, align 8
  %21 = load %struct.sock*, %struct.sock** %3, align 8
  %22 = call %struct.ccid2_hc_tx_sock* @ccid2_hc_tx_sk(%struct.sock* %21)
  store %struct.ccid2_hc_tx_sock* %22, %struct.ccid2_hc_tx_sock** %6, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %23 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %24 = call i32 @ccid2_hc_tx_check_sanity(%struct.ccid2_hc_tx_sock* %23)
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = call %struct.TYPE_2__* @DCCP_SKB_CB(%struct.sk_buff* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %8, align 8
  %29 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %30 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %39

33:                                               ; preds = %2
  %34 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %35 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %38 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  br label %81

39:                                               ; preds = %2
  %40 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %41 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @dccp_delta_seqno(i8* %42, i8* %43)
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load i8*, i8** %8, align 8
  %48 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %49 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  br label %80

50:                                               ; preds = %39
  %51 = load i8*, i8** %8, align 8
  %52 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %53 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = call i64 @after48(i8* %51, i8* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %79

57:                                               ; preds = %50
  %58 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %59 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  %62 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %63 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @NUMDUPACK, align 4
  %66 = icmp sge i32 %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %57
  %68 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %69 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %68, i32 0, i32 0
  store i32 -1, i32* %69, align 8
  %70 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %71 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %70, i32 0, i32 1
  store i8* null, i8** %71, align 8
  %72 = load %struct.sock*, %struct.sock** %3, align 8
  %73 = load %struct.dccp_sock*, %struct.dccp_sock** %5, align 8
  %74 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = mul nsw i32 2, %75
  %77 = call i32 @ccid2_change_l_ack_ratio(%struct.sock* %72, i32 %76)
  br label %78

78:                                               ; preds = %67, %57
  br label %79

79:                                               ; preds = %78, %50
  br label %80

80:                                               ; preds = %79, %46
  br label %81

81:                                               ; preds = %80, %33
  %82 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %83 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %82, i32 0, i32 6
  %84 = load %struct.ccid2_seq*, %struct.ccid2_seq** %83, align 8
  %85 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %86 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %85, i32 0, i32 5
  %87 = load %struct.ccid2_seq*, %struct.ccid2_seq** %86, align 8
  %88 = icmp eq %struct.ccid2_seq* %84, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  br label %393

90:                                               ; preds = %81
  %91 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %92 = call %struct.TYPE_2__* @DCCP_SKB_CB(%struct.sk_buff* %91)
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  switch i32 %94, label %96 [
    i32 129, label %95
    i32 128, label %95
  ]

95:                                               ; preds = %90, %90
  br label %97

96:                                               ; preds = %90
  br label %393

97:                                               ; preds = %95
  %98 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %99 = call %struct.TYPE_2__* @DCCP_SKB_CB(%struct.sk_buff* %98)
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  store i8* %101, i8** %7, align 8
  %102 = load i8*, i8** %7, align 8
  %103 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %104 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %103, i32 0, i32 2
  %105 = load i8*, i8** %104, align 8
  %106 = call i64 @after48(i8* %102, i8* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %97
  %109 = load i8*, i8** %7, align 8
  %110 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %111 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %110, i32 0, i32 2
  store i8* %109, i8** %111, align 8
  br label %112

112:                                              ; preds = %108, %97
  %113 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %114 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %113, i32 0, i32 5
  %115 = load %struct.ccid2_seq*, %struct.ccid2_seq** %114, align 8
  store %struct.ccid2_seq* %115, %struct.ccid2_seq** %9, align 8
  br label %116

116:                                              ; preds = %138, %112
  %117 = load %struct.ccid2_seq*, %struct.ccid2_seq** %9, align 8
  %118 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = load i8*, i8** %7, align 8
  %121 = call i64 @before48(i8* %119, i8* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %139

123:                                              ; preds = %116
  %124 = load %struct.ccid2_seq*, %struct.ccid2_seq** %9, align 8
  %125 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %124, i32 0, i32 2
  %126 = load %struct.ccid2_seq*, %struct.ccid2_seq** %125, align 8
  store %struct.ccid2_seq* %126, %struct.ccid2_seq** %9, align 8
  %127 = load %struct.ccid2_seq*, %struct.ccid2_seq** %9, align 8
  %128 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %129 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %128, i32 0, i32 6
  %130 = load %struct.ccid2_seq*, %struct.ccid2_seq** %129, align 8
  %131 = icmp eq %struct.ccid2_seq* %127, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %123
  %133 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %134 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %133, i32 0, i32 6
  %135 = load %struct.ccid2_seq*, %struct.ccid2_seq** %134, align 8
  %136 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %135, i32 0, i32 3
  %137 = load %struct.ccid2_seq*, %struct.ccid2_seq** %136, align 8
  store %struct.ccid2_seq* %137, %struct.ccid2_seq** %9, align 8
  br label %139

138:                                              ; preds = %123
  br label %116

139:                                              ; preds = %132, %116
  %140 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %141 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %144 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %143, i32 0, i32 4
  %145 = load i64, i64* %144, align 8
  %146 = icmp slt i64 %142, %145
  br i1 %146, label %147, label %152

147:                                              ; preds = %139
  %148 = load %struct.dccp_sock*, %struct.dccp_sock** %5, align 8
  %149 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @DIV_ROUND_UP(i32 %150, i32 2)
  store i32 %151, i32* %14, align 4
  br label %152

152:                                              ; preds = %147, %139
  br label %153

153:                                              ; preds = %273, %152
  %154 = load %struct.sock*, %struct.sock** %3, align 8
  %155 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %156 = load i32, i32* %12, align 4
  %157 = call i32 @ccid2_ackvector(%struct.sock* %154, %struct.sk_buff* %155, i32 %156, i8** %10, i8* %11)
  store i32 %157, i32* %12, align 4
  %158 = icmp ne i32 %157, -1
  br i1 %158, label %159, label %274

159:                                              ; preds = %153
  br label %160

160:                                              ; preds = %264, %159
  %161 = load i8, i8* %11, align 1
  %162 = add i8 %161, -1
  store i8 %162, i8* %11, align 1
  %163 = icmp ne i8 %161, 0
  br i1 %163, label %164, label %269

164:                                              ; preds = %160
  %165 = load i8*, i8** %10, align 8
  %166 = load i8, i8* %165, align 1
  %167 = zext i8 %166 to i32
  %168 = load i8, i8* @DCCP_ACKVEC_LEN_MASK, align 1
  %169 = zext i8 %168 to i32
  %170 = and i32 %167, %169
  %171 = sext i32 %170 to i64
  store i64 %171, i64* %15, align 8
  %172 = load i8*, i8** %7, align 8
  %173 = load i64, i64* %15, align 8
  %174 = call i8* @SUB48(i8* %172, i64 %173)
  store i8* %174, i8** %16, align 8
  %175 = load i8*, i8** %7, align 8
  %176 = ptrtoint i8* %175 to i64
  %177 = load i8*, i8** %16, align 8
  %178 = ptrtoint i8* %177 to i64
  %179 = call i32 (i8*, i64, ...) @ccid2_pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %176, i64 %178)
  br label %180

180:                                              ; preds = %194, %164
  %181 = load %struct.ccid2_seq*, %struct.ccid2_seq** %9, align 8
  %182 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %181, i32 0, i32 0
  %183 = load i8*, i8** %182, align 8
  %184 = load i8*, i8** %7, align 8
  %185 = call i64 @after48(i8* %183, i8* %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %198

187:                                              ; preds = %180
  %188 = load %struct.ccid2_seq*, %struct.ccid2_seq** %9, align 8
  %189 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %190 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %189, i32 0, i32 5
  %191 = load %struct.ccid2_seq*, %struct.ccid2_seq** %190, align 8
  %192 = icmp eq %struct.ccid2_seq* %188, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %187
  store i32 1, i32* %13, align 4
  br label %198

194:                                              ; preds = %187
  %195 = load %struct.ccid2_seq*, %struct.ccid2_seq** %9, align 8
  %196 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %195, i32 0, i32 3
  %197 = load %struct.ccid2_seq*, %struct.ccid2_seq** %196, align 8
  store %struct.ccid2_seq* %197, %struct.ccid2_seq** %9, align 8
  br label %180

198:                                              ; preds = %193, %180
  %199 = load i32, i32* %13, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %198
  br label %269

202:                                              ; preds = %198
  br label %203

203:                                              ; preds = %256, %202
  %204 = load %struct.ccid2_seq*, %struct.ccid2_seq** %9, align 8
  %205 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %204, i32 0, i32 0
  %206 = load i8*, i8** %205, align 8
  %207 = load i8*, i8** %16, align 8
  %208 = load i8*, i8** %7, align 8
  %209 = call i64 @between48(i8* %206, i8* %207, i8* %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %260

211:                                              ; preds = %203
  %212 = load i8*, i8** %10, align 8
  %213 = load i8, i8* %212, align 1
  %214 = zext i8 %213 to i32
  %215 = load i8, i8* @DCCP_ACKVEC_STATE_MASK, align 1
  %216 = zext i8 %215 to i32
  %217 = and i32 %214, %216
  %218 = sext i32 %217 to i64
  store i64 %218, i64* %17, align 8
  %219 = load i64, i64* %17, align 8
  %220 = load i64, i64* @DCCP_ACKVEC_STATE_NOT_RECEIVED, align 8
  %221 = icmp ne i64 %219, %220
  br i1 %221, label %222, label %249

222:                                              ; preds = %211
  %223 = load %struct.ccid2_seq*, %struct.ccid2_seq** %9, align 8
  %224 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %249, label %227

227:                                              ; preds = %222
  %228 = load i64, i64* %17, align 8
  %229 = load i64, i64* @DCCP_ACKVEC_STATE_ECN_MARKED, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %231, label %235

231:                                              ; preds = %227
  %232 = load %struct.sock*, %struct.sock** %3, align 8
  %233 = load %struct.ccid2_seq*, %struct.ccid2_seq** %9, align 8
  %234 = call i32 @ccid2_congestion_event(%struct.sock* %232, %struct.ccid2_seq* %233)
  br label %239

235:                                              ; preds = %227
  %236 = load %struct.sock*, %struct.sock** %3, align 8
  %237 = load %struct.ccid2_seq*, %struct.ccid2_seq** %9, align 8
  %238 = call i32 @ccid2_new_ack(%struct.sock* %236, %struct.ccid2_seq* %237, i32* %14)
  br label %239

239:                                              ; preds = %235, %231
  %240 = load %struct.ccid2_seq*, %struct.ccid2_seq** %9, align 8
  %241 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %240, i32 0, i32 1
  store i32 1, i32* %241, align 8
  %242 = load %struct.ccid2_seq*, %struct.ccid2_seq** %9, align 8
  %243 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %242, i32 0, i32 0
  %244 = load i8*, i8** %243, align 8
  %245 = ptrtoint i8* %244 to i64
  %246 = call i32 (i8*, i64, ...) @ccid2_pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %245)
  %247 = load %struct.sock*, %struct.sock** %3, align 8
  %248 = call i32 @ccid2_hc_tx_dec_pipe(%struct.sock* %247)
  br label %249

249:                                              ; preds = %239, %222, %211
  %250 = load %struct.ccid2_seq*, %struct.ccid2_seq** %9, align 8
  %251 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %252 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %251, i32 0, i32 5
  %253 = load %struct.ccid2_seq*, %struct.ccid2_seq** %252, align 8
  %254 = icmp eq %struct.ccid2_seq* %250, %253
  br i1 %254, label %255, label %256

255:                                              ; preds = %249
  store i32 1, i32* %13, align 4
  br label %260

256:                                              ; preds = %249
  %257 = load %struct.ccid2_seq*, %struct.ccid2_seq** %9, align 8
  %258 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %257, i32 0, i32 3
  %259 = load %struct.ccid2_seq*, %struct.ccid2_seq** %258, align 8
  store %struct.ccid2_seq* %259, %struct.ccid2_seq** %9, align 8
  br label %203

260:                                              ; preds = %255, %203
  %261 = load i32, i32* %13, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %264

263:                                              ; preds = %260
  br label %269

264:                                              ; preds = %260
  %265 = load i8*, i8** %16, align 8
  %266 = call i8* @SUB48(i8* %265, i64 1)
  store i8* %266, i8** %7, align 8
  %267 = load i8*, i8** %10, align 8
  %268 = getelementptr inbounds i8, i8* %267, i32 1
  store i8* %268, i8** %10, align 8
  br label %160

269:                                              ; preds = %263, %201, %160
  %270 = load i32, i32* %13, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %273

272:                                              ; preds = %269
  br label %274

273:                                              ; preds = %269
  br label %153

274:                                              ; preds = %272, %153
  %275 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %276 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %275, i32 0, i32 5
  %277 = load %struct.ccid2_seq*, %struct.ccid2_seq** %276, align 8
  store %struct.ccid2_seq* %277, %struct.ccid2_seq** %9, align 8
  br label %278

278:                                              ; preds = %302, %274
  %279 = load %struct.ccid2_seq*, %struct.ccid2_seq** %9, align 8
  %280 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %279, i32 0, i32 0
  %281 = load i8*, i8** %280, align 8
  %282 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %283 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %282, i32 0, i32 2
  %284 = load i8*, i8** %283, align 8
  %285 = call i64 @before48(i8* %281, i8* %284)
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %303

287:                                              ; preds = %278
  %288 = load %struct.ccid2_seq*, %struct.ccid2_seq** %9, align 8
  %289 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %288, i32 0, i32 2
  %290 = load %struct.ccid2_seq*, %struct.ccid2_seq** %289, align 8
  store %struct.ccid2_seq* %290, %struct.ccid2_seq** %9, align 8
  %291 = load %struct.ccid2_seq*, %struct.ccid2_seq** %9, align 8
  %292 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %293 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %292, i32 0, i32 6
  %294 = load %struct.ccid2_seq*, %struct.ccid2_seq** %293, align 8
  %295 = icmp eq %struct.ccid2_seq* %291, %294
  br i1 %295, label %296, label %302

296:                                              ; preds = %287
  %297 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %298 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %297, i32 0, i32 6
  %299 = load %struct.ccid2_seq*, %struct.ccid2_seq** %298, align 8
  %300 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %299, i32 0, i32 3
  %301 = load %struct.ccid2_seq*, %struct.ccid2_seq** %300, align 8
  store %struct.ccid2_seq* %301, %struct.ccid2_seq** %9, align 8
  br label %303

302:                                              ; preds = %287
  br label %278

303:                                              ; preds = %296, %278
  store i32 0, i32* %13, align 4
  br label %304

304:                                              ; preds = %303, %324
  %305 = load %struct.ccid2_seq*, %struct.ccid2_seq** %9, align 8
  %306 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 8
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %317

309:                                              ; preds = %304
  %310 = load i32, i32* %13, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %13, align 4
  %312 = load i32, i32* %13, align 4
  %313 = load i32, i32* @NUMDUPACK, align 4
  %314 = icmp eq i32 %312, %313
  br i1 %314, label %315, label %316

315:                                              ; preds = %309
  br label %328

316:                                              ; preds = %309
  br label %317

317:                                              ; preds = %316, %304
  %318 = load %struct.ccid2_seq*, %struct.ccid2_seq** %9, align 8
  %319 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %320 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %319, i32 0, i32 5
  %321 = load %struct.ccid2_seq*, %struct.ccid2_seq** %320, align 8
  %322 = icmp eq %struct.ccid2_seq* %318, %321
  br i1 %322, label %323, label %324

323:                                              ; preds = %317
  br label %328

324:                                              ; preds = %317
  %325 = load %struct.ccid2_seq*, %struct.ccid2_seq** %9, align 8
  %326 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %325, i32 0, i32 3
  %327 = load %struct.ccid2_seq*, %struct.ccid2_seq** %326, align 8
  store %struct.ccid2_seq* %327, %struct.ccid2_seq** %9, align 8
  br label %304

328:                                              ; preds = %323, %315
  %329 = load i32, i32* %13, align 4
  %330 = load i32, i32* @NUMDUPACK, align 4
  %331 = icmp eq i32 %329, %330
  br i1 %331, label %332, label %365

332:                                              ; preds = %328
  %333 = load %struct.ccid2_seq*, %struct.ccid2_seq** %9, align 8
  store %struct.ccid2_seq* %333, %struct.ccid2_seq** %18, align 8
  br label %334

334:                                              ; preds = %332, %357
  %335 = load %struct.ccid2_seq*, %struct.ccid2_seq** %9, align 8
  %336 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 8
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %350, label %339

339:                                              ; preds = %334
  %340 = load %struct.ccid2_seq*, %struct.ccid2_seq** %9, align 8
  %341 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %340, i32 0, i32 0
  %342 = load i8*, i8** %341, align 8
  %343 = ptrtoint i8* %342 to i64
  %344 = call i32 (i8*, i64, ...) @ccid2_pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i64 %343)
  %345 = load %struct.sock*, %struct.sock** %3, align 8
  %346 = load %struct.ccid2_seq*, %struct.ccid2_seq** %9, align 8
  %347 = call i32 @ccid2_congestion_event(%struct.sock* %345, %struct.ccid2_seq* %346)
  %348 = load %struct.sock*, %struct.sock** %3, align 8
  %349 = call i32 @ccid2_hc_tx_dec_pipe(%struct.sock* %348)
  br label %350

350:                                              ; preds = %339, %334
  %351 = load %struct.ccid2_seq*, %struct.ccid2_seq** %9, align 8
  %352 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %353 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %352, i32 0, i32 5
  %354 = load %struct.ccid2_seq*, %struct.ccid2_seq** %353, align 8
  %355 = icmp eq %struct.ccid2_seq* %351, %354
  br i1 %355, label %356, label %357

356:                                              ; preds = %350
  br label %361

357:                                              ; preds = %350
  %358 = load %struct.ccid2_seq*, %struct.ccid2_seq** %9, align 8
  %359 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %358, i32 0, i32 3
  %360 = load %struct.ccid2_seq*, %struct.ccid2_seq** %359, align 8
  store %struct.ccid2_seq* %360, %struct.ccid2_seq** %9, align 8
  br label %334

361:                                              ; preds = %356
  %362 = load %struct.ccid2_seq*, %struct.ccid2_seq** %18, align 8
  %363 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %364 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %363, i32 0, i32 5
  store %struct.ccid2_seq* %362, %struct.ccid2_seq** %364, align 8
  br label %365

365:                                              ; preds = %361, %328
  br label %366

366:                                              ; preds = %382, %365
  %367 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %368 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %367, i32 0, i32 5
  %369 = load %struct.ccid2_seq*, %struct.ccid2_seq** %368, align 8
  %370 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %371 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %370, i32 0, i32 6
  %372 = load %struct.ccid2_seq*, %struct.ccid2_seq** %371, align 8
  %373 = icmp ne %struct.ccid2_seq* %369, %372
  br i1 %373, label %374, label %390

374:                                              ; preds = %366
  %375 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %376 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %375, i32 0, i32 5
  %377 = load %struct.ccid2_seq*, %struct.ccid2_seq** %376, align 8
  %378 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %377, i32 0, i32 1
  %379 = load i32, i32* %378, align 8
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %382, label %381

381:                                              ; preds = %374
  br label %390

382:                                              ; preds = %374
  %383 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %384 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %383, i32 0, i32 5
  %385 = load %struct.ccid2_seq*, %struct.ccid2_seq** %384, align 8
  %386 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %385, i32 0, i32 2
  %387 = load %struct.ccid2_seq*, %struct.ccid2_seq** %386, align 8
  %388 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %389 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %388, i32 0, i32 5
  store %struct.ccid2_seq* %387, %struct.ccid2_seq** %389, align 8
  br label %366

390:                                              ; preds = %381, %366
  %391 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %392 = call i32 @ccid2_hc_tx_check_sanity(%struct.ccid2_hc_tx_sock* %391)
  br label %393

393:                                              ; preds = %390, %96, %89
  ret void
}

declare dso_local %struct.dccp_sock* @dccp_sk(%struct.sock*) #1

declare dso_local %struct.ccid2_hc_tx_sock* @ccid2_hc_tx_sk(%struct.sock*) #1

declare dso_local i32 @ccid2_hc_tx_check_sanity(%struct.ccid2_hc_tx_sock*) #1

declare dso_local %struct.TYPE_2__* @DCCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @dccp_delta_seqno(i8*, i8*) #1

declare dso_local i64 @after48(i8*, i8*) #1

declare dso_local i32 @ccid2_change_l_ack_ratio(%struct.sock*, i32) #1

declare dso_local i64 @before48(i8*, i8*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @ccid2_ackvector(%struct.sock*, %struct.sk_buff*, i32, i8**, i8*) #1

declare dso_local i8* @SUB48(i8*, i64) #1

declare dso_local i32 @ccid2_pr_debug(i8*, i64, ...) #1

declare dso_local i64 @between48(i8*, i8*, i8*) #1

declare dso_local i32 @ccid2_congestion_event(%struct.sock*, %struct.ccid2_seq*) #1

declare dso_local i32 @ccid2_new_ack(%struct.sock*, %struct.ccid2_seq*, i32*) #1

declare dso_local i32 @ccid2_hc_tx_dec_pipe(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
