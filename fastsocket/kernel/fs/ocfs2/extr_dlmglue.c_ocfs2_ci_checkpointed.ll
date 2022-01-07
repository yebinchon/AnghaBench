; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_ci_checkpointed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_ci_checkpointed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_caching_info = type { i32 }
%struct.ocfs2_lock_res = type { i64 }

@DLM_LOCK_NL = common dso_local global i32 0, align 4
@DLM_LOCK_PR = common dso_local global i32 0, align 4
@DLM_LOCK_EX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_caching_info*, %struct.ocfs2_lock_res*, i32)* @ocfs2_ci_checkpointed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_ci_checkpointed(%struct.ocfs2_caching_info* %0, %struct.ocfs2_lock_res* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ocfs2_caching_info*, align 8
  %6 = alloca %struct.ocfs2_lock_res*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ocfs2_caching_info* %0, %struct.ocfs2_caching_info** %5, align 8
  store %struct.ocfs2_lock_res* %1, %struct.ocfs2_lock_res** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %5, align 8
  %10 = call i32 @ocfs2_ci_fully_checkpointed(%struct.ocfs2_caching_info* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @DLM_LOCK_NL, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @DLM_LOCK_PR, align 4
  %17 = icmp ne i32 %15, %16
  br label %18

18:                                               ; preds = %14, %3
  %19 = phi i1 [ false, %3 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %23 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DLM_LOCK_EX, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %18
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %27, %18
  %32 = phi i1 [ false, %18 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 1, i32* %4, align 4
  br label %43

38:                                               ; preds = %31
  %39 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %5, align 8
  %40 = call i32 @ocfs2_metadata_cache_get_super(%struct.ocfs2_caching_info* %39)
  %41 = call i32 @OCFS2_SB(i32 %40)
  %42 = call i32 @ocfs2_start_checkpoint(i32 %41)
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %38, %37
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @ocfs2_ci_fully_checkpointed(%struct.ocfs2_caching_info*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_start_checkpoint(i32) #1

declare dso_local i32 @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_metadata_cache_get_super(%struct.ocfs2_caching_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
