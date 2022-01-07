; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_acl.c_jfs_set_acl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_acl.c_jfs_set_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.posix_acl = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@POSIX_ACL_XATTR_ACCESS = common dso_local global i8* null, align 8
@POSIX_ACL_XATTR_DEFAULT = common dso_local global i8* null, align 8
@EACCES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.inode*, i32, %struct.posix_acl*)* @jfs_set_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jfs_set_acl(i32 %0, %struct.inode* %1, i32 %2, %struct.posix_acl* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.posix_acl*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.inode* %1, %struct.inode** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.posix_acl* %3, %struct.posix_acl** %9, align 8
  store i32 0, i32* %12, align 4
  store i8* null, i8** %13, align 8
  %14 = load %struct.inode*, %struct.inode** %7, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @S_ISLNK(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %90

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  switch i32 %23, label %43 [
    i32 129, label %24
    i32 128, label %26
  ]

24:                                               ; preds = %22
  %25 = load i8*, i8** @POSIX_ACL_XATTR_ACCESS, align 8
  store i8* %25, i8** %10, align 8
  br label %46

26:                                               ; preds = %22
  %27 = load i8*, i8** @POSIX_ACL_XATTR_DEFAULT, align 8
  store i8* %27, i8** %10, align 8
  %28 = load %struct.inode*, %struct.inode** %7, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @S_ISDIR(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %26
  %34 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %35 = icmp ne %struct.posix_acl* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* @EACCES, align 4
  %38 = sub nsw i32 0, %37
  br label %40

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39, %36
  %41 = phi i32 [ %38, %36 ], [ 0, %39 ]
  store i32 %41, i32* %5, align 4
  br label %90

42:                                               ; preds = %26
  br label %46

43:                                               ; preds = %22
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %90

46:                                               ; preds = %42, %24
  %47 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %48 = icmp ne %struct.posix_acl* %47, null
  br i1 %48, label %49, label %71

49:                                               ; preds = %46
  %50 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %51 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @posix_acl_xattr_size(i32 %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call i8* @kmalloc(i32 %54, i32 %55)
  store i8* %56, i8** %13, align 8
  %57 = load i8*, i8** %13, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %49
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %90

62:                                               ; preds = %49
  %63 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %64 = load i8*, i8** %13, align 8
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @posix_acl_to_xattr(%struct.posix_acl* %63, i8* %64, i32 %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %78

70:                                               ; preds = %62
  br label %71

71:                                               ; preds = %70, %46
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.inode*, %struct.inode** %7, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = load i8*, i8** %13, align 8
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @__jfs_setxattr(i32 %72, %struct.inode* %73, i8* %74, i8* %75, i32 %76, i32 0)
  store i32 %77, i32* %11, align 4
  br label %78

78:                                               ; preds = %71, %69
  %79 = load i8*, i8** %13, align 8
  %80 = call i32 @kfree(i8* %79)
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %78
  %84 = load %struct.inode*, %struct.inode** %7, align 8
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %87 = call i32 @set_cached_acl(%struct.inode* %84, i32 %85, %struct.posix_acl* %86)
  br label %88

88:                                               ; preds = %83, %78
  %89 = load i32, i32* %11, align 4
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %88, %59, %43, %40, %19
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @posix_acl_xattr_size(i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @posix_acl_to_xattr(%struct.posix_acl*, i8*, i32) #1

declare dso_local i32 @__jfs_setxattr(i32, %struct.inode*, i8*, i8*, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @set_cached_acl(%struct.inode*, i32, %struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
