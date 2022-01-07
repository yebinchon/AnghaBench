; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_assert_master_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_assert_master_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2net_msg = type { i64 }
%struct.dlm_ctxt = type { i32, i32, i32, i32 }
%struct.dlm_master_list_entry = type { i64, i32, i32, i64, %struct.TYPE_4__, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.dlm_assert_master = type { i8*, i32, i32, i32 }
%struct.dlm_lock_resource = type { i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@DLM_LOCKID_NAME_MAX = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Invalid name length!\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"assert_master with flags: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"just got an assert_master from %u, but no MLE for it! (%.*s)\0A\00", align 1
@O2NM_MAX_NODES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [59 x i8] c"no bits set in the maybe_map, but %u is asserting! (%.*s)\0A\00", align 1
@DLM_ASSERT_MASTER_MLE_CLEANUP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"master %u was found, %u should back off\0A\00", align 1
@.str.5 = private unnamed_addr constant [82 x i8] c"%u is the lowest node, %u is asserting. (%.*s)  %u must have begun after %u won.\0A\00", align 1
@DLM_MLE_MIGRATION = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [51 x i8] c"%s:%.*s: got cleanup assert from %u for migration\0A\00", align 1
@DLM_ASSERT_MASTER_FINISH_MIGRATION = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [63 x i8] c"%s:%.*s: got unrelated assert from %u for migration, ignoring\0A\00", align 1
@DLM_LOCK_RES_RECOVERING = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [38 x i8] c"%u asserting but %.*s is RECOVERING!\0A\00", align 1
@DLM_LOCK_RES_OWNER_UNKNOWN = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [62 x i8] c"DIE! Mastery assert from %u, but current owner is %u! (%.*s)\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"owner %u re-asserting on lock %.*s\0A\00", align 1
@.str.11 = private unnamed_addr constant [61 x i8] c"got assert_master from node %u, but %u is the owner! (%.*s)\0A\00", align 1
@DLM_LOCK_RES_IN_PROGRESS = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [74 x i8] c"got assert from %u, but lock with no owner should be in-progress! (%.*s)\0A\00", align 1
@.str.13 = private unnamed_addr constant [72 x i8] c"got assert from %u, but new master is %u, and old master was %u (%.*s)\0A\00", align 1
@DLM_MLE_BLOCK = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [56 x i8] c"finishing off migration of lockres %.*s, from %u to %u\0A\00", align 1
@DLM_LOCK_RES_MIGRATING = common dso_local global i32 0, align 4
@DLM_LOCK_RES_DIRTY = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [93 x i8] c"%s:%.*s: got assert master from %u that will mess up this node, refs=%d, extra=%d, inuse=%d\0A\00", align 1
@.str.16 = private unnamed_addr constant [63 x i8] c"assert_master from %u, but current owner is %u (%.*s), no mle\0A\00", align 1
@DLM_LOCK_RES_SETREF_INPROG = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [33 x i8] c"need to tell master to reassert\0A\00", align 1
@DLM_ASSERT_RESPONSE_REASSERT = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [83 x i8] c"strange, got assert from %u, MASTER mle present here for %s:%.*s, but no lockres!\0A\00", align 1
@DLM_ASSERT_RESPONSE_MASTERY_REF = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [41 x i8] c"%s:%.*s: got assert from %u, need a ref\0A\00", align 1
@.str.20 = private unnamed_addr constant [123 x i8] c"Bad message received from another node.  Dumping state and killing the other node now!  This node is OK and can continue.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_assert_master_handler(%struct.o2net_msg* %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.o2net_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.dlm_ctxt*, align 8
  %11 = alloca %struct.dlm_master_list_entry*, align 8
  %12 = alloca %struct.dlm_assert_master*, align 8
  %13 = alloca %struct.dlm_lock_resource*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.o2net_msg* %0, %struct.o2net_msg** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = bitcast i8* %27 to %struct.dlm_ctxt*
  store %struct.dlm_ctxt* %28, %struct.dlm_ctxt** %10, align 8
  store %struct.dlm_master_list_entry* null, %struct.dlm_master_list_entry** %11, align 8
  %29 = load %struct.o2net_msg*, %struct.o2net_msg** %6, align 8
  %30 = getelementptr inbounds %struct.o2net_msg, %struct.o2net_msg* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.dlm_assert_master*
  store %struct.dlm_assert_master* %32, %struct.dlm_assert_master** %12, align 8
  store %struct.dlm_lock_resource* null, %struct.dlm_lock_resource** %13, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %33 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %34 = call i32 @dlm_grab(%struct.dlm_ctxt* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %637

37:                                               ; preds = %4
  %38 = load %struct.dlm_assert_master*, %struct.dlm_assert_master** %12, align 8
  %39 = getelementptr inbounds %struct.dlm_assert_master, %struct.dlm_assert_master* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %14, align 8
  %41 = load %struct.dlm_assert_master*, %struct.dlm_assert_master** %12, align 8
  %42 = getelementptr inbounds %struct.dlm_assert_master, %struct.dlm_assert_master* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %15, align 4
  %44 = load i8*, i8** %14, align 8
  %45 = load i32, i32* %15, align 4
  %46 = call i32 @dlm_lockid_hash(i8* %44, i32 %45)
  store i32 %46, i32* %16, align 4
  %47 = load %struct.dlm_assert_master*, %struct.dlm_assert_master** %12, align 8
  %48 = getelementptr inbounds %struct.dlm_assert_master, %struct.dlm_assert_master* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @be32_to_cpu(i32 %49)
  store i32 %50, i32* %17, align 4
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* @DLM_LOCKID_NAME_MAX, align 4
  %53 = icmp ugt i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %37
  %55 = load i32, i32* @ML_ERROR, align 4
  %56 = call i32 (i32, i8*, ...) @mlog(i32 %55, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %559

57:                                               ; preds = %37
  %58 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %59 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %58, i32 0, i32 1
  %60 = call i32 @spin_lock(i32* %59)
  %61 = load i32, i32* %17, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i32, i32* %17, align 4
  %65 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %63, %57
  %67 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %68 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %67, i32 0, i32 3
  %69 = call i32 @spin_lock(i32* %68)
  %70 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %71 = load i8*, i8** %14, align 8
  %72 = load i32, i32* %15, align 4
  %73 = call i32 @dlm_find_mle(%struct.dlm_ctxt* %70, %struct.dlm_master_list_entry** %11, i8* %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %66
  %76 = load %struct.dlm_assert_master*, %struct.dlm_assert_master** %12, align 8
  %77 = getelementptr inbounds %struct.dlm_assert_master, %struct.dlm_assert_master* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %15, align 4
  %80 = load i8*, i8** %14, align 8
  %81 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i32 %78, i32 %79, i8* %80)
  br label %176

82:                                               ; preds = %66
  %83 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %11, align 8
  %84 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %83, i32 0, i32 9
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @O2NM_MAX_NODES, align 4
  %87 = call i32 @find_next_bit(i32 %85, i32 %86, i32 0)
  store i32 %87, i32* %21, align 4
  %88 = load i32, i32* %21, align 4
  %89 = load i32, i32* @O2NM_MAX_NODES, align 4
  %90 = icmp sge i32 %88, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %82
  %92 = load %struct.dlm_assert_master*, %struct.dlm_assert_master** %12, align 8
  %93 = getelementptr inbounds %struct.dlm_assert_master, %struct.dlm_assert_master* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %15, align 4
  %96 = load i8*, i8** %14, align 8
  %97 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i32 %94, i32 %95, i8* %96)
  br label %129

98:                                               ; preds = %82
  %99 = load i32, i32* %21, align 4
  %100 = load %struct.dlm_assert_master*, %struct.dlm_assert_master** %12, align 8
  %101 = getelementptr inbounds %struct.dlm_assert_master, %struct.dlm_assert_master* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %99, %102
  br i1 %103, label %104, label %128

104:                                              ; preds = %98
  %105 = load i32, i32* %17, align 4
  %106 = load i32, i32* @DLM_ASSERT_MASTER_MLE_CLEANUP, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %104
  %110 = load %struct.dlm_assert_master*, %struct.dlm_assert_master** %12, align 8
  %111 = getelementptr inbounds %struct.dlm_assert_master, %struct.dlm_assert_master* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %21, align 4
  %114 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %112, i32 %113)
  br label %127

115:                                              ; preds = %104
  %116 = load i32, i32* %21, align 4
  %117 = load %struct.dlm_assert_master*, %struct.dlm_assert_master** %12, align 8
  %118 = getelementptr inbounds %struct.dlm_assert_master, %struct.dlm_assert_master* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %15, align 4
  %121 = load i8*, i8** %14, align 8
  %122 = load i32, i32* %21, align 4
  %123 = load %struct.dlm_assert_master*, %struct.dlm_assert_master** %12, align 8
  %124 = getelementptr inbounds %struct.dlm_assert_master, %struct.dlm_assert_master* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.5, i64 0, i64 0), i32 %116, i32 %119, i32 %120, i8* %121, i32 %122, i32 %125)
  br label %127

