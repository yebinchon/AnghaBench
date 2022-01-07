; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_dir.c_afs_dir_iterate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_dir.c_afs_dir_iterate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.key = type { i32 }
%union.afs_dir_block = type { i32 }
%struct.afs_dir_page = type { %union.afs_dir_block* }
%struct.page = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"{%lu},%u,,\00", align 1
@AFS_VNODE_DELETED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c" = -ESTALE\00", align 1
@ESTALE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32*, i8*, i32, %struct.key*)* @afs_dir_iterate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_dir_iterate(%struct.inode* %0, i32* %1, i8* %2, i32 %3, %struct.key* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.key*, align 8
  %12 = alloca %union.afs_dir_block*, align 8
  %13 = alloca %struct.afs_dir_page*, align 8
  %14 = alloca %struct.page*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.key* %4, %struct.key** %11, align 8
  %18 = load %struct.inode*, %struct.inode** %7, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @_enter(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %22)
  %24 = load i32, i32* @AFS_VNODE_DELETED, align 4
  %25 = load %struct.inode*, %struct.inode** %7, align 8
  %26 = call %struct.TYPE_2__* @AFS_FS_I(%struct.inode* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i64 @test_bit(i32 %24, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %5
  %31 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @ESTALE, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %125

34:                                               ; preds = %5
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %35, align 4
  %37 = zext i32 %36 to i64
  %38 = add i64 %37, 3
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %35, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %40, align 4
  %42 = zext i32 %41 to i64
  %43 = and i64 %42, -4
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %40, align 4
  store i32 0, i32* %17, align 4
  br label %45

45:                                               ; preds = %117, %34
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.inode*, %struct.inode** %7, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ult i32 %47, %50
  br i1 %51, label %52, label %120

52:                                               ; preds = %45
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* %53, align 4
  %55 = zext i32 %54 to i64
  %56 = and i64 %55, -4
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %15, align 4
  %58 = load %struct.inode*, %struct.inode** %7, align 8
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* @PAGE_SIZE, align 4
  %61 = udiv i32 %59, %60
  %62 = load %struct.key*, %struct.key** %11, align 8
  %63 = call %struct.page* @afs_dir_get_page(%struct.inode* %58, i32 %61, %struct.key* %62)
  store %struct.page* %63, %struct.page** %14, align 8
  %64 = load %struct.page*, %struct.page** %14, align 8
  %65 = call i64 @IS_ERR(%struct.page* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %52
  %68 = load %struct.page*, %struct.page** %14, align 8
  %69 = call i32 @PTR_ERR(%struct.page* %68)
  store i32 %69, i32* %17, align 4
  br label %120

70:                                               ; preds = %52
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* @PAGE_SIZE, align 4
  %73 = sub i32 %72, 1
  %74 = xor i32 %73, -1
  %75 = and i32 %71, %74
  store i32 %75, i32* %16, align 4
  %76 = load %struct.page*, %struct.page** %14, align 8
  %77 = call %struct.afs_dir_page* @page_address(%struct.page* %76)
  store %struct.afs_dir_page* %77, %struct.afs_dir_page** %13, align 8
  br label %78

78:                                               ; preds = %115, %70
  %79 = load %struct.afs_dir_page*, %struct.afs_dir_page** %13, align 8
  %80 = getelementptr inbounds %struct.afs_dir_page, %struct.afs_dir_page* %79, i32 0, i32 0
  %81 = load %union.afs_dir_block*, %union.afs_dir_block** %80, align 8
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* @PAGE_SIZE, align 4
  %84 = urem i32 %82, %83
  %85 = zext i32 %84 to i64
  %86 = udiv i64 %85, 4
  %87 = getelementptr inbounds %union.afs_dir_block, %union.afs_dir_block* %81, i64 %86
  store %union.afs_dir_block* %87, %union.afs_dir_block** %12, align 8
  %88 = load i32*, i32** %8, align 8
  %89 = load %union.afs_dir_block*, %union.afs_dir_block** %12, align 8
  %90 = load i32, i32* %15, align 4
  %91 = load i8*, i8** %9, align 8
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @afs_dir_iterate_block(i32* %88, %union.afs_dir_block* %89, i32 %90, i8* %91, i32 %92)
  store i32 %93, i32* %17, align 4
  %94 = load i32, i32* %17, align 4
  %95 = icmp ne i32 %94, 1
  br i1 %95, label %96, label %99

96:                                               ; preds = %78
  %97 = load %struct.page*, %struct.page** %14, align 8
  %98 = call i32 @afs_dir_put_page(%struct.page* %97)
  br label %121

99:                                               ; preds = %78
  %100 = load i32, i32* %15, align 4
  %101 = zext i32 %100 to i64
  %102 = add i64 %101, 4
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %15, align 4
  br label %104

104:                                              ; preds = %99
  %105 = load i32*, i32** %8, align 8
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.inode*, %struct.inode** %7, align 8
  %108 = getelementptr inbounds %struct.inode, %struct.inode* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp ult i32 %106, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %104
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* %16, align 4
  %114 = icmp ult i32 %112, %113
  br label %115

115:                                              ; preds = %111, %104
  %116 = phi i1 [ false, %104 ], [ %114, %111 ]
  br i1 %116, label %78, label %117

117:                                              ; preds = %115
  %118 = load %struct.page*, %struct.page** %14, align 8
  %119 = call i32 @afs_dir_put_page(%struct.page* %118)
  store i32 0, i32* %17, align 4
  br label %45

120:                                              ; preds = %67, %45
  br label %121

121:                                              ; preds = %120, %96
  %122 = load i32, i32* %17, align 4
  %123 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* %17, align 4
  store i32 %124, i32* %6, align 4
  br label %125

125:                                              ; preds = %121, %30
  %126 = load i32, i32* %6, align 4
  ret i32 %126
}

declare dso_local i32 @_enter(i8*, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.TYPE_2__* @AFS_FS_I(%struct.inode*) #1

declare dso_local i32 @_leave(i8*, ...) #1

declare dso_local %struct.page* @afs_dir_get_page(%struct.inode*, i32, %struct.key*) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local %struct.afs_dir_page* @page_address(%struct.page*) #1

declare dso_local i32 @afs_dir_iterate_block(i32*, %union.afs_dir_block*, i32, i8*, i32) #1

declare dso_local i32 @afs_dir_put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
