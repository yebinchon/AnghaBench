; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_migrate_lockres.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_migrate_lockres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32, i32, i32, i32, i32, i32 }
%struct.dlm_lock_resource = type { i64, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.dlm_master_list_entry = type { i32, i32 }
%struct.dlm_migratable_lockres = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"migrating %.*s to %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"no locks were found on this lockres! done!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@dlm_mle_cache = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"picking a migration node\0A\00", align 1
@O2NM_MAX_NODES = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"node %u chosen for migration\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"continuing with target = %u\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"another process is already migrating it\0A\00", align 1
@ML_ERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [56 x i8] c"tried to migrate %.*s to %u, but the target went down.\0A\00", align 1
@DLM_LOCK_RES_MIGRATING = common dso_local global i32 0, align 4
@DLM_MRES_MIGRATION = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"migration to node %u failed with %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"%s:%.*s: timed out during migration\0A\00", align 1
@.str.9 = private unnamed_addr constant [67 x i8] c"%s:%.*s: expected migration target %u is no longer up, restarting\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"%s:%.*s: caught signal during migration\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"returning %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ctxt*, %struct.dlm_lock_resource*, i64)* @dlm_migrate_lockres to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_migrate_lockres(%struct.dlm_ctxt* %0, %struct.dlm_lock_resource* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dlm_ctxt*, align 8
  %6 = alloca %struct.dlm_lock_resource*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.dlm_master_list_entry*, align 8
  %9 = alloca %struct.dlm_master_list_entry*, align 8
  %10 = alloca %struct.dlm_migratable_lockres*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %5, align 8
  store %struct.dlm_lock_resource* %1, %struct.dlm_lock_resource** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.dlm_master_list_entry* null, %struct.dlm_master_list_entry** %8, align 8
  store %struct.dlm_master_list_entry* null, %struct.dlm_master_list_entry** %9, align 8
  store %struct.dlm_migratable_lockres* null, %struct.dlm_migratable_lockres** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %17 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %18 = call i32 @dlm_grab(%struct.dlm_ctxt* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %413

23:                                               ; preds = %3
  %24 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %25 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  store i8* %29, i8** %12, align 8
  %30 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %31 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = load i8*, i8** %12, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %34, i8* %35, i64 %36)
  %38 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %39 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %38, i32 0, i32 2
  %40 = call i32 @spin_lock(i32* %39)
  %41 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %42 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %43 = call i32 @dlm_is_lockres_migrateable(%struct.dlm_ctxt* %41, %struct.dlm_lock_resource* %42, i32* %15)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %23
  %47 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %48 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %47, i32 0, i32 2
  %49 = call i32 @spin_unlock(i32* %48)
  br label %386

50:                                               ; preds = %23
  %51 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %52 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %51, i32 0, i32 2
  %53 = call i32 @spin_unlock(i32* %52)
  %54 = load i32, i32* %15, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %386

58:                                               ; preds = %50
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* @GFP_NOFS, align 4
  %62 = call i64 @__get_free_page(i32 %61)
  %63 = inttoptr i64 %62 to %struct.dlm_migratable_lockres*
  store %struct.dlm_migratable_lockres* %63, %struct.dlm_migratable_lockres** %10, align 8
  %64 = load %struct.dlm_migratable_lockres*, %struct.dlm_migratable_lockres** %10, align 8
  %65 = icmp ne %struct.dlm_migratable_lockres* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %58
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @mlog_errno(i32 %67)
  br label %386

69:                                               ; preds = %58
  %70 = load i32, i32* @dlm_mle_cache, align 4
  %71 = load i32, i32* @GFP_NOFS, align 4
  %72 = call i64 @kmem_cache_alloc(i32 %70, i32 %71)
  %73 = inttoptr i64 %72 to %struct.dlm_master_list_entry*
  store %struct.dlm_master_list_entry* %73, %struct.dlm_master_list_entry** %8, align 8
  %74 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %8, align 8
  %75 = icmp ne %struct.dlm_master_list_entry* %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %69
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @mlog_errno(i32 %77)
  br label %386

79:                                               ; preds = %69
  store i32 0, i32* %11, align 4
  %80 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %81 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %82 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %81, i32 0, i32 1
  %83 = call i32 @spin_lock(i32* %82)
  %84 = load i64, i64* %7, align 8
  %85 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %86 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @test_bit(i64 %84, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %79
  %91 = load i64, i64* %7, align 8
  %92 = load i64, i64* @O2NM_MAX_NODES, align 8
  %93 = icmp sge i64 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %90, %79
  %95 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %96 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %97 = call i64 @dlm_pick_migration_target(%struct.dlm_ctxt* %95, %struct.dlm_lock_resource* %96)
  store i64 %97, i64* %7, align 8
  br label %98

98:                                               ; preds = %94, %90
  %99 = load i64, i64* %7, align 8
  %100 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64 %99)
  %101 = load i64, i64* %7, align 8
  %102 = load i64, i64* @O2NM_MAX_NODES, align 8
  %103 = icmp sge i64 %101, %102
  br i1 %103, label %111, label %104

104:                                              ; preds = %98
  %105 = load i64, i64* %7, align 8
  %106 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %107 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @test_bit(i64 %105, i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %104, %98
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %11, align 4
  br label %114

114:                                              ; preds = %111, %104
  %115 = load i32, i32* %11, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %119 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %118, i32 0, i32 1
  %120 = call i32 @spin_unlock(i32* %119)
  br label %182

121:                                              ; preds = %114
  %122 = load i64, i64* %7, align 8
  %123 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i64 %122)
  %124 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %125 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %124, i32 0, i32 2
  %126 = call i32 @spin_lock(i32* %125)
  %127 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %128 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %129 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %8, align 8
  %130 = load i8*, i8** %12, align 8
  %131 = load i32, i32* %13, align 4
  %132 = load i64, i64* %7, align 8
  %133 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %134 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @dlm_add_migration_mle(%struct.dlm_ctxt* %127, %struct.dlm_lock_resource* %128, %struct.dlm_master_list_entry* %129, %struct.dlm_master_list_entry** %9, i8* %130, i32 %131, i64 %132, i32 %135)
  store i32 %136, i32* %11, align 4
  %137 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %138 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %137, i32 0, i32 2
  %139 = call i32 @spin_unlock(i32* %138)
  %140 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %141 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %140, i32 0, i32 1
  %142 = call i32 @spin_unlock(i32* %141)
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* @EEXIST, align 4
  %145 = sub nsw i32 0, %144
  %146 = icmp eq i32 %143, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %121
  %148 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  br label %182

149:                                              ; preds = %121
  store i32 1, i32* %14, align 4
  %150 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %151 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %152 = load i64, i64* %7, align 8
  %153 = call i64 @dlm_mark_lockres_migrating(%struct.dlm_ctxt* %150, %struct.dlm_lock_resource* %151, i64 %152)
  %154 = icmp slt i64 %153, 0
  br i1 %154, label %155, label %181

155:                                              ; preds = %149
  %156 = load i32, i32* @ML_ERROR, align 4
  %157 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %158 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %157, i32 0, i32 4
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %162 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %161, i32 0, i32 4
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load i64, i64* %7, align 8
  %166 = call i32 (i32, i8*, ...) @mlog(i32 %156, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0), i32 %160, i32 %164, i64 %165)
  %167 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %168 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %167, i32 0, i32 2
  %169 = call i32 @spin_lock(i32* %168)
  %170 = load i32, i32* @DLM_LOCK_RES_MIGRATING, align 4
  %171 = xor i32 %170, -1
  %172 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %173 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 8
  %175 = and i32 %174, %171
  store i32 %175, i32* %173, align 8
  store i32 1, i32* %16, align 4
  %176 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %177 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %176, i32 0, i32 2
  %178 = call i32 @spin_unlock(i32* %177)
  %179 = load i32, i32* @EINVAL, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %11, align 4
  br label %181

