; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pscsi.c_pscsi_execute_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pscsi.c_pscsi_execute_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, i64, i32, i32*, %struct.pscsi_plugin_task*, i32, i32, %struct.scatterlist* }
%struct.pscsi_plugin_task = type { i32*, i32* }
%struct.scatterlist = type { i32 }
%struct.pscsi_dev_virt = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.request = type { i32, i32, i64, i32*, i32*, i32, %struct.se_cmd*, i32, i32 }
%struct.bio = type { %struct.bio* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"PSCSI: blk_get_request() failed: %ld\0A\00", align 1
@ENOMEM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"pSCSI: blk_make_request() failed\0A\00", align 1
@REQ_TYPE_BLOCK_PC = common dso_local global i32 0, align 4
@pscsi_req_done = common dso_local global i32 0, align 4
@TYPE_DISK = common dso_local global i64 0, align 8
@PS_TIMEOUT_DISK = common dso_local global i32 0, align 4
@PS_TIMEOUT_OTHER = common dso_local global i32 0, align 4
@PS_RETRY = common dso_local global i32 0, align 4
@MSG_HEAD_TAG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.se_cmd*)* @pscsi_execute_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pscsi_execute_cmd(%struct.se_cmd* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca %struct.scatterlist*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pscsi_dev_virt*, align 8
  %8 = alloca %struct.pscsi_plugin_task*, align 8
  %9 = alloca %struct.request*, align 8
  %10 = alloca %struct.bio*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.bio*, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  %13 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %14 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %13, i32 0, i32 7
  %15 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  store %struct.scatterlist* %15, %struct.scatterlist** %4, align 8
  %16 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %17 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %5, align 4
  %19 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %20 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %6, align 4
  %22 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %23 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.pscsi_dev_virt* @PSCSI_DEV(i32 %24)
  store %struct.pscsi_dev_virt* %25, %struct.pscsi_dev_virt** %7, align 8
  %26 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %27 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @scsi_command_size(i32* %28)
  %30 = sext i32 %29 to i64
  %31 = add i64 16, %30
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.pscsi_plugin_task* @kzalloc(i32 %32, i32 %33)
  store %struct.pscsi_plugin_task* %34, %struct.pscsi_plugin_task** %8, align 8
  %35 = load %struct.pscsi_plugin_task*, %struct.pscsi_plugin_task** %8, align 8
  %36 = icmp ne %struct.pscsi_plugin_task* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %1
  %38 = load i64, i64* @TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE, align 8
  store i64 %38, i64* %2, align 8
  br label %200

39:                                               ; preds = %1
  %40 = load %struct.pscsi_plugin_task*, %struct.pscsi_plugin_task** %8, align 8
  %41 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %42 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %41, i32 0, i32 4
  store %struct.pscsi_plugin_task* %40, %struct.pscsi_plugin_task** %42, align 8
  %43 = load %struct.pscsi_plugin_task*, %struct.pscsi_plugin_task** %8, align 8
  %44 = getelementptr inbounds %struct.pscsi_plugin_task, %struct.pscsi_plugin_task* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %47 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %50 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @scsi_command_size(i32* %51)
  %53 = call i32 @memcpy(i32* %45, i32* %48, i32 %52)
  %54 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %55 = icmp ne %struct.scatterlist* %54, null
  br i1 %55, label %88, label %56

56:                                               ; preds = %39
  %57 = load %struct.pscsi_dev_virt*, %struct.pscsi_dev_virt** %7, align 8
  %58 = getelementptr inbounds %struct.pscsi_dev_virt, %struct.pscsi_dev_virt* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @DMA_TO_DEVICE, align 4
  %64 = icmp eq i32 %62, %63
  %65 = zext i1 %64 to i32
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call %struct.request* @blk_get_request(i32 %61, i32 %65, i32 %66)
  store %struct.request* %67, %struct.request** %9, align 8
  %68 = load %struct.request*, %struct.request** %9, align 8
  %69 = icmp ne %struct.request* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %56
  %71 = load %struct.request*, %struct.request** %9, align 8
  %72 = call i64 @IS_ERR(%struct.request* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %70, %56
  %75 = load %struct.request*, %struct.request** %9, align 8
  %76 = icmp ne %struct.request* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load %struct.request*, %struct.request** %9, align 8
  %79 = call i64 @IS_ERR(%struct.request* %78)
  br label %83

80:                                               ; preds = %74
  %81 = load i64, i64* @ENOMEM, align 8
  %82 = sub nsw i64 0, %81
  br label %83

83:                                               ; preds = %80, %77
  %84 = phi i64 [ %79, %77 ], [ %82, %80 ]
  %85 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %84)
  %86 = load i64, i64* @TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE, align 8
  store i64 %86, i64* %11, align 8
  br label %196

87:                                               ; preds = %70
  br label %120

88:                                               ; preds = %39
  %89 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %90 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  %95 = call i32 @BUG_ON(i32 %94)
  %96 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %97 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* %6, align 4
  %100 = call i64 @pscsi_map_sg(%struct.se_cmd* %96, %struct.scatterlist* %97, i32 %98, i32 %99, %struct.bio** %10)
  store i64 %100, i64* %11, align 8
  %101 = load i64, i64* %11, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %88
  br label %196

104:                                              ; preds = %88
  %105 = load %struct.pscsi_dev_virt*, %struct.pscsi_dev_virt** %7, align 8
  %106 = getelementptr inbounds %struct.pscsi_dev_virt, %struct.pscsi_dev_virt* %105, i32 0, i32 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.bio*, %struct.bio** %10, align 8
  %111 = load i32, i32* @GFP_KERNEL, align 4
  %112 = call %struct.request* @blk_make_request(i32 %109, %struct.bio* %110, i32 %111)
  store %struct.request* %112, %struct.request** %9, align 8
  %113 = load %struct.request*, %struct.request** %9, align 8
  %114 = call i64 @IS_ERR(%struct.request* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %104
  %117 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %118 = load i64, i64* @TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE, align 8
  store i64 %118, i64* %11, align 8
  br label %183

119:                                              ; preds = %104
  br label %120

120:                                              ; preds = %119, %87
  %121 = load i32, i32* @REQ_TYPE_BLOCK_PC, align 4
  %122 = load %struct.request*, %struct.request** %9, align 8
  %123 = getelementptr inbounds %struct.request, %struct.request* %122, i32 0, i32 8
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* @pscsi_req_done, align 4
  %125 = load %struct.request*, %struct.request** %9, align 8
  %126 = getelementptr inbounds %struct.request, %struct.request* %125, i32 0, i32 7
  store i32 %124, i32* %126, align 8
  %127 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %128 = load %struct.request*, %struct.request** %9, align 8
  %129 = getelementptr inbounds %struct.request, %struct.request* %128, i32 0, i32 6
  store %struct.se_cmd* %127, %struct.se_cmd** %129, align 8
  %130 = load %struct.pscsi_plugin_task*, %struct.pscsi_plugin_task** %8, align 8
  %131 = getelementptr inbounds %struct.pscsi_plugin_task, %struct.pscsi_plugin_task* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = call i32 @scsi_command_size(i32* %132)
  %134 = load %struct.request*, %struct.request** %9, align 8
  %135 = getelementptr inbounds %struct.request, %struct.request* %134, i32 0, i32 5
  store i32 %133, i32* %135, align 8
  %136 = load %struct.pscsi_plugin_task*, %struct.pscsi_plugin_task** %8, align 8
  %137 = getelementptr inbounds %struct.pscsi_plugin_task, %struct.pscsi_plugin_task* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = load %struct.request*, %struct.request** %9, align 8
  %141 = getelementptr inbounds %struct.request, %struct.request* %140, i32 0, i32 4
  store i32* %139, i32** %141, align 8
  %142 = load %struct.pscsi_plugin_task*, %struct.pscsi_plugin_task** %8, align 8
  %143 = getelementptr inbounds %struct.pscsi_plugin_task, %struct.pscsi_plugin_task* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  %146 = load %struct.request*, %struct.request** %9, align 8
  %147 = getelementptr inbounds %struct.request, %struct.request* %146, i32 0, i32 3
  store i32* %145, i32** %147, align 8
  %148 = load %struct.request*, %struct.request** %9, align 8
  %149 = getelementptr inbounds %struct.request, %struct.request* %148, i32 0, i32 2
  store i64 0, i64* %149, align 8
  %150 = load %struct.pscsi_dev_virt*, %struct.pscsi_dev_virt** %7, align 8
  %151 = getelementptr inbounds %struct.pscsi_dev_virt, %struct.pscsi_dev_virt* %150, i32 0, i32 0
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @TYPE_DISK, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %161

157:                                              ; preds = %120
  %158 = load i32, i32* @PS_TIMEOUT_DISK, align 4
  %159 = load %struct.request*, %struct.request** %9, align 8
  %160 = getelementptr inbounds %struct.request, %struct.request* %159, i32 0, i32 1
  store i32 %158, i32* %160, align 4
  br label %165

161:                                              ; preds = %120
  %162 = load i32, i32* @PS_TIMEOUT_OTHER, align 4
  %163 = load %struct.request*, %struct.request** %9, align 8
  %164 = getelementptr inbounds %struct.request, %struct.request* %163, i32 0, i32 1
  store i32 %162, i32* %164, align 4
  br label %165

165:                                              ; preds = %161, %157
  %166 = load i32, i32* @PS_RETRY, align 4
  %167 = load %struct.request*, %struct.request** %9, align 8
  %168 = getelementptr inbounds %struct.request, %struct.request* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 8
  %169 = load %struct.pscsi_dev_virt*, %struct.pscsi_dev_virt** %7, align 8
  %170 = getelementptr inbounds %struct.pscsi_dev_virt, %struct.pscsi_dev_virt* %169, i32 0, i32 0
  %171 = load %struct.TYPE_2__*, %struct.TYPE_2__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.request*, %struct.request** %9, align 8
  %175 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %176 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @MSG_HEAD_TAG, align 8
  %179 = icmp eq i64 %177, %178
  %180 = zext i1 %179 to i32
  %181 = load i32, i32* @pscsi_req_done, align 4
  %182 = call i32 @blk_execute_rq_nowait(i32 %173, i32* null, %struct.request* %174, i32 %180, i32 %181)
  store i64 0, i64* %2, align 8
  br label %200

183:                                              ; preds = %116
  br label %184

184:                                              ; preds = %187, %183
  %185 = load %struct.bio*, %struct.bio** %10, align 8
  %186 = icmp ne %struct.bio* %185, null
  br i1 %186, label %187, label %194

187:                                              ; preds = %184
  %188 = load %struct.bio*, %struct.bio** %10, align 8
  store %struct.bio* %188, %struct.bio** %12, align 8
  %189 = load %struct.bio*, %struct.bio** %10, align 8
  %190 = getelementptr inbounds %struct.bio, %struct.bio* %189, i32 0, i32 0
  %191 = load %struct.bio*, %struct.bio** %190, align 8
  store %struct.bio* %191, %struct.bio** %10, align 8
  %192 = load %struct.bio*, %struct.bio** %12, align 8
  %193 = call i32 @bio_endio(%struct.bio* %192, i32 0)
  br label %184

194:                                              ; preds = %184
  %195 = load i64, i64* @TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE, align 8
  store i64 %195, i64* %11, align 8
  br label %196

196:                                              ; preds = %194, %103, %83
  %197 = load %struct.pscsi_plugin_task*, %struct.pscsi_plugin_task** %8, align 8
  %198 = call i32 @kfree(%struct.pscsi_plugin_task* %197)
  %199 = load i64, i64* %11, align 8
  store i64 %199, i64* %2, align 8
  br label %200

200:                                              ; preds = %196, %165, %37
  %201 = load i64, i64* %2, align 8
  ret i64 %201
}

declare dso_local %struct.pscsi_dev_virt* @PSCSI_DEV(i32) #1

declare dso_local %struct.pscsi_plugin_task* @kzalloc(i32, i32) #1

declare dso_local i32 @scsi_command_size(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local %struct.request* @blk_get_request(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.request*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @pscsi_map_sg(%struct.se_cmd*, %struct.scatterlist*, i32, i32, %struct.bio**) #1

declare dso_local %struct.request* @blk_make_request(i32, %struct.bio*, i32) #1

declare dso_local i32 @blk_execute_rq_nowait(i32, i32*, %struct.request*, i32, i32) #1

declare dso_local i32 @bio_endio(%struct.bio*, i32) #1

declare dso_local i32 @kfree(%struct.pscsi_plugin_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
