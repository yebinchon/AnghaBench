; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_master_request_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_master_request_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2net_msg = type { i64 }
%struct.dlm_ctxt = type { i64, i32, i32, i32 }
%struct.dlm_lock_resource = type { i32, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.dlm_master_request = type { i8*, i32, i32 }
%struct.dlm_master_list_entry = type { i64, i64, i32, i32, i32 }

@DLM_MASTER_RESP_MAYBE = common dso_local global i32 0, align 4
@DLM_MASTER_RESP_NO = common dso_local global i32 0, align 4
@DLM_LOCKID_NAME_MAX = common dso_local global i32 0, align 4
@DLM_IVBUFLEN = common dso_local global i32 0, align 4
@DLM_LOCK_RES_RECOVERING = common dso_local global i32 0, align 4
@DLM_LOCK_RES_MIGRATING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"returning DLM_MASTER_RESP_ERROR since res is being recovered/migrated\0A\00", align 1
@DLM_MASTER_RESP_ERROR = common dso_local global i32 0, align 4
@dlm_mle_cache = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"%s:%.*s: setting bit %u in refmap\0A\00", align 1
@DLM_MASTER_RESP_YES = common dso_local global i32 0, align 4
@DLM_LOCK_RES_OWNER_UNKNOWN = common dso_local global i64 0, align 8
@DLM_LOCK_RES_IN_PROGRESS = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"lock with no owner should be in-progress!\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"no mle found for this lock!\0A\00", align 1
@DLM_MLE_BLOCK = common dso_local global i64 0, align 8
@DLM_MLE_MIGRATION = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [54 x i8] c"node %u is master, but trying to migrate to node %u.\0A\00", align 1
@.str.5 = private unnamed_addr constant [68 x i8] c"no owner on lockres, but this node is trying to migrate it to %u?!\0A\00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [50 x i8] c"no lockres, but an mle with this node as master!\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"migration mle was found (%u->%u)\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"invalid response %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"bad lockres while trying to assert!\0A\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"%u is the owner of %.*s, cleaning everyone else\0A\00", align 1
@DLM_ASSERT_MASTER_MLE_CLEANUP = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [39 x i8] c"failed to dispatch assert master work\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_master_request_handler(%struct.o2net_msg* %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.o2net_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dlm_ctxt*, align 8
  %12 = alloca %struct.dlm_lock_resource*, align 8
  %13 = alloca %struct.dlm_master_request*, align 8
  %14 = alloca %struct.dlm_master_list_entry*, align 8
  %15 = alloca %struct.dlm_master_list_entry*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.o2net_msg* %0, %struct.o2net_msg** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %23 = load i32, i32* @DLM_MASTER_RESP_MAYBE, align 4
  store i32 %23, i32* %10, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = bitcast i8* %24 to %struct.dlm_ctxt*
  store %struct.dlm_ctxt* %25, %struct.dlm_ctxt** %11, align 8
  store %struct.dlm_lock_resource* null, %struct.dlm_lock_resource** %12, align 8
  %26 = load %struct.o2net_msg*, %struct.o2net_msg** %6, align 8
  %27 = getelementptr inbounds %struct.o2net_msg, %struct.o2net_msg* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.dlm_master_request*
  store %struct.dlm_master_request* %29, %struct.dlm_master_request** %13, align 8
  store %struct.dlm_master_list_entry* null, %struct.dlm_master_list_entry** %14, align 8
  store %struct.dlm_master_list_entry* null, %struct.dlm_master_list_entry** %15, align 8
  store i32 0, i32* %22, align 4
  %30 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %31 = call i32 @dlm_grab(%struct.dlm_ctxt* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %4
  %34 = load i32, i32* @DLM_MASTER_RESP_NO, align 4
  store i32 %34, i32* %5, align 4
  br label %460

35:                                               ; preds = %4
  %36 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %37 = call i32 @dlm_domain_fully_joined(%struct.dlm_ctxt* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* @DLM_MASTER_RESP_NO, align 4
  store i32 %40, i32* %10, align 4
  br label %402

41:                                               ; preds = %35
  %42 = load %struct.dlm_master_request*, %struct.dlm_master_request** %13, align 8
  %43 = getelementptr inbounds %struct.dlm_master_request, %struct.dlm_master_request* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %16, align 8
  %45 = load %struct.dlm_master_request*, %struct.dlm_master_request** %13, align 8
  %46 = getelementptr inbounds %struct.dlm_master_request, %struct.dlm_master_request* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %17, align 4
  %48 = load i8*, i8** %16, align 8
  %49 = load i32, i32* %17, align 4
  %50 = call i32 @dlm_lockid_hash(i8* %48, i32 %49)
  store i32 %50, i32* %18, align 4
  %51 = load i32, i32* %17, align 4
  %52 = load i32, i32* @DLM_LOCKID_NAME_MAX, align 4
  %53 = icmp ugt i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %41
  %55 = load i32, i32* @DLM_IVBUFLEN, align 4
  store i32 %55, i32* %10, align 4
  br label %402

56:                                               ; preds = %41
  br label %57

57:                                               ; preds = %314, %56
  %58 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %59 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %58, i32 0, i32 1
  %60 = call i32 @spin_lock(i32* %59)
  %61 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %62 = load i8*, i8** %16, align 8
  %63 = load i32, i32* %17, align 4
  %64 = load i32, i32* %18, align 4
  %65 = call %struct.dlm_lock_resource* @__dlm_lookup_lockres(%struct.dlm_ctxt* %61, i8* %62, i32 %63, i32 %64)
  store %struct.dlm_lock_resource* %65, %struct.dlm_lock_resource** %12, align 8
  %66 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %67 = icmp ne %struct.dlm_lock_resource* %66, null
  br i1 %67, label %68, label %283

68:                                               ; preds = %57
  %69 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %70 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %69, i32 0, i32 1
  %71 = call i32 @spin_unlock(i32* %70)
  %72 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %73 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %72, i32 0, i32 3
  %74 = call i32 @spin_lock(i32* %73)
  %75 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %76 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @DLM_LOCK_RES_RECOVERING, align 4
  %79 = load i32, i32* @DLM_LOCK_RES_MIGRATING, align 4
  %80 = or i32 %78, %79
  %81 = and i32 %77, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %68
  %84 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %85 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %84, i32 0, i32 3
  %86 = call i32 @spin_unlock(i32* %85)
  %87 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  %88 = load i32, i32* @DLM_MASTER_RESP_ERROR, align 4
  store i32 %88, i32* %10, align 4
  %89 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %14, align 8
  %90 = icmp ne %struct.dlm_master_list_entry* %89, null
  br i1 %90, label %91, label %95

91:                                               ; preds = %83
  %92 = load i32, i32* @dlm_mle_cache, align 4
  %93 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %14, align 8
  %94 = call i32 @kmem_cache_free(i32 %92, %struct.dlm_master_list_entry* %93)
  br label %95

95:                                               ; preds = %91, %83
  br label %402

96:                                               ; preds = %68
  %97 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %98 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %101 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %99, %102
  br i1 %103, label %104, label %130

104:                                              ; preds = %96
  %105 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %106 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %17, align 4
  %109 = load i8*, i8** %16, align 8
  %110 = load %struct.dlm_master_request*, %struct.dlm_master_request** %13, align 8
  %111 = getelementptr inbounds %struct.dlm_master_request, %struct.dlm_master_request* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %107, i32 %108, i8* %109, i32 %112)
  %114 = load %struct.dlm_master_request*, %struct.dlm_master_request** %13, align 8
  %115 = getelementptr inbounds %struct.dlm_master_request, %struct.dlm_master_request* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %118 = call i32 @dlm_lockres_set_refmap_bit(i32 %116, %struct.dlm_lock_resource* %117)
  %119 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %120 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %119, i32 0, i32 3
  %121 = call i32 @spin_unlock(i32* %120)
  %122 = load i32, i32* @DLM_MASTER_RESP_YES, align 4
  store i32 %122, i32* %10, align 4
  %123 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %14, align 8
  %124 = icmp ne %struct.dlm_master_list_entry* %123, null
  br i1 %124, label %125, label %129

125:                                              ; preds = %104
  %126 = load i32, i32* @dlm_mle_cache, align 4
  %127 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %14, align 8
  %128 = call i32 @kmem_cache_free(i32 %126, %struct.dlm_master_list_entry* %127)
  br label %129

129:                                              ; preds = %125, %104
  store i32 1, i32* %22, align 4
  br label %402

130:                                              ; preds = %96
  %131 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %132 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @DLM_LOCK_RES_OWNER_UNKNOWN, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %148

136:                                              ; preds = %130
  %137 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %138 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %137, i32 0, i32 3
  %139 = call i32 @spin_unlock(i32* %138)
  %140 = load i32, i32* @DLM_MASTER_RESP_NO, align 4
  store i32 %140, i32* %10, align 4
  %141 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %14, align 8
  %142 = icmp ne %struct.dlm_master_list_entry* %141, null
  br i1 %142, label %143, label %147

143:                                              ; preds = %136
  %144 = load i32, i32* @dlm_mle_cache, align 4
  %145 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %14, align 8
  %146 = call i32 @kmem_cache_free(i32 %144, %struct.dlm_master_list_entry* %145)
  br label %147

147:                                              ; preds = %143, %136
  br label %402

148:                                              ; preds = %130
  br label %149

149:                                              ; preds = %148
  %150 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %151 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @DLM_LOCK_RES_IN_PROGRESS, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %160, label %156

156:                                              ; preds = %149
  %157 = load i32, i32* @ML_ERROR, align 4
  %158 = call i32 (i32, i8*, ...) @mlog(i32 %157, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %159 = call i32 (...) @BUG()
  br label %160

160:                                              ; preds = %156, %149
  %161 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %162 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %161, i32 0, i32 2
  %163 = call i32 @spin_lock(i32* %162)
  %164 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %165 = load i8*, i8** %16, align 8
  %166 = load i32, i32* %17, align 4
  %167 = call i32 @dlm_find_mle(%struct.dlm_ctxt* %164, %struct.dlm_master_list_entry** %15, i8* %165, i32 %166)
  store i32 %167, i32* %19, align 4
  %168 = load i32, i32* %19, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %174, label %170

170:                                              ; preds = %160
  %171 = load i32, i32* @ML_ERROR, align 4
  %172 = call i32 (i32, i8*, ...) @mlog(i32 %171, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %173 = call i32 (...) @BUG()
  br label %174

174:                                              ; preds = %170, %160
  store i32 1, i32* %21, align 4
  %175 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %15, align 8
  %176 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %175, i32 0, i32 2
  %177 = call i32 @spin_lock(i32* %176)
  %178 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %15, align 8
  %179 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @DLM_MLE_BLOCK, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %185

183:                                              ; preds = %174
  %184 = load i32, i32* @DLM_MASTER_RESP_NO, align 4
  store i32 %184, i32* %10, align 4
  br label %253

185:                                              ; preds = %174
  %186 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %15, align 8
  %187 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @DLM_MLE_MIGRATION, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %216

191:                                              ; preds = %185
  %192 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %15, align 8
  %193 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %15, align 8
  %196 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 8
  %198 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i64 %194, i32 %197)
  %199 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %15, align 8
  %200 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %203 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = icmp eq i64 %201, %204
  br i1 %205, label %206, label %213

206:                                              ; preds = %191
  %207 = load i32, i32* @ML_ERROR, align 4
  %208 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %15, align 8
  %209 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %208, i32 0, i32 4
  %210 = load i32, i32* %209, align 8
  %211 = call i32 (i32, i8*, ...) @mlog(i32 %207, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.5, i64 0, i64 0), i32 %210)
  %212 = call i32 (...) @BUG()
  br label %215

213:                                              ; preds = %191
  %214 = load i32, i32* @DLM_MASTER_RESP_NO, align 4
  store i32 %214, i32* %10, align 4
  br label %215

215:                                              ; preds = %213, %206
  br label %252

216:                                              ; preds = %185
  %217 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %15, align 8
  %218 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @DLM_LOCK_RES_OWNER_UNKNOWN, align 8
  %221 = icmp ne i64 %219, %220
  br i1 %221, label %222, label %249

222:                                              ; preds = %216
  store i32 0, i32* %21, align 4
  %223 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %15, align 8
  %224 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %227 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = icmp eq i64 %225, %228
  br i1 %229, label %230, label %246

230:                                              ; preds = %222
  %231 = load i32, i32* @DLM_MASTER_RESP_YES, align 4
  store i32 %231, i32* %10, align 4
  store i32 1, i32* %22, align 4
  %232 = load %struct.dlm_master_request*, %struct.dlm_master_request** %13, align 8
  %233 = getelementptr inbounds %struct.dlm_master_request, %struct.dlm_master_request* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %236 = call i32 @dlm_lockres_set_refmap_bit(i32 %234, %struct.dlm_lock_resource* %235)
  %237 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %238 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* %17, align 4
  %241 = load i8*, i8** %16, align 8
  %242 = load %struct.dlm_master_request*, %struct.dlm_master_request** %13, align 8
  %243 = getelementptr inbounds %struct.dlm_master_request, %struct.dlm_master_request* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 4
  %245 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %239, i32 %240, i8* %241, i32 %244)
  br label %248

246:                                              ; preds = %222
  %247 = load i32, i32* @DLM_MASTER_RESP_NO, align 4
  store i32 %247, i32* %10, align 4
  br label %248

248:                                              ; preds = %246, %230
  br label %251

249:                                              ; preds = %216
  %250 = load i32, i32* @DLM_MASTER_RESP_MAYBE, align 4
  store i32 %250, i32* %10, align 4
  br label %251

251:                                              ; preds = %249, %248
  br label %252

252:                                              ; preds = %251, %215
  br label %253

253:                                              ; preds = %252, %183
  %254 = load i32, i32* %21, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %264

256:                                              ; preds = %253
  %257 = load %struct.dlm_master_request*, %struct.dlm_master_request** %13, align 8
  %258 = getelementptr inbounds %struct.dlm_master_request, %struct.dlm_master_request* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %15, align 8
  %261 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @set_bit(i32 %259, i32 %262)
  br label %264

264:                                              ; preds = %256, %253
  %265 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %15, align 8
  %266 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %265, i32 0, i32 2
  %267 = call i32 @spin_unlock(i32* %266)
  %268 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %269 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %268, i32 0, i32 2
  %270 = call i32 @spin_unlock(i32* %269)
  %271 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %272 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %271, i32 0, i32 3
  %273 = call i32 @spin_unlock(i32* %272)
  %274 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %15, align 8
  %275 = call i32 @dlm_put_mle(%struct.dlm_master_list_entry* %274)
  %276 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %14, align 8
  %277 = icmp ne %struct.dlm_master_list_entry* %276, null
  br i1 %277, label %278, label %282

278:                                              ; preds = %264
  %279 = load i32, i32* @dlm_mle_cache, align 4
  %280 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %14, align 8
  %281 = call i32 @kmem_cache_free(i32 %279, %struct.dlm_master_list_entry* %280)
  br label %282

282:                                              ; preds = %278, %264
  br label %402

283:                                              ; preds = %57
  %284 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %285 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %284, i32 0, i32 2
  %286 = call i32 @spin_lock(i32* %285)
  %287 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %288 = load i8*, i8** %16, align 8
  %289 = load i32, i32* %17, align 4
  %290 = call i32 @dlm_find_mle(%struct.dlm_ctxt* %287, %struct.dlm_master_list_entry** %15, i8* %288, i32 %289)
  store i32 %290, i32* %19, align 4
  %291 = load i32, i32* %19, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %333, label %293

293:                                              ; preds = %283
  %294 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %14, align 8
  %295 = icmp ne %struct.dlm_master_list_entry* %294, null
  br i1 %295, label %315, label %296

296:                                              ; preds = %293
  %297 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %298 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %297, i32 0, i32 2
  %299 = call i32 @spin_unlock(i32* %298)
  %300 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %301 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %300, i32 0, i32 1
  %302 = call i32 @spin_unlock(i32* %301)
  %303 = load i32, i32* @dlm_mle_cache, align 4
  %304 = load i32, i32* @GFP_NOFS, align 4
  %305 = call i64 @kmem_cache_alloc(i32 %303, i32 %304)
  %306 = inttoptr i64 %305 to %struct.dlm_master_list_entry*
  store %struct.dlm_master_list_entry* %306, %struct.dlm_master_list_entry** %14, align 8
  %307 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %14, align 8
  %308 = icmp ne %struct.dlm_master_list_entry* %307, null
  br i1 %308, label %314, label %309

309:                                              ; preds = %296
  %310 = load i32, i32* @DLM_MASTER_RESP_ERROR, align 4
  store i32 %310, i32* %10, align 4
  %311 = load i32, i32* @ENOMEM, align 4
  %312 = sub nsw i32 0, %311
  %313 = call i32 @mlog_errno(i32 %312)
  br label %402

314:                                              ; preds = %296
  br label %57

315:                                              ; preds = %293
  %316 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %14, align 8
  %317 = load i64, i64* @DLM_MLE_BLOCK, align 8
  %318 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %319 = load i8*, i8** %16, align 8
  %320 = load i32, i32* %17, align 4
  %321 = call i32 @dlm_init_mle(%struct.dlm_master_list_entry* %316, i64 %317, %struct.dlm_ctxt* %318, i32* null, i8* %319, i32 %320)
  %322 = load %struct.dlm_master_request*, %struct.dlm_master_request** %13, align 8
  %323 = getelementptr inbounds %struct.dlm_master_request, %struct.dlm_master_request* %322, i32 0, i32 2
  %324 = load i32, i32* %323, align 4
  %325 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %14, align 8
  %326 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %325, i32 0, i32 3
  %327 = load i32, i32* %326, align 4
  %328 = call i32 @set_bit(i32 %324, i32 %327)
  %329 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %330 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %14, align 8
  %331 = call i32 @__dlm_insert_mle(%struct.dlm_ctxt* %329, %struct.dlm_master_list_entry* %330)
  %332 = load i32, i32* @DLM_MASTER_RESP_NO, align 4
  store i32 %332, i32* %10, align 4
  br label %389

333:                                              ; preds = %283
  store i32 1, i32* %21, align 4
  %334 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %15, align 8
  %335 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %334, i32 0, i32 2
  %336 = call i32 @spin_lock(i32* %335)
  %337 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %15, align 8
  %338 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %337, i32 0, i32 1
  %339 = load i64, i64* %338, align 8
  %340 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %341 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %340, i32 0, i32 0
  %342 = load i64, i64* %341, align 8
  %343 = icmp eq i64 %339, %342
  br i1 %343, label %344, label %348

344:                                              ; preds = %333
  %345 = load i32, i32* @ML_ERROR, align 4
  %346 = call i32 (i32, i8*, ...) @mlog(i32 %345, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0))
  %347 = call i32 (...) @BUG()
  br label %348