127:                                              ; preds = %115, %109
  br label %128

128:                                              ; preds = %127, %98
  br label %129

129:                                              ; preds = %128, %91
  %130 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %11, align 8
  %131 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @DLM_MLE_MIGRATION, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %175

135:                                              ; preds = %129
  %136 = load i32, i32* %17, align 4
  %137 = load i32, i32* @DLM_ASSERT_MASTER_MLE_CLEANUP, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %150

140:                                              ; preds = %135
  %141 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %142 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %15, align 4
  %145 = load i8*, i8** %14, align 8
  %146 = load %struct.dlm_assert_master*, %struct.dlm_assert_master** %12, align 8
  %147 = getelementptr inbounds %struct.dlm_assert_master, %struct.dlm_assert_master* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i32 %143, i32 %144, i8* %145, i32 %148)
  br label %174

150:                                              ; preds = %135
  %151 = load i32, i32* %17, align 4
  %152 = load i32, i32* @DLM_ASSERT_MASTER_FINISH_MIGRATION, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %173, label %155

155:                                              ; preds = %150
  %156 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %157 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %15, align 4
  %160 = load i8*, i8** %14, align 8
  %161 = load %struct.dlm_assert_master*, %struct.dlm_assert_master** %12, align 8
  %162 = getelementptr inbounds %struct.dlm_assert_master, %struct.dlm_assert_master* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i64 0, i64 0), i32 %158, i32 %159, i8* %160, i32 %163)
  %165 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %11, align 8
  %166 = call i32 @__dlm_put_mle(%struct.dlm_master_list_entry* %165)
  %167 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %168 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %167, i32 0, i32 3
  %169 = call i32 @spin_unlock(i32* %168)
  %170 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %171 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %170, i32 0, i32 1
  %172 = call i32 @spin_unlock(i32* %171)
  br label %559

