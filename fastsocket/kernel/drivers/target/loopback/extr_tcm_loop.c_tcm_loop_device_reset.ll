; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/loopback/extr_tcm_loop.c_tcm_loop_device_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/loopback/extr_tcm_loop.c_tcm_loop_device_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32, i32 }
%struct.se_cmd = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.se_portal_group = type { i32 }
%struct.se_session = type { i32 }
%struct.tcm_loop_cmd = type { i32*, %struct.se_cmd }
%struct.tcm_loop_hba = type { %struct.tcm_loop_tpg*, %struct.tcm_loop_nexus* }
%struct.tcm_loop_tpg = type { %struct.se_portal_group }
%struct.tcm_loop_nexus = type { %struct.se_session* }
%struct.tcm_loop_tmr = type { i32, i32 }

@FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Unable to perform device reset without active I_T Nexus\0A\00", align 1
@tcm_loop_cmd_cache = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Unable to allocate memory for tl_cmd\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Unable to allocate memory for tl_tmr\0A\00", align 1
@DMA_NONE = common dso_local global i32 0, align 4
@MSG_SIMPLE_TAG = common dso_local global i32 0, align 4
@TMR_LUN_RESET = common dso_local global i32 0, align 4
@TMR_FUNCTION_COMPLETE = common dso_local global i64 0, align 8
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @tcm_loop_device_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcm_loop_device_reset(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.se_cmd*, align 8
  %5 = alloca %struct.se_portal_group*, align 8
  %6 = alloca %struct.se_session*, align 8
  %7 = alloca %struct.tcm_loop_cmd*, align 8
  %8 = alloca %struct.tcm_loop_hba*, align 8
  %9 = alloca %struct.tcm_loop_nexus*, align 8
  %10 = alloca %struct.tcm_loop_tmr*, align 8
  %11 = alloca %struct.tcm_loop_tpg*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  store %struct.se_cmd* null, %struct.se_cmd** %4, align 8
  store %struct.tcm_loop_cmd* null, %struct.tcm_loop_cmd** %7, align 8
  store %struct.tcm_loop_tmr* null, %struct.tcm_loop_tmr** %10, align 8
  %14 = load i32, i32* @FAILED, align 4
  store i32 %14, i32* %12, align 4
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %16 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @shost_priv(i32 %19)
  %21 = inttoptr i64 %20 to %struct.tcm_loop_hba**
  %22 = load %struct.tcm_loop_hba*, %struct.tcm_loop_hba** %21, align 8
  store %struct.tcm_loop_hba* %22, %struct.tcm_loop_hba** %8, align 8
  %23 = load %struct.tcm_loop_hba*, %struct.tcm_loop_hba** %8, align 8
  %24 = getelementptr inbounds %struct.tcm_loop_hba, %struct.tcm_loop_hba* %23, i32 0, i32 1
  %25 = load %struct.tcm_loop_nexus*, %struct.tcm_loop_nexus** %24, align 8
  store %struct.tcm_loop_nexus* %25, %struct.tcm_loop_nexus** %9, align 8
  %26 = load %struct.tcm_loop_nexus*, %struct.tcm_loop_nexus** %9, align 8
  %27 = icmp ne %struct.tcm_loop_nexus* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %1
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @FAILED, align 4
  store i32 %30, i32* %2, align 4
  br label %134

31:                                               ; preds = %1
  %32 = load %struct.tcm_loop_nexus*, %struct.tcm_loop_nexus** %9, align 8
  %33 = getelementptr inbounds %struct.tcm_loop_nexus, %struct.tcm_loop_nexus* %32, i32 0, i32 0
  %34 = load %struct.se_session*, %struct.se_session** %33, align 8
  store %struct.se_session* %34, %struct.se_session** %6, align 8
  %35 = load %struct.tcm_loop_hba*, %struct.tcm_loop_hba** %8, align 8
  %36 = getelementptr inbounds %struct.tcm_loop_hba, %struct.tcm_loop_hba* %35, i32 0, i32 0
  %37 = load %struct.tcm_loop_tpg*, %struct.tcm_loop_tpg** %36, align 8
  %38 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %39 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.tcm_loop_tpg, %struct.tcm_loop_tpg* %37, i64 %42
  store %struct.tcm_loop_tpg* %43, %struct.tcm_loop_tpg** %11, align 8
  %44 = load %struct.tcm_loop_tpg*, %struct.tcm_loop_tpg** %11, align 8
  %45 = getelementptr inbounds %struct.tcm_loop_tpg, %struct.tcm_loop_tpg* %44, i32 0, i32 0
  store %struct.se_portal_group* %45, %struct.se_portal_group** %5, align 8
  %46 = load i32, i32* @tcm_loop_cmd_cache, align 4
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call %struct.tcm_loop_cmd* @kmem_cache_zalloc(i32 %46, i32 %47)
  store %struct.tcm_loop_cmd* %48, %struct.tcm_loop_cmd** %7, align 8
  %49 = load %struct.tcm_loop_cmd*, %struct.tcm_loop_cmd** %7, align 8
  %50 = icmp ne %struct.tcm_loop_cmd* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %31
  %52 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @FAILED, align 4
  store i32 %53, i32* %2, align 4
  br label %134

54:                                               ; preds = %31
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call %struct.tcm_loop_tmr* @kzalloc(i32 8, i32 %55)
  store %struct.tcm_loop_tmr* %56, %struct.tcm_loop_tmr** %10, align 8
  %57 = load %struct.tcm_loop_tmr*, %struct.tcm_loop_tmr** %10, align 8
  %58 = icmp ne %struct.tcm_loop_tmr* %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %54
  %60 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %120

61:                                               ; preds = %54
  %62 = load %struct.tcm_loop_tmr*, %struct.tcm_loop_tmr** %10, align 8
  %63 = getelementptr inbounds %struct.tcm_loop_tmr, %struct.tcm_loop_tmr* %62, i32 0, i32 1
  %64 = call i32 @init_waitqueue_head(i32* %63)
  %65 = load %struct.tcm_loop_cmd*, %struct.tcm_loop_cmd** %7, align 8
  %66 = getelementptr inbounds %struct.tcm_loop_cmd, %struct.tcm_loop_cmd* %65, i32 0, i32 1
  store %struct.se_cmd* %66, %struct.se_cmd** %4, align 8
  %67 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %68 = load %struct.se_portal_group*, %struct.se_portal_group** %5, align 8
  %69 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.se_session*, %struct.se_session** %6, align 8
  %72 = load i32, i32* @DMA_NONE, align 4
  %73 = load i32, i32* @MSG_SIMPLE_TAG, align 4
  %74 = load %struct.tcm_loop_cmd*, %struct.tcm_loop_cmd** %7, align 8
  %75 = getelementptr inbounds %struct.tcm_loop_cmd, %struct.tcm_loop_cmd* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = call i32 @transport_init_se_cmd(%struct.se_cmd* %67, i32 %70, %struct.se_session* %71, i32 0, i32 %72, i32 %73, i32* %77)
  %79 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %80 = load %struct.tcm_loop_tmr*, %struct.tcm_loop_tmr** %10, align 8
  %81 = load i32, i32* @TMR_LUN_RESET, align 4
  %82 = load i32, i32* @GFP_KERNEL, align 4
  %83 = call i32 @core_tmr_alloc_req(%struct.se_cmd* %79, %struct.tcm_loop_tmr* %80, i32 %81, i32 %82)
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %13, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %61
  br label %120

87:                                               ; preds = %61
  %88 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %89 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %90 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %89, i32 0, i32 0
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i64 @transport_lookup_tmr_lun(%struct.se_cmd* %88, i32 %93)
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %87
  br label %120

97:                                               ; preds = %87
  %98 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %99 = call i32 @transport_generic_handle_tmr(%struct.se_cmd* %98)
  %100 = load %struct.tcm_loop_tmr*, %struct.tcm_loop_tmr** %10, align 8
  %101 = getelementptr inbounds %struct.tcm_loop_tmr, %struct.tcm_loop_tmr* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.tcm_loop_tmr*, %struct.tcm_loop_tmr** %10, align 8
  %104 = getelementptr inbounds %struct.tcm_loop_tmr, %struct.tcm_loop_tmr* %103, i32 0, i32 0
  %105 = call i32 @atomic_read(i32* %104)
  %106 = call i32 @wait_event(i32 %102, i32 %105)
  %107 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %108 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %107, i32 0, i32 0
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @TMR_FUNCTION_COMPLETE, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %97
  %115 = load i32, i32* @SUCCESS, align 4
  br label %118

116:                                              ; preds = %97
  %117 = load i32, i32* @FAILED, align 4
  br label %118

118:                                              ; preds = %116, %114
  %119 = phi i32 [ %115, %114 ], [ %117, %116 ]
  store i32 %119, i32* %12, align 4
  br label %120

120:                                              ; preds = %118, %96, %86, %59
  %121 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %122 = icmp ne %struct.se_cmd* %121, null
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %125 = call i32 @transport_generic_free_cmd(%struct.se_cmd* %124, i32 1)
  br label %130

126:                                              ; preds = %120
  %127 = load i32, i32* @tcm_loop_cmd_cache, align 4
  %128 = load %struct.tcm_loop_cmd*, %struct.tcm_loop_cmd** %7, align 8
  %129 = call i32 @kmem_cache_free(i32 %127, %struct.tcm_loop_cmd* %128)
  br label %130

130:                                              ; preds = %126, %123
  %131 = load %struct.tcm_loop_tmr*, %struct.tcm_loop_tmr** %10, align 8
  %132 = call i32 @kfree(%struct.tcm_loop_tmr* %131)
  %133 = load i32, i32* %12, align 4
  store i32 %133, i32* %2, align 4
  br label %134

134:                                              ; preds = %130, %51, %28
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i64 @shost_priv(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.tcm_loop_cmd* @kmem_cache_zalloc(i32, i32) #1

declare dso_local %struct.tcm_loop_tmr* @kzalloc(i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @transport_init_se_cmd(%struct.se_cmd*, i32, %struct.se_session*, i32, i32, i32, i32*) #1

declare dso_local i32 @core_tmr_alloc_req(%struct.se_cmd*, %struct.tcm_loop_tmr*, i32, i32) #1

declare dso_local i64 @transport_lookup_tmr_lun(%struct.se_cmd*, i32) #1

declare dso_local i32 @transport_generic_handle_tmr(%struct.se_cmd*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @transport_generic_free_cmd(%struct.se_cmd*, i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.tcm_loop_cmd*) #1

declare dso_local i32 @kfree(%struct.tcm_loop_tmr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
