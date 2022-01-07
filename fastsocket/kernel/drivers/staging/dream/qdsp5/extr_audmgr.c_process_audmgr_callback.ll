; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audmgr.c_process_audmgr_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audmgr.c_process_audmgr_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audmgr = type { i32, i32, i32 }
%struct.rpc_audmgr_cb_func_ptr = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"audmgr: rpc READY handle=0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"audmgr: rpc CODEC_CONFIG volume=0x%08x\0A\00", align 1
@STATE_ENABLED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"audmgr: PENDING?\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"audmgr: SUSPEND?\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"audmgr: FAILURE\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"audmgr: VOLUME_CHANGE?\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"audmgr: DISABLED\0A\00", align 1
@STATE_DISABLED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"audmgr: ERROR?\0A\00", align 1
@STATE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audmgr*, %struct.rpc_audmgr_cb_func_ptr*, i32)* @process_audmgr_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_audmgr_callback(%struct.audmgr* %0, %struct.rpc_audmgr_cb_func_ptr* %1, i32 %2) #0 {
  %4 = alloca %struct.audmgr*, align 8
  %5 = alloca %struct.rpc_audmgr_cb_func_ptr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.audmgr* %0, %struct.audmgr** %4, align 8
  store %struct.rpc_audmgr_cb_func_ptr* %1, %struct.rpc_audmgr_cb_func_ptr** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = sext i32 %8 to i64
  %10 = icmp ult i64 %9, 12
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %85

12:                                               ; preds = %3
  %13 = load %struct.rpc_audmgr_cb_func_ptr*, %struct.rpc_audmgr_cb_func_ptr** %5, align 8
  %14 = getelementptr inbounds %struct.rpc_audmgr_cb_func_ptr, %struct.rpc_audmgr_cb_func_ptr* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @be32_to_cpu(i32 %15)
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %85

19:                                               ; preds = %12
  %20 = load %struct.rpc_audmgr_cb_func_ptr*, %struct.rpc_audmgr_cb_func_ptr** %5, align 8
  %21 = getelementptr inbounds %struct.rpc_audmgr_cb_func_ptr, %struct.rpc_audmgr_cb_func_ptr* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @be32_to_cpu(i32 %22)
  switch i32 %23, label %84 [
    i32 130, label %24
    i32 135, label %41
    i32 131, label %60
    i32 129, label %62
    i32 132, label %64
    i32 128, label %66
    i32 134, label %68
    i32 133, label %76
  ]

24:                                               ; preds = %19
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp ult i64 %26, 16
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %85

29:                                               ; preds = %24
  %30 = load %struct.rpc_audmgr_cb_func_ptr*, %struct.rpc_audmgr_cb_func_ptr** %5, align 8
  %31 = getelementptr inbounds %struct.rpc_audmgr_cb_func_ptr, %struct.rpc_audmgr_cb_func_ptr* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @be32_to_cpu(i32 %33)
  %35 = load %struct.audmgr*, %struct.audmgr** %4, align 8
  %36 = getelementptr inbounds %struct.audmgr, %struct.audmgr* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.audmgr*, %struct.audmgr** %4, align 8
  %38 = getelementptr inbounds %struct.audmgr, %struct.audmgr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %85

41:                                               ; preds = %19
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp ult i64 %43, 16
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %85

46:                                               ; preds = %41
  %47 = load %struct.rpc_audmgr_cb_func_ptr*, %struct.rpc_audmgr_cb_func_ptr** %5, align 8
  %48 = getelementptr inbounds %struct.rpc_audmgr_cb_func_ptr, %struct.rpc_audmgr_cb_func_ptr* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @be32_to_cpu(i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @pr_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @STATE_ENABLED, align 4
  %55 = load %struct.audmgr*, %struct.audmgr** %4, align 8
  %56 = getelementptr inbounds %struct.audmgr, %struct.audmgr* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load %struct.audmgr*, %struct.audmgr** %4, align 8
  %58 = getelementptr inbounds %struct.audmgr, %struct.audmgr* %57, i32 0, i32 1
  %59 = call i32 @wake_up(i32* %58)
  br label %85

60:                                               ; preds = %19
  %61 = call i32 @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %85

62:                                               ; preds = %19
  %63 = call i32 @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %85

64:                                               ; preds = %19
  %65 = call i32 @pr_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %85

66:                                               ; preds = %19
  %67 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %85

68:                                               ; preds = %19
  %69 = call i32 @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %70 = load i32, i32* @STATE_DISABLED, align 4
  %71 = load %struct.audmgr*, %struct.audmgr** %4, align 8
  %72 = getelementptr inbounds %struct.audmgr, %struct.audmgr* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load %struct.audmgr*, %struct.audmgr** %4, align 8
  %74 = getelementptr inbounds %struct.audmgr, %struct.audmgr* %73, i32 0, i32 1
  %75 = call i32 @wake_up(i32* %74)
  br label %85

76:                                               ; preds = %19
  %77 = call i32 @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %78 = load i32, i32* @STATE_ERROR, align 4
  %79 = load %struct.audmgr*, %struct.audmgr** %4, align 8
  %80 = getelementptr inbounds %struct.audmgr, %struct.audmgr* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 4
  %81 = load %struct.audmgr*, %struct.audmgr** %4, align 8
  %82 = getelementptr inbounds %struct.audmgr, %struct.audmgr* %81, i32 0, i32 1
  %83 = call i32 @wake_up(i32* %82)
  br label %85

84:                                               ; preds = %19
  br label %85

85:                                               ; preds = %11, %18, %84, %76, %68, %66, %64, %62, %60, %46, %45, %29, %28
  ret void
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
