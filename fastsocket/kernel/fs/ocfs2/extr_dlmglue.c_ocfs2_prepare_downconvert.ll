; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_prepare_downconvert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_prepare_downconvert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_lock_res = type { i64, i32, i32, i32, i32, i32 }

@DLM_LOCK_NL = common dso_local global i64 0, align 8
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"lockres->l_level (%d) <= new_level (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"lock %s, new_level = %d, l_blocking = %d\0A\00", align 1
@OCFS2_AST_DOWNCONVERT = common dso_local global i32 0, align 4
@OCFS2_LOCK_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_lock_res*, i32)* @ocfs2_prepare_downconvert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_prepare_downconvert(%struct.ocfs2_lock_res* %0, i32 %1) #0 {
  %3 = alloca %struct.ocfs2_lock_res*, align 8
  %4 = alloca i32, align 4
  store %struct.ocfs2_lock_res* %0, %struct.ocfs2_lock_res** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %6 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %5, i32 0, i32 5
  %7 = call i32 @assert_spin_locked(i32* %6)
  %8 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %9 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @DLM_LOCK_NL, align 8
  %12 = icmp sle i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %16 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp sle i32 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load i32, i32* @ML_ERROR, align 4
  %22 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %23 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 (i32, i8*, i32, i32, ...) @mlog(i32 %21, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  %27 = call i32 (...) @BUG()
  br label %28

28:                                               ; preds = %20, %2
  %29 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %30 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %34 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 (i32, i8*, i32, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %32, i64 %35)
  %37 = load i32, i32* @OCFS2_AST_DOWNCONVERT, align 4
  %38 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %39 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %42 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %44 = load i32, i32* @OCFS2_LOCK_BUSY, align 4
  %45 = call i32 @lockres_or_flags(%struct.ocfs2_lock_res* %43, i32 %44)
  %46 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %47 = call i32 @lockres_set_pending(%struct.ocfs2_lock_res* %46)
  ret i32 %47
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @lockres_or_flags(%struct.ocfs2_lock_res*, i32) #1

declare dso_local i32 @lockres_set_pending(%struct.ocfs2_lock_res*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
