; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_alloc_ctxt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_alloc_ctxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { %struct.TYPE_4__, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, %struct.TYPE_3__, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.dlm_ctxt*, %struct.hlist_head**, %struct.hlist_head**, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i8*, i8*, i32, i64, i32, i32, i32 }
%struct.hlist_head = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DLM_HASH_PAGES = common dso_local global i32 0, align 4
@DLM_HASH_BUCKETS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"dlm->recovery_map=%p, &(dlm->recovery_map[0])=%p\0A\00", align 1
@DLM_LOCK_RES_OWNER_UNKNOWN = common dso_local global i32 0, align 4
@O2NM_INVALID_NODE_NUM = common dso_local global i8* null, align 8
@DLM_MLE_NUM_TYPES = common dso_local global i32 0, align 4
@dlm_dispatch_work = common dso_local global i32 0, align 4
@DLM_CTXT_NEW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"context init: refcount %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dlm_ctxt* (i8*, i32)* @dlm_alloc_ctxt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dlm_ctxt* @dlm_alloc_ctxt(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dlm_ctxt*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.dlm_ctxt* null, %struct.dlm_ctxt** %7, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.dlm_ctxt* @kzalloc(i32 256, i32 %8)
  store %struct.dlm_ctxt* %9, %struct.dlm_ctxt** %7, align 8
  %10 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %11 = icmp ne %struct.dlm_ctxt* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call i32 @mlog_errno(i32 %14)
  br label %303

16:                                               ; preds = %2
  %17 = load i8*, i8** %3, align 8
  %18 = call i64 @strlen(i8* %17)
  %19 = add nsw i64 %18, 1
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.dlm_ctxt* @kmalloc(i64 %19, i32 %20)
  %22 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %23 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %22, i32 0, i32 35
  store %struct.dlm_ctxt* %21, %struct.dlm_ctxt** %23, align 8
  %24 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %25 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %24, i32 0, i32 35
  %26 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %25, align 8
  %27 = icmp eq %struct.dlm_ctxt* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %16
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  %31 = call i32 @mlog_errno(i32 %30)
  %32 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %33 = call i32 @kfree(%struct.dlm_ctxt* %32)
  store %struct.dlm_ctxt* null, %struct.dlm_ctxt** %7, align 8
  br label %303

34:                                               ; preds = %16
  %35 = load i32, i32* @DLM_HASH_PAGES, align 4
  %36 = call i64 @dlm_alloc_pagevec(i32 %35)
  %37 = inttoptr i64 %36 to %struct.hlist_head**
  %38 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %39 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %38, i32 0, i32 36
  store %struct.hlist_head** %37, %struct.hlist_head*** %39, align 8
  %40 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %41 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %40, i32 0, i32 36
  %42 = load %struct.hlist_head**, %struct.hlist_head*** %41, align 8
  %43 = icmp ne %struct.hlist_head** %42, null
  br i1 %43, label %54, label %44

44:                                               ; preds = %34
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  %47 = call i32 @mlog_errno(i32 %46)
  %48 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %49 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %48, i32 0, i32 35
  %50 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %49, align 8
  %51 = call i32 @kfree(%struct.dlm_ctxt* %50)
  %52 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %53 = call i32 @kfree(%struct.dlm_ctxt* %52)
  store %struct.dlm_ctxt* null, %struct.dlm_ctxt** %7, align 8
  br label %303

54:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %64, %54
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @DLM_HASH_BUCKETS, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @dlm_lockres_hash(%struct.dlm_ctxt* %60, i32 %61)
  %63 = call i32 @INIT_HLIST_HEAD(i32 %62)
  br label %64

64:                                               ; preds = %59
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %55

67:                                               ; preds = %55
  %68 = load i32, i32* @DLM_HASH_PAGES, align 4
  %69 = call i64 @dlm_alloc_pagevec(i32 %68)
  %70 = inttoptr i64 %69 to %struct.hlist_head**
  %71 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %72 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %71, i32 0, i32 37
  store %struct.hlist_head** %70, %struct.hlist_head*** %72, align 8
  %73 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %74 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %73, i32 0, i32 37
  %75 = load %struct.hlist_head**, %struct.hlist_head*** %74, align 8
  %76 = icmp ne %struct.hlist_head** %75, null
  br i1 %76, label %93, label %77

77:                                               ; preds = %67
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  %80 = call i32 @mlog_errno(i32 %79)
  %81 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %82 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %81, i32 0, i32 36
  %83 = load %struct.hlist_head**, %struct.hlist_head*** %82, align 8
  %84 = bitcast %struct.hlist_head** %83 to i8**
  %85 = load i32, i32* @DLM_HASH_PAGES, align 4
  %86 = call i32 @dlm_free_pagevec(i8** %84, i32 %85)
  %87 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %88 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %87, i32 0, i32 35
  %89 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %88, align 8
  %90 = call i32 @kfree(%struct.dlm_ctxt* %89)
  %91 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %92 = call i32 @kfree(%struct.dlm_ctxt* %91)
  store %struct.dlm_ctxt* null, %struct.dlm_ctxt** %7, align 8
  br label %303