173:                                              ; preds = %150
  br label %174

174:                                              ; preds = %173, %140
  br label %175

175:                                              ; preds = %174, %129
  br label %176

176:                                              ; preds = %175, %75
  %177 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %178 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %177, i32 0, i32 3
  %179 = call i32 @spin_unlock(i32* %178)
  %180 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %181 = load i8*, i8** %14, align 8
  %182 = load i32, i32* %15, align 4
  %183 = load i32, i32* %16, align 4
  %184 = call %struct.dlm_lock_resource* @__dlm_lookup_lockres(%struct.dlm_ctxt* %180, i8* %181, i32 %182, i32 %183)
  store %struct.dlm_lock_resource* %184, %struct.dlm_lock_resource** %13, align 8
  %185 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %13, align 8
  %186 = icmp ne %struct.dlm_lock_resource* %185, null
  br i1 %186, label %187, label %320

187:                                              ; preds = %176
  %188 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %13, align 8
  %189 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %188, i32 0, i32 2
  %190 = call i32 @spin_lock(i32* %189)
  %191 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %13, align 8
  %192 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @DLM_LOCK_RES_RECOVERING, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %205

197:                                              ; preds = %187
  %198 = load i32, i32* @ML_ERROR, align 4
  %199 = load %struct.dlm_assert_master*, %struct.dlm_assert_master** %12, align 8
  %200 = getelementptr inbounds %struct.dlm_assert_master, %struct.dlm_assert_master* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %15, align 4
  %203 = load i8*, i8** %14, align 8
  %204 = call i32 (i32, i8*, ...) @mlog(i32 %198, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i32 %201, i32 %202, i8* %203)
  br label %619

205:                                              ; preds = %187
  %206 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %11, align 8
  %207 = icmp ne %struct.dlm_master_list_entry* %206, null
  br i1 %207, label %237, label %208

208:                                              ; preds = %205
  %209 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %13, align 8
  %210 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @DLM_LOCK_RES_OWNER_UNKNOWN, align 4
  %213 = icmp ne i32 %211, %212
  br i1 %213, label %214, label %236

214:                                              ; preds = %208
  %215 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %13, align 8
  %216 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.dlm_assert_master*, %struct.dlm_assert_master** %12, align 8
  %219 = getelementptr inbounds %struct.dlm_assert_master, %struct.dlm_assert_master* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 4
  %221 = icmp ne i32 %217, %220
  br i1 %221, label %222, label %236

222:                                              ; preds = %214
  %223 = load i32, i32* @ML_ERROR, align 4
  %224 = load %struct.dlm_assert_master*, %struct.dlm_assert_master** %12, align 8
  %225 = getelementptr inbounds %struct.dlm_assert_master, %struct.dlm_assert_master* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %13, align 8
  %228 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* %15, align 4
  %231 = load i8*, i8** %14, align 8
  %232 = call i32 (i32, i8*, ...) @mlog(i32 %223, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.9, i64 0, i64 0), i32 %226, i32 %229, i32 %230, i8* %231)
  %233 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %13, align 8
  %234 = call i32 @__dlm_print_one_lock_resource(%struct.dlm_lock_resource* %233)
  %235 = call i32 (...) @BUG()
  br label %236

