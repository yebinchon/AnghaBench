; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_dentry_post_unlock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_dentry_post_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.ocfs2_lock_res = type { i32 }
%struct.ocfs2_dentry_lock = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_super*, %struct.ocfs2_lock_res*)* @ocfs2_dentry_post_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_dentry_post_unlock(%struct.ocfs2_super* %0, %struct.ocfs2_lock_res* %1) #0 {
  %3 = alloca %struct.ocfs2_super*, align 8
  %4 = alloca %struct.ocfs2_lock_res*, align 8
  %5 = alloca %struct.ocfs2_dentry_lock*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %3, align 8
  store %struct.ocfs2_lock_res* %1, %struct.ocfs2_lock_res** %4, align 8
  %6 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %7 = call %struct.ocfs2_dentry_lock* @ocfs2_lock_res_dl(%struct.ocfs2_lock_res* %6)
  store %struct.ocfs2_dentry_lock* %7, %struct.ocfs2_dentry_lock** %5, align 8
  %8 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %9 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %5, align 8
  %10 = call i32 @ocfs2_dentry_lock_put(%struct.ocfs2_super* %8, %struct.ocfs2_dentry_lock* %9)
  ret void
}

declare dso_local %struct.ocfs2_dentry_lock* @ocfs2_lock_res_dl(%struct.ocfs2_lock_res*) #1

declare dso_local i32 @ocfs2_dentry_lock_put(%struct.ocfs2_super*, %struct.ocfs2_dentry_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
