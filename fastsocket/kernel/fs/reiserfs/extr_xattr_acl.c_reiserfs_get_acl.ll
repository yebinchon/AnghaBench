; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_xattr_acl.c_reiserfs_get_acl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_xattr_acl.c_reiserfs_get_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.posix_acl = type { i32 }
%struct.inode = type { i32 }

@ACL_NOT_CACHED = common dso_local global %struct.posix_acl* null, align 8
@POSIX_ACL_XATTR_ACCESS = common dso_local global i8* null, align 8
@POSIX_ACL_XATTR_DEFAULT = common dso_local global i8* null, align 8
@ENODATA = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.posix_acl* @reiserfs_get_acl(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.posix_acl*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.posix_acl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.posix_acl* @get_cached_acl(%struct.inode* %11, i32 %12)
  store %struct.posix_acl* %13, %struct.posix_acl** %8, align 8
  %14 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %15 = load %struct.posix_acl*, %struct.posix_acl** @ACL_NOT_CACHED, align 8
  %16 = icmp ne %struct.posix_acl* %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  store %struct.posix_acl* %18, %struct.posix_acl** %3, align 8
  br label %100

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %25 [
    i32 129, label %21
    i32 128, label %23
  ]

21:                                               ; preds = %19
  %22 = load i8*, i8** @POSIX_ACL_XATTR_ACCESS, align 8
  store i8* %22, i8** %6, align 8
  br label %27

23:                                               ; preds = %19
  %24 = load i8*, i8** @POSIX_ACL_XATTR_DEFAULT, align 8
  store i8* %24, i8** %6, align 8
  br label %27

25:                                               ; preds = %19
  %26 = call i32 (...) @BUG()
  br label %27

27:                                               ; preds = %25, %23, %21
  %28 = load %struct.inode*, %struct.inode** %4, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @reiserfs_xattr_get(%struct.inode* %28, i8* %29, i8* null, i32 0)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %27
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @ENODATA, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @ENOSYS, align 4
  %41 = sub nsw i32 0, %40
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %38, %33
  %44 = load %struct.inode*, %struct.inode** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @set_cached_acl(%struct.inode* %44, i32 %45, %struct.posix_acl* null)
  store %struct.posix_acl* null, %struct.posix_acl** %3, align 8
  br label %100

47:                                               ; preds = %38
  %48 = load i32, i32* %9, align 4
  %49 = call %struct.posix_acl* @ERR_PTR(i32 %48)
  store %struct.posix_acl* %49, %struct.posix_acl** %3, align 8
  br label %100

50:                                               ; preds = %27
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @GFP_NOFS, align 4
  %53 = call i8* @kmalloc(i32 %51, i32 %52)
  store i8* %53, i8** %7, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  %59 = call %struct.posix_acl* @ERR_PTR(i32 %58)
  store %struct.posix_acl* %59, %struct.posix_acl** %3, align 8
  br label %100

60:                                               ; preds = %50
  %61 = load %struct.inode*, %struct.inode** %4, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @reiserfs_xattr_get(%struct.inode* %61, i8* %62, i8* %63, i32 %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @ENODATA, align 4
  %68 = sub nsw i32 0, %67
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %75, label %70

70:                                               ; preds = %60
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @ENOSYS, align 4
  %73 = sub nsw i32 0, %72
  %74 = icmp eq i32 %71, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %70, %60
  store %struct.posix_acl* null, %struct.posix_acl** %8, align 8
  br label %87

76:                                               ; preds = %70
  %77 = load i32, i32* %10, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, i32* %10, align 4
  %81 = call %struct.posix_acl* @ERR_PTR(i32 %80)
  store %struct.posix_acl* %81, %struct.posix_acl** %8, align 8
  br label %86

82:                                               ; preds = %76
  %83 = load i8*, i8** %7, align 8
  %84 = load i32, i32* %10, align 4
  %85 = call %struct.posix_acl* @posix_acl_from_disk(i8* %83, i32 %84)
  store %struct.posix_acl* %85, %struct.posix_acl** %8, align 8
  br label %86

86:                                               ; preds = %82, %79
  br label %87

87:                                               ; preds = %86, %75
  %88 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %89 = call i32 @IS_ERR(%struct.posix_acl* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %87
  %92 = load %struct.inode*, %struct.inode** %4, align 8
  %93 = load i32, i32* %5, align 4
  %94 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %95 = call i32 @set_cached_acl(%struct.inode* %92, i32 %93, %struct.posix_acl* %94)
  br label %96

96:                                               ; preds = %91, %87
  %97 = load i8*, i8** %7, align 8
  %98 = call i32 @kfree(i8* %97)
  %99 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  store %struct.posix_acl* %99, %struct.posix_acl** %3, align 8
  br label %100

100:                                              ; preds = %96, %56, %47, %43, %17
  %101 = load %struct.posix_acl*, %struct.posix_acl** %3, align 8
  ret %struct.posix_acl* %101
}

declare dso_local %struct.posix_acl* @get_cached_acl(%struct.inode*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @reiserfs_xattr_get(%struct.inode*, i8*, i8*, i32) #1

declare dso_local i32 @set_cached_acl(%struct.inode*, i32, %struct.posix_acl*) #1

declare dso_local %struct.posix_acl* @ERR_PTR(i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local %struct.posix_acl* @posix_acl_from_disk(i8*, i32) #1

declare dso_local i32 @IS_ERR(%struct.posix_acl*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