236:                                              ; preds = %222, %214, %208
  br label %315

237:                                              ; preds = %205
  %238 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %11, align 8
  %239 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @DLM_MLE_MIGRATION, align 8
  %242 = icmp ne i64 %240, %241
  br i1 %242, label %243, label %291

243:                                              ; preds = %237
  %244 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %13, align 8
  %245 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @DLM_LOCK_RES_OWNER_UNKNOWN, align 4
  %248 = icmp ne i32 %246, %247
  br i1 %248, label %249, label %275

249:                                              ; preds = %243
  %250 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %13, align 8
  %251 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.dlm_assert_master*, %struct.dlm_assert_master** %12, align 8
  %254 = getelementptr inbounds %struct.dlm_assert_master, %struct.dlm_assert_master* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 4
  %256 = icmp eq i32 %252, %255
  br i1 %256, label %257, label %264

257:                                              ; preds = %249
  %258 = load %struct.dlm_assert_master*, %struct.dlm_assert_master** %12, align 8
  %259 = getelementptr inbounds %struct.dlm_assert_master, %struct.dlm_assert_master* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* %15, align 4
  %262 = load i8*, i8** %14, align 8
  %263 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i32 %260, i32 %261, i8* %262)
  br label %316

264:                                              ; preds = %249
  %265 = load i32, i32* @ML_ERROR, align 4
  %266 = load %struct.dlm_assert_master*, %struct.dlm_assert_master** %12, align 8
  %267 = getelementptr inbounds %struct.dlm_assert_master, %struct.dlm_assert_master* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %13, align 8
  %270 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* %15, align 4
  %273 = load i8*, i8** %14, align 8
  %274 = call i32 (i32, i8*, ...) @mlog(i32 %265, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.11, i64 0, i64 0), i32 %268, i32 %271, i32 %272, i8* %273)
  br label %619

275:                                              ; preds = %243
  %276 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %13, align 8
  %277 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* @DLM_LOCK_RES_IN_PROGRESS, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %290, label %282

282:                                              ; preds = %275
  %283 = load i32, i32* @ML_ERROR, align 4
  %284 = load %struct.dlm_assert_master*, %struct.dlm_assert_master** %12, align 8
  %285 = getelementptr inbounds %struct.dlm_assert_master, %struct.dlm_assert_master* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* %15, align 4
  %288 = load i8*, i8** %14, align 8
  %289 = call i32 (i32, i8*, ...) @mlog(i32 %283, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.12, i64 0, i64 0), i32 %286, i32 %287, i8* %288)
  br label %619

290:                                              ; preds = %275
  br label %314

291:                                              ; preds = %237
  %292 = load %struct.dlm_assert_master*, %struct.dlm_assert_master** %12, align 8
  %293 = getelementptr inbounds %struct.dlm_assert_master, %struct.dlm_assert_master* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 4
  %295 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %11, align 8
  %296 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 8
  %298 = icmp ne i32 %294, %297
  br i1 %298, label %299, label %313

299:                                              ; preds = %291
  %300 = load i32, i32* @ML_ERROR, align 4
  %301 = load %struct.dlm_assert_master*, %struct.dlm_assert_master** %12, align 8
  %302 = getelementptr inbounds %struct.dlm_assert_master, %struct.dlm_assert_master* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 4
  %304 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %11, align 8
  %305 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 8
  %307 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %11, align 8
  %308 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %307, i32 0, i32 2
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* %15, align 4
  %311 = load i8*, i8** %14, align 8
  %312 = call i32 (i32, i8*, ...) @mlog(i32 %300, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.13, i64 0, i64 0), i32 %303, i32 %306, i32 %309, i32 %310, i8* %311)
  br label %619

313:                                              ; preds = %291
  br label %314

314:                                              ; preds = %313, %290
  br label %315

315:                                              ; preds = %314, %236
  br label %316

316:                                              ; preds = %315, %257
  %317 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %13, align 8
  %318 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %317, i32 0, i32 2
  %319 = call i32 @spin_unlock(i32* %318)
  br label %320

320:                                              ; preds = %316, %176
  %321 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %322 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %321, i32 0, i32 1
  %323 = call i32 @spin_unlock(i32* %322)
  %324 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %11, align 8
  %325 = icmp ne %struct.dlm_master_list_entry* %324, null
  br i1 %325, label %326, label %535