93:                                               ; preds = %67
  store i32 0, i32* %5, align 4
  br label %94

94:                                               ; preds = %103, %93
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @DLM_HASH_BUCKETS, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %94
  %99 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @dlm_master_hash(%struct.dlm_ctxt* %99, i32 %100)
  %102 = call i32 @INIT_HLIST_HEAD(i32 %101)
  br label %103

103:                                              ; preds = %98
  %104 = load i32, i32* %5, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %5, align 4
  br label %94

106:                                              ; preds = %94
  %107 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %108 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %107, i32 0, i32 35
  %109 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %108, align 8
  %110 = load i8*, i8** %3, align 8
  %111 = call i32 @strcpy(%struct.dlm_ctxt* %109, i8* %110)
  %112 = load i32, i32* %4, align 4
  %113 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %114 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %113, i32 0, i32 39
  store i32 %112, i32* %114, align 4
  %115 = call i32 (...) @o2nm_this_node()
  %116 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %117 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %116, i32 0, i32 38
  store i32 %115, i32* %117, align 8
  %118 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %119 = call i32 @dlm_create_debugfs_subroot(%struct.dlm_ctxt* %118)
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %6, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %141

122:                                              ; preds = %106
  %123 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %124 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %123, i32 0, i32 37
  %125 = load %struct.hlist_head**, %struct.hlist_head*** %124, align 8
  %126 = bitcast %struct.hlist_head** %125 to i8**
  %127 = load i32, i32* @DLM_HASH_PAGES, align 4
  %128 = call i32 @dlm_free_pagevec(i8** %126, i32 %127)
  %129 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %130 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %129, i32 0, i32 36
  %131 = load %struct.hlist_head**, %struct.hlist_head*** %130, align 8
  %132 = bitcast %struct.hlist_head** %131 to i8**
  %133 = load i32, i32* @DLM_HASH_PAGES, align 4
  %134 = call i32 @dlm_free_pagevec(i8** %132, i32 %133)
  %135 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %136 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %135, i32 0, i32 35
  %137 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %136, align 8
  %138 = call i32 @kfree(%struct.dlm_ctxt* %137)
  %139 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %140 = call i32 @kfree(%struct.dlm_ctxt* %139)
  store %struct.dlm_ctxt* null, %struct.dlm_ctxt** %7, align 8
  br label %303

141:                                              ; preds = %106
  %142 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %143 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %142, i32 0, i32 34
  %144 = call i32 @spin_lock_init(i32* %143)
  %145 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %146 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %145, i32 0, i32 33
  %147 = call i32 @spin_lock_init(i32* %146)
  %148 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %149 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %148, i32 0, i32 32
  %150 = call i32 @spin_lock_init(i32* %149)
  %151 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %152 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %151, i32 0, i32 31
  %153 = call i32 @spin_lock_init(i32* %152)
  %154 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %155 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %154, i32 0, i32 30
  %156 = call i32 @INIT_LIST_HEAD(i32* %155)
  %157 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %158 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %157, i32 0, i32 29
  %159 = call i32 @INIT_LIST_HEAD(i32* %158)
  %160 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %161 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %160, i32 0, i32 10
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 6
  %163 = call i32 @INIT_LIST_HEAD(i32* %162)
  %164 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %165 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %164, i32 0, i32 10
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 5
  %167 = call i32 @INIT_LIST_HEAD(i32* %166)
  %168 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %169 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %168, i32 0, i32 10
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 4
  %171 = call i32 @INIT_LIST_HEAD(i32* %170)
  %172 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %173 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %172, i32 0, i32 28
  %174 = call i32 @INIT_LIST_HEAD(i32* %173)
  %175 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %176 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %175, i32 0, i32 27
  %177 = call i32 @INIT_LIST_HEAD(i32* %176)
  %178 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %179 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %178, i32 0, i32 26
  %180 = call i32 @INIT_LIST_HEAD(i32* %179)
  %181 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %182 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %181, i32 0, i32 10
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 3
  store i64 0, i64* %183, align 8
  %184 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %185 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %184, i32 0, i32 25
  %186 = call i32 @INIT_LIST_HEAD(i32* %185)
  %187 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %188 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %187, i32 0, i32 24
  %189 = call i32 @INIT_LIST_HEAD(i32* %188)
  %190 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %191 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %190, i32 0, i32 23
  %192 = load i32*, i32** %191, align 8
  %193 = ptrtoint i32* %192 to i32
  %194 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %195 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %194, i32 0, i32 23
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 0
  %198 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %193, i32* %197)
  %199 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %200 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %199, i32 0, i32 23
  %201 = load i32*, i32** %200, align 8
  %202 = call i32 @memset(i32* %201, i32 0, i32 8)
  %203 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %204 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %203, i32 0, i32 22
  %205 = load i32*, i32** %204, align 8
  %206 = call i32 @memset(i32* %205, i32 0, i32 8)
  %207 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %208 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %207, i32 0, i32 21
  %209 = load i32*, i32** %208, align 8
  %210 = call i32 @memset(i32* %209, i32 0, i32 8)
  %211 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %212 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %211, i32 0, i32 20
  store i32* null, i32** %212, align 8
  %213 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %214 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %213, i32 0, i32 19
  store i32* null, i32** %214, align 8
  %215 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %216 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %215, i32 0, i32 18
  store i32* null, i32** %216, align 8
  %217 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %218 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %217, i32 0, i32 17
  %219 = call i32 @init_waitqueue_head(i32* %218)
  %220 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %221 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %220, i32 0, i32 16
  %222 = call i32 @init_waitqueue_head(i32* %221)
  %223 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %224 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %223, i32 0, i32 10
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i32 0, i32 2
  %226 = call i32 @init_waitqueue_head(i32* %225)
  %227 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %228 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %227, i32 0, i32 15
  %229 = call i32 @init_waitqueue_head(i32* %228)
  %230 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %231 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %230, i32 0, i32 14
  %232 = call i32 @init_waitqueue_head(i32* %231)
  %233 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %234 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %233, i32 0, i32 13
  %235 = call i32 @INIT_LIST_HEAD(i32* %234)
  %236 = load i32, i32* @DLM_LOCK_RES_OWNER_UNKNOWN, align 4
  %237 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %238 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %237, i32 0, i32 12
  store i32 %236, i32* %238, align 4
  %239 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %240 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %239, i32 0, i32 11
  %241 = call i32 @init_waitqueue_head(i32* %240)
  %242 = load i8*, i8** @O2NM_INVALID_NODE_NUM, align 8
  %243 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %244 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %243, i32 0, i32 10
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %244, i32 0, i32 1
  store i8* %242, i8** %245, align 8
  %246 = load i8*, i8** @O2NM_INVALID_NODE_NUM, align 8
  %247 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %248 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %247, i32 0, i32 10
  %249 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %248, i32 0, i32 0
  store i8* %246, i8** %249, align 8
  %250 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %251 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %250, i32 0, i32 9
  %252 = call i32 @atomic_set(i32* %251, i32 0)
  %253 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %254 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %253, i32 0, i32 8
  %255 = call i32 @atomic_set(i32* %254, i32 0)
  store i32 0, i32* %5, align 4
  br label %256

