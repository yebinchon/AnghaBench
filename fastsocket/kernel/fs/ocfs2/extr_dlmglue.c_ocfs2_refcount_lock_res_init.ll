; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_refcount_lock_res_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_refcount_lock_res_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_lock_res = type { i32 }
%struct.ocfs2_super = type { i32 }

@OCFS2_LOCK_TYPE_REFCOUNT = common dso_local global i32 0, align 4
@ocfs2_refcount_block_lops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_refcount_lock_res_init(%struct.ocfs2_lock_res* %0, %struct.ocfs2_super* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ocfs2_lock_res*, align 8
  %6 = alloca %struct.ocfs2_super*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ocfs2_lock_res* %0, %struct.ocfs2_lock_res** %5, align 8
  store %struct.ocfs2_super* %1, %struct.ocfs2_super** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %10 = call i32 @ocfs2_lock_res_init_once(%struct.ocfs2_lock_res* %9)
  %11 = load i32, i32* @OCFS2_LOCK_TYPE_REFCOUNT, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %15 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ocfs2_build_lock_name(i32 %11, i32 %12, i32 %13, i32 %16)
  %18 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %19 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %20 = load i32, i32* @OCFS2_LOCK_TYPE_REFCOUNT, align 4
  %21 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %22 = call i32 @ocfs2_lock_res_init_common(%struct.ocfs2_super* %18, %struct.ocfs2_lock_res* %19, i32 %20, i32* @ocfs2_refcount_block_lops, %struct.ocfs2_super* %21)
  ret void
}

declare dso_local i32 @ocfs2_lock_res_init_once(%struct.ocfs2_lock_res*) #1

declare dso_local i32 @ocfs2_build_lock_name(i32, i32, i32, i32) #1

declare dso_local i32 @ocfs2_lock_res_init_common(%struct.ocfs2_super*, %struct.ocfs2_lock_res*, i32, i32*, %struct.ocfs2_super*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