326:                                              ; preds = %320
  store i32 0, i32* %22, align 4
  store i32 -1, i32* %23, align 4
  store i32 0, i32* %25, align 4
  %327 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %11, align 8
  %328 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %327, i32 0, i32 5
  %329 = call i32 @spin_lock(i32* %328)
  %330 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %11, align 8
  %331 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %330, i32 0, i32 0
  %332 = load i64, i64* %331, align 8
  %333 = load i64, i64* @DLM_MLE_BLOCK, align 8
  %334 = icmp eq i64 %332, %333
  br i1 %334, label %341, label %335

335:                                              ; preds = %326
  %336 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %11, align 8
  %337 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %336, i32 0, i32 0
  %338 = load i64, i64* %337, align 8
  %339 = load i64, i64* @DLM_MLE_MIGRATION, align 8
  %340 = icmp eq i64 %338, %339
  br i1 %340, label %341, label %342

341:                                              ; preds = %335, %326
  store i32 1, i32* %22, align 4
  br label %368

342:                                              ; preds = %335
  br label %343

343:                                              ; preds = %366, %342
  %344 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %11, align 8
  %345 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %344, i32 0, i32 8
  %346 = load i32, i32* %345, align 8
  %347 = load i32, i32* @O2NM_MAX_NODES, align 4
  %348 = load i32, i32* %23, align 4
  %349 = add nsw i32 %348, 1
  %350 = call i32 @find_next_bit(i32 %346, i32 %347, i32 %349)
  store i32 %350, i32* %23, align 4
  %351 = load i32, i32* @O2NM_MAX_NODES, align 4
  %352 = icmp slt i32 %350, %351
  br i1 %352, label %353, label %367

353:                                              ; preds = %343
  %354 = load i32, i32* %23, align 4
  %355 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %356 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 4
  %358 = icmp ne i32 %354, %357
  br i1 %358, label %359, label %366

359:                                              ; preds = %353
  %360 = load i32, i32* %23, align 4
  %361 = load %struct.dlm_assert_master*, %struct.dlm_assert_master** %12, align 8
  %362 = getelementptr inbounds %struct.dlm_assert_master, %struct.dlm_assert_master* %361, i32 0, i32 2
  %363 = load i32, i32* %362, align 4
  %364 = icmp ne i32 %360, %363
  br i1 %364, label %365, label %366

365:                                              ; preds = %359
  store i32 1, i32* %18, align 4
  br label %366

366:                                              ; preds = %365, %359, %353
  br label %343

367:                                              ; preds = %343
  br label %368

368:                                              ; preds = %367, %341
  %369 = load %struct.dlm_assert_master*, %struct.dlm_assert_master** %12, align 8
  %370 = getelementptr inbounds %struct.dlm_assert_master, %struct.dlm_assert_master* %369, i32 0, i32 2
  %371 = load i32, i32* %370, align 4
  %372 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %11, align 8
  %373 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %372, i32 0, i32 2
  store i32 %371, i32* %373, align 4
  %374 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %11, align 8
  %375 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %374, i32 0, i32 7
  %376 = call i32 @atomic_set(i32* %375, i32 1)
  %377 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %11, align 8
  %378 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %377, i32 0, i32 6
  %379 = call i32 @wake_up(i32* %378)
  %380 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %11, align 8
  %381 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %380, i32 0, i32 5
  %382 = call i32 @spin_unlock(i32* %381)
  %383 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %13, align 8
  %384 = icmp ne %struct.dlm_lock_resource* %383, null
  br i1 %384, label %385, label %446

385:                                              ; preds = %368
  store i32 0, i32* %26, align 4
  %386 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %13, align 8
  %387 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %386, i32 0, i32 2
  %388 = call i32 @spin_lock(i32* %387)
  %389 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %11, align 8
  %390 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %389, i32 0, i32 0
  %391 = load i64, i64* %390, align 8
  %392 = load i64, i64* @DLM_MLE_MIGRATION, align 8
  %393 = icmp eq i64 %391, %392
  br i1 %393, label %394, label %428

394:                                              ; preds = %385
  %395 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %13, align 8
  %396 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %395, i32 0, i32 4
  %397 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %396, i32 0, i32 1
  %398 = load i32, i32* %397, align 4
  %399 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %13, align 8
  %400 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %399, i32 0, i32 4
  %401 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 4
  %403 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %404 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 4
  %406 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %11, align 8
  %407 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %406, i32 0, i32 1
  %408 = load i32, i32* %407, align 8
  %409 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.14, i64 0, i64 0), i32 %398, i32 %402, i32 %405, i32 %408)
  %410 = load i32, i32* @DLM_LOCK_RES_MIGRATING, align 4
  %411 = xor i32 %410, -1
  %412 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %13, align 8
  %413 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 4
  %415 = and i32 %414, %411
  store i32 %415, i32* %413, align 4
  store i32 1, i32* %26, align 4
  %416 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %417 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %13, align 8
  %418 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %11, align 8
  %419 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %418, i32 0, i32 1
  %420 = load i32, i32* %419, align 8
  %421 = call i32 @dlm_change_lockres_owner(%struct.dlm_ctxt* %416, %struct.dlm_lock_resource* %417, i32 %420)
  %422 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %13, align 8
  %423 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 4
  %425 = load i32, i32* @DLM_LOCK_RES_DIRTY, align 4
  %426 = and i32 %424, %425
  %427 = call i32 @BUG_ON(i32 %426)
  br label %435