181:                                              ; preds = %155, %149
  br label %182

182:                                              ; preds = %181, %147, %117
  %183 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %9, align 8
  %184 = icmp ne %struct.dlm_master_list_entry* %183, null
  br i1 %184, label %185, label %191

185:                                              ; preds = %182
  %186 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %187 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %9, align 8
  %188 = call i32 @dlm_mle_detach_hb_events(%struct.dlm_ctxt* %186, %struct.dlm_master_list_entry* %187)
  %189 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %9, align 8
  %190 = call i32 @dlm_put_mle(%struct.dlm_master_list_entry* %189)
  br label %191

191:                                              ; preds = %185, %182
  %192 = load i32, i32* %11, align 4
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %194, label %212

194:                                              ; preds = %191
  %195 = load i32, i32* %14, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %203

197:                                              ; preds = %194
  %198 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %199 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %8, align 8
  %200 = call i32 @dlm_mle_detach_hb_events(%struct.dlm_ctxt* %198, %struct.dlm_master_list_entry* %199)
  %201 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %8, align 8
  %202 = call i32 @dlm_put_mle(%struct.dlm_master_list_entry* %201)
  br label %211

203:                                              ; preds = %194
  %204 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %8, align 8
  %205 = icmp ne %struct.dlm_master_list_entry* %204, null
  br i1 %205, label %206, label %210

