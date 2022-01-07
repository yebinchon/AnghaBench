; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_acl.c_xfs_acl_chmod.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_acl.c_xfs_acl_chmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.posix_acl = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ACL_TYPE_ACCESS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_acl_chmod(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.posix_acl*, align 8
  %5 = alloca %struct.posix_acl*, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = getelementptr inbounds %struct.inode, %struct.inode* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @S_ISLNK(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EOPNOTSUPP, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %56

15:                                               ; preds = %1
  %16 = load %struct.inode*, %struct.inode** %3, align 8
  %17 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  %18 = call %struct.posix_acl* @xfs_get_acl(%struct.inode* %16, i32 %17)
  store %struct.posix_acl* %18, %struct.posix_acl** %4, align 8
  %19 = load %struct.posix_acl*, %struct.posix_acl** %4, align 8
  %20 = call i64 @IS_ERR(%struct.posix_acl* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = load %struct.posix_acl*, %struct.posix_acl** %4, align 8
  %24 = icmp ne %struct.posix_acl* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %22, %15
  %26 = load %struct.posix_acl*, %struct.posix_acl** %4, align 8
  %27 = call i32 @PTR_ERR(%struct.posix_acl* %26)
  store i32 %27, i32* %2, align 4
  br label %56

28:                                               ; preds = %22
  %29 = load %struct.posix_acl*, %struct.posix_acl** %4, align 8
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.posix_acl* @posix_acl_clone(%struct.posix_acl* %29, i32 %30)
  store %struct.posix_acl* %31, %struct.posix_acl** %5, align 8
  %32 = load %struct.posix_acl*, %struct.posix_acl** %4, align 8
  %33 = call i32 @posix_acl_release(%struct.posix_acl* %32)
  %34 = load %struct.posix_acl*, %struct.posix_acl** %5, align 8
  %35 = icmp ne %struct.posix_acl* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %28
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %56

39:                                               ; preds = %28
  %40 = load %struct.posix_acl*, %struct.posix_acl** %5, align 8
  %41 = load %struct.inode*, %struct.inode** %3, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @posix_acl_chmod_masq(%struct.posix_acl* %40, i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %39
  %48 = load %struct.inode*, %struct.inode** %3, align 8
  %49 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  %50 = load %struct.posix_acl*, %struct.posix_acl** %5, align 8
  %51 = call i32 @xfs_set_acl(%struct.inode* %48, i32 %49, %struct.posix_acl* %50)
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %47, %39
  %53 = load %struct.posix_acl*, %struct.posix_acl** %5, align 8
  %54 = call i32 @posix_acl_release(%struct.posix_acl* %53)
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %52, %36, %25, %12
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local %struct.posix_acl* @xfs_get_acl(%struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.posix_acl*) #1

declare dso_local i32 @PTR_ERR(%struct.posix_acl*) #1

declare dso_local %struct.posix_acl* @posix_acl_clone(%struct.posix_acl*, i32) #1

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

declare dso_local i32 @posix_acl_chmod_masq(%struct.posix_acl*, i32) #1

declare dso_local i32 @xfs_set_acl(%struct.inode*, i32, %struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
