; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_query_join_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_query_join_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2net_msg = type { i64 }
%struct.dlm_query_join_request = type { i32, %struct.TYPE_4__, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.dlm_query_join_packet = type { i8*, i32, i32 }
%struct.dlm_ctxt = type { i64, i64, i32, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@JOIN_DISALLOW = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"node %u wants to join domain %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"node %u is not in our live map yet\0A\00", align 1
@JOIN_OK_NO_MAP = common dso_local global i8* null, align 8
@dlm_domain_lock = common dso_local global i32 0, align 4
@O2NM_MAX_NODES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [63 x i8] c"disallow join as node %u does not have node %u in its nodemap\0A\00", align 1
@DLM_CTXT_LEAVING = common dso_local global i64 0, align 8
@DLM_CTXT_NEW = common dso_local global i64 0, align 8
@DLM_LOCK_RES_OWNER_UNKNOWN = common dso_local global i64 0, align 8
@DLM_RECO_STATE_ACTIVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"node %u trying to join, but recovery is ongoing.\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"node %u trying to join, but it still needs recovery.\0A\00", align 1
@.str.5 = private unnamed_addr constant [72 x i8] c"node %u trying to join, but it is still in the domain! needs recovery?\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"DLM\00", align 1
@JOIN_PROTOCOL_MISMATCH = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [3 x i8] c"fs\00", align 1
@JOIN_OK = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [20 x i8] c"We respond with %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.o2net_msg*, i32, i8*, i8**)* @dlm_query_join_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_query_join_handler(%struct.o2net_msg* %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca %struct.o2net_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.dlm_query_join_request*, align 8
  %10 = alloca %struct.dlm_query_join_packet, align 8
  %11 = alloca %struct.dlm_ctxt*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.o2net_msg* %0, %struct.o2net_msg** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8** %3, i8*** %8, align 8
  %15 = getelementptr inbounds %struct.dlm_query_join_packet, %struct.dlm_query_join_packet* %10, i32 0, i32 0
  %16 = load i8*, i8** @JOIN_DISALLOW, align 8
  store i8* %16, i8** %15, align 8
  %17 = getelementptr inbounds %struct.dlm_query_join_packet, %struct.dlm_query_join_packet* %10, i32 0, i32 1
  store i32 0, i32* %17, align 8
  %18 = getelementptr inbounds %struct.dlm_query_join_packet, %struct.dlm_query_join_packet* %10, i32 0, i32 2
  store i32 0, i32* %18, align 4
  store %struct.dlm_ctxt* null, %struct.dlm_ctxt** %11, align 8
  %19 = load %struct.o2net_msg*, %struct.o2net_msg** %5, align 8
  %20 = getelementptr inbounds %struct.o2net_msg, %struct.o2net_msg* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.dlm_query_join_request*
  store %struct.dlm_query_join_request* %22, %struct.dlm_query_join_request** %9, align 8
  %23 = load %struct.dlm_query_join_request*, %struct.dlm_query_join_request** %9, align 8
  %24 = getelementptr inbounds %struct.dlm_query_join_request, %struct.dlm_query_join_request* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.dlm_query_join_request*, %struct.dlm_query_join_request** %9, align 8
  %27 = getelementptr inbounds %struct.dlm_query_join_request, %struct.dlm_query_join_request* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28)
  %30 = load %struct.dlm_query_join_request*, %struct.dlm_query_join_request** %9, align 8
  %31 = getelementptr inbounds %struct.dlm_query_join_request, %struct.dlm_query_join_request* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @o2hb_check_node_heartbeating(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %4
  %36 = load %struct.dlm_query_join_request*, %struct.dlm_query_join_request** %9, align 8
  %37 = getelementptr inbounds %struct.dlm_query_join_request, %struct.dlm_query_join_request* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i8*, i8** @JOIN_DISALLOW, align 8
  %41 = getelementptr inbounds %struct.dlm_query_join_packet, %struct.dlm_query_join_packet* %10, i32 0, i32 0
  store i8* %40, i8** %41, align 8
  br label %217

42:                                               ; preds = %4
  %43 = load i8*, i8** @JOIN_OK_NO_MAP, align 8
  %44 = getelementptr inbounds %struct.dlm_query_join_packet, %struct.dlm_query_join_packet* %10, i32 0, i32 0
  store i8* %43, i8** %44, align 8
  %45 = call i32 @spin_lock(i32* @dlm_domain_lock)
  %46 = load %struct.dlm_query_join_request*, %struct.dlm_query_join_request** %9, align 8
  %47 = getelementptr inbounds %struct.dlm_query_join_request, %struct.dlm_query_join_request* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.dlm_query_join_request*, %struct.dlm_query_join_request** %9, align 8
  %50 = getelementptr inbounds %struct.dlm_query_join_request, %struct.dlm_query_join_request* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.dlm_ctxt* @__dlm_lookup_domain_full(i32 %48, i32 %51)
  store %struct.dlm_ctxt* %52, %struct.dlm_ctxt** %11, align 8
  %53 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %54 = icmp ne %struct.dlm_ctxt* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %42
  br label %215

56:                                               ; preds = %42
  store i64 0, i64* %13, align 8
  br label %57

57:                                               ; preds = %85, %56
  %58 = load i64, i64* %13, align 8
  %59 = load i64, i64* @O2NM_MAX_NODES, align 8
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %61, label %88

61:                                               ; preds = %57
  %62 = load i64, i64* %13, align 8
  %63 = trunc i64 %62 to i32
  %64 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %65 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @test_bit(i32 %63, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %61
  %70 = load i64, i64* %13, align 8
  %71 = load %struct.dlm_query_join_request*, %struct.dlm_query_join_request** %9, align 8
  %72 = getelementptr inbounds %struct.dlm_query_join_request, %struct.dlm_query_join_request* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @byte_test_bit(i64 %70, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %69
  %77 = load %struct.dlm_query_join_request*, %struct.dlm_query_join_request** %9, align 8
  %78 = getelementptr inbounds %struct.dlm_query_join_request, %struct.dlm_query_join_request* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i64, i64* %13, align 8
  %81 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i32 %79, i64 %80)
  %82 = load i8*, i8** @JOIN_DISALLOW, align 8
  %83 = getelementptr inbounds %struct.dlm_query_join_packet, %struct.dlm_query_join_packet* %10, i32 0, i32 0
  store i8* %82, i8** %83, align 8
  br label %215

84:                                               ; preds = %69
  br label %85

85:                                               ; preds = %84, %61
  %86 = load i64, i64* %13, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* %13, align 8
  br label %57

88:                                               ; preds = %57
  %89 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %90 = icmp ne %struct.dlm_ctxt* %89, null
  br i1 %90, label %91, label %214

91:                                               ; preds = %88
  %92 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %93 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @DLM_CTXT_LEAVING, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %214

97:                                               ; preds = %91
  %98 = load %struct.dlm_query_join_request*, %struct.dlm_query_join_request** %9, align 8
  %99 = getelementptr inbounds %struct.dlm_query_join_request, %struct.dlm_query_join_request* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %14, align 4
  %101 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %102 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %101, i32 0, i32 2
  %103 = call i32 @spin_lock(i32* %102)
  %104 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %105 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @DLM_CTXT_NEW, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %118

109:                                              ; preds = %97
  %110 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %111 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @DLM_LOCK_RES_OWNER_UNKNOWN, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %109
  %116 = load i8*, i8** @JOIN_OK_NO_MAP, align 8
  %117 = getelementptr inbounds %struct.dlm_query_join_packet, %struct.dlm_query_join_packet* %10, i32 0, i32 0
  store i8* %116, i8** %117, align 8
  br label %210

118:                                              ; preds = %109, %97
  %119 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %120 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @DLM_LOCK_RES_OWNER_UNKNOWN, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %118
  %125 = load i8*, i8** @JOIN_DISALLOW, align 8
  %126 = getelementptr inbounds %struct.dlm_query_join_packet, %struct.dlm_query_join_packet* %10, i32 0, i32 0
  store i8* %125, i8** %126, align 8
  br label %209

127:                                              ; preds = %118
  %128 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %129 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %128, i32 0, i32 7
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @DLM_RECO_STATE_ACTIVE, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %127
  %136 = load i32, i32* %14, align 4
  %137 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %136)
  %138 = load i8*, i8** @JOIN_DISALLOW, align 8
  %139 = getelementptr inbounds %struct.dlm_query_join_packet, %struct.dlm_query_join_packet* %10, i32 0, i32 0
  store i8* %138, i8** %139, align 8
  br label %208

140:                                              ; preds = %127
  %141 = load i32, i32* %14, align 4
  %142 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %143 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %142, i32 0, i32 6
  %144 = load i32, i32* %143, align 8
  %145 = call i64 @test_bit(i32 %141, i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %140
  %148 = load i32, i32* %14, align 4
  %149 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 %148)
  %150 = load i8*, i8** @JOIN_DISALLOW, align 8
  %151 = getelementptr inbounds %struct.dlm_query_join_packet, %struct.dlm_query_join_packet* %10, i32 0, i32 0
  store i8* %150, i8** %151, align 8
  br label %207

152:                                              ; preds = %140
  %153 = load i32, i32* %14, align 4
  %154 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %155 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 4
  %157 = call i64 @test_bit(i32 %153, i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %152
  %160 = load i32, i32* %14, align 4
  %161 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.5, i64 0, i64 0), i32 %160)
  %162 = load i8*, i8** @JOIN_DISALLOW, align 8
  %163 = getelementptr inbounds %struct.dlm_query_join_packet, %struct.dlm_query_join_packet* %10, i32 0, i32 0
  store i8* %162, i8** %163, align 8
  br label %206

164:                                              ; preds = %152
  %165 = load i32, i32* %14, align 4
  %166 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %167 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %166, i32 0, i32 4
  %168 = load %struct.dlm_query_join_request*, %struct.dlm_query_join_request** %9, align 8
  %169 = getelementptr inbounds %struct.dlm_query_join_request, %struct.dlm_query_join_request* %168, i32 0, i32 2
  %170 = call i64 @dlm_query_join_proto_check(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %165, i32* %167, %struct.TYPE_4__* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %164
  %173 = load i8*, i8** @JOIN_PROTOCOL_MISMATCH, align 8
  %174 = getelementptr inbounds %struct.dlm_query_join_packet, %struct.dlm_query_join_packet* %10, i32 0, i32 0
  store i8* %173, i8** %174, align 8
  br label %205

175:                                              ; preds = %164
  %176 = load i32, i32* %14, align 4
  %177 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %178 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %177, i32 0, i32 3
  %179 = load %struct.dlm_query_join_request*, %struct.dlm_query_join_request** %9, align 8
  %180 = getelementptr inbounds %struct.dlm_query_join_request, %struct.dlm_query_join_request* %179, i32 0, i32 1
  %181 = call i64 @dlm_query_join_proto_check(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %176, i32* %178, %struct.TYPE_4__* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %175
  %184 = load i8*, i8** @JOIN_PROTOCOL_MISMATCH, align 8
  %185 = getelementptr inbounds %struct.dlm_query_join_packet, %struct.dlm_query_join_packet* %10, i32 0, i32 0
  store i8* %184, i8** %185, align 8
  br label %204

186:                                              ; preds = %175
  %187 = load %struct.dlm_query_join_request*, %struct.dlm_query_join_request** %9, align 8
  %188 = getelementptr inbounds %struct.dlm_query_join_request, %struct.dlm_query_join_request* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = getelementptr inbounds %struct.dlm_query_join_packet, %struct.dlm_query_join_packet* %10, i32 0, i32 2
  store i32 %190, i32* %191, align 4
  %192 = load %struct.dlm_query_join_request*, %struct.dlm_query_join_request** %9, align 8
  %193 = getelementptr inbounds %struct.dlm_query_join_request, %struct.dlm_query_join_request* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = getelementptr inbounds %struct.dlm_query_join_packet, %struct.dlm_query_join_packet* %10, i32 0, i32 1
  store i32 %195, i32* %196, align 8
  %197 = load i8*, i8** @JOIN_OK, align 8
  %198 = getelementptr inbounds %struct.dlm_query_join_packet, %struct.dlm_query_join_packet* %10, i32 0, i32 0
  store i8* %197, i8** %198, align 8
  %199 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %200 = load %struct.dlm_query_join_request*, %struct.dlm_query_join_request** %9, align 8
  %201 = getelementptr inbounds %struct.dlm_query_join_request, %struct.dlm_query_join_request* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @__dlm_set_joining_node(%struct.dlm_ctxt* %199, i32 %202)
  br label %204

204:                                              ; preds = %186, %183
  br label %205

205:                                              ; preds = %204, %172
  br label %206

206:                                              ; preds = %205, %159
  br label %207

207:                                              ; preds = %206, %147
  br label %208

208:                                              ; preds = %207, %135
  br label %209

209:                                              ; preds = %208, %124
  br label %210

210:                                              ; preds = %209, %115
  %211 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %212 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %211, i32 0, i32 2
  %213 = call i32 @spin_unlock(i32* %212)
  br label %214

214:                                              ; preds = %210, %91, %88
  br label %215

215:                                              ; preds = %214, %76, %55
  %216 = call i32 @spin_unlock(i32* @dlm_domain_lock)
  br label %217

217:                                              ; preds = %215, %35
  %218 = getelementptr inbounds %struct.dlm_query_join_packet, %struct.dlm_query_join_packet* %10, i32 0, i32 0
  %219 = load i8*, i8** %218, align 8
  %220 = ptrtoint i8* %219 to i32
  %221 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %220)
  %222 = call i32 @dlm_query_join_packet_to_wire(%struct.dlm_query_join_packet* %10, i32* %12)
  %223 = load i32, i32* %12, align 4
  ret i32 %223
}

declare dso_local i32 @mlog(i32, i8*, i32, ...) #1

declare dso_local i32 @o2hb_check_node_heartbeating(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.dlm_ctxt* @__dlm_lookup_domain_full(i32, i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @byte_test_bit(i64, i32) #1

declare dso_local i64 @dlm_query_join_proto_check(i8*, i32, i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @__dlm_set_joining_node(%struct.dlm_ctxt*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dlm_query_join_packet_to_wire(%struct.dlm_query_join_packet*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
