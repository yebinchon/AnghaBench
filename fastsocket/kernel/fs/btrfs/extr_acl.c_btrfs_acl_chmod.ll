; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_acl.c_btrfs_acl_chmod.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_acl.c_btrfs_acl_chmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.posix_acl = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ACL_TYPE_ACCESS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_acl_chmod(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.posix_acl*, align 8
  %5 = alloca %struct.posix_acl*, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32 0, i32* %6, align 4
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
  br label %58

15:                                               ; preds = %1
  %16 = load %struct.inode*, %struct.inode** %3, align 8
  %17 = call i32 @IS_POSIXACL(%struct.inode* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %58

20:                                               ; preds = %15
  %21 = load %struct.inode*, %struct.inode** %3, align 8
  %22 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  %23 = call %struct.posix_acl* @btrfs_get_acl(%struct.inode* %21, i32 %22)
  store %struct.posix_acl* %23, %struct.posix_acl** %4, align 8
  %24 = load %struct.posix_acl*, %struct.posix_acl** %4, align 8
  %25 = call i64 @IS_ERR_OR_NULL(%struct.posix_acl* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load %struct.posix_acl*, %struct.posix_acl** %4, align 8
  %29 = call i32 @PTR_ERR(%struct.posix_acl* %28)
  store i32 %29, i32* %2, align 4
  br label %58

30:                                               ; preds = %20
  %31 = load %struct.posix_acl*, %struct.posix_acl** %4, align 8
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.posix_acl* @posix_acl_clone(%struct.posix_acl* %31, i32 %32)
  store %struct.posix_acl* %33, %struct.posix_acl** %5, align 8
  %34 = load %struct.posix_acl*, %struct.posix_acl** %4, align 8
  %35 = call i32 @posix_acl_release(%struct.posix_acl* %34)
  %36 = load %struct.posix_acl*, %struct.posix_acl** %5, align 8
  %37 = icmp ne %struct.posix_acl* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %30
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %58

41:                                               ; preds = %30
  %42 = load %struct.posix_acl*, %struct.posix_acl** %5, align 8
  %43 = load %struct.inode*, %struct.inode** %3, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @posix_acl_chmod_masq(%struct.posix_acl* %42, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %41
  %50 = load %struct.inode*, %struct.inode** %3, align 8
  %51 = load %struct.posix_acl*, %struct.posix_acl** %5, align 8
  %52 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  %53 = call i32 @btrfs_set_acl(i32* null, %struct.inode* %50, %struct.posix_acl* %51, i32 %52)
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %49, %41
  %55 = load %struct.posix_acl*, %struct.posix_acl** %5, align 8
  %56 = call i32 @posix_acl_release(%struct.posix_acl* %55)
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %54, %38, %27, %19, %12
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @IS_POSIXACL(%struct.inode*) #1

declare dso_local %struct.posix_acl* @btrfs_get_acl(%struct.inode*, i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.posix_acl*) #1

declare dso_local i32 @PTR_ERR(%struct.posix_acl*) #1

declare dso_local %struct.posix_acl* @posix_acl_clone(%struct.posix_acl*, i32) #1

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

declare dso_local i32 @posix_acl_chmod_masq(%struct.posix_acl*, i32) #1

declare dso_local i32 @btrfs_set_acl(i32*, %struct.inode*, %struct.posix_acl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
