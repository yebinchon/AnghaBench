; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_dentry.c_ecryptfs_d_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_dentry.c_ecryptfs_d_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }

@ecryptfs_dentry_info_cache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dentry*)* @ecryptfs_d_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecryptfs_d_release(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  %3 = load %struct.dentry*, %struct.dentry** %2, align 8
  %4 = call i64 @ecryptfs_dentry_to_private(%struct.dentry* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %22

6:                                                ; preds = %1
  %7 = load %struct.dentry*, %struct.dentry** %2, align 8
  %8 = call i64 @ecryptfs_dentry_to_lower(%struct.dentry* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %6
  %11 = load %struct.dentry*, %struct.dentry** %2, align 8
  %12 = call i64 @ecryptfs_dentry_to_lower(%struct.dentry* %11)
  %13 = call i32 @dput(i64 %12)
  %14 = load %struct.dentry*, %struct.dentry** %2, align 8
  %15 = call i32 @ecryptfs_dentry_to_lower_mnt(%struct.dentry* %14)
  %16 = call i32 @mntput(i32 %15)
  br label %17

17:                                               ; preds = %10, %6
  %18 = load i32, i32* @ecryptfs_dentry_info_cache, align 4
  %19 = load %struct.dentry*, %struct.dentry** %2, align 8
  %20 = call i64 @ecryptfs_dentry_to_private(%struct.dentry* %19)
  %21 = call i32 @kmem_cache_free(i32 %18, i64 %20)
  br label %22

22:                                               ; preds = %17, %1
  ret void
}

declare dso_local i64 @ecryptfs_dentry_to_private(%struct.dentry*) #1

declare dso_local i64 @ecryptfs_dentry_to_lower(%struct.dentry*) #1

declare dso_local i32 @dput(i64) #1

declare dso_local i32 @mntput(i32) #1

declare dso_local i32 @ecryptfs_dentry_to_lower_mnt(%struct.dentry*) #1

declare dso_local i32 @kmem_cache_free(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