206:                                              ; preds = %203
  %207 = load i32, i32* @dlm_mle_cache, align 4
  %208 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %8, align 8
  %209 = call i32 @kmem_cache_free(i32 %207, %struct.dlm_master_list_entry* %208)
  br label %210

210:                                              ; preds = %206, %203
  br label %211

211:                                              ; preds = %210, %197
  br label %386

212:                                              ; preds = %191
  %213 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %214 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @flush_workqueue(i32 %215)
  %217 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %218 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %217, i32 0, i32 1
  %219 = call i32 @spin_lock(i32* %218)
  %220 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %221 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %220, i32 0, i32 2
  %222 = call i32 @spin_lock(i32* %221)
  %223 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %8, align 8
  %224 = call i32 @dlm_get_mle_inuse(%struct.dlm_master_list_entry* %223)
  %225 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %226 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %225, i32 0, i32 2
  %227 = call i32 @spin_unlock(i32* %226)
  %228 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %229 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %228, i32 0, i32 1
  %230 = call i32 @spin_unlock(i32* %229)
  %231 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %232 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %233 = load %struct.dlm_migratable_lockres*, %struct.dlm_migratable_lockres** %10, align 8
  %234 = load i64, i64* %7, align 8
  %235 = load i32, i32* @DLM_MRES_MIGRATION, align 4
  %236 = call i32 @dlm_send_one_lockres(%struct.dlm_ctxt* %231, %struct.dlm_lock_resource* %232, %struct.dlm_migratable_lockres* %233, i64 %234, i32 %235)
  store i32 %236, i32* %11, align 4
  %237 = load i32, i32* %11, align 4
  %238 = icmp slt i32 %237, 0
  br i1 %238, label %239, label %262

239:                                              ; preds = %212
  %240 = load i64, i64* %7, align 8
  %241 = load i32, i32* %11, align 4
  %242 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i64 %240, i32 %241)
  %243 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %244 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %8, align 8
  %245 = call i32 @dlm_mle_detach_hb_events(%struct.dlm_ctxt* %243, %struct.dlm_master_list_entry* %244)
  %246 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %8, align 8
  %247 = call i32 @dlm_put_mle(%struct.dlm_master_list_entry* %246)
  %248 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %8, align 8
  %249 = call i32 @dlm_put_mle_inuse(%struct.dlm_master_list_entry* %248)
  %250 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %251 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %250, i32 0, i32 2
  %252 = call i32 @spin_lock(i32* %251)
  %253 = load i32, i32* @DLM_LOCK_RES_MIGRATING, align 4
  %254 = xor i32 %253, -1
  %255 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %256 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 8
  %258 = and i32 %257, %254
  store i32 %258, i32* %256, align 8
  store i32 1, i32* %16, align 4
  %259 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %260 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %259, i32 0, i32 2
  %261 = call i32 @spin_unlock(i32* %260)
  br label %386

262:                                              ; preds = %212
  br label %263

