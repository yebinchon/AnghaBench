; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_acl.c_jfs_get_acl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_acl.c_jfs_get_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.posix_acl = type { i32 }
%struct.inode = type { i32 }

@ACL_NOT_CACHED = common dso_local global %struct.posix_acl* null, align 8
@POSIX_ACL_XATTR_ACCESS = common dso_local global i8* null, align 8
@POSIX_ACL_XATTR_DEFAULT = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.posix_acl* (%struct.inode*, i32)* @jfs_get_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.posix_acl* @jfs_get_acl(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.posix_acl*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.posix_acl*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* null, i8** %9, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.posix_acl* @get_cached_acl(%struct.inode* %10, i32 %11)
  store %struct.posix_acl* %12, %struct.posix_acl** %6, align 8
  %13 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %14 = load %struct.posix_acl*, %struct.posix_acl** @ACL_NOT_CACHED, align 8
  %15 = icmp ne %struct.posix_acl* %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  store %struct.posix_acl* %17, %struct.posix_acl** %3, align 8
  br label %80

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %24 [
    i32 129, label %20
    i32 128, label %22
  ]

20:                                               ; preds = %18
  %21 = load i8*, i8** @POSIX_ACL_XATTR_ACCESS, align 8
  store i8* %21, i8** %7, align 8
  br label %28

22:                                               ; preds = %18
  %23 = load i8*, i8** @POSIX_ACL_XATTR_DEFAULT, align 8
  store i8* %23, i8** %7, align 8
  br label %28

24:                                               ; preds = %18
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.posix_acl* @ERR_PTR(i32 %26)
  store %struct.posix_acl* %27, %struct.posix_acl** %3, align 8
  br label %80

28:                                               ; preds = %22, %20
  %29 = load %struct.inode*, %struct.inode** %4, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @__jfs_getxattr(%struct.inode* %29, i8* %30, i8* null, i32 0)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %28
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i8* @kmalloc(i32 %35, i32 %36)
  store i8* %37, i8** %9, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  %43 = call %struct.posix_acl* @ERR_PTR(i32 %42)
  store %struct.posix_acl* %43, %struct.posix_acl** %3, align 8
  br label %80

44:                                               ; preds = %34
  %45 = load %struct.inode*, %struct.inode** %4, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @__jfs_getxattr(%struct.inode* %45, i8* %46, i8* %47, i32 %48)
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %44, %28
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %50
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @ENODATA, align 4
  %56 = sub nsw i32 0, %55
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store %struct.posix_acl* null, %struct.posix_acl** %6, align 8
  br label %62

59:                                               ; preds = %53
  %60 = load i32, i32* %8, align 4
  %61 = call %struct.posix_acl* @ERR_PTR(i32 %60)
  store %struct.posix_acl* %61, %struct.posix_acl** %6, align 8
  br label %62

62:                                               ; preds = %59, %58
  br label %67

63:                                               ; preds = %50
  %64 = load i8*, i8** %9, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call %struct.posix_acl* @posix_acl_from_xattr(i8* %64, i32 %65)
  store %struct.posix_acl* %66, %struct.posix_acl** %6, align 8
  br label %67

67:                                               ; preds = %63, %62
  %68 = load i8*, i8** %9, align 8
  %69 = call i32 @kfree(i8* %68)
  %70 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %71 = call i32 @IS_ERR(%struct.posix_acl* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %67
  %74 = load %struct.inode*, %struct.inode** %4, align 8
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %77 = call i32 @set_cached_acl(%struct.inode* %74, i32 %75, %struct.posix_acl* %76)
  br label %78

78:                                               ; preds = %73, %67
  %79 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  store %struct.posix_acl* %79, %struct.posix_acl** %3, align 8
  br label %80

80:                                               ; preds = %78, %40, %24, %16
  %81 = load %struct.posix_acl*, %struct.posix_acl** %3, align 8
  ret %struct.posix_acl* %81
}

declare dso_local %struct.posix_acl* @get_cached_acl(%struct.inode*, i32) #1

declare dso_local %struct.posix_acl* @ERR_PTR(i32) #1

declare dso_local i32 @__jfs_getxattr(%struct.inode*, i8*, i8*, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local %struct.posix_acl* @posix_acl_from_xattr(i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @IS_ERR(%struct.posix_acl*) #1

declare dso_local i32 @set_cached_acl(%struct.inode*, i32, %struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
