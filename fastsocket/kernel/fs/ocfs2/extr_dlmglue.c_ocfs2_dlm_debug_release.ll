; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_dlm_debug_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_dlm_debug_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i64 }
%struct.seq_file = type { %struct.ocfs2_dlm_seq_priv* }
%struct.ocfs2_dlm_seq_priv = type { i32, %struct.ocfs2_lock_res }
%struct.ocfs2_lock_res = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @ocfs2_dlm_debug_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_dlm_debug_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca %struct.ocfs2_dlm_seq_priv*, align 8
  %7 = alloca %struct.ocfs2_lock_res*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.seq_file*
  store %struct.seq_file* %11, %struct.seq_file** %5, align 8
  %12 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %13 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %12, i32 0, i32 0
  %14 = load %struct.ocfs2_dlm_seq_priv*, %struct.ocfs2_dlm_seq_priv** %13, align 8
  store %struct.ocfs2_dlm_seq_priv* %14, %struct.ocfs2_dlm_seq_priv** %6, align 8
  %15 = load %struct.ocfs2_dlm_seq_priv*, %struct.ocfs2_dlm_seq_priv** %6, align 8
  %16 = getelementptr inbounds %struct.ocfs2_dlm_seq_priv, %struct.ocfs2_dlm_seq_priv* %15, i32 0, i32 1
  store %struct.ocfs2_lock_res* %16, %struct.ocfs2_lock_res** %7, align 8
  %17 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %7, align 8
  %18 = call i32 @ocfs2_remove_lockres_tracking(%struct.ocfs2_lock_res* %17)
  %19 = load %struct.ocfs2_dlm_seq_priv*, %struct.ocfs2_dlm_seq_priv** %6, align 8
  %20 = getelementptr inbounds %struct.ocfs2_dlm_seq_priv, %struct.ocfs2_dlm_seq_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ocfs2_put_dlm_debug(i32 %21)
  %23 = load %struct.inode*, %struct.inode** %3, align 8
  %24 = load %struct.file*, %struct.file** %4, align 8
  %25 = call i32 @seq_release_private(%struct.inode* %23, %struct.file* %24)
  ret i32 %25
}

declare dso_local i32 @ocfs2_remove_lockres_tracking(%struct.ocfs2_lock_res*) #1

declare dso_local i32 @ocfs2_put_dlm_debug(i32) #1

declare dso_local i32 @seq_release_private(%struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