263:                                              ; preds = %262, %354
  %264 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %8, align 8
  %265 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %8, align 8
  %268 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %267, i32 0, i32 0
  %269 = call i32 @atomic_read(i32* %268)
  %270 = icmp eq i32 %269, 1
  %271 = zext i1 %270 to i32
  %272 = call i32 @msecs_to_jiffies(i32 5000)
  %273 = call i32 @wait_event_interruptible_timeout(i32 %266, i32 %271, i32 %272)
  store i32 %273, i32* %11, align 4
  %274 = load i32, i32* %11, align 4
  %275 = icmp sge i32 %274, 0
  br i1 %275, label %276, label %341

276:                                              ; preds = %263
  %277 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %8, align 8
  %278 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %277, i32 0, i32 0
  %279 = call i32 @atomic_read(i32* %278)
  %280 = icmp eq i32 %279, 1
  br i1 %280, label %287, label %281

281:                                              ; preds = %276
  %282 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %283 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = load i64, i64* %7, align 8
  %286 = icmp eq i64 %284, %285
  br i1 %286, label %287, label %288

287:                                              ; preds = %281, %276
  br label %355

288:                                              ; preds = %281
  %289 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %290 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %293 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %292, i32 0, i32 4
  %294 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %297 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %296, i32 0, i32 4
  %298 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 %291, i32 %295, i32 %299)
  %301 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %302 = load i64, i64* %7, align 8
  %303 = call i64 @dlm_is_node_dead(%struct.dlm_ctxt* %301, i64 %302)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %340

305:                                              ; preds = %288
  %306 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %307 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %310 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %309, i32 0, i32 4
  %311 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 4
  %313 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %314 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %313, i32 0, i32 4
  %315 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 4
  %317 = load i64, i64* %7, align 8
  %318 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.9, i64 0, i64 0), i32 %308, i32 %312, i32 %316, i64 %317)
  %319 = load i32, i32* @EINVAL, align 4
  %320 = sub nsw i32 0, %319
  store i32 %320, i32* %11, align 4
  %321 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %322 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %8, align 8
  %323 = call i32 @dlm_mle_detach_hb_events(%struct.dlm_ctxt* %321, %struct.dlm_master_list_entry* %322)
  %324 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %8, align 8
  %325 = call i32 @dlm_put_mle(%struct.dlm_master_list_entry* %324)
  %326 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %8, align 8
  %327 = call i32 @dlm_put_mle_inuse(%struct.dlm_master_list_entry* %326)
  %328 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %329 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %328, i32 0, i32 2
  %330 = call i32 @spin_lock(i32* %329)
  %331 = load i32, i32* @DLM_LOCK_RES_MIGRATING, align 4
  %332 = xor i32 %331, -1
  %333 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %334 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %333, i32 0, i32 3
  %335 = load i32, i32* %334, align 8
  %336 = and i32 %335, %332
  store i32 %336, i32* %334, align 8
  store i32 1, i32* %16, align 4
  %337 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %338 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %337, i32 0, i32 2
  %339 = call i32 @spin_unlock(i32* %338)
  br label %386

340:                                              ; preds = %288
  br label %354

341:                                              ; preds = %263
  %342 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %343 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 4
  %345 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %346 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %345, i32 0, i32 4
  %347 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 4
  %349 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %350 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %349, i32 0, i32 4
  %351 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 4
  %353 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i32 %344, i32 %348, i32 %352)
  br label %354

354:                                              ; preds = %341, %340
  br label %263

355:                                              ; preds = %287
  %356 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %357 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %356, i32 0, i32 2
  %358 = call i32 @spin_lock(i32* %357)
  %359 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %360 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %361 = load i64, i64* %7, align 8
  %362 = call i32 @dlm_set_lockres_owner(%struct.dlm_ctxt* %359, %struct.dlm_lock_resource* %360, i64 %361)
  %363 = load i32, i32* @DLM_LOCK_RES_MIGRATING, align 4
  %364 = xor i32 %363, -1
  %365 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %366 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %365, i32 0, i32 3
  %367 = load i32, i32* %366, align 8
  %368 = and i32 %367, %364
  store i32 %368, i32* %366, align 8
  %369 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %370 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %371 = call i32 @dlm_remove_nonlocal_locks(%struct.dlm_ctxt* %369, %struct.dlm_lock_resource* %370)
  %372 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %373 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %372, i32 0, i32 2
  %374 = call i32 @spin_unlock(i32* %373)
  %375 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %376 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %375, i32 0, i32 1
  %377 = call i32 @wake_up(i32* %376)
  %378 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %379 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %8, align 8
  %380 = call i32 @dlm_mle_detach_hb_events(%struct.dlm_ctxt* %378, %struct.dlm_master_list_entry* %379)
  %381 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %8, align 8
  %382 = call i32 @dlm_put_mle_inuse(%struct.dlm_master_list_entry* %381)
  store i32 0, i32* %11, align 4
  %383 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %384 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %385 = call i32 @dlm_lockres_calc_usage(%struct.dlm_ctxt* %383, %struct.dlm_lock_resource* %384)
  br label %386

