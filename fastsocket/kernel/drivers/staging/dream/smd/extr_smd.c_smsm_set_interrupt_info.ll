; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd.c_smsm_set_interrupt_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd.c_smsm_set_interrupt_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsm_interrupt_info = type { i32, i32 }

@SMEM_SMSM_INT_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"smsm_set_sleep_duration <SM NO INT_INFO>\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@msm_smd_debug_mask = common dso_local global i32 0, align 4
@MSM_SMSM_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"smsm_set_interrupt_info %x %x -> %x %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smsm_set_interrupt_info(%struct.smsm_interrupt_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smsm_interrupt_info*, align 8
  %4 = alloca %struct.smsm_interrupt_info*, align 8
  store %struct.smsm_interrupt_info* %0, %struct.smsm_interrupt_info** %3, align 8
  %5 = load i32, i32* @SMEM_SMSM_INT_INFO, align 4
  %6 = call %struct.smsm_interrupt_info* @smem_alloc(i32 %5, i32 8)
  store %struct.smsm_interrupt_info* %6, %struct.smsm_interrupt_info** %4, align 8
  %7 = load %struct.smsm_interrupt_info*, %struct.smsm_interrupt_info** %4, align 8
  %8 = icmp eq %struct.smsm_interrupt_info* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @EIO, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %37

13:                                               ; preds = %1
  %14 = load i32, i32* @msm_smd_debug_mask, align 4
  %15 = load i32, i32* @MSM_SMSM_DEBUG, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %13
  %19 = load %struct.smsm_interrupt_info*, %struct.smsm_interrupt_info** %4, align 8
  %20 = getelementptr inbounds %struct.smsm_interrupt_info, %struct.smsm_interrupt_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.smsm_interrupt_info*, %struct.smsm_interrupt_info** %4, align 8
  %23 = getelementptr inbounds %struct.smsm_interrupt_info, %struct.smsm_interrupt_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.smsm_interrupt_info*, %struct.smsm_interrupt_info** %3, align 8
  %26 = getelementptr inbounds %struct.smsm_interrupt_info, %struct.smsm_interrupt_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.smsm_interrupt_info*, %struct.smsm_interrupt_info** %3, align 8
  %29 = getelementptr inbounds %struct.smsm_interrupt_info, %struct.smsm_interrupt_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @pr_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %21, i32 %24, i32 %27, i32 %30)
  br label %32

32:                                               ; preds = %18, %13
  %33 = load %struct.smsm_interrupt_info*, %struct.smsm_interrupt_info** %4, align 8
  %34 = load %struct.smsm_interrupt_info*, %struct.smsm_interrupt_info** %3, align 8
  %35 = bitcast %struct.smsm_interrupt_info* %33 to i8*
  %36 = bitcast %struct.smsm_interrupt_info* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 %36, i64 8, i1 false)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %32, %9
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.smsm_interrupt_info* @smem_alloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
