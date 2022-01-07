; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/loopback/extr_tcm_loop.c_tcm_loop_queuecommand.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/loopback/extr_tcm_loop.c_tcm_loop_queuecommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { void (%struct.scsi_cmnd*)*, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.tcm_loop_cmd = type { i32, %struct.scsi_cmnd* }

@.str = private unnamed_addr constant [70 x i8] c"tcm_loop_queuecommand() %d:%d:%d:%d got CDB: 0x%02x scsi_buf_len: %u\0A\00", align 1
@tcm_loop_cmd_cache = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Unable to allocate struct tcm_loop_cmd\0A\00", align 1
@DID_ERROR = common dso_local global i32 0, align 4
@tcm_loop_submission_work = common dso_local global i32 0, align 4
@tcm_loop_workqueue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, void (%struct.scsi_cmnd*)*)* @tcm_loop_queuecommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcm_loop_queuecommand(%struct.scsi_cmnd* %0, void (%struct.scsi_cmnd*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca void (%struct.scsi_cmnd*)*, align 8
  %6 = alloca %struct.tcm_loop_cmd*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store void (%struct.scsi_cmnd*)* %1, void (%struct.scsi_cmnd*)** %5, align 8
  %7 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %8 = icmp ne void (%struct.scsi_cmnd*)* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %14 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %13, i32 0, i32 0
  store void (%struct.scsi_cmnd*)* %12, void (%struct.scsi_cmnd*)** %14, align 8
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %16 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %23 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %28 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %27, i32 0, i32 2
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %33 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %32, i32 0, i32 2
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %38 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %43 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %42)
  %44 = call i32 @pr_debug(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %26, i32 %31, i32 %36, i32 %41, i32 %43)
  %45 = load i32, i32* @tcm_loop_cmd_cache, align 4
  %46 = load i32, i32* @GFP_ATOMIC, align 4
  %47 = call %struct.tcm_loop_cmd* @kmem_cache_zalloc(i32 %45, i32 %46)
  store %struct.tcm_loop_cmd* %47, %struct.tcm_loop_cmd** %6, align 8
  %48 = load %struct.tcm_loop_cmd*, %struct.tcm_loop_cmd** %6, align 8
  %49 = icmp ne %struct.tcm_loop_cmd* %48, null
  br i1 %49, label %59, label %50

50:                                               ; preds = %2
  %51 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %52 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %53 = load i32, i32* @DID_ERROR, align 4
  %54 = call i32 @set_host_byte(%struct.scsi_cmnd* %52, i32 %53)
  %55 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %56 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %55, i32 0, i32 0
  %57 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %56, align 8
  %58 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  call void %57(%struct.scsi_cmnd* %58)
  store i32 0, i32* %3, align 4
  br label %71

59:                                               ; preds = %2
  %60 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %61 = load %struct.tcm_loop_cmd*, %struct.tcm_loop_cmd** %6, align 8
  %62 = getelementptr inbounds %struct.tcm_loop_cmd, %struct.tcm_loop_cmd* %61, i32 0, i32 1
  store %struct.scsi_cmnd* %60, %struct.scsi_cmnd** %62, align 8
  %63 = load %struct.tcm_loop_cmd*, %struct.tcm_loop_cmd** %6, align 8
  %64 = getelementptr inbounds %struct.tcm_loop_cmd, %struct.tcm_loop_cmd* %63, i32 0, i32 0
  %65 = load i32, i32* @tcm_loop_submission_work, align 4
  %66 = call i32 @INIT_WORK(i32* %64, i32 %65)
  %67 = load i32, i32* @tcm_loop_workqueue, align 4
  %68 = load %struct.tcm_loop_cmd*, %struct.tcm_loop_cmd** %6, align 8
  %69 = getelementptr inbounds %struct.tcm_loop_cmd, %struct.tcm_loop_cmd* %68, i32 0, i32 0
  %70 = call i32 @queue_work(i32 %67, i32* %69)
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %59, %50
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local %struct.tcm_loop_cmd* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @set_host_byte(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
