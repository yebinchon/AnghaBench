; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/befs/extr_linuxvfs.c_befs_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/befs/extr_linuxvfs.c_befs_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block*, i32 }
%struct.super_block = type { i32 }
%struct.dentry = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* }
%struct.nameidata = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [37 x i8] c"---> befs_lookup() name %s inode %ld\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"<--- befs_lookup() ERROR\00", align 1
@BEFS_BT_NOT_FOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"<--- befs_lookup() %s not found\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@BEFS_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"<--- befs_lookup() Error\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"<--- befs_lookup()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, %struct.nameidata*)* @befs_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @befs_lookup(%struct.inode* %0, %struct.dentry* %1, %struct.nameidata* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.nameidata*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.super_block*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.nameidata* %2, %struct.nameidata** %7, align 8
  store %struct.inode* null, %struct.inode** %8, align 8
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load %struct.super_block*, %struct.super_block** %17, align 8
  store %struct.super_block* %18, %struct.super_block** %9, align 8
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = call %struct.TYPE_8__* @BEFS_I(%struct.inode* %19)
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store i32* %22, i32** %10, align 8
  %23 = load %struct.dentry*, %struct.dentry** %6, align 8
  %24 = getelementptr inbounds %struct.dentry, %struct.dentry* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %15, align 8
  %27 = load %struct.super_block*, %struct.super_block** %9, align 8
  %28 = load %struct.dentry*, %struct.dentry** %6, align 8
  %29 = getelementptr inbounds %struct.dentry, %struct.dentry* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.inode*, %struct.inode** %5, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (%struct.super_block*, i8*, ...) @befs_debug(%struct.super_block* %27, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %31, i32 %34)
  %36 = load %struct.super_block*, %struct.super_block** %9, align 8
  %37 = call %struct.TYPE_7__* @BEFS_SB(%struct.super_block* %36)
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %61

41:                                               ; preds = %3
  %42 = load %struct.super_block*, %struct.super_block** %9, align 8
  %43 = load i8*, i8** %15, align 8
  %44 = load i8*, i8** %15, align 8
  %45 = call i32 @strlen(i8* %44)
  %46 = call i32 @befs_nls2utf(%struct.super_block* %42, i8* %43, i32 %45, i8** %14, i32* %13)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %41
  %50 = load %struct.super_block*, %struct.super_block** %9, align 8
  %51 = call i32 (%struct.super_block*, i8*, ...) @befs_debug(%struct.super_block* %50, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* %12, align 4
  %53 = call %struct.dentry* @ERR_PTR(i32 %52)
  store %struct.dentry* %53, %struct.dentry** %4, align 8
  br label %116

54:                                               ; preds = %41
  %55 = load %struct.super_block*, %struct.super_block** %9, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = load i8*, i8** %14, align 8
  %58 = call i32 @befs_btree_find(%struct.super_block* %55, i32* %56, i8* %57, i64* %11)
  store i32 %58, i32* %12, align 4
  %59 = load i8*, i8** %14, align 8
  %60 = call i32 @kfree(i8* %59)
  br label %69

61:                                               ; preds = %3
  %62 = load %struct.super_block*, %struct.super_block** %9, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = load %struct.dentry*, %struct.dentry** %6, align 8
  %65 = getelementptr inbounds %struct.dentry, %struct.dentry* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @befs_btree_find(%struct.super_block* %62, i32* %63, i8* %67, i64* %11)
  store i32 %68, i32* %12, align 4
  br label %69

69:                                               ; preds = %61, %54
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* @BEFS_BT_NOT_FOUND, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %69
  %74 = load %struct.super_block*, %struct.super_block** %9, align 8
  %75 = load %struct.dentry*, %struct.dentry** %6, align 8
  %76 = getelementptr inbounds %struct.dentry, %struct.dentry* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 (%struct.super_block*, i8*, ...) @befs_debug(%struct.super_block* %74, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %78)
  %80 = load i32, i32* @ENOENT, align 4
  %81 = sub nsw i32 0, %80
  %82 = call %struct.dentry* @ERR_PTR(i32 %81)
  store %struct.dentry* %82, %struct.dentry** %4, align 8
  br label %116

83:                                               ; preds = %69
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* @BEFS_OK, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %90, label %87

87:                                               ; preds = %83
  %88 = load i64, i64* %11, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %87, %83
  %91 = load %struct.super_block*, %struct.super_block** %9, align 8
  %92 = call i32 @befs_warning(%struct.super_block* %91, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %93 = load i32, i32* @ENODATA, align 4
  %94 = sub nsw i32 0, %93
  %95 = call %struct.dentry* @ERR_PTR(i32 %94)
  store %struct.dentry* %95, %struct.dentry** %4, align 8
  br label %116

96:                                               ; preds = %87
  br label %97

97:                                               ; preds = %96
  %98 = load %struct.inode*, %struct.inode** %5, align 8
  %99 = getelementptr inbounds %struct.inode, %struct.inode* %98, i32 0, i32 0
  %100 = load %struct.super_block*, %struct.super_block** %99, align 8
  %101 = load i64, i64* %11, align 8
  %102 = trunc i64 %101 to i32
  %103 = call %struct.inode* @befs_iget(%struct.super_block* %100, i32 %102)
  store %struct.inode* %103, %struct.inode** %8, align 8
  %104 = load %struct.inode*, %struct.inode** %8, align 8
  %105 = call i64 @IS_ERR(%struct.inode* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %97
  %108 = load %struct.inode*, %struct.inode** %8, align 8
  %109 = call %struct.dentry* @ERR_CAST(%struct.inode* %108)
  store %struct.dentry* %109, %struct.dentry** %4, align 8
  br label %116

110:                                              ; preds = %97
  %111 = load %struct.dentry*, %struct.dentry** %6, align 8
  %112 = load %struct.inode*, %struct.inode** %8, align 8
  %113 = call i32 @d_add(%struct.dentry* %111, %struct.inode* %112)
  %114 = load %struct.super_block*, %struct.super_block** %9, align 8
  %115 = call i32 (%struct.super_block*, i8*, ...) @befs_debug(%struct.super_block* %114, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  store %struct.dentry* null, %struct.dentry** %4, align 8
  br label %116

116:                                              ; preds = %110, %107, %90, %73, %49
  %117 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %117
}

declare dso_local %struct.TYPE_8__* @BEFS_I(%struct.inode*) #1

declare dso_local i32 @befs_debug(%struct.super_block*, i8*, ...) #1

declare dso_local %struct.TYPE_7__* @BEFS_SB(%struct.super_block*) #1

declare dso_local i32 @befs_nls2utf(%struct.super_block*, i8*, i32, i8**, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i32 @befs_btree_find(%struct.super_block*, i32*, i8*, i64*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @befs_warning(%struct.super_block*, i8*) #1

declare dso_local %struct.inode* @befs_iget(%struct.super_block*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local %struct.dentry* @ERR_CAST(%struct.inode*) #1

declare dso_local i32 @d_add(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
