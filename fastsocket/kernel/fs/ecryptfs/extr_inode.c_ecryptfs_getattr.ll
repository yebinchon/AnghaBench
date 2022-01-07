; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_inode.c_ecryptfs_getattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_inode.c_ecryptfs_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32 }
%struct.dentry = type { i32 }
%struct.kstat = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecryptfs_getattr(%struct.vfsmount* %0, %struct.dentry* %1, %struct.kstat* %2) #0 {
  %4 = alloca %struct.vfsmount*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.kstat*, align 8
  %7 = alloca %struct.kstat, align 4
  %8 = alloca i32, align 4
  store %struct.vfsmount* %0, %struct.vfsmount** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store %struct.kstat* %2, %struct.kstat** %6, align 8
  %9 = load %struct.dentry*, %struct.dentry** %5, align 8
  %10 = call i32 @ecryptfs_dentry_to_lower_mnt(%struct.dentry* %9)
  %11 = load %struct.dentry*, %struct.dentry** %5, align 8
  %12 = call i32 @ecryptfs_dentry_to_lower(%struct.dentry* %11)
  %13 = call i32 @vfs_getattr(i32 %10, i32 %12, %struct.kstat* %7)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %3
  %17 = load %struct.dentry*, %struct.dentry** %5, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.kstat*, %struct.kstat** %6, align 8
  %21 = call i32 @generic_fillattr(i32 %19, %struct.kstat* %20)
  %22 = getelementptr inbounds %struct.kstat, %struct.kstat* %7, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.kstat*, %struct.kstat** %6, align 8
  %25 = getelementptr inbounds %struct.kstat, %struct.kstat* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  br label %26

26:                                               ; preds = %16, %3
  %27 = load i32, i32* %8, align 4
  ret i32 %27
}

declare dso_local i32 @vfs_getattr(i32, i32, %struct.kstat*) #1

declare dso_local i32 @ecryptfs_dentry_to_lower_mnt(%struct.dentry*) #1

declare dso_local i32 @ecryptfs_dentry_to_lower(%struct.dentry*) #1

declare dso_local i32 @generic_fillattr(i32, %struct.kstat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