348:                                              ; preds = %344, %333
  %349 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %15, align 8
  %350 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %349, i32 0, i32 0
  %351 = load i64, i64* %350, align 8
  %352 = load i64, i64* @DLM_MLE_BLOCK, align 8
  %353 = icmp eq i64 %351, %352
  br i1 %353, label %354, label %356

354:                                              ; preds = %348
  %355 = load i32, i32* @DLM_MASTER_RESP_NO, align 4
  store i32 %355, i32* %10, align 4
  br label %374

356:                                              ; preds = %348
  %357 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %15, align 8
  %358 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %357, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = load i64, i64* @DLM_MLE_MIGRATION, align 8
  %361 = icmp eq i64 %359, %360
  br i1 %361, label %362, label %371

362:                                              ; preds = %356
  %363 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %15, align 8
  %364 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %363, i32 0, i32 1
  %365 = load i64, i64* %364, align 8
  %366 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %15, align 8
  %367 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %366, i32 0, i32 4
  %368 = load i32, i32* %367, align 8
  %369 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i64 %365, i32 %368)
  %370 = load i32, i32* @DLM_MASTER_RESP_NO, align 4
  store i32 %370, i32* %10, align 4
  br label %373

371:                                              ; preds = %356
  %372 = load i32, i32* @DLM_MASTER_RESP_MAYBE, align 4
  store i32 %372, i32* %10, align 4
  br label %373

