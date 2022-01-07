; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hfs/extr_attr.c_hfs_getxattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hfs/extr_attr.c_hfs_getxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32, i32 }
%struct.hfs_find_data = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { %struct.hfs_cat_file }
%struct.hfs_cat_file = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"hfs.type\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"hfs.creator\00", align 1
@ENODATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfs_getxattr(%struct.dentry* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.hfs_find_data, align 8
  %12 = alloca %struct.TYPE_9__, align 4
  %13 = alloca %struct.hfs_cat_file*, align 8
  %14 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.dentry*, %struct.dentry** %6, align 8
  %16 = getelementptr inbounds %struct.dentry, %struct.dentry* %15, i32 0, i32 0
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  store %struct.inode* %17, %struct.inode** %10, align 8
  store i32 0, i32* %14, align 4
  %18 = load %struct.inode*, %struct.inode** %10, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @S_ISREG(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = load %struct.inode*, %struct.inode** %10, align 8
  %25 = call i64 @HFS_IS_RSRC(%struct.inode* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23, %4
  %28 = load i32, i32* @EOPNOTSUPP, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %122

30:                                               ; preds = %23
  %31 = load i64, i64* %9, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %63

33:                                               ; preds = %30
  %34 = load %struct.inode*, %struct.inode** %10, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.TYPE_10__* @HFS_SB(i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @hfs_find_init(i32 %39, %struct.hfs_find_data* %11)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i32, i32* %14, align 4
  store i32 %44, i32* %5, align 4
  br label %122

45:                                               ; preds = %33
  %46 = load %struct.inode*, %struct.inode** %10, align 8
  %47 = call %struct.TYPE_11__* @HFS_I(%struct.inode* %46)
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %11, i32 0, i32 2
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 4
  %53 = call i32 @hfs_brec_find(%struct.hfs_find_data* %11)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %45
  br label %115

57:                                               ; preds = %45
  %58 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %11, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %11, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @hfs_bnode_read(i32 %59, %struct.TYPE_9__* %12, i32 %61, i32 8)
  br label %63

63:                                               ; preds = %57, %30
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  store %struct.hfs_cat_file* %64, %struct.hfs_cat_file** %13, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 @strcmp(i8* %65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %87, label %68

68:                                               ; preds = %63
  %69 = load i64, i64* %9, align 8
  %70 = icmp uge i64 %69, 4
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load i8*, i8** %8, align 8
  %73 = load %struct.hfs_cat_file*, %struct.hfs_cat_file** %13, align 8
  %74 = getelementptr inbounds %struct.hfs_cat_file, %struct.hfs_cat_file* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = call i32 @memcpy(i8* %72, i32* %75, i32 4)
  store i32 4, i32* %14, align 4
  br label %86

77:                                               ; preds = %68
  %78 = load i64, i64* %9, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, i32* @ERANGE, align 4
  %82 = sub nsw i32 0, %81
  br label %84

83:                                               ; preds = %77
  br label %84

84:                                               ; preds = %83, %80
  %85 = phi i32 [ %82, %80 ], [ 4, %83 ]
  store i32 %85, i32* %14, align 4
  br label %86

86:                                               ; preds = %84, %71
  br label %114

87:                                               ; preds = %63
  %88 = load i8*, i8** %7, align 8
  %89 = call i32 @strcmp(i8* %88, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %110, label %91

91:                                               ; preds = %87
  %92 = load i64, i64* %9, align 8
  %93 = icmp uge i64 %92, 4
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = load i8*, i8** %8, align 8
  %96 = load %struct.hfs_cat_file*, %struct.hfs_cat_file** %13, align 8
  %97 = getelementptr inbounds %struct.hfs_cat_file, %struct.hfs_cat_file* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = call i32 @memcpy(i8* %95, i32* %98, i32 4)
  store i32 4, i32* %14, align 4
  br label %109

100:                                              ; preds = %91
  %101 = load i64, i64* %9, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i32, i32* @ERANGE, align 4
  %105 = sub nsw i32 0, %104
  br label %107

106:                                              ; preds = %100
  br label %107

107:                                              ; preds = %106, %103
  %108 = phi i32 [ %105, %103 ], [ 4, %106 ]
  store i32 %108, i32* %14, align 4
  br label %109

109:                                              ; preds = %107, %94
  br label %113

110:                                              ; preds = %87
  %111 = load i32, i32* @ENODATA, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %14, align 4
  br label %113

113:                                              ; preds = %110, %109
  br label %114

114:                                              ; preds = %113, %86
  br label %115

115:                                              ; preds = %114, %56
  %116 = load i64, i64* %9, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = call i32 @hfs_find_exit(%struct.hfs_find_data* %11)
  br label %120

120:                                              ; preds = %118, %115
  %121 = load i32, i32* %14, align 4
  store i32 %121, i32* %5, align 4
  br label %122

122:                                              ; preds = %120, %43, %27
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i64 @HFS_IS_RSRC(%struct.inode*) #1

declare dso_local i32 @hfs_find_init(i32, %struct.hfs_find_data*) #1

declare dso_local %struct.TYPE_10__* @HFS_SB(i32) #1

declare dso_local %struct.TYPE_11__* @HFS_I(%struct.inode*) #1

declare dso_local i32 @hfs_brec_find(%struct.hfs_find_data*) #1

declare dso_local i32 @hfs_bnode_read(i32, %struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @hfs_find_exit(%struct.hfs_find_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
