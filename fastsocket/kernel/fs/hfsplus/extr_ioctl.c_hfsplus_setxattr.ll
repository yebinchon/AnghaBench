; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_ioctl.c_hfsplus_setxattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_ioctl.c_hfsplus_setxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32, i32, i32 }
%struct.hfs_find_data = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.hfsplus_cat_file }
%struct.hfsplus_cat_file = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"hfs.type\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"hfs.creator\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfsplus_setxattr(%struct.dentry* %0, i8* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.hfs_find_data, align 4
  %14 = alloca %struct.TYPE_7__, align 4
  %15 = alloca %struct.hfsplus_cat_file*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_8__, align 4
  store %struct.dentry* %0, %struct.dentry** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load %struct.dentry*, %struct.dentry** %7, align 8
  %19 = getelementptr inbounds %struct.dentry, %struct.dentry* %18, i32 0, i32 0
  %20 = load %struct.inode*, %struct.inode** %19, align 8
  store %struct.inode* %20, %struct.inode** %12, align 8
  %21 = load %struct.inode*, %struct.inode** %12, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @S_ISREG(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %5
  %27 = load %struct.inode*, %struct.inode** %12, align 8
  %28 = call i64 @HFSPLUS_IS_RSRC(%struct.inode* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26, %5
  %31 = load i32, i32* @EOPNOTSUPP, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %114

33:                                               ; preds = %26
  %34 = load %struct.inode*, %struct.inode** %12, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @HFSPLUS_SB(i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @hfs_find_init(i32 %40, %struct.hfs_find_data* %13)
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %16, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = load i32, i32* %16, align 4
  store i32 %45, i32* %6, align 4
  br label %114

46:                                               ; preds = %33
  %47 = load %struct.inode*, %struct.inode** %12, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.inode*, %struct.inode** %12, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @hfsplus_find_cat(i32 %49, i32 %52, %struct.hfs_find_data* %13)
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %16, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  br label %111

57:                                               ; preds = %46
  %58 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @hfs_bnode_read(i32 %59, %struct.TYPE_7__* %14, i32 %61, i32 8)
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  store %struct.hfsplus_cat_file* %63, %struct.hfsplus_cat_file** %15, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 @strcmp(i8* %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %80, label %67

67:                                               ; preds = %57
  %68 = load i64, i64* %10, align 8
  %69 = icmp eq i64 %68, 4
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load %struct.hfsplus_cat_file*, %struct.hfsplus_cat_file** %15, align 8
  %72 = getelementptr inbounds %struct.hfsplus_cat_file, %struct.hfsplus_cat_file* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i8*, i8** %9, align 8
  %75 = call i32 @memcpy(i32* %73, i8* %74, i32 4)
  br label %79

76:                                               ; preds = %67
  %77 = load i32, i32* @ERANGE, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %16, align 4
  br label %79

79:                                               ; preds = %76, %70
  br label %101

80:                                               ; preds = %57
  %81 = load i8*, i8** %8, align 8
  %82 = call i32 @strcmp(i8* %81, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %97, label %84

84:                                               ; preds = %80
  %85 = load i64, i64* %10, align 8
  %86 = icmp eq i64 %85, 4
  br i1 %86, label %87, label %93

87:                                               ; preds = %84
  %88 = load %struct.hfsplus_cat_file*, %struct.hfsplus_cat_file** %15, align 8
  %89 = getelementptr inbounds %struct.hfsplus_cat_file, %struct.hfsplus_cat_file* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i8*, i8** %9, align 8
  %92 = call i32 @memcpy(i32* %90, i8* %91, i32 4)
  br label %96

93:                                               ; preds = %84
  %94 = load i32, i32* @ERANGE, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %16, align 4
  br label %96

96:                                               ; preds = %93, %87
  br label %100

97:                                               ; preds = %80
  %98 = load i32, i32* @EOPNOTSUPP, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %16, align 4
  br label %100

100:                                              ; preds = %97, %96
  br label %101

101:                                              ; preds = %100, %79
  %102 = load i32, i32* %16, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @hfs_bnode_write(i32 %106, %struct.TYPE_7__* %14, i32 %108, i32 8)
  br label %110

110:                                              ; preds = %104, %101
  br label %111

111:                                              ; preds = %110, %56
  %112 = call i32 @hfs_find_exit(%struct.hfs_find_data* %13)
  %113 = load i32, i32* %16, align 4
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %111, %44, %30
  %115 = load i32, i32* %6, align 4
  ret i32 %115
}

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i64 @HFSPLUS_IS_RSRC(%struct.inode*) #1

declare dso_local i32 @hfs_find_init(i32, %struct.hfs_find_data*) #1

declare dso_local i32 @HFSPLUS_SB(i32) #1

declare dso_local i32 @hfsplus_find_cat(i32, i32, %struct.hfs_find_data*) #1

declare dso_local i32 @hfs_bnode_read(i32, %struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @hfs_bnode_write(i32, %struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @hfs_find_exit(%struct.hfs_find_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