373:                                              ; preds = %371, %362
  br label %374

374:                                              ; preds = %373, %354
  %375 = load i32, i32* %21, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %385

377:                                              ; preds = %374
  %378 = load %struct.dlm_master_request*, %struct.dlm_master_request** %13, align 8
  %379 = getelementptr inbounds %struct.dlm_master_request, %struct.dlm_master_request* %378, i32 0, i32 2
  %380 = load i32, i32* %379, align 4
  %381 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %15, align 8
  %382 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %381, i32 0, i32 3
  %383 = load i32, i32* %382, align 4
  %384 = call i32 @set_bit(i32 %380, i32 %383)
  br label %385

385:                                              ; preds = %377, %374
  %386 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %15, align 8
  %387 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %386, i32 0, i32 2
  %388 = call i32 @spin_unlock(i32* %387)
  br label %389

389:                                              ; preds = %385, %315
  %390 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %391 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %390, i32 0, i32 2
  %392 = call i32 @spin_unlock(i32* %391)
  %393 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %394 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %393, i32 0, i32 1
  %395 = call i32 @spin_unlock(i32* %394)
  %396 = load i32, i32* %19, align 4
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %401

398:                                              ; preds = %389
  %399 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %15, align 8
  %400 = call i32 @dlm_put_mle(%struct.dlm_master_list_entry* %399)
  br label %401

