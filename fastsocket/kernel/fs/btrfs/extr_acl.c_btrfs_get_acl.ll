; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_acl.c_btrfs_get_acl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_acl.c_btrfs_get_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.posix_acl = type { i32 }
%struct.inode = type { i32 }

@ACL_NOT_CACHED = common dso_local global %struct.posix_acl* null, align 8
@POSIX_ACL_XATTR_ACCESS = common dso_local global i8* null, align 8
@POSIX_ACL_XATTR_DEFAULT = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.posix_acl* (%struct.inode*, i32)* @btrfs_get_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.posix_acl* @btrfs_get_acl(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.posix_acl*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.posix_acl*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* null, i8** %8, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = call i32 @IS_POSIXACL(%struct.inode* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.posix_acl* null, %struct.posix_acl** %3, align 8
  br label %92

14:                                               ; preds = %2
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.posix_acl* @get_cached_acl(%struct.inode* %15, i32 %16)
  store %struct.posix_acl* %17, %struct.posix_acl** %9, align 8
  %18 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %19 = load %struct.posix_acl*, %struct.posix_acl** @ACL_NOT_CACHED, align 8
  %20 = icmp ne %struct.posix_acl* %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  store %struct.posix_acl* %22, %struct.posix_acl** %3, align 8
  br label %92

23:                                               ; preds = %14
  %24 = load i32, i32* %5, align 4
  switch i32 %24, label %29 [
    i32 129, label %25
    i32 128, label %27
  ]

25:                                               ; preds = %23
  %26 = load i8*, i8** @POSIX_ACL_XATTR_ACCESS, align 8
  store i8* %26, i8** %7, align 8
  br label %31

27:                                               ; preds = %23
  %28 = load i8*, i8** @POSIX_ACL_XATTR_DEFAULT, align 8
  store i8* %28, i8** %7, align 8
  br label %31

29:                                               ; preds = %23
  %30 = call i32 (...) @BUG()
  br label %31

31:                                               ; preds = %29, %27, %25
  %32 = load %struct.inode*, %struct.inode** %4, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @__btrfs_getxattr(%struct.inode* %32, i8* %33, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %31
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @GFP_NOFS, align 4
  %40 = call i8* @kzalloc(i32 %38, i32 %39)
  store i8* %40, i8** %8, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  %46 = call %struct.posix_acl* @ERR_PTR(i32 %45)
  store %struct.posix_acl* %46, %struct.posix_acl** %3, align 8
  br label %92

47:                                               ; preds = %37
  %48 = load %struct.inode*, %struct.inode** %4, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @__btrfs_getxattr(%struct.inode* %48, i8* %49, i8* %50, i32 %51)
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %47, %31
  %54 = load i32, i32* %6, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i8*, i8** %8, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call %struct.posix_acl* @posix_acl_from_xattr(i8* %57, i32 %58)
  store %struct.posix_acl* %59, %struct.posix_acl** %9, align 8
  br label %79

60:                                               ; preds = %53
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @ENOENT, align 4
  %63 = sub nsw i32 0, %62
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %73, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @ENODATA, align 4
  %68 = sub nsw i32 0, %67
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* %6, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70, %65, %60
  store %struct.posix_acl* null, %struct.posix_acl** %9, align 8
  br label %78

74:                                               ; preds = %70
  %75 = load i32, i32* @EIO, align 4
  %76 = sub nsw i32 0, %75
  %77 = call %struct.posix_acl* @ERR_PTR(i32 %76)
  store %struct.posix_acl* %77, %struct.posix_acl** %9, align 8
  br label %78

78:                                               ; preds = %74, %73
  br label %79

79:                                               ; preds = %78, %56
  %80 = load i8*, i8** %8, align 8
  %81 = call i32 @kfree(i8* %80)
  %82 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %83 = call i32 @IS_ERR(%struct.posix_acl* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %79
  %86 = load %struct.inode*, %struct.inode** %4, align 8
  %87 = load i32, i32* %5, align 4
  %88 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %89 = call i32 @set_cached_acl(%struct.inode* %86, i32 %87, %struct.posix_acl* %88)
  br label %90

90:                                               ; preds = %85, %79
  %91 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  store %struct.posix_acl* %91, %struct.posix_acl** %3, align 8
  br label %92

92:                                               ; preds = %90, %43, %21, %13
  %93 = load %struct.posix_acl*, %struct.posix_acl** %3, align 8
  ret %struct.posix_acl* %93
}

declare dso_local i32 @IS_POSIXACL(%struct.inode*) #1

declare dso_local %struct.posix_acl* @get_cached_acl(%struct.inode*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @__btrfs_getxattr(%struct.inode*, i8*, i8*, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local %struct.posix_acl* @ERR_PTR(i32) #1

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
