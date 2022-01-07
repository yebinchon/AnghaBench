; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_ioctl.c_hfsplus_getxattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_ioctl.c_hfsplus_getxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32, i32, i32 }
%struct.hfs_find_data = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.hfsplus_cat_file }
%struct.hfsplus_cat_file = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"hfs.type\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"hfs.creator\00", align 1
@ENODATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfsplus_getxattr(%struct.dentry* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.hfs_find_data, align 4
  %12 = alloca %struct.TYPE_6__, align 4
  %13 = alloca %struct.hfsplus_cat_file*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_7__, align 4
  store %struct.dentry* %0, %struct.dentry** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.dentry*, %struct.dentry** %6, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 0
  %18 = load %struct.inode*, %struct.inode** %17, align 8
  store %struct.inode* %18, %struct.inode** %10, align 8
  store i32 0, i32* %14, align 4
  %19 = load %struct.inode*, %struct.inode** %10, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @S_ISREG(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %4
  %25 = load %struct.inode*, %struct.inode** %10, align 8
  %26 = call i64 @HFSPLUS_IS_RSRC(%struct.inode* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24, %4
  %29 = load i32, i32* @EOPNOTSUPP, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %123

31:                                               ; preds = %24
  %32 = load i64, i64* %9, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %64

34:                                               ; preds = %31
  %35 = load %struct.inode*, %struct.inode** %10, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @HFSPLUS_SB(i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @hfs_find_init(i32 %41, %struct.hfs_find_data* %11)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %34
  %46 = load i32, i32* %14, align 4
  store i32 %46, i32* %5, align 4
  br label %123

47:                                               ; preds = %34
  %48 = load %struct.inode*, %struct.inode** %10, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.inode*, %struct.inode** %10, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @hfsplus_find_cat(i32 %50, i32 %53, %struct.hfs_find_data* %11)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  br label %116

58:                                               ; preds = %47
  %59 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %11, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %11, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @hfs_bnode_read(i32 %60, %struct.TYPE_6__* %12, i32 %62, i32 8)
  br label %64

64:                                               ; preds = %58, %31
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store %struct.hfsplus_cat_file* %65, %struct.hfsplus_cat_file** %13, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @strcmp(i8* %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %88, label %69

69:                                               ; preds = %64
  %70 = load i64, i64* %9, align 8
  %71 = icmp uge i64 %70, 4
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load i8*, i8** %8, align 8
  %74 = load %struct.hfsplus_cat_file*, %struct.hfsplus_cat_file** %13, align 8
  %75 = getelementptr inbounds %struct.hfsplus_cat_file, %struct.hfsplus_cat_file* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = call i32 @memcpy(i8* %73, i32* %76, i32 4)
  store i32 4, i32* %14, align 4
  br label %87

78:                                               ; preds = %69
  %79 = load i64, i64* %9, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32, i32* @ERANGE, align 4
  %83 = sub nsw i32 0, %82
  br label %85

84:                                               ; preds = %78
  br label %85

85:                                               ; preds = %84, %81
  %86 = phi i32 [ %83, %81 ], [ 4, %84 ]
  store i32 %86, i32* %14, align 4
  br label %87

87:                                               ; preds = %85, %72
  br label %115

88:                                               ; preds = %64
  %89 = load i8*, i8** %7, align 8
  %90 = call i32 @strcmp(i8* %89, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %111, label %92

92:                                               ; preds = %88
  %93 = load i64, i64* %9, align 8
  %94 = icmp uge i64 %93, 4
  br i1 %94, label %95, label %101

95:                                               ; preds = %92
  %96 = load i8*, i8** %8, align 8
  %97 = load %struct.hfsplus_cat_file*, %struct.hfsplus_cat_file** %13, align 8
  %98 = getelementptr inbounds %struct.hfsplus_cat_file, %struct.hfsplus_cat_file* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = call i32 @memcpy(i8* %96, i32* %99, i32 4)
  store i32 4, i32* %14, align 4
  br label %110

101:                                              ; preds = %92
  %102 = load i64, i64* %9, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load i32, i32* @ERANGE, align 4
  %106 = sub nsw i32 0, %105
  br label %108

107:                                              ; preds = %101
  br label %108

108:                                              ; preds = %107, %104
  %109 = phi i32 [ %106, %104 ], [ 4, %107 ]
  store i32 %109, i32* %14, align 4
  br label %110

110:                                              ; preds = %108, %95
  br label %114

111:                                              ; preds = %88
  %112 = load i32, i32* @ENODATA, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %14, align 4
  br label %114

114:                                              ; preds = %111, %110
  br label %115

115:                                              ; preds = %114, %87
  br label %116

116:                                              ; preds = %115, %57
  %117 = load i64, i64* %9, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %116
  %120 = call i32 @hfs_find_exit(%struct.hfs_find_data* %11)
  br label %121

121:                                              ; preds = %119, %116
  %122 = load i32, i32* %14, align 4
  store i32 %122, i32* %5, align 4
  br label %123

123:                                              ; preds = %121, %45, %28
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i64 @HFSPLUS_IS_RSRC(%struct.inode*) #1

declare dso_local i32 @hfs_find_init(i32, %struct.hfs_find_data*) #1

declare dso_local i32 @HFSPLUS_SB(i32) #1

declare dso_local i32 @hfsplus_find_cat(i32, i32, %struct.hfs_find_data*) #1

declare dso_local i32 @hfs_bnode_read(i32, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @hfs_find_exit(%struct.hfs_find_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
