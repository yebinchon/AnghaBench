; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_acl.c_ext4_set_acl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_acl.c_ext4_set_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.posix_acl = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EXT4_XATTR_INDEX_POSIX_ACL_ACCESS = common dso_local global i32 0, align 4
@EXT4_XATTR_INDEX_POSIX_ACL_DEFAULT = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, i32, %struct.posix_acl*)* @ext4_set_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_set_acl(i32* %0, %struct.inode* %1, i32 %2, %struct.posix_acl* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.posix_acl*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.posix_acl* %3, %struct.posix_acl** %9, align 8
  store i8* null, i8** %11, align 8
  store i64 0, i64* %12, align 8
  %15 = load %struct.inode*, %struct.inode** %7, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @S_ISLNK(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %108

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  switch i32 %24, label %73 [
    i32 129, label %25
    i32 128, label %56
  ]

25:                                               ; preds = %23
  %26 = load i32, i32* @EXT4_XATTR_INDEX_POSIX_ACL_ACCESS, align 4
  store i32 %26, i32* %10, align 4
  %27 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %28 = icmp ne %struct.posix_acl* %27, null
  br i1 %28, label %29, label %55

29:                                               ; preds = %25
  %30 = load %struct.inode*, %struct.inode** %7, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %14, align 4
  %33 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %34 = call i32 @posix_acl_equiv_mode(%struct.posix_acl* %33, i32* %14)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %5, align 4
  br label %108

39:                                               ; preds = %29
  %40 = load i32, i32* %14, align 4
  %41 = load %struct.inode*, %struct.inode** %7, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.inode*, %struct.inode** %7, align 8
  %44 = call i32 @ext4_current_time(%struct.inode* %43)
  %45 = load %struct.inode*, %struct.inode** %7, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = load %struct.inode*, %struct.inode** %7, align 8
  %49 = call i32 @ext4_mark_inode_dirty(i32* %47, %struct.inode* %48)
  %50 = load i32, i32* %13, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %39
  store %struct.posix_acl* null, %struct.posix_acl** %9, align 8
  br label %53

53:                                               ; preds = %52, %39
  br label %54

54:                                               ; preds = %53
  br label %55

55:                                               ; preds = %54, %25
  br label %76

56:                                               ; preds = %23
  %57 = load i32, i32* @EXT4_XATTR_INDEX_POSIX_ACL_DEFAULT, align 4
  store i32 %57, i32* %10, align 4
  %58 = load %struct.inode*, %struct.inode** %7, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @S_ISDIR(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %56
  %64 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %65 = icmp ne %struct.posix_acl* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* @EACCES, align 4
  %68 = sub nsw i32 0, %67
  br label %70

69:                                               ; preds = %63
  br label %70

70:                                               ; preds = %69, %66
  %71 = phi i32 [ %68, %66 ], [ 0, %69 ]
  store i32 %71, i32* %5, align 4
  br label %108

72:                                               ; preds = %56
  br label %76

73:                                               ; preds = %23
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  br label %108

76:                                               ; preds = %72, %55
  %77 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %78 = icmp ne %struct.posix_acl* %77, null
  br i1 %78, label %79, label %90

79:                                               ; preds = %76
  %80 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %81 = call i8* @ext4_acl_to_disk(%struct.posix_acl* %80, i64* %12)
  store i8* %81, i8** %11, align 8
  %82 = load i8*, i8** %11, align 8
  %83 = call i64 @IS_ERR(i8* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load i8*, i8** %11, align 8
  %87 = call i64 @PTR_ERR(i8* %86)
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %5, align 4
  br label %108

89:                                               ; preds = %79
  br label %90

90:                                               ; preds = %89, %76
  %91 = load i32*, i32** %6, align 8
  %92 = load %struct.inode*, %struct.inode** %7, align 8
  %93 = load i32, i32* %10, align 4
  %94 = load i8*, i8** %11, align 8
  %95 = load i64, i64* %12, align 8
  %96 = call i32 @ext4_xattr_set_handle(i32* %91, %struct.inode* %92, i32 %93, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %94, i64 %95, i32 0)
  store i32 %96, i32* %13, align 4
  %97 = load i8*, i8** %11, align 8
  %98 = call i32 @kfree(i8* %97)
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %90
  %102 = load %struct.inode*, %struct.inode** %7, align 8
  %103 = load i32, i32* %8, align 4
  %104 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %105 = call i32 @set_cached_acl(%struct.inode* %102, i32 %103, %struct.posix_acl* %104)
  br label %106

106:                                              ; preds = %101, %90
  %107 = load i32, i32* %13, align 4
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %106, %85, %73, %70, %37, %20
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @posix_acl_equiv_mode(%struct.posix_acl*, i32*) #1

declare dso_local i32 @ext4_current_time(%struct.inode*) #1

declare dso_local i32 @ext4_mark_inode_dirty(i32*, %struct.inode*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i8* @ext4_acl_to_disk(%struct.posix_acl*, i64*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i64 @PTR_ERR(i8*) #1

declare dso_local i32 @ext4_xattr_set_handle(i32*, %struct.inode*, i32, i8*, i8*, i64, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @set_cached_acl(%struct.inode*, i32, %struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
