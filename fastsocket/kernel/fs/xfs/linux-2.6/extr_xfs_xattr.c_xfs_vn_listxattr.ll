; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_xattr.c_xfs_vn_listxattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_xattr.c_xfs_vn_listxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.xfs_attr_list_context = type { i32, i8*, i64, i64, i64, i32, %struct.attrlist_cursor_kern*, i32 }
%struct.attrlist_cursor_kern = type { i32 }

@xfs_xattr_put_listent = common dso_local global i32 0, align 4
@xfs_xattr_put_listent_sizes = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@POSIX_ACL_XATTR_ACCESS = common dso_local global i32 0, align 4
@POSIX_ACL_XATTR_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_vn_listxattr(%struct.dentry* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.xfs_attr_list_context, align 8
  %9 = alloca %struct.attrlist_cursor_kern, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = bitcast %struct.attrlist_cursor_kern* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 4, i1 false)
  %13 = load %struct.dentry*, %struct.dentry** %5, align 8
  %14 = getelementptr inbounds %struct.dentry, %struct.dentry* %13, i32 0, i32 0
  %15 = load %struct.inode*, %struct.inode** %14, align 8
  store %struct.inode* %15, %struct.inode** %10, align 8
  %16 = call i32 @memset(%struct.xfs_attr_list_context* %8, i32 0, i32 64)
  %17 = load %struct.inode*, %struct.inode** %10, align 8
  %18 = call i32 @XFS_I(%struct.inode* %17)
  %19 = getelementptr inbounds %struct.xfs_attr_list_context, %struct.xfs_attr_list_context* %8, i32 0, i32 7
  store i32 %18, i32* %19, align 8
  %20 = getelementptr inbounds %struct.xfs_attr_list_context, %struct.xfs_attr_list_context* %8, i32 0, i32 6
  store %struct.attrlist_cursor_kern* %9, %struct.attrlist_cursor_kern** %20, align 8
  %21 = getelementptr inbounds %struct.xfs_attr_list_context, %struct.xfs_attr_list_context* %8, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds %struct.xfs_attr_list_context, %struct.xfs_attr_list_context* %8, i32 0, i32 1
  store i8* %22, i8** %23, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds %struct.xfs_attr_list_context, %struct.xfs_attr_list_context* %8, i32 0, i32 2
  store i64 %24, i64* %25, align 8
  %26 = getelementptr inbounds %struct.xfs_attr_list_context, %struct.xfs_attr_list_context* %8, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.xfs_attr_list_context, %struct.xfs_attr_list_context* %8, i32 0, i32 3
  store i64 %27, i64* %28, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load i32, i32* @xfs_xattr_put_listent, align 4
  %33 = getelementptr inbounds %struct.xfs_attr_list_context, %struct.xfs_attr_list_context* %8, i32 0, i32 5
  store i32 %32, i32* %33, align 8
  br label %37

34:                                               ; preds = %3
  %35 = load i32, i32* @xfs_xattr_put_listent_sizes, align 4
  %36 = getelementptr inbounds %struct.xfs_attr_list_context, %struct.xfs_attr_list_context* %8, i32 0, i32 5
  store i32 %35, i32* %36, align 8
  br label %37

37:                                               ; preds = %34, %31
  %38 = call i32 @xfs_attr_list_int(%struct.xfs_attr_list_context* %8)
  %39 = getelementptr inbounds %struct.xfs_attr_list_context, %struct.xfs_attr_list_context* %8, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @ERANGE, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %85

45:                                               ; preds = %37
  %46 = load %struct.inode*, %struct.inode** %10, align 8
  %47 = call i64 @posix_acl_access_exists(%struct.inode* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %45
  %50 = load i32, i32* @POSIX_ACL_XATTR_ACCESS, align 4
  %51 = load i32, i32* @POSIX_ACL_XATTR_ACCESS, align 4
  %52 = call i64 @strlen(i32 %51)
  %53 = add nsw i64 %52, 1
  %54 = load i8*, i8** %6, align 8
  %55 = load i64, i64* %7, align 8
  %56 = getelementptr inbounds %struct.xfs_attr_list_context, %struct.xfs_attr_list_context* %8, i32 0, i32 4
  %57 = call i32 @list_one_attr(i32 %50, i64 %53, i8* %54, i64 %55, i64* %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %49
  %61 = load i32, i32* %11, align 4
  store i32 %61, i32* %4, align 4
  br label %85

62:                                               ; preds = %49
  br label %63

63:                                               ; preds = %62, %45
  %64 = load %struct.inode*, %struct.inode** %10, align 8
  %65 = call i64 @posix_acl_default_exists(%struct.inode* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %63
  %68 = load i32, i32* @POSIX_ACL_XATTR_DEFAULT, align 4
  %69 = load i32, i32* @POSIX_ACL_XATTR_DEFAULT, align 4
  %70 = call i64 @strlen(i32 %69)
  %71 = add nsw i64 %70, 1
  %72 = load i8*, i8** %6, align 8
  %73 = load i64, i64* %7, align 8
  %74 = getelementptr inbounds %struct.xfs_attr_list_context, %struct.xfs_attr_list_context* %8, i32 0, i32 4
  %75 = call i32 @list_one_attr(i32 %68, i64 %71, i8* %72, i64 %73, i64* %74)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %67
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %4, align 4
  br label %85

80:                                               ; preds = %67
  br label %81

81:                                               ; preds = %80, %63
  %82 = getelementptr inbounds %struct.xfs_attr_list_context, %struct.xfs_attr_list_context* %8, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %81, %78, %60, %42
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.xfs_attr_list_context*, i32, i32) #2

declare dso_local i32 @XFS_I(%struct.inode*) #2

declare dso_local i32 @xfs_attr_list_int(%struct.xfs_attr_list_context*) #2

declare dso_local i64 @posix_acl_access_exists(%struct.inode*) #2

declare dso_local i32 @list_one_attr(i32, i64, i8*, i64, i64*) #2

declare dso_local i64 @strlen(i32) #2

declare dso_local i64 @posix_acl_default_exists(%struct.inode*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
