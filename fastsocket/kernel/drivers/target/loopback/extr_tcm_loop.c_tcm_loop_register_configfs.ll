; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/loopback/extr_tcm_loop.c_tcm_loop_register_configfs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/loopback/extr_tcm_loop.c_tcm_loop_register_configfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target_fabric_configfs = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@tcm_loop_hba_no_cnt = common dso_local global i64 0, align 8
@THIS_MODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"loopback\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"tcm_loop_register_configfs() failed!\0A\00", align 1
@tcm_loop_get_fabric_name = common dso_local global i32 0, align 4
@tcm_loop_get_fabric_proto_ident = common dso_local global i32 0, align 4
@tcm_loop_get_endpoint_wwn = common dso_local global i32 0, align 4
@tcm_loop_get_tag = common dso_local global i32 0, align 4
@tcm_loop_get_default_depth = common dso_local global i32 0, align 4
@tcm_loop_get_pr_transport_id = common dso_local global i32 0, align 4
@tcm_loop_get_pr_transport_id_len = common dso_local global i32 0, align 4
@tcm_loop_parse_pr_out_transport_id = common dso_local global i32 0, align 4
@tcm_loop_check_demo_mode = common dso_local global i32 0, align 4
@tcm_loop_check_demo_mode_cache = common dso_local global i32 0, align 4
@tcm_loop_check_demo_mode_write_protect = common dso_local global i32 0, align 4
@tcm_loop_check_prod_mode_write_protect = common dso_local global i32 0, align 4
@tcm_loop_tpg_alloc_fabric_acl = common dso_local global i32 0, align 4
@tcm_loop_tpg_release_fabric_acl = common dso_local global i32 0, align 4
@tcm_loop_get_inst_index = common dso_local global i32 0, align 4
@tcm_loop_check_stop_free = common dso_local global i32 0, align 4
@tcm_loop_release_cmd = common dso_local global i32 0, align 4
@tcm_loop_shutdown_session = common dso_local global i32 0, align 4
@tcm_loop_close_session = common dso_local global i32 0, align 4
@tcm_loop_sess_get_index = common dso_local global i32 0, align 4
@tcm_loop_write_pending = common dso_local global i32 0, align 4
@tcm_loop_write_pending_status = common dso_local global i32 0, align 4
@tcm_loop_set_default_node_attributes = common dso_local global i32 0, align 4
@tcm_loop_get_task_tag = common dso_local global i32 0, align 4
@tcm_loop_get_cmd_state = common dso_local global i32 0, align 4
@tcm_loop_queue_data_in = common dso_local global i32 0, align 4
@tcm_loop_queue_status = common dso_local global i32 0, align 4
@tcm_loop_queue_tm_rsp = common dso_local global i32 0, align 4
@tcm_loop_make_scsi_hba = common dso_local global i32 0, align 4
@tcm_loop_drop_scsi_hba = common dso_local global i32 0, align 4
@tcm_loop_make_naa_tpg = common dso_local global i32 0, align 4
@tcm_loop_drop_naa_tpg = common dso_local global i32 0, align 4
@tcm_loop_port_link = common dso_local global i32 0, align 4
@tcm_loop_port_unlink = common dso_local global i32 0, align 4
@tcm_loop_wwn_attrs = common dso_local global i32 0, align 4
@tcm_loop_tpg_attrs = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"target_fabric_configfs_register() for TCM_Loop failed!\0A\00", align 1
@tcm_loop_fabric_configfs = common dso_local global %struct.target_fabric_configfs* null, align 8
@.str.3 = private unnamed_addr constant [54 x i8] c"TCM_LOOP[0] - Set fabric -> tcm_loop_fabric_configfs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @tcm_loop_register_configfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcm_loop_register_configfs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.target_fabric_configfs*, align 8
  %3 = alloca i32, align 4
  store i64 0, i64* @tcm_loop_hba_no_cnt, align 8
  %4 = load i32, i32* @THIS_MODULE, align 4
  %5 = call %struct.target_fabric_configfs* @target_fabric_configfs_init(i32 %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.target_fabric_configfs* %5, %struct.target_fabric_configfs** %2, align 8
  %6 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %7 = call i64 @IS_ERR(%struct.target_fabric_configfs* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %0
  %10 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %11 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %12 = call i32 @PTR_ERR(%struct.target_fabric_configfs* %11)
  store i32 %12, i32* %1, align 4
  br label %158

13:                                               ; preds = %0
  %14 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %15 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 36
  store i32* @tcm_loop_get_fabric_name, i32** %16, align 8
  %17 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %18 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 35
  store i32* @tcm_loop_get_fabric_proto_ident, i32** %19, align 8
  %20 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %21 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 34
  store i32* @tcm_loop_get_endpoint_wwn, i32** %22, align 8
  %23 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %24 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 33
  store i32* @tcm_loop_get_tag, i32** %25, align 8
  %26 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %27 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 32
  store i32* @tcm_loop_get_default_depth, i32** %28, align 8
  %29 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %30 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 31
  store i32* @tcm_loop_get_pr_transport_id, i32** %31, align 8
  %32 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %33 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 30
  store i32* @tcm_loop_get_pr_transport_id_len, i32** %34, align 8
  %35 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %36 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 29
  store i32* @tcm_loop_parse_pr_out_transport_id, i32** %37, align 8
  %38 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %39 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 28
  store i32* @tcm_loop_check_demo_mode, i32** %40, align 8
  %41 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %42 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 27
  store i32* @tcm_loop_check_demo_mode_cache, i32** %43, align 8
  %44 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %45 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 26
  store i32* @tcm_loop_check_demo_mode_write_protect, i32** %46, align 8
  %47 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %48 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 25
  store i32* @tcm_loop_check_prod_mode_write_protect, i32** %49, align 8
  %50 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %51 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 24
  store i32* @tcm_loop_tpg_alloc_fabric_acl, i32** %52, align 8
  %53 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %54 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 23
  store i32* @tcm_loop_tpg_release_fabric_acl, i32** %55, align 8
  %56 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %57 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 22
  store i32* @tcm_loop_get_inst_index, i32** %58, align 8
  %59 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %60 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 21
  store i32* @tcm_loop_check_stop_free, i32** %61, align 8
  %62 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %63 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 20
  store i32* @tcm_loop_release_cmd, i32** %64, align 8
  %65 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %66 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 19
  store i32* @tcm_loop_shutdown_session, i32** %67, align 8
  %68 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %69 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 18
  store i32* @tcm_loop_close_session, i32** %70, align 8
  %71 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %72 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 17
  store i32* @tcm_loop_sess_get_index, i32** %73, align 8
  %74 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %75 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 16
  store i32* null, i32** %76, align 8
  %77 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %78 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 15
  store i32* @tcm_loop_write_pending, i32** %79, align 8
  %80 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %81 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 14
  store i32* @tcm_loop_write_pending_status, i32** %82, align 8
  %83 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %84 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 13
  store i32* @tcm_loop_set_default_node_attributes, i32** %85, align 8
  %86 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %87 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 12
  store i32* @tcm_loop_get_task_tag, i32** %88, align 8
  %89 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %90 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 11
  store i32* @tcm_loop_get_cmd_state, i32** %91, align 8
  %92 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %93 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 10
  store i32* @tcm_loop_queue_data_in, i32** %94, align 8
  %95 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %96 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 9
  store i32* @tcm_loop_queue_status, i32** %97, align 8
  %98 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %99 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 8
  store i32* @tcm_loop_queue_tm_rsp, i32** %100, align 8
  %101 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %102 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 7
  store i32* @tcm_loop_make_scsi_hba, i32** %103, align 8
  %104 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %105 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 6
  store i32* @tcm_loop_drop_scsi_hba, i32** %106, align 8
  %107 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %108 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 5
  store i32* @tcm_loop_make_naa_tpg, i32** %109, align 8
  %110 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %111 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 4
  store i32* @tcm_loop_drop_naa_tpg, i32** %112, align 8
  %113 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %114 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 3
  store i32* @tcm_loop_port_link, i32** %115, align 8
  %116 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %117 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 2
  store i32* @tcm_loop_port_unlink, i32** %118, align 8
  %119 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %120 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  store i32* null, i32** %121, align 8
  %122 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %123 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  store i32* null, i32** %124, align 8
  %125 = load i32, i32* @tcm_loop_wwn_attrs, align 4
  %126 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %127 = call %struct.TYPE_14__* @TF_CIT_TMPL(%struct.target_fabric_configfs* %126)
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  store i32 %125, i32* %129, align 4
  %130 = load i32, i32* @tcm_loop_tpg_attrs, align 4
  %131 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %132 = call %struct.TYPE_14__* @TF_CIT_TMPL(%struct.target_fabric_configfs* %131)
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  store i32 %130, i32* %134, align 8
  %135 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %136 = call %struct.TYPE_14__* @TF_CIT_TMPL(%struct.target_fabric_configfs* %135)
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  store i32* null, i32** %138, align 8
  %139 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %140 = call %struct.TYPE_14__* @TF_CIT_TMPL(%struct.target_fabric_configfs* %139)
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 0
  store i32* null, i32** %142, align 8
  %143 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %144 = call %struct.TYPE_14__* @TF_CIT_TMPL(%struct.target_fabric_configfs* %143)
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 0
  store i32* null, i32** %146, align 8
  %147 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %148 = call i32 @target_fabric_configfs_register(%struct.target_fabric_configfs* %147)
  store i32 %148, i32* %3, align 4
  %149 = load i32, i32* %3, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %13
  %152 = call i32 @pr_err(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %153 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %154 = call i32 @target_fabric_configfs_free(%struct.target_fabric_configfs* %153)
  store i32 -1, i32* %1, align 4
  br label %158

155:                                              ; preds = %13
  %156 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  store %struct.target_fabric_configfs* %156, %struct.target_fabric_configfs** @tcm_loop_fabric_configfs, align 8
  %157 = call i32 @pr_debug(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %158

158:                                              ; preds = %155, %151, %9
  %159 = load i32, i32* %1, align 4
  ret i32 %159
}

declare dso_local %struct.target_fabric_configfs* @target_fabric_configfs_init(i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.target_fabric_configfs*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @PTR_ERR(%struct.target_fabric_configfs*) #1

declare dso_local %struct.TYPE_14__* @TF_CIT_TMPL(%struct.target_fabric_configfs*) #1

declare dso_local i32 @target_fabric_configfs_register(%struct.target_fabric_configfs*) #1

declare dso_local i32 @target_fabric_configfs_free(%struct.target_fabric_configfs*) #1

declare dso_local i32 @pr_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
