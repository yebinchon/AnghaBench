; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_acl.c_ocfs2_set_acl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_acl.c_ocfs2_set_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.posix_acl = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@OCFS2_XATTR_INDEX_POSIX_ACL_ACCESS = common dso_local global i32 0, align 4
@OCFS2_XATTR_INDEX_POSIX_ACL_DEFAULT = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.buffer_head*, i32, %struct.posix_acl*, %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context*)* @ocfs2_set_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_set_acl(i32* %0, %struct.inode* %1, %struct.buffer_head* %2, i32 %3, %struct.posix_acl* %4, %struct.ocfs2_alloc_context* %5, %struct.ocfs2_alloc_context* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.posix_acl*, align 8
  %14 = alloca %struct.ocfs2_alloc_context*, align 8
  %15 = alloca %struct.ocfs2_alloc_context*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store %struct.inode* %1, %struct.inode** %10, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.posix_acl* %4, %struct.posix_acl** %13, align 8
  store %struct.ocfs2_alloc_context* %5, %struct.ocfs2_alloc_context** %14, align 8
  store %struct.ocfs2_alloc_context* %6, %struct.ocfs2_alloc_context** %15, align 8
  store i8* null, i8** %17, align 8
  store i64 0, i64* %18, align 8
  %21 = load %struct.inode*, %struct.inode** %10, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @S_ISLNK(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %7
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %8, align 4
  br label %112

29:                                               ; preds = %7
  %30 = load i32, i32* %12, align 4
  switch i32 %30, label %72 [
    i32 129, label %31
    i32 128, label %55
  ]

31:                                               ; preds = %29
  %32 = load i32, i32* @OCFS2_XATTR_INDEX_POSIX_ACL_ACCESS, align 4
  store i32 %32, i32* %16, align 4
  %33 = load %struct.posix_acl*, %struct.posix_acl** %13, align 8
  %34 = icmp ne %struct.posix_acl* %33, null
  br i1 %34, label %35, label %54

35:                                               ; preds = %31
  %36 = load %struct.inode*, %struct.inode** %10, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %20, align 4
  %39 = load %struct.posix_acl*, %struct.posix_acl** %13, align 8
  %40 = call i32 @posix_acl_equiv_mode(%struct.posix_acl* %39, i32* %20)
  store i32 %40, i32* %19, align 4
  %41 = load i32, i32* %19, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* %19, align 4
  store i32 %44, i32* %8, align 4
  br label %112

45:                                               ; preds = %35
  %46 = load i32, i32* %20, align 4
  %47 = load %struct.inode*, %struct.inode** %10, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %19, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store %struct.posix_acl* null, %struct.posix_acl** %13, align 8
  br label %52

52:                                               ; preds = %51, %45
  br label %53

53:                                               ; preds = %52
  br label %54

54:                                               ; preds = %53, %31
  br label %75

55:                                               ; preds = %29
  %56 = load i32, i32* @OCFS2_XATTR_INDEX_POSIX_ACL_DEFAULT, align 4
  store i32 %56, i32* %16, align 4
  %57 = load %struct.inode*, %struct.inode** %10, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @S_ISDIR(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %55
  %63 = load %struct.posix_acl*, %struct.posix_acl** %13, align 8
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
  store i32 %70, i32* %8, align 4
  br label %112

71:                                               ; preds = %55
  br label %75

72:                                               ; preds = %29
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %8, align 4
  br label %112

75:                                               ; preds = %71, %54
  %76 = load %struct.posix_acl*, %struct.posix_acl** %13, align 8
  %77 = icmp ne %struct.posix_acl* %76, null
  br i1 %77, label %78, label %89

78:                                               ; preds = %75
  %79 = load %struct.posix_acl*, %struct.posix_acl** %13, align 8
  %80 = call i8* @ocfs2_acl_to_xattr(%struct.posix_acl* %79, i64* %18)
  store i8* %80, i8** %17, align 8
  %81 = load i8*, i8** %17, align 8
  %82 = call i64 @IS_ERR(i8* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load i8*, i8** %17, align 8
  %86 = call i64 @PTR_ERR(i8* %85)
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %8, align 4
  br label %112

88:                                               ; preds = %78
  br label %89

89:                                               ; preds = %88, %75
  %90 = load i32*, i32** %9, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %102

92:                                               ; preds = %89
  %93 = load i32*, i32** %9, align 8
  %94 = load %struct.inode*, %struct.inode** %10, align 8
  %95 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %96 = load i32, i32* %16, align 4
  %97 = load i8*, i8** %17, align 8
  %98 = load i64, i64* %18, align 8
  %99 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %14, align 8
  %100 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %15, align 8
  %101 = call i32 @ocfs2_xattr_set_handle(i32* %93, %struct.inode* %94, %struct.buffer_head* %95, i32 %96, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %97, i64 %98, i32 0, %struct.ocfs2_alloc_context* %99, %struct.ocfs2_alloc_context* %100)
  store i32 %101, i32* %19, align 4
  br label %108

102:                                              ; preds = %89
  %103 = load %struct.inode*, %struct.inode** %10, align 8
  %104 = load i32, i32* %16, align 4
  %105 = load i8*, i8** %17, align 8
  %106 = load i64, i64* %18, align 8
  %107 = call i32 @ocfs2_xattr_set(%struct.inode* %103, i32 %104, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %105, i64 %106, i32 0)
  store i32 %107, i32* %19, align 4
  br label %108

108:                                              ; preds = %102, %92
  %109 = load i8*, i8** %17, align 8
  %110 = call i32 @kfree(i8* %109)
  %111 = load i32, i32* %19, align 4
  store i32 %111, i32* %8, align 4
  br label %112

112:                                              ; preds = %108, %84, %72, %69, %43, %26
  %113 = load i32, i32* %8, align 4
  ret i32 %113
}

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @posix_acl_equiv_mode(%struct.posix_acl*, i32*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i8* @ocfs2_acl_to_xattr(%struct.posix_acl*, i64*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i64 @PTR_ERR(i8*) #1

declare dso_local i32 @ocfs2_xattr_set_handle(i32*, %struct.inode*, %struct.buffer_head*, i32, i8*, i8*, i64, i32, %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context*) #1

declare dso_local i32 @ocfs2_xattr_set(%struct.inode*, i32, i8*, i8*, i64, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
