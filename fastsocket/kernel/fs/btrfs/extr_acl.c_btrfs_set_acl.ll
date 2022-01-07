; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_acl.c_btrfs_set_acl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_acl.c_btrfs_set_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.inode = type { i32 }
%struct.posix_acl = type { i32 }

@POSIX_ACL_XATTR_ACCESS = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@POSIX_ACL_XATTR_DEFAULT = common dso_local global i8* null, align 8
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.inode*, %struct.posix_acl*, i32)* @btrfs_set_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_set_acl(%struct.btrfs_trans_handle* %0, %struct.inode* %1, %struct.posix_acl* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_trans_handle*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.posix_acl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.posix_acl* %2, %struct.posix_acl** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i8* null, i8** %13, align 8
  %15 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %16 = icmp ne %struct.posix_acl* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %4
  %18 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %19 = call i32 @posix_acl_valid(%struct.posix_acl* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %5, align 4
  br label %110

24:                                               ; preds = %17
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %24, %4
  %26 = load i32, i32* %9, align 4
  switch i32 %26, label %63 [
    i32 129, label %27
    i32 128, label %46
  ]

27:                                               ; preds = %25
  %28 = load %struct.inode*, %struct.inode** %7, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %14, align 4
  %31 = load i8*, i8** @POSIX_ACL_XATTR_ACCESS, align 8
  store i8* %31, i8** %12, align 8
  %32 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %33 = icmp ne %struct.posix_acl* %32, null
  br i1 %33, label %34, label %45

34:                                               ; preds = %27
  %35 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %36 = call i32 @posix_acl_equiv_mode(%struct.posix_acl* %35, i32* %14)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %5, align 4
  br label %110

41:                                               ; preds = %34
  %42 = load i32, i32* %14, align 4
  %43 = load %struct.inode*, %struct.inode** %7, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %41, %27
  store i32 0, i32* %10, align 4
  br label %66

46:                                               ; preds = %25
  %47 = load %struct.inode*, %struct.inode** %7, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @S_ISDIR(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %46
  %53 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %54 = icmp ne %struct.posix_acl* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  br label %59

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %58, %55
  %60 = phi i32 [ %57, %55 ], [ 0, %58 ]
  store i32 %60, i32* %5, align 4
  br label %110

61:                                               ; preds = %46
  %62 = load i8*, i8** @POSIX_ACL_XATTR_DEFAULT, align 8
  store i8* %62, i8** %12, align 8
  br label %66

63:                                               ; preds = %25
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %5, align 4
  br label %110

66:                                               ; preds = %61, %45
  %67 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %68 = icmp ne %struct.posix_acl* %67, null
  br i1 %68, label %69, label %91

69:                                               ; preds = %66
  %70 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %71 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @posix_acl_xattr_size(i32 %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @GFP_NOFS, align 4
  %76 = call i8* @kmalloc(i32 %74, i32 %75)
  store i8* %76, i8** %13, align 8
  %77 = load i8*, i8** %13, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %69
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %10, align 4
  br label %98

82:                                               ; preds = %69
  %83 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %84 = load i8*, i8** %13, align 8
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @posix_acl_to_xattr(%struct.posix_acl* %83, i8* %84, i32 %85)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %98

90:                                               ; preds = %82
  br label %91

91:                                               ; preds = %90, %66
  %92 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %93 = load %struct.inode*, %struct.inode** %7, align 8
  %94 = load i8*, i8** %12, align 8
  %95 = load i8*, i8** %13, align 8
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @__btrfs_setxattr(%struct.btrfs_trans_handle* %92, %struct.inode* %93, i8* %94, i8* %95, i32 %96, i32 0)
  store i32 %97, i32* %10, align 4
  br label %98

98:                                               ; preds = %91, %89, %79
  %99 = load i8*, i8** %13, align 8
  %100 = call i32 @kfree(i8* %99)
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %98
  %104 = load %struct.inode*, %struct.inode** %7, align 8
  %105 = load i32, i32* %9, align 4
  %106 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %107 = call i32 @set_cached_acl(%struct.inode* %104, i32 %105, %struct.posix_acl* %106)
  br label %108

108:                                              ; preds = %103, %98
  %109 = load i32, i32* %10, align 4
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %108, %63, %59, %39, %22
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local i32 @posix_acl_valid(%struct.posix_acl*) #1

declare dso_local i32 @posix_acl_equiv_mode(%struct.posix_acl*, i32*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @posix_acl_xattr_size(i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @posix_acl_to_xattr(%struct.posix_acl*, i8*, i32) #1

declare dso_local i32 @__btrfs_setxattr(%struct.btrfs_trans_handle*, %struct.inode*, i8*, i8*, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @set_cached_acl(%struct.inode*, i32, %struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