256:                                              ; preds = %275, %141
  %257 = load i32, i32* %5, align 4
  %258 = load i32, i32* @DLM_MLE_NUM_TYPES, align 4
  %259 = icmp slt i32 %257, %258
  br i1 %259, label %260, label %278

260:                                              ; preds = %256
  %261 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %262 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %261, i32 0, i32 7
  %263 = load i32*, i32** %262, align 8
  %264 = load i32, i32* %5, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %263, i64 %265
  %267 = call i32 @atomic_set(i32* %266, i32 0)
  %268 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %269 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %268, i32 0, i32 6
  %270 = load i32*, i32** %269, align 8
  %271 = load i32, i32* %5, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %270, i64 %272
  %274 = call i32 @atomic_set(i32* %273, i32 0)
  br label %275

275:                                              ; preds = %260
  %276 = load i32, i32* %5, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %5, align 4
  br label %256

278:                                              ; preds = %256
  %279 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %280 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %279, i32 0, i32 5
  %281 = call i32 @spin_lock_init(i32* %280)
  %282 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %283 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %282, i32 0, i32 4
  %284 = call i32 @INIT_LIST_HEAD(i32* %283)
  %285 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %286 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %285, i32 0, i32 3
  %287 = load i32, i32* @dlm_dispatch_work, align 4
  %288 = call i32 @INIT_WORK(i32* %286, i32 %287)
  %289 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %290 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %289, i32 0, i32 0
  %291 = call i32 @kref_init(%struct.TYPE_4__* %290)
  %292 = load i32, i32* @DLM_CTXT_NEW, align 4
  %293 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %294 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %293, i32 0, i32 2
  store i32 %292, i32* %294, align 8
  %295 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %296 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %295, i32 0, i32 1
  %297 = call i32 @INIT_LIST_HEAD(i32* %296)
  %298 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %299 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %299, i32 0, i32 0
  %301 = call i32 @atomic_read(i32* %300)
  %302 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %301)
  br label %303

303:                                              ; preds = %278, %122, %77, %44, %28, %12
  %304 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  ret %struct.dlm_ctxt* %304
}

declare dso_local %struct.dlm_ctxt* @kzalloc(i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local %struct.dlm_ctxt* @kmalloc(i64, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @kfree(%struct.dlm_ctxt*) #1

declare dso_local i64 @dlm_alloc_pagevec(i32) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32) #1

declare dso_local i32 @dlm_lockres_hash(%struct.dlm_ctxt*, i32) #1

declare dso_local i32 @dlm_free_pagevec(i8**, i32) #1

declare dso_local i32 @dlm_master_hash(%struct.dlm_ctxt*, i32) #1

declare dso_local i32 @strcpy(%struct.dlm_ctxt*, i8*) #1

declare dso_local i32 @o2nm_this_node(...) #1

declare dso_local i32 @dlm_create_debugfs_subroot(%struct.dlm_ctxt*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mlog(i32, i8*, i32, ...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @kref_init(%struct.TYPE_4__*) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