401:                                              ; preds = %398, %389
  br label %402

402:                                              ; preds = %401, %309, %282, %147, %129, %95, %54, %39
  %403 = load i32, i32* %22, align 4
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %449

405:                                              ; preds = %402
  %406 = load i32, i32* %10, align 4
  %407 = load i32, i32* @DLM_MASTER_RESP_YES, align 4
  %408 = icmp ne i32 %406, %407
  br i1 %408, label %409, label %413

409:                                              ; preds = %405
  %410 = load i32, i32* @ML_ERROR, align 4
  %411 = load i32, i32* %10, align 4
  %412 = call i32 (i32, i8*, ...) @mlog(i32 %410, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %411)
  br label %413

413:                                              ; preds = %409, %405
  %414 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %415 = icmp ne %struct.dlm_lock_resource* %414, null
  br i1 %415, label %420, label %416

416:                                              ; preds = %413
  %417 = load i32, i32* @ML_ERROR, align 4
  %418 = call i32 (i32, i8*, ...) @mlog(i32 %417, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0))
  %419 = call i32 (...) @BUG()
  br label %420

420:                                              ; preds = %416, %413
  %421 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %422 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %421, i32 0, i32 0
  %423 = load i64, i64* %422, align 8
  %424 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %425 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %424, i32 0, i32 2
  %426 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %425, i32 0, i32 1
  %427 = load i32, i32* %426, align 4
  %428 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %429 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %428, i32 0, i32 2
  %430 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %429, i32 0, i32 0
  %431 = load i32, i32* %430, align 8
  %432 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0), i64 %423, i32 %427, i32 %431)
  %433 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %434 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %435 = load %struct.dlm_master_request*, %struct.dlm_master_request** %13, align 8
  %436 = getelementptr inbounds %struct.dlm_master_request, %struct.dlm_master_request* %435, i32 0, i32 2
  %437 = load i32, i32* %436, align 4
  %438 = load i32, i32* @DLM_ASSERT_MASTER_MLE_CLEANUP, align 4
  %439 = call i32 @dlm_dispatch_assert_master(%struct.dlm_ctxt* %433, %struct.dlm_lock_resource* %434, i32 0, i32 %437, i32 %438)
  store i32 %439, i32* %20, align 4
  %440 = load i32, i32* %20, align 4
  %441 = icmp slt i32 %440, 0
  br i1 %441, label %442, label %448

