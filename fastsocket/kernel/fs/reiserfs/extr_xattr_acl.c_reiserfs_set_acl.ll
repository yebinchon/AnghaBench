; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_xattr_acl.c_reiserfs_set_acl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_xattr_acl.c_reiserfs_set_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_transaction_handle = type { i32 }
%struct.inode = type { i32, i32 }
%struct.posix_acl = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@POSIX_ACL_XATTR_ACCESS = common dso_local global i8* null, align 8
@POSIX_ACL_XATTR_DEFAULT = common dso_local global i8* null, align 8
@EACCES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@CURRENT_TIME_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reiserfs_transaction_handle*, %struct.inode*, i32, %struct.posix_acl*)* @reiserfs_set_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reiserfs_set_acl(%struct.reiserfs_transaction_handle* %0, %struct.inode* %1, i32 %2, %struct.posix_acl* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.reiserfs_transaction_handle*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.posix_acl*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.reiserfs_transaction_handle* %0, %struct.reiserfs_transaction_handle** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.posix_acl* %3, %struct.posix_acl** %9, align 8
  store i8* null, i8** %11, align 8
  store i64 0, i64* %12, align 8
  %15 = load %struct.inode*, %struct.inode** %7, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @S_ISLNK(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %116

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  switch i32 %24, label %66 [
    i32 129, label %25
    i32 128, label %49
  ]

25:                                               ; preds = %23
  %26 = load i8*, i8** @POSIX_ACL_XATTR_ACCESS, align 8
  store i8* %26, i8** %10, align 8
  %27 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %28 = icmp ne %struct.posix_acl* %27, null
  br i1 %28, label %29, label %48

29:                                               ; preds = %25
  %30 = load %struct.inode*, %struct.inode** %7, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 1
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
  br label %116

39:                                               ; preds = %29
  %40 = load i32, i32* %14, align 4
  %41 = load %struct.inode*, %struct.inode** %7, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store %struct.posix_acl* null, %struct.posix_acl** %9, align 8
  br label %46

46:                                               ; preds = %45, %39
  br label %47

47:                                               ; preds = %46
  br label %48

48:                                               ; preds = %47, %25
  br label %69

49:                                               ; preds = %23
  %50 = load i8*, i8** @POSIX_ACL_XATTR_DEFAULT, align 8
  store i8* %50, i8** %10, align 8
  %51 = load %struct.inode*, %struct.inode** %7, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @S_ISDIR(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %49
  %57 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %58 = icmp ne %struct.posix_acl* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* @EACCES, align 4
  %61 = sub nsw i32 0, %60
  br label %63

62:                                               ; preds = %56
  br label %63

63:                                               ; preds = %62, %59
  %64 = phi i32 [ %61, %59 ], [ 0, %62 ]
  store i32 %64, i32* %5, align 4
  br label %116

65:                                               ; preds = %49
  br label %69

66:                                               ; preds = %23
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %5, align 4
  br label %116

69:                                               ; preds = %65, %48
  %70 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %71 = icmp ne %struct.posix_acl* %70, null
  br i1 %71, label %72, label %83

72:                                               ; preds = %69
  %73 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %74 = call i8* @posix_acl_to_disk(%struct.posix_acl* %73, i64* %12)
  store i8* %74, i8** %11, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = call i64 @IS_ERR(i8* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load i8*, i8** %11, align 8
  %80 = call i64 @PTR_ERR(i8* %79)
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %5, align 4
  br label %116

82:                                               ; preds = %72
  br label %83

83:                                               ; preds = %82, %69
  %84 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %6, align 8
  %85 = load %struct.inode*, %struct.inode** %7, align 8
  %86 = load i8*, i8** %10, align 8
  %87 = load i8*, i8** %11, align 8
  %88 = load i64, i64* %12, align 8
  %89 = call i32 @reiserfs_xattr_set_handle(%struct.reiserfs_transaction_handle* %84, %struct.inode* %85, i8* %86, i8* %87, i64 %88, i32 0)
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* @ENODATA, align 4
  %92 = sub nsw i32 0, %91
  %93 = icmp eq i32 %90, %92
  br i1 %93, label %94, label %104

94:                                               ; preds = %83
  store i32 0, i32* %13, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp eq i32 %95, 129
  br i1 %96, label %97, label %103

97:                                               ; preds = %94
  %98 = load i32, i32* @CURRENT_TIME_SEC, align 4
  %99 = load %struct.inode*, %struct.inode** %7, align 8
  %100 = getelementptr inbounds %struct.inode, %struct.inode* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 4
  %101 = load %struct.inode*, %struct.inode** %7, align 8
  %102 = call i32 @mark_inode_dirty(%struct.inode* %101)
  br label %103

103:                                              ; preds = %97, %94
  br label %104

104:                                              ; preds = %103, %83
  %105 = load i8*, i8** %11, align 8
  %106 = call i32 @kfree(i8* %105)
  %107 = load i32, i32* %13, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %104
  %110 = load %struct.inode*, %struct.inode** %7, align 8
  %111 = load i32, i32* %8, align 4
  %112 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %113 = call i32 @set_cached_acl(%struct.inode* %110, i32 %111, %struct.posix_acl* %112)
  br label %114

114:                                              ; preds = %109, %104
  %115 = load i32, i32* %13, align 4
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %114, %78, %66, %63, %37, %20
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @posix_acl_equiv_mode(%struct.posix_acl*, i32*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i8* @posix_acl_to_disk(%struct.posix_acl*, i64*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i64 @PTR_ERR(i8*) #1

declare dso_local i32 @reiserfs_xattr_set_handle(%struct.reiserfs_transaction_handle*, %struct.inode*, i8*, i8*, i64, i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @set_cached_acl(%struct.inode*, i32, %struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
