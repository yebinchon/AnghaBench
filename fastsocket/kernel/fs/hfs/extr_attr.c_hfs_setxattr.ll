; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hfs/extr_attr.c_hfs_setxattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hfs/extr_attr.c_hfs_setxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32, i32 }
%struct.hfs_find_data = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { %struct.hfs_cat_file }
%struct.hfs_cat_file = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"hfs.type\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"hfs.creator\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfs_setxattr(%struct.dentry* %0, i8* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.hfs_find_data, align 8
  %14 = alloca %struct.TYPE_10__, align 4
  %15 = alloca %struct.hfs_cat_file*, align 8
  %16 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.dentry*, %struct.dentry** %7, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 0
  %19 = load %struct.inode*, %struct.inode** %18, align 8
  store %struct.inode* %19, %struct.inode** %12, align 8
  %20 = load %struct.inode*, %struct.inode** %12, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @S_ISREG(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %5
  %26 = load %struct.inode*, %struct.inode** %12, align 8
  %27 = call i64 @HFS_IS_RSRC(%struct.inode* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25, %5
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %113

32:                                               ; preds = %25
  %33 = load %struct.inode*, %struct.inode** %12, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.TYPE_11__* @HFS_SB(i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @hfs_find_init(i32 %38, %struct.hfs_find_data* %13)
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %16, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = load i32, i32* %16, align 4
  store i32 %43, i32* %6, align 4
  br label %113

44:                                               ; preds = %32
  %45 = load %struct.inode*, %struct.inode** %12, align 8
  %46 = call %struct.TYPE_12__* @HFS_I(%struct.inode* %45)
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 2
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 4
  %52 = call i32 @hfs_brec_find(%struct.hfs_find_data* %13)
  store i32 %52, i32* %16, align 4
  %53 = load i32, i32* %16, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %44
  br label %110

56:                                               ; preds = %44
  %57 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @hfs_bnode_read(i32 %58, %struct.TYPE_10__* %14, i32 %60, i32 8)
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  store %struct.hfs_cat_file* %62, %struct.hfs_cat_file** %15, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 @strcmp(i8* %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %79, label %66

66:                                               ; preds = %56
  %67 = load i64, i64* %10, align 8
  %68 = icmp eq i64 %67, 4
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load %struct.hfs_cat_file*, %struct.hfs_cat_file** %15, align 8
  %71 = getelementptr inbounds %struct.hfs_cat_file, %struct.hfs_cat_file* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load i8*, i8** %9, align 8
  %74 = call i32 @memcpy(i32* %72, i8* %73, i32 4)
  br label %78

75:                                               ; preds = %66
  %76 = load i32, i32* @ERANGE, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %16, align 4
  br label %78

78:                                               ; preds = %75, %69
  br label %100

79:                                               ; preds = %56
  %80 = load i8*, i8** %8, align 8
  %81 = call i32 @strcmp(i8* %80, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %96, label %83

83:                                               ; preds = %79
  %84 = load i64, i64* %10, align 8
  %85 = icmp eq i64 %84, 4
  br i1 %85, label %86, label %92

86:                                               ; preds = %83
  %87 = load %struct.hfs_cat_file*, %struct.hfs_cat_file** %15, align 8
  %88 = getelementptr inbounds %struct.hfs_cat_file, %struct.hfs_cat_file* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i8*, i8** %9, align 8
  %91 = call i32 @memcpy(i32* %89, i8* %90, i32 4)
  br label %95

92:                                               ; preds = %83
  %93 = load i32, i32* @ERANGE, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %16, align 4
  br label %95

95:                                               ; preds = %92, %86
  br label %99

96:                                               ; preds = %79
  %97 = load i32, i32* @EOPNOTSUPP, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %16, align 4
  br label %99

99:                                               ; preds = %96, %95
  br label %100

100:                                              ; preds = %99, %78
  %101 = load i32, i32* %16, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @hfs_bnode_write(i32 %105, %struct.TYPE_10__* %14, i32 %107, i32 8)
  br label %109

109:                                              ; preds = %103, %100
  br label %110

110:                                              ; preds = %109, %55
  %111 = call i32 @hfs_find_exit(%struct.hfs_find_data* %13)
  %112 = load i32, i32* %16, align 4
  store i32 %112, i32* %6, align 4
  br label %113

113:                                              ; preds = %110, %42, %29
  %114 = load i32, i32* %6, align 4
  ret i32 %114
}

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i64 @HFS_IS_RSRC(%struct.inode*) #1

declare dso_local i32 @hfs_find_init(i32, %struct.hfs_find_data*) #1

declare dso_local %struct.TYPE_11__* @HFS_SB(i32) #1

declare dso_local %struct.TYPE_12__* @HFS_I(%struct.inode*) #1

declare dso_local i32 @hfs_brec_find(%struct.hfs_find_data*) #1

declare dso_local i32 @hfs_bnode_read(i32, %struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @hfs_bnode_write(i32, %struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @hfs_find_exit(%struct.hfs_find_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