428:                                              ; preds = %385
  %429 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %430 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %13, align 8
  %431 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %11, align 8
  %432 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %431, i32 0, i32 2
  %433 = load i32, i32* %432, align 4
  %434 = call i32 @dlm_change_lockres_owner(%struct.dlm_ctxt* %429, %struct.dlm_lock_resource* %430, i32 %433)
  br label %435

435:                                              ; preds = %428, %394
  %436 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %13, align 8
  %437 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %436, i32 0, i32 2
  %438 = call i32 @spin_unlock(i32* %437)
  store i32 1, i32* %19, align 4
  %439 = load i32, i32* %26, align 4
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %441, label %445

441:                                              ; preds = %435
  %442 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %13, align 8
  %443 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %442, i32 0, i32 3
  %444 = call i32 @wake_up(i32* %443)
  br label %445

445:                                              ; preds = %441, %435
  br label %446

446:                                              ; preds = %445, %368
  %447 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %448 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %447, i32 0, i32 1
  %449 = call i32 @spin_lock(i32* %448)
  %450 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %451 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %450, i32 0, i32 3
  %452 = call i32 @spin_lock(i32* %451)
  %453 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %11, align 8
  %454 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %453, i32 0, i32 4
  %455 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %454, i32 0, i32 0
  %456 = call i32 @atomic_read(i32* %455)
  store i32 %456, i32* %24, align 4
  %457 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %11, align 8
  %458 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %457, i32 0, i32 3
  %459 = load i64, i64* %458, align 8
  %460 = icmp sgt i64 %459, 0
  br i1 %460, label %461, label %477

461:                                              ; preds = %446
  %462 = load i32, i32* %22, align 4
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %464, label %468

464:                                              ; preds = %461
  %465 = load i32, i32* %24, align 4
  %466 = icmp slt i32 %465, 3
  br i1 %466, label %467, label %468

467:                                              ; preds = %464
  store i32 1, i32* %25, align 4
  br label %476

468:                                              ; preds = %464, %461
  %469 = load i32, i32* %22, align 4
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %475, label %471

471:                                              ; preds = %468
  %472 = load i32, i32* %24, align 4
  %473 = icmp slt i32 %472, 2
  br i1 %473, label %474, label %475

474:                                              ; preds = %471
  store i32 1, i32* %25, align 4
  br label %475

475:                                              ; preds = %474, %471, %468
  br label %476

476:                                              ; preds = %475, %467
  br label %493

477:                                              ; preds = %446
  %478 = load i32, i32* %22, align 4
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %480, label %484

480:                                              ; preds = %477
  %481 = load i32, i32* %24, align 4
  %482 = icmp slt i32 %481, 2
  br i1 %482, label %483, label %484

483:                                              ; preds = %480
  store i32 1, i32* %25, align 4
  br label %492

484:                                              ; preds = %480, %477
  %485 = load i32, i32* %22, align 4
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %491, label %487

487:                                              ; preds = %484
  %488 = load i32, i32* %24, align 4
  %489 = icmp slt i32 %488, 1
  br i1 %489, label %490, label %491

490:                                              ; preds = %487
  store i32 1, i32* %25, align 4
  br label %491

491:                                              ; preds = %490, %487, %484
  br label %492

492:                                              ; preds = %491, %483
  br label %493

493:                                              ; preds = %492, %476
  %494 = load i32, i32* %25, align 4
  %495 = icmp ne i32 %494, 0
  br i1 %495, label %496, label %514

496:                                              ; preds = %493
  %497 = load i32, i32* @ML_ERROR, align 4
  %498 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %499 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %498, i32 0, i32 2
  %500 = load i32, i32* %499, align 4
  %501 = load i32, i32* %15, align 4
  %502 = load i8*, i8** %14, align 8
  %503 = load %struct.dlm_assert_master*, %struct.dlm_assert_master** %12, align 8
  %504 = getelementptr inbounds %struct.dlm_assert_master, %struct.dlm_assert_master* %503, i32 0, i32 2
  %505 = load i32, i32* %504, align 4
  %506 = load i32, i32* %24, align 4
  %507 = load i32, i32* %22, align 4
  %508 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %11, align 8
  %509 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %508, i32 0, i32 3
  %510 = load i64, i64* %509, align 8
  %511 = call i32 (i32, i8*, ...) @mlog(i32 %497, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.15, i64 0, i64 0), i32 %500, i32 %501, i8* %502, i32 %505, i32 %506, i32 %507, i64 %510)
  %512 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %11, align 8
  %513 = call i32 @dlm_print_one_mle(%struct.dlm_master_list_entry* %512)
  br label %514

