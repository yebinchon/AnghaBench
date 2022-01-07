; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_acl.c_xfs_inherit_acl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_acl.c_xfs_inherit_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.posix_acl = type { i32 }

@ACL_TYPE_DEFAULT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACL_TYPE_ACCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_inherit_acl(%struct.inode* %0, %struct.posix_acl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.posix_acl*, align 8
  %6 = alloca %struct.posix_acl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.posix_acl* %1, %struct.posix_acl** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @S_ISDIR(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = load i32, i32* @ACL_TYPE_DEFAULT, align 4
  %18 = load %struct.posix_acl*, %struct.posix_acl** %5, align 8
  %19 = call i32 @xfs_set_acl(%struct.inode* %16, i32 %17, %struct.posix_acl* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %3, align 4
  br label %67

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24, %2
  %26 = load %struct.posix_acl*, %struct.posix_acl** %5, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.posix_acl* @posix_acl_clone(%struct.posix_acl* %26, i32 %27)
  store %struct.posix_acl* %28, %struct.posix_acl** %6, align 8
  %29 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %30 = icmp ne %struct.posix_acl* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %67

34:                                               ; preds = %25
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %7, align 4
  %38 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %39 = call i32 @posix_acl_create_masq(%struct.posix_acl* %38, i32* %7)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %63

43:                                               ; preds = %34
  %44 = load i32, i32* %8, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 1, i32* %9, align 4
  br label %47

47:                                               ; preds = %46, %43
  %48 = load %struct.inode*, %struct.inode** %4, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @xfs_set_mode(%struct.inode* %48, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %63

54:                                               ; preds = %47
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load %struct.inode*, %struct.inode** %4, align 8
  %59 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  %60 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %61 = call i32 @xfs_set_acl(%struct.inode* %58, i32 %59, %struct.posix_acl* %60)
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %57, %54
  br label %63

63:                                               ; preds = %62, %53, %42
  %64 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %65 = call i32 @posix_acl_release(%struct.posix_acl* %64)
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %63, %31, %22
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @xfs_set_acl(%struct.inode*, i32, %struct.posix_acl*) #1

declare dso_local %struct.posix_acl* @posix_acl_clone(%struct.posix_acl*, i32) #1

declare dso_local i32 @posix_acl_create_masq(%struct.posix_acl*, i32*) #1

declare dso_local i32 @xfs_set_mode(%struct.inode*, i32) #1

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
