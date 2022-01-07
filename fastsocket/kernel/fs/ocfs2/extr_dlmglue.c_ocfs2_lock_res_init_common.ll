; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_lock_res_init_common.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_lock_res_init_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.ocfs2_lock_res = type { i32, %struct.TYPE_2__, i32, i32, i32, i8*, i8*, i8*, i8*, %struct.ocfs2_lock_res_ops* }
%struct.TYPE_2__ = type { i32* }
%struct.ocfs2_lock_res_ops = type { i32 }

@DLM_LOCK_IV = common dso_local global i8* null, align 8
@OCFS2_AST_INVALID = common dso_local global i32 0, align 4
@OCFS2_UNLOCK_INVALID = common dso_local global i32 0, align 4
@OCFS2_LOCK_INITIALIZED = common dso_local global i32 0, align 4
@OCFS2_LOCK_TYPE_OPEN = common dso_local global i32 0, align 4
@lockdep_keys = common dso_local global i32* null, align 8
@ocfs2_lock_type_strings = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_super*, %struct.ocfs2_lock_res*, i32, %struct.ocfs2_lock_res_ops*, i8*)* @ocfs2_lock_res_init_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_lock_res_init_common(%struct.ocfs2_super* %0, %struct.ocfs2_lock_res* %1, i32 %2, %struct.ocfs2_lock_res_ops* %3, i8* %4) #0 {
  %6 = alloca %struct.ocfs2_super*, align 8
  %7 = alloca %struct.ocfs2_lock_res*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ocfs2_lock_res_ops*, align 8
  %10 = alloca i8*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %6, align 8
  store %struct.ocfs2_lock_res* %1, %struct.ocfs2_lock_res** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ocfs2_lock_res_ops* %3, %struct.ocfs2_lock_res_ops** %9, align 8
  store i8* %4, i8** %10, align 8
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %7, align 8
  %13 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.ocfs2_lock_res_ops*, %struct.ocfs2_lock_res_ops** %9, align 8
  %15 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %7, align 8
  %16 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %15, i32 0, i32 9
  store %struct.ocfs2_lock_res_ops* %14, %struct.ocfs2_lock_res_ops** %16, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %7, align 8
  %19 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %18, i32 0, i32 8
  store i8* %17, i8** %19, align 8
  %20 = load i8*, i8** @DLM_LOCK_IV, align 8
  %21 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %7, align 8
  %22 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %21, i32 0, i32 7
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** @DLM_LOCK_IV, align 8
  %24 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %7, align 8
  %25 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %24, i32 0, i32 6
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** @DLM_LOCK_IV, align 8
  %27 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %7, align 8
  %28 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %27, i32 0, i32 5
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* @OCFS2_AST_INVALID, align 4
  %30 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %7, align 8
  %31 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @OCFS2_UNLOCK_INVALID, align 4
  %33 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %7, align 8
  %34 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @OCFS2_LOCK_INITIALIZED, align 4
  %36 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %7, align 8
  %37 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %7, align 8
  %39 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %40 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ocfs2_add_lockres_tracking(%struct.ocfs2_lock_res* %38, i32 %41)
  %43 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %7, align 8
  %44 = call i32 @ocfs2_init_lock_stats(%struct.ocfs2_lock_res* %43)
  ret void
}

declare dso_local i32 @ocfs2_add_lockres_tracking(%struct.ocfs2_lock_res*, i32) #1

declare dso_local i32 @ocfs2_init_lock_stats(%struct.ocfs2_lock_res*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