514:                                              ; preds = %496, %493
  %515 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %516 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %11, align 8
  %517 = call i32 @__dlm_unlink_mle(%struct.dlm_ctxt* %515, %struct.dlm_master_list_entry* %516)
  %518 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %519 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %11, align 8
  %520 = call i32 @__dlm_mle_detach_hb_events(%struct.dlm_ctxt* %518, %struct.dlm_master_list_entry* %519)
  %521 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %11, align 8
  %522 = call i32 @__dlm_put_mle(%struct.dlm_master_list_entry* %521)
  %523 = load i32, i32* %22, align 4
  %524 = icmp ne i32 %523, 0
  br i1 %524, label %525, label %528

525:                                              ; preds = %514
  %526 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %11, align 8
  %527 = call i32 @__dlm_put_mle(%struct.dlm_master_list_entry* %526)
  br label %528

528:                                              ; preds = %525, %514
  %529 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %530 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %529, i32 0, i32 3
  %531 = call i32 @spin_unlock(i32* %530)
  %532 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %533 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %532, i32 0, i32 1
  %534 = call i32 @spin_unlock(i32* %533)
  br label %558

535:                                              ; preds = %320
  %536 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %13, align 8
  %537 = icmp ne %struct.dlm_lock_resource* %536, null
  br i1 %537, label %538, label %557

538:                                              ; preds = %535
  %539 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %13, align 8
  %540 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %539, i32 0, i32 1
  %541 = load i32, i32* %540, align 4
  %542 = load %struct.dlm_assert_master*, %struct.dlm_assert_master** %12, align 8
  %543 = getelementptr inbounds %struct.dlm_assert_master, %struct.dlm_assert_master* %542, i32 0, i32 2
  %544 = load i32, i32* %543, align 4
  %545 = icmp ne i32 %541, %544
  br i1 %545, label %546, label %556

546:                                              ; preds = %538
  %547 = load %struct.dlm_assert_master*, %struct.dlm_assert_master** %12, align 8
  %548 = getelementptr inbounds %struct.dlm_assert_master, %struct.dlm_assert_master* %547, i32 0, i32 2
  %549 = load i32, i32* %548, align 4
  %550 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %13, align 8
  %551 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %550, i32 0, i32 1
  %552 = load i32, i32* %551, align 4
  %553 = load i32, i32* %15, align 4
  %554 = load i8*, i8** %14, align 8
  %555 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.16, i64 0, i64 0), i32 %549, i32 %552, i32 %553, i8* %554)
  br label %556

556:                                              ; preds = %546, %538
  br label %557

557:                                              ; preds = %556, %535
  br label %558

558:                                              ; preds = %557, %528
  br label %559

559:                                              ; preds = %558, %155, %54
  store i32 0, i32* %20, align 4
  %560 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %13, align 8
  %561 = icmp ne %struct.dlm_lock_resource* %560, null
  br i1 %561, label %562, label %577

562:                                              ; preds = %559
  %563 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %13, align 8
  %564 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %563, i32 0, i32 2
  %565 = call i32 @spin_lock(i32* %564)
  %566 = load i32, i32* @DLM_LOCK_RES_SETREF_INPROG, align 4
  %567 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %13, align 8
  %568 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %567, i32 0, i32 0
  %569 = load i32, i32* %568, align 4
  %570 = or i32 %569, %566
  store i32 %570, i32* %568, align 4
  %571 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %13, align 8
  %572 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %571, i32 0, i32 2
  %573 = call i32 @spin_unlock(i32* %572)
  %574 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %13, align 8
  %575 = bitcast %struct.dlm_lock_resource* %574 to i8*
  %576 = load i8**, i8*** %9, align 8
  store i8* %575, i8** %576, align 8
  br label %577

577:                                              ; preds = %562, %559
  %578 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %579 = call i32 @dlm_put(%struct.dlm_ctxt* %578)
  %580 = load i32, i32* %18, align 4
  %581 = icmp ne i32 %580, 0
  br i1 %581, label %582, label %601

