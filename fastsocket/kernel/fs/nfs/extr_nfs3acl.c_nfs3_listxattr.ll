; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3acl.c_nfs3_listxattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3acl.c_nfs3_listxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.posix_acl = type { i32 }

@ACL_TYPE_ACCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"system.posix_acl_access\00", align 1
@ACL_TYPE_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"system.posix_acl_default\00", align 1
@ERANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs3_listxattr(%struct.dentry* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.posix_acl*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.dentry*, %struct.dentry** %5, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 0
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.inode*, %struct.inode** %8, align 8
  %16 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  %17 = call %struct.posix_acl* @nfs3_proc_getacl(%struct.inode* %15, i32 %16)
  store %struct.posix_acl* %17, %struct.posix_acl** %9, align 8
  %18 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %19 = call i64 @IS_ERR(%struct.posix_acl* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %23 = call i32 @PTR_ERR(%struct.posix_acl* %22)
  store i32 %23, i32* %4, align 4
  br label %108

24:                                               ; preds = %3
  %25 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %26 = icmp ne %struct.posix_acl* %25, null
  br i1 %26, label %27, label %51

27:                                               ; preds = %24
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = add i64 %30, 24
  %32 = load i64, i64* %7, align 8
  %33 = icmp ule i64 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %28
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %38, i8* align 1 getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 24, i1 false)
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = add i64 %40, 24
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %34, %28
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = add i64 %45, 24
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %43
  %49 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %50 = call i32 @posix_acl_release(%struct.posix_acl* %49)
  br label %51

51:                                               ; preds = %48, %24
  %52 = load %struct.inode*, %struct.inode** %8, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @S_ISDIR(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %95

57:                                               ; preds = %51
  %58 = load %struct.inode*, %struct.inode** %8, align 8
  %59 = load i32, i32* @ACL_TYPE_DEFAULT, align 4
  %60 = call %struct.posix_acl* @nfs3_proc_getacl(%struct.inode* %58, i32 %59)
  store %struct.posix_acl* %60, %struct.posix_acl** %9, align 8
  %61 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %62 = call i64 @IS_ERR(%struct.posix_acl* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %66 = call i32 @PTR_ERR(%struct.posix_acl* %65)
  store i32 %66, i32* %4, align 4
  br label %108

67:                                               ; preds = %57
  %68 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %69 = icmp ne %struct.posix_acl* %68, null
  br i1 %69, label %70, label %94

70:                                               ; preds = %67
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = add i64 %73, 25
  %75 = load i64, i64* %7, align 8
  %76 = icmp ule i64 %74, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %71
  %78 = load i8*, i8** %6, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %81, i8* align 1 getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 25, i1 false)
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = add i64 %83, 25
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %10, align 4
  br label %86

86:                                               ; preds = %77, %71
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = add i64 %88, 25
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %11, align 4
  br label %91

91:                                               ; preds = %86
  %92 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %93 = call i32 @posix_acl_release(%struct.posix_acl* %92)
  br label %94

94:                                               ; preds = %91, %67
  br label %95

95:                                               ; preds = %94, %51
  %96 = load i8*, i8** %6, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = load i64, i64* %7, align 8
  %102 = icmp ule i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %98, %95
  %104 = load i32, i32* %11, align 4
  store i32 %104, i32* %4, align 4
  br label %108

105:                                              ; preds = %98
  %106 = load i32, i32* @ERANGE, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %105, %103, %64, %21
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local %struct.posix_acl* @nfs3_proc_getacl(%struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.posix_acl*) #1

declare dso_local i32 @PTR_ERR(%struct.posix_acl*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

declare dso_local i64 @S_ISDIR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
