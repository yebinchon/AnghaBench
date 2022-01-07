; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pscsi.c_pscsi_req_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pscsi.c_pscsi_req_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, i32, i32, %struct.se_cmd* }
%struct.se_cmd = type { i32, %struct.pscsi_plugin_task* }
%struct.pscsi_plugin_task = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [67 x i8] c"PSCSI Status Byte exception at cmd: %p CDB: 0x%02x Result: 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"PSCSI Host Byte exception at cmd: %p CDB: 0x%02x Result: 0x%08x\0A\00", align 1
@SAM_STAT_CHECK_CONDITION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*, i32)* @pscsi_req_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pscsi_req_done(%struct.request* %0, i32 %1) #0 {
  %3 = alloca %struct.request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.se_cmd*, align 8
  %6 = alloca %struct.pscsi_plugin_task*, align 8
  store %struct.request* %0, %struct.request** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.request*, %struct.request** %3, align 8
  %8 = getelementptr inbounds %struct.request, %struct.request* %7, i32 0, i32 3
  %9 = load %struct.se_cmd*, %struct.se_cmd** %8, align 8
  store %struct.se_cmd* %9, %struct.se_cmd** %5, align 8
  %10 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %11 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %10, i32 0, i32 1
  %12 = load %struct.pscsi_plugin_task*, %struct.pscsi_plugin_task** %11, align 8
  store %struct.pscsi_plugin_task* %12, %struct.pscsi_plugin_task** %6, align 8
  %13 = load %struct.request*, %struct.request** %3, align 8
  %14 = getelementptr inbounds %struct.request, %struct.request* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.pscsi_plugin_task*, %struct.pscsi_plugin_task** %6, align 8
  %17 = getelementptr inbounds %struct.pscsi_plugin_task, %struct.pscsi_plugin_task* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.request*, %struct.request** %3, align 8
  %19 = getelementptr inbounds %struct.request, %struct.request* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.pscsi_plugin_task*, %struct.pscsi_plugin_task** %6, align 8
  %22 = getelementptr inbounds %struct.pscsi_plugin_task, %struct.pscsi_plugin_task* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load %struct.pscsi_plugin_task*, %struct.pscsi_plugin_task** %6, align 8
  %24 = getelementptr inbounds %struct.pscsi_plugin_task, %struct.pscsi_plugin_task* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @status_byte(i32 %25)
  %27 = shl i32 %26, 1
  %28 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %29 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %31 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %2
  %35 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %36 = load %struct.pscsi_plugin_task*, %struct.pscsi_plugin_task** %6, align 8
  %37 = getelementptr inbounds %struct.pscsi_plugin_task, %struct.pscsi_plugin_task* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.pscsi_plugin_task*, %struct.pscsi_plugin_task** %6, align 8
  %42 = getelementptr inbounds %struct.pscsi_plugin_task, %struct.pscsi_plugin_task* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @pr_debug(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), %struct.se_cmd* %35, i32 %40, i32 %43)
  br label %45

45:                                               ; preds = %34, %2
  %46 = load %struct.pscsi_plugin_task*, %struct.pscsi_plugin_task** %6, align 8
  %47 = getelementptr inbounds %struct.pscsi_plugin_task, %struct.pscsi_plugin_task* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @host_byte(i32 %48)
  switch i32 %49, label %56 [
    i32 128, label %50
  ]

50:                                               ; preds = %45
  %51 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %52 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %53 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @target_complete_cmd(%struct.se_cmd* %51, i32 %54)
  br label %70

56:                                               ; preds = %45
  %57 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %58 = load %struct.pscsi_plugin_task*, %struct.pscsi_plugin_task** %6, align 8
  %59 = getelementptr inbounds %struct.pscsi_plugin_task, %struct.pscsi_plugin_task* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.pscsi_plugin_task*, %struct.pscsi_plugin_task** %6, align 8
  %64 = getelementptr inbounds %struct.pscsi_plugin_task, %struct.pscsi_plugin_task* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @pr_debug(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), %struct.se_cmd* %57, i32 %62, i32 %65)
  %67 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %68 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %69 = call i32 @target_complete_cmd(%struct.se_cmd* %67, i32 %68)
  br label %70

70:                                               ; preds = %56, %50
  %71 = load %struct.request*, %struct.request** %3, align 8
  %72 = getelementptr inbounds %struct.request, %struct.request* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.request*, %struct.request** %3, align 8
  %75 = call i32 @__blk_put_request(i32 %73, %struct.request* %74)
  %76 = load %struct.pscsi_plugin_task*, %struct.pscsi_plugin_task** %6, align 8
  %77 = call i32 @kfree(%struct.pscsi_plugin_task* %76)
  ret void
}

declare dso_local i32 @status_byte(i32) #1

declare dso_local i32 @pr_debug(i8*, %struct.se_cmd*, i32, i32) #1

declare dso_local i32 @host_byte(i32) #1

declare dso_local i32 @target_complete_cmd(%struct.se_cmd*, i32) #1

declare dso_local i32 @__blk_put_request(i32, %struct.request*) #1

declare dso_local i32 @kfree(%struct.pscsi_plugin_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