582:                                              ; preds = %577
  %583 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0))
  %584 = load i32, i32* @DLM_ASSERT_RESPONSE_REASSERT, align 4
  %585 = load i32, i32* %20, align 4
  %586 = or i32 %585, %584
  store i32 %586, i32* %20, align 4
  %587 = load i32, i32* %19, align 4
  %588 = icmp ne i32 %587, 0
  br i1 %588, label %600, label %589

589:                                              ; preds = %582
  %590 = load i32, i32* @ML_ERROR, align 4
  %591 = load %struct.dlm_assert_master*, %struct.dlm_assert_master** %12, align 8
  %592 = getelementptr inbounds %struct.dlm_assert_master, %struct.dlm_assert_master* %591, i32 0, i32 2
  %593 = load i32, i32* %592, align 4
  %594 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %595 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %594, i32 0, i32 2
  %596 = load i32, i32* %595, align 4
  %597 = load i32, i32* %15, align 4
  %598 = load i8*, i8** %14, align 8
  %599 = call i32 (i32, i8*, ...) @mlog(i32 %590, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.18, i64 0, i64 0), i32 %593, i32 %596, i32 %597, i8* %598)
  br label %600

600:                                              ; preds = %589, %582
  br label %601

601:                                              ; preds = %600, %577
  %602 = load i32, i32* %19, align 4
  %603 = icmp ne i32 %602, 0
  br i1 %603, label %604, label %617

604:                                              ; preds = %601
  %605 = load i32, i32* @DLM_ASSERT_RESPONSE_MASTERY_REF, align 4
  %606 = load i32, i32* %20, align 4
  %607 = or i32 %606, %605
  store i32 %607, i32* %20, align 4
  %608 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %609 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %608, i32 0, i32 2
  %610 = load i32, i32* %609, align 4
  %611 = load i32, i32* %15, align 4
  %612 = load i8*, i8** %14, align 8
  %613 = load %struct.dlm_assert_master*, %struct.dlm_assert_master** %12, align 8
  %614 = getelementptr inbounds %struct.dlm_assert_master, %struct.dlm_assert_master* %613, i32 0, i32 2
  %615 = load i32, i32* %614, align 4
  %616 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.19, i64 0, i64 0), i32 %610, i32 %611, i8* %612, i32 %615)
  br label %617

617:                                              ; preds = %604, %601
  %618 = load i32, i32* %20, align 4
  store i32 %618, i32* %5, align 4
  br label %637

619:                                              ; preds = %299, %282, %264, %197
  %620 = load i32, i32* @ML_ERROR, align 4
  %621 = call i32 (i32, i8*, ...) @mlog(i32 %620, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.20, i64 0, i64 0))
  %622 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %13, align 8
  %623 = call i32 @__dlm_print_one_lock_resource(%struct.dlm_lock_resource* %622)
  %624 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %13, align 8
  %625 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %624, i32 0, i32 2
  %626 = call i32 @spin_unlock(i32* %625)
  %627 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %628 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %627, i32 0, i32 1
  %629 = call i32 @spin_unlock(i32* %628)
  %630 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %13, align 8
  %631 = bitcast %struct.dlm_lock_resource* %630 to i8*
  %632 = load i8**, i8*** %9, align 8
  store i8* %631, i8** %632, align 8
  %633 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %634 = call i32 @dlm_put(%struct.dlm_ctxt* %633)
  %635 = load i32, i32* @EINVAL, align 4
  %636 = sub nsw i32 0, %635
  store i32 %636, i32* %5, align 4
  br label %637

637:                                              ; preds = %619, %617, %36
  %638 = load i32, i32* %5, align 4
  ret i32 %638
}

declare dso_local i32 @dlm_grab(%struct.dlm_ctxt*) #1

declare dso_local i32 @dlm_lockid_hash(i8*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dlm_find_mle(%struct.dlm_ctxt*, %struct.dlm_master_list_entry**, i8*, i32) #1

declare dso_local i32 @find_next_bit(i32, i32, i32) #1

declare dso_local i32 @__dlm_put_mle(%struct.dlm_master_list_entry*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.dlm_lock_resource* @__dlm_lookup_lockres(%struct.dlm_ctxt*, i8*, i32, i32) #1

declare dso_local i32 @__dlm_print_one_lock_resource(%struct.dlm_lock_resource*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @dlm_change_lockres_owner(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @dlm_print_one_mle(%struct.dlm_master_list_entry*) #1

declare dso_local i32 @__dlm_unlink_mle(%struct.dlm_ctxt*, %struct.dlm_master_list_entry*) #1

declare dso_local i32 @__dlm_mle_detach_hb_events(%struct.dlm_ctxt*, %struct.dlm_master_list_entry*) #1

declare dso_local i32 @dlm_put(%struct.dlm_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
