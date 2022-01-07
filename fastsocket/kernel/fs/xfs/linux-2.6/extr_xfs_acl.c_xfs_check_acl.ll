; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_acl.c_xfs_check_acl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_acl.c_xfs_check_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.xfs_inode = type { i32 }
%struct.posix_acl = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@ACL_TYPE_ACCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_check_acl(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfs_inode*, align 8
  %7 = alloca %struct.posix_acl*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call %struct.xfs_inode* @XFS_I(%struct.inode* %9)
  store %struct.xfs_inode* %10, %struct.xfs_inode** %6, align 8
  %11 = load i32, i32* @EAGAIN, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %8, align 4
  %13 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %14 = call i32 @trace_xfs_check_acl(%struct.xfs_inode* %13)
  %15 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %16 = call i32 @XFS_IFORK_Q(%struct.xfs_inode* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EAGAIN, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %43

21:                                               ; preds = %2
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  %23 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  %24 = call %struct.posix_acl* @xfs_get_acl(%struct.inode* %22, i32 %23)
  store %struct.posix_acl* %24, %struct.posix_acl** %7, align 8
  %25 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %26 = call i64 @IS_ERR(%struct.posix_acl* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %30 = call i32 @PTR_ERR(%struct.posix_acl* %29)
  store i32 %30, i32* %3, align 4
  br label %43

31:                                               ; preds = %21
  %32 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %33 = icmp ne %struct.posix_acl* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @posix_acl_permission(%struct.inode* %35, %struct.posix_acl* %36, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %40 = call i32 @posix_acl_release(%struct.posix_acl* %39)
  br label %41

41:                                               ; preds = %34, %31
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %28, %18
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.xfs_inode* @XFS_I(%struct.inode*) #1

declare dso_local i32 @trace_xfs_check_acl(%struct.xfs_inode*) #1

declare dso_local i32 @XFS_IFORK_Q(%struct.xfs_inode*) #1

declare dso_local %struct.posix_acl* @xfs_get_acl(%struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.posix_acl*) #1

declare dso_local i32 @PTR_ERR(%struct.posix_acl*) #1

declare dso_local i32 @posix_acl_permission(%struct.inode*, %struct.posix_acl*, i32) #1

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
