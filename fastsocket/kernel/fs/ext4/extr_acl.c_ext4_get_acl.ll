; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_acl.c_ext4_get_acl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_acl.c_ext4_get_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.posix_acl = type { i32 }
%struct.inode = type { i32 }

@POSIX_ACL = common dso_local global i32 0, align 4
@ACL_NOT_CACHED = common dso_local global %struct.posix_acl* null, align 8
@EXT4_XATTR_INDEX_POSIX_ACL_ACCESS = common dso_local global i32 0, align 4
@EXT4_XATTR_INDEX_POSIX_ACL_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.posix_acl* (%struct.inode*, i32)* @ext4_get_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.posix_acl* @ext4_get_acl(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.posix_acl*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.posix_acl*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* null, i8** %7, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @POSIX_ACL, align 4
  %14 = call i32 @test_opt(i32 %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store %struct.posix_acl* null, %struct.posix_acl** %3, align 8
  br label %91

17:                                               ; preds = %2
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call %struct.posix_acl* @get_cached_acl(%struct.inode* %18, i32 %19)
  store %struct.posix_acl* %20, %struct.posix_acl** %8, align 8
  %21 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %22 = load %struct.posix_acl*, %struct.posix_acl** @ACL_NOT_CACHED, align 8
  %23 = icmp ne %struct.posix_acl* %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  store %struct.posix_acl* %25, %struct.posix_acl** %3, align 8
  br label %91

26:                                               ; preds = %17
  %27 = load i32, i32* %5, align 4
  switch i32 %27, label %32 [
    i32 129, label %28
    i32 128, label %30
  ]

28:                                               ; preds = %26
  %29 = load i32, i32* @EXT4_XATTR_INDEX_POSIX_ACL_ACCESS, align 4
  store i32 %29, i32* %6, align 4
  br label %34

30:                                               ; preds = %26
  %31 = load i32, i32* @EXT4_XATTR_INDEX_POSIX_ACL_DEFAULT, align 4
  store i32 %31, i32* %6, align 4
  br label %34

32:                                               ; preds = %26
  %33 = call i32 (...) @BUG()
  br label %34

34:                                               ; preds = %32, %30, %28
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @ext4_xattr_get(%struct.inode* %35, i32 %36, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* null, i32 0)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %34
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @GFP_NOFS, align 4
  %43 = call i8* @kmalloc(i32 %41, i32 %42)
  store i8* %43, i8** %7, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  %49 = call %struct.posix_acl* @ERR_PTR(i32 %48)
  store %struct.posix_acl* %49, %struct.posix_acl** %3, align 8
  br label %91

50:                                               ; preds = %40
  %51 = load %struct.inode*, %struct.inode** %4, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load i8*, i8** %7, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @ext4_xattr_get(%struct.inode* %51, i32 %52, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %53, i32 %54)
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %50, %34
  %57 = load i32, i32* %9, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i8*, i8** %7, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call %struct.posix_acl* @ext4_acl_from_disk(i8* %60, i32 %61)
  store %struct.posix_acl* %62, %struct.posix_acl** %8, align 8
  br label %78

63:                                               ; preds = %56
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @ENODATA, align 4
  %66 = sub nsw i32 0, %65
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %73, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @ENOSYS, align 4
  %71 = sub nsw i32 0, %70
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %68, %63
  store %struct.posix_acl* null, %struct.posix_acl** %8, align 8
  br label %77

74:                                               ; preds = %68
  %75 = load i32, i32* %9, align 4
  %76 = call %struct.posix_acl* @ERR_PTR(i32 %75)
  store %struct.posix_acl* %76, %struct.posix_acl** %8, align 8
  br label %77

77:                                               ; preds = %74, %73
  br label %78

78:                                               ; preds = %77, %59
  %79 = load i8*, i8** %7, align 8
  %80 = call i32 @kfree(i8* %79)
  %81 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %82 = call i32 @IS_ERR(%struct.posix_acl* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %78
  %85 = load %struct.inode*, %struct.inode** %4, align 8
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %88 = call i32 @set_cached_acl(%struct.inode* %85, i32 %86, %struct.posix_acl* %87)
  br label %89

89:                                               ; preds = %84, %78
  %90 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  store %struct.posix_acl* %90, %struct.posix_acl** %3, align 8
  br label %91

91:                                               ; preds = %89, %46, %24, %16
  %92 = load %struct.posix_acl*, %struct.posix_acl** %3, align 8
  ret %struct.posix_acl* %92
}

declare dso_local i32 @test_opt(i32, i32) #1

declare dso_local %struct.posix_acl* @get_cached_acl(%struct.inode*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @ext4_xattr_get(%struct.inode*, i32, i8*, i8*, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local %struct.posix_acl* @ERR_PTR(i32) #1

declare dso_local %struct.posix_acl* @ext4_acl_from_disk(i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @IS_ERR(%struct.posix_acl*) #1

declare dso_local i32 @set_cached_acl(%struct.inode*, i32, %struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
