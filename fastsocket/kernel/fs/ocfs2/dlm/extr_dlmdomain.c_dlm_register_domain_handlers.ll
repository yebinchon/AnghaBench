; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_register_domain_handlers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_register_domain_handlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"registering handlers.\0A\00", align 1
@O2HB_NODE_DOWN_CB = common dso_local global i32 0, align 4
@dlm_hb_node_down_cb = common dso_local global i32 0, align 4
@DLM_HB_NODE_DOWN_PRI = common dso_local global i32 0, align 4
@O2HB_NODE_UP_CB = common dso_local global i32 0, align 4
@dlm_hb_node_up_cb = common dso_local global i32 0, align 4
@DLM_HB_NODE_UP_PRI = common dso_local global i32 0, align 4
@DLM_MASTER_REQUEST_MSG = common dso_local global i32 0, align 4
@dlm_master_request_handler = common dso_local global i32 0, align 4
@DLM_ASSERT_MASTER_MSG = common dso_local global i32 0, align 4
@dlm_assert_master_handler = common dso_local global i32 0, align 4
@dlm_assert_master_post_handler = common dso_local global i32* null, align 8
@DLM_CREATE_LOCK_MSG = common dso_local global i32 0, align 4
@dlm_create_lock_handler = common dso_local global i32 0, align 4
@DLM_CONVERT_LOCK_MSG = common dso_local global i32 0, align 4
@DLM_CONVERT_LOCK_MAX_LEN = common dso_local global i32 0, align 4
@dlm_convert_lock_handler = common dso_local global i32 0, align 4
@DLM_UNLOCK_LOCK_MSG = common dso_local global i32 0, align 4
@DLM_UNLOCK_LOCK_MAX_LEN = common dso_local global i32 0, align 4
@dlm_unlock_lock_handler = common dso_local global i32 0, align 4
@DLM_PROXY_AST_MSG = common dso_local global i32 0, align 4
@DLM_PROXY_AST_MAX_LEN = common dso_local global i32 0, align 4
@dlm_proxy_ast_handler = common dso_local global i32 0, align 4
@DLM_EXIT_DOMAIN_MSG = common dso_local global i32 0, align 4
@dlm_exit_domain_handler = common dso_local global i32 0, align 4
@DLM_DEREF_LOCKRES_MSG = common dso_local global i32 0, align 4
@dlm_deref_lockres_handler = common dso_local global i32 0, align 4
@DLM_MIGRATE_REQUEST_MSG = common dso_local global i32 0, align 4
@dlm_migrate_request_handler = common dso_local global i32 0, align 4
@DLM_MIG_LOCKRES_MSG = common dso_local global i32 0, align 4
@DLM_MIG_LOCKRES_MAX_LEN = common dso_local global i32 0, align 4
@dlm_mig_lockres_handler = common dso_local global i32 0, align 4
@DLM_MASTER_REQUERY_MSG = common dso_local global i32 0, align 4
@dlm_master_requery_handler = common dso_local global i32 0, align 4
@DLM_LOCK_REQUEST_MSG = common dso_local global i32 0, align 4
@dlm_request_all_locks_handler = common dso_local global i32 0, align 4
@DLM_RECO_DATA_DONE_MSG = common dso_local global i32 0, align 4
@dlm_reco_data_done_handler = common dso_local global i32 0, align 4
@DLM_BEGIN_RECO_MSG = common dso_local global i32 0, align 4
@dlm_begin_reco_handler = common dso_local global i32 0, align 4
@DLM_FINALIZE_RECO_MSG = common dso_local global i32 0, align 4
@dlm_finalize_reco_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ctxt*)* @dlm_register_domain_handlers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_register_domain_handlers(%struct.dlm_ctxt* %0) #0 {
  %2 = alloca %struct.dlm_ctxt*, align 8
  %3 = alloca i32, align 4
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %2, align 8
  %4 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %6 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %5, i32 0, i32 3
  %7 = load i32, i32* @O2HB_NODE_DOWN_CB, align 4
  %8 = load i32, i32* @dlm_hb_node_down_cb, align 4
  %9 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %10 = load i32, i32* @DLM_HB_NODE_DOWN_PRI, align 4
  %11 = call i32 @o2hb_setup_callback(i32* %6, i32 %7, i32 %8, %struct.dlm_ctxt* %9, i32 %10)
  %12 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %13 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %12, i32 0, i32 3
  %14 = call i32 @o2hb_register_callback(i32* null, i32* %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %233

18:                                               ; preds = %1
  %19 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %20 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %19, i32 0, i32 2
  %21 = load i32, i32* @O2HB_NODE_UP_CB, align 4
  %22 = load i32, i32* @dlm_hb_node_up_cb, align 4
  %23 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %24 = load i32, i32* @DLM_HB_NODE_UP_PRI, align 4
  %25 = call i32 @o2hb_setup_callback(i32* %20, i32 %21, i32 %22, %struct.dlm_ctxt* %23, i32 %24)
  %26 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %27 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %26, i32 0, i32 2
  %28 = call i32 @o2hb_register_callback(i32* null, i32* %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %18
  br label %233

32:                                               ; preds = %18
  %33 = load i32, i32* @DLM_MASTER_REQUEST_MSG, align 4
  %34 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %35 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @dlm_master_request_handler, align 4
  %38 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %39 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %40 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %39, i32 0, i32 0
  %41 = call i32 @o2net_register_handler(i32 %33, i32 %36, i32 4, i32 %37, %struct.dlm_ctxt* %38, i32* null, i32* %40)
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  br label %233

45:                                               ; preds = %32
  %46 = load i32, i32* @DLM_ASSERT_MASTER_MSG, align 4
  %47 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %48 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @dlm_assert_master_handler, align 4
  %51 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %52 = load i32*, i32** @dlm_assert_master_post_handler, align 8
  %53 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %54 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %53, i32 0, i32 0
  %55 = call i32 @o2net_register_handler(i32 %46, i32 %49, i32 4, i32 %50, %struct.dlm_ctxt* %51, i32* %52, i32* %54)
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* %3, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %45
  br label %233

59:                                               ; preds = %45
  %60 = load i32, i32* @DLM_CREATE_LOCK_MSG, align 4
  %61 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %62 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @dlm_create_lock_handler, align 4
  %65 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %66 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %67 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %66, i32 0, i32 0
  %68 = call i32 @o2net_register_handler(i32 %60, i32 %63, i32 4, i32 %64, %struct.dlm_ctxt* %65, i32* null, i32* %67)
  store i32 %68, i32* %3, align 4
  %69 = load i32, i32* %3, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %59
  br label %233

72:                                               ; preds = %59
  %73 = load i32, i32* @DLM_CONVERT_LOCK_MSG, align 4
  %74 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %75 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @DLM_CONVERT_LOCK_MAX_LEN, align 4
  %78 = load i32, i32* @dlm_convert_lock_handler, align 4
  %79 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %80 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %81 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %80, i32 0, i32 0
  %82 = call i32 @o2net_register_handler(i32 %73, i32 %76, i32 %77, i32 %78, %struct.dlm_ctxt* %79, i32* null, i32* %81)
  store i32 %82, i32* %3, align 4
  %83 = load i32, i32* %3, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %72
  br label %233

86:                                               ; preds = %72
  %87 = load i32, i32* @DLM_UNLOCK_LOCK_MSG, align 4
  %88 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %89 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @DLM_UNLOCK_LOCK_MAX_LEN, align 4
  %92 = load i32, i32* @dlm_unlock_lock_handler, align 4
  %93 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %94 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %95 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %94, i32 0, i32 0
  %96 = call i32 @o2net_register_handler(i32 %87, i32 %90, i32 %91, i32 %92, %struct.dlm_ctxt* %93, i32* null, i32* %95)
  store i32 %96, i32* %3, align 4
  %97 = load i32, i32* %3, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %86
  br label %233

100:                                              ; preds = %86
  %101 = load i32, i32* @DLM_PROXY_AST_MSG, align 4
  %102 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %103 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @DLM_PROXY_AST_MAX_LEN, align 4
  %106 = load i32, i32* @dlm_proxy_ast_handler, align 4
  %107 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %108 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %109 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %108, i32 0, i32 0
  %110 = call i32 @o2net_register_handler(i32 %101, i32 %104, i32 %105, i32 %106, %struct.dlm_ctxt* %107, i32* null, i32* %109)
  store i32 %110, i32* %3, align 4
  %111 = load i32, i32* %3, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %100
  br label %233

114:                                              ; preds = %100
  %115 = load i32, i32* @DLM_EXIT_DOMAIN_MSG, align 4
  %116 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %117 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @dlm_exit_domain_handler, align 4
  %120 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %121 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %122 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %121, i32 0, i32 0
  %123 = call i32 @o2net_register_handler(i32 %115, i32 %118, i32 4, i32 %119, %struct.dlm_ctxt* %120, i32* null, i32* %122)
  store i32 %123, i32* %3, align 4
  %124 = load i32, i32* %3, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %114
  br label %233

127:                                              ; preds = %114
  %128 = load i32, i32* @DLM_DEREF_LOCKRES_MSG, align 4
  %129 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %130 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @dlm_deref_lockres_handler, align 4
  %133 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %134 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %135 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %134, i32 0, i32 0
  %136 = call i32 @o2net_register_handler(i32 %128, i32 %131, i32 4, i32 %132, %struct.dlm_ctxt* %133, i32* null, i32* %135)
  store i32 %136, i32* %3, align 4
  %137 = load i32, i32* %3, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %127
  br label %233

140:                                              ; preds = %127
  %141 = load i32, i32* @DLM_MIGRATE_REQUEST_MSG, align 4
  %142 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %143 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @dlm_migrate_request_handler, align 4
  %146 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %147 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %148 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %147, i32 0, i32 0
  %149 = call i32 @o2net_register_handler(i32 %141, i32 %144, i32 4, i32 %145, %struct.dlm_ctxt* %146, i32* null, i32* %148)
  store i32 %149, i32* %3, align 4
  %150 = load i32, i32* %3, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %140
  br label %233

153:                                              ; preds = %140
  %154 = load i32, i32* @DLM_MIG_LOCKRES_MSG, align 4
  %155 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %156 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @DLM_MIG_LOCKRES_MAX_LEN, align 4
  %159 = load i32, i32* @dlm_mig_lockres_handler, align 4
  %160 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %161 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %162 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %161, i32 0, i32 0
  %163 = call i32 @o2net_register_handler(i32 %154, i32 %157, i32 %158, i32 %159, %struct.dlm_ctxt* %160, i32* null, i32* %162)
  store i32 %163, i32* %3, align 4
  %164 = load i32, i32* %3, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %153
  br label %233

167:                                              ; preds = %153
  %168 = load i32, i32* @DLM_MASTER_REQUERY_MSG, align 4
  %169 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %170 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @dlm_master_requery_handler, align 4
  %173 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %174 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %175 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %174, i32 0, i32 0
  %176 = call i32 @o2net_register_handler(i32 %168, i32 %171, i32 4, i32 %172, %struct.dlm_ctxt* %173, i32* null, i32* %175)
  store i32 %176, i32* %3, align 4
  %177 = load i32, i32* %3, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %167
  br label %233

180:                                              ; preds = %167
  %181 = load i32, i32* @DLM_LOCK_REQUEST_MSG, align 4
  %182 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %183 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @dlm_request_all_locks_handler, align 4
  %186 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %187 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %188 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %187, i32 0, i32 0
  %189 = call i32 @o2net_register_handler(i32 %181, i32 %184, i32 4, i32 %185, %struct.dlm_ctxt* %186, i32* null, i32* %188)
  store i32 %189, i32* %3, align 4
  %190 = load i32, i32* %3, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %180
  br label %233

193:                                              ; preds = %180
  %194 = load i32, i32* @DLM_RECO_DATA_DONE_MSG, align 4
  %195 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %196 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @dlm_reco_data_done_handler, align 4
  %199 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %200 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %201 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %200, i32 0, i32 0
  %202 = call i32 @o2net_register_handler(i32 %194, i32 %197, i32 4, i32 %198, %struct.dlm_ctxt* %199, i32* null, i32* %201)
  store i32 %202, i32* %3, align 4
  %203 = load i32, i32* %3, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %193
  br label %233

206:                                              ; preds = %193
  %207 = load i32, i32* @DLM_BEGIN_RECO_MSG, align 4
  %208 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %209 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @dlm_begin_reco_handler, align 4
  %212 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %213 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %214 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %213, i32 0, i32 0
  %215 = call i32 @o2net_register_handler(i32 %207, i32 %210, i32 4, i32 %211, %struct.dlm_ctxt* %212, i32* null, i32* %214)
  store i32 %215, i32* %3, align 4
  %216 = load i32, i32* %3, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %206
  br label %233

219:                                              ; preds = %206
  %220 = load i32, i32* @DLM_FINALIZE_RECO_MSG, align 4
  %221 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %222 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @dlm_finalize_reco_handler, align 4
  %225 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %226 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %227 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %226, i32 0, i32 0
  %228 = call i32 @o2net_register_handler(i32 %220, i32 %223, i32 4, i32 %224, %struct.dlm_ctxt* %225, i32* null, i32* %227)
  store i32 %228, i32* %3, align 4
  %229 = load i32, i32* %3, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %219
  br label %233

232:                                              ; preds = %219
  br label %233

233:                                              ; preds = %232, %231, %218, %205, %192, %179, %166, %152, %139, %126, %113, %99, %85, %71, %58, %44, %31, %17
  %234 = load i32, i32* %3, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %233
  %237 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %238 = call i32 @dlm_unregister_domain_handlers(%struct.dlm_ctxt* %237)
  br label %239

239:                                              ; preds = %236, %233
  %240 = load i32, i32* %3, align 4
  ret i32 %240
}

declare dso_local i32 @mlog(i32, i8*) #1

declare dso_local i32 @o2hb_setup_callback(i32*, i32, i32, %struct.dlm_ctxt*, i32) #1

declare dso_local i32 @o2hb_register_callback(i32*, i32*) #1

declare dso_local i32 @o2net_register_handler(i32, i32, i32, i32, %struct.dlm_ctxt*, i32*, i32*) #1

declare dso_local i32 @dlm_unregister_domain_handlers(%struct.dlm_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
