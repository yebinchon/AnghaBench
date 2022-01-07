; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_acl.c_ext3_set_acl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_acl.c_ext3_set_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.posix_acl = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EXT3_XATTR_INDEX_POSIX_ACL_ACCESS = common dso_local global i32 0, align 4
@CURRENT_TIME_SEC = common dso_local global i32 0, align 4
@EXT3_XATTR_INDEX_POSIX_ACL_DEFAULT = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, i32, %struct.posix_acl*)* @ext3_set_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext3_set_acl(i32* %0, %struct.inode* %1, i32 %2, %struct.posix_acl* %3) #0 {
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
  br label %107

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  switch i32 %24, label %72 [
    i32 129, label %25
    i32 128, label %55
  ]

25:                                               ; preds = %23
  %26 = load i32, i32* @EXT3_XATTR_INDEX_POSIX_ACL_ACCESS, align 4
  store i32 %26, i32* %10, align 4
  %27 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %28 = icmp ne %struct.posix_acl* %27, null
  br i1 %28, label %29, label %54

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
  br label %107

39:                                               ; preds = %29
  %40 = load i32, i32* %14, align 4
  %41 = load %struct.inode*, %struct.inode** %7, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @CURRENT_TIME_SEC, align 4
  %44 = load %struct.inode*, %struct.inode** %7, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = load %struct.inode*, %struct.inode** %7, align 8
  %48 = call i32 @ext3_mark_inode_dirty(i32* %46, %struct.inode* %47)
  %49 = load i32, i32* %13, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %39
  store %struct.posix_acl* null, %struct.posix_acl** %9, align 8
  br label %52

52:                                               ; preds = %51, %39
  br label %53

53:                                               ; preds = %52
  br label %54

54:                                               ; preds = %53, %25
  br label %75

55:                                               ; preds = %23
  %56 = load i32, i32* @EXT3_XATTR_INDEX_POSIX_ACL_DEFAULT, align 4
  store i32 %56, i32* %10, align 4
  %57 = load %struct.inode*, %struct.inode** %7, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @S_ISDIR(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %55
  %63 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %64 = icmp ne %struct.posix_acl* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32, i32* @EACCES, align 4
  %67 = sub nsw i32 0, %66
  br label %69

68:                                               ; preds = %62
  br label %69

69:                                               ; preds = %68, %65
  %70 = phi i32 [ %67, %65 ], [ 0, %68 ]
  store i32 %70, i32* %5, align 4
  br label %107

71:                                               ; preds = %55
  br label %75

72:                                               ; preds = %23
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %107

75:                                               ; preds = %71, %54
  %76 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %77 = icmp ne %struct.posix_acl* %76, null
  br i1 %77, label %78, label %89

78:                                               ; preds = %75
  %79 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %80 = call i8* @ext3_acl_to_disk(%struct.posix_acl* %79, i64* %12)
  store i8* %80, i8** %11, align 8
  %81 = load i8*, i8** %11, align 8
  %82 = call i64 @IS_ERR(i8* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load i8*, i8** %11, align 8
  %86 = call i64 @PTR_ERR(i8* %85)
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %5, align 4
  br label %107

88:                                               ; preds = %78
  br label %89

89:                                               ; preds = %88, %75
  %90 = load i32*, i32** %6, align 8
  %91 = load %struct.inode*, %struct.inode** %7, align 8
  %92 = load i32, i32* %10, align 4
  %93 = load i8*, i8** %11, align 8
  %94 = load i64, i64* %12, align 8
  %95 = call i32 @ext3_xattr_set_handle(i32* %90, %struct.inode* %91, i32 %92, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %93, i64 %94, i32 0)
  store i32 %95, i32* %13, align 4
  %96 = load i8*, i8** %11, align 8
  %97 = call i32 @kfree(i8* %96)
  %98 = load i32, i32* %13, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %89
  %101 = load %struct.inode*, %struct.inode** %7, align 8
  %102 = load i32, i32* %8, align 4
  %103 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %104 = call i32 @set_cached_acl(%struct.inode* %101, i32 %102, %struct.posix_acl* %103)
  br label %105

105:                                              ; preds = %100, %89
  %106 = load i32, i32* %13, align 4
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %105, %84, %72, %69, %37, %20
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @posix_acl_equiv_mode(%struct.posix_acl*, i32*) #1

declare dso_local i32 @ext3_mark_inode_dirty(i32*, %struct.inode*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i8* @ext3_acl_to_disk(%struct.posix_acl*, i64*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i64 @PTR_ERR(i8*) #1

declare dso_local i32 @ext3_xattr_set_handle(i32*, %struct.inode*, i32, i8*, i8*, i64, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @set_cached_acl(%struct.inode*, i32, %struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