386:                                              ; preds = %355, %305, %239, %211, %76, %66, %56, %46
  %387 = load i32, i32* %11, align 4
  %388 = icmp slt i32 %387, 0
  br i1 %388, label %389, label %393

389:                                              ; preds = %386
  %390 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %391 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %392 = call i32 @dlm_kick_thread(%struct.dlm_ctxt* %390, %struct.dlm_lock_resource* %391)
  br label %393

393:                                              ; preds = %389, %386
  %394 = load i32, i32* %16, align 4
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %400

396:                                              ; preds = %393
  %397 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %398 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %397, i32 0, i32 1
  %399 = call i32 @wake_up(i32* %398)
  br label %400

400:                                              ; preds = %396, %393
  %401 = load %struct.dlm_migratable_lockres*, %struct.dlm_migratable_lockres** %10, align 8
  %402 = icmp ne %struct.dlm_migratable_lockres* %401, null
  br i1 %402, label %403, label %407

403:                                              ; preds = %400
  %404 = load %struct.dlm_migratable_lockres*, %struct.dlm_migratable_lockres** %10, align 8
  %405 = ptrtoint %struct.dlm_migratable_lockres* %404 to i64
  %406 = call i32 @free_page(i64 %405)
  br label %407

407:                                              ; preds = %403, %400
  %408 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %409 = call i32 @dlm_put(%struct.dlm_ctxt* %408)
  %410 = load i32, i32* %11, align 4
  %411 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 %410)
  %412 = load i32, i32* %11, align 4
  store i32 %412, i32* %4, align 4
  br label %413

413:                                              ; preds = %407, %20
  %414 = load i32, i32* %4, align 4
  ret i32 %414
}

declare dso_local i32 @dlm_grab(%struct.dlm_ctxt*) #1

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dlm_is_lockres_migrateable(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @test_bit(i64, i32) #1

declare dso_local i64 @dlm_pick_migration_target(%struct.dlm_ctxt*, %struct.dlm_lock_resource*) #1

declare dso_local i32 @dlm_add_migration_mle(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry**, i8*, i32, i64, i32) #1

declare dso_local i64 @dlm_mark_lockres_migrating(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, i64) #1

declare dso_local i32 @dlm_mle_detach_hb_events(%struct.dlm_ctxt*, %struct.dlm_master_list_entry*) #1

declare dso_local i32 @dlm_put_mle(%struct.dlm_master_list_entry*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.dlm_master_list_entry*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @dlm_get_mle_inuse(%struct.dlm_master_list_entry*) #1

declare dso_local i32 @dlm_send_one_lockres(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, %struct.dlm_migratable_lockres*, i64, i32) #1

declare dso_local i32 @dlm_put_mle_inuse(%struct.dlm_master_list_entry*) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i64 @dlm_is_node_dead(%struct.dlm_ctxt*, i64) #1

declare dso_local i32 @dlm_set_lockres_owner(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, i64) #1

declare dso_local i32 @dlm_remove_nonlocal_locks(%struct.dlm_ctxt*, %struct.dlm_lock_resource*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @dlm_lockres_calc_usage(%struct.dlm_ctxt*, %struct.dlm_lock_resource*) #1

declare dso_local i32 @dlm_kick_thread(%struct.dlm_ctxt*, %struct.dlm_lock_resource*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @dlm_put(%struct.dlm_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
