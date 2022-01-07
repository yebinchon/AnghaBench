; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3acl.c_nfs3_setxattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3acl.c_nfs3_setxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.posix_acl = type { i32 }

@POSIX_ACL_XATTR_ACCESS = common dso_local global i32 0, align 4
@ACL_TYPE_ACCESS = common dso_local global i32 0, align 4
@POSIX_ACL_XATTR_DEFAULT = common dso_local global i32 0, align 4
@ACL_TYPE_DEFAULT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs3_setxattr(%struct.dentry* %0, i8* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.posix_acl*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.dentry*, %struct.dentry** %7, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 0
  %18 = load %struct.inode*, %struct.inode** %17, align 8
  store %struct.inode* %18, %struct.inode** %12, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load i32, i32* @POSIX_ACL_XATTR_ACCESS, align 4
  %21 = call i64 @strcmp(i8* %19, i32 %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  store i32 %24, i32* %14, align 4
  br label %36

25:                                               ; preds = %5
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* @POSIX_ACL_XATTR_DEFAULT, align 4
  %28 = call i64 @strcmp(i8* %26, i32 %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @ACL_TYPE_DEFAULT, align 4
  store i32 %31, i32* %14, align 4
  br label %35

32:                                               ; preds = %25
  %33 = load i32, i32* @EOPNOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %54

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %35, %23
  %37 = load i8*, i8** %9, align 8
  %38 = load i64, i64* %10, align 8
  %39 = call %struct.posix_acl* @posix_acl_from_xattr(i8* %37, i64 %38)
  store %struct.posix_acl* %39, %struct.posix_acl** %13, align 8
  %40 = load %struct.posix_acl*, %struct.posix_acl** %13, align 8
  %41 = call i64 @IS_ERR(%struct.posix_acl* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load %struct.posix_acl*, %struct.posix_acl** %13, align 8
  %45 = call i32 @PTR_ERR(%struct.posix_acl* %44)
  store i32 %45, i32* %6, align 4
  br label %54

46:                                               ; preds = %36
  %47 = load %struct.inode*, %struct.inode** %12, align 8
  %48 = load i32, i32* %14, align 4
  %49 = load %struct.posix_acl*, %struct.posix_acl** %13, align 8
  %50 = call i32 @nfs3_proc_setacl(%struct.inode* %47, i32 %48, %struct.posix_acl* %49)
  store i32 %50, i32* %15, align 4
  %51 = load %struct.posix_acl*, %struct.posix_acl** %13, align 8
  %52 = call i32 @posix_acl_release(%struct.posix_acl* %51)
  %53 = load i32, i32* %15, align 4
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %46, %43, %32
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local %struct.posix_acl* @posix_acl_from_xattr(i8*, i64) #1

declare dso_local i64 @IS_ERR(%struct.posix_acl*) #1

declare dso_local i32 @PTR_ERR(%struct.posix_acl*) #1

declare dso_local i32 @nfs3_proc_setacl(%struct.inode*, i32, %struct.posix_acl*) #1

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