442:                                              ; preds = %420
  %443 = load i32, i32* @ML_ERROR, align 4
  %444 = call i32 (i32, i8*, ...) @mlog(i32 %443, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0))
  %445 = load i32, i32* @DLM_MASTER_RESP_ERROR, align 4
  store i32 %445, i32* %10, align 4
  %446 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %447 = call i32 @dlm_lockres_put(%struct.dlm_lock_resource* %446)
  br label %448

448:                                              ; preds = %442, %420
  br label %456

449:                                              ; preds = %402
  %450 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %451 = icmp ne %struct.dlm_lock_resource* %450, null
  br i1 %451, label %452, label %455

452:                                              ; preds = %449
  %453 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %454 = call i32 @dlm_lockres_put(%struct.dlm_lock_resource* %453)
  br label %455

455:                                              ; preds = %452, %449
  br label %456

456:                                              ; preds = %455, %448
  %457 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %458 = call i32 @dlm_put(%struct.dlm_ctxt* %457)
  %459 = load i32, i32* %10, align 4
  store i32 %459, i32* %5, align 4
  br label %460

460:                                              ; preds = %456, %33
  %461 = load i32, i32* %5, align 4
  ret i32 %461
}

declare dso_local i32 @dlm_grab(%struct.dlm_ctxt*) #1

declare dso_local i32 @dlm_domain_fully_joined(%struct.dlm_ctxt*) #1

declare dso_local i32 @dlm_lockid_hash(i8*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.dlm_lock_resource* @__dlm_lookup_lockres(%struct.dlm_ctxt*, i8*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.dlm_master_list_entry*) #1

declare dso_local i32 @dlm_lockres_set_refmap_bit(i32, %struct.dlm_lock_resource*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @dlm_find_mle(%struct.dlm_ctxt*, %struct.dlm_master_list_entry**, i8*, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @dlm_put_mle(%struct.dlm_master_list_entry*) #1

declare dso_local i64 @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @dlm_init_mle(%struct.dlm_master_list_entry*, i64, %struct.dlm_ctxt*, i32*, i8*, i32) #1

declare dso_local i32 @__dlm_insert_mle(%struct.dlm_ctxt*, %struct.dlm_master_list_entry*) #1

declare dso_local i32 @dlm_dispatch_assert_master(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, i32, i32, i32) #1

declare dso_local i32 @dlm_lockres_put(%struct.dlm_lock_resource*) #1

declare dso_local i32 @dlm_put(%struct.dlm_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
