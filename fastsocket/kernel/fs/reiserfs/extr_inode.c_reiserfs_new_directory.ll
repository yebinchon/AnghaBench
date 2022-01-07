; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_inode.c_reiserfs_new_directory.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_inode.c_reiserfs_new_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_transaction_handle = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.item_head = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.treepath = type { i32 }
%struct.inode = type { i32 }
%struct.cpu_key = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@EMPTY_DIR_SIZE = common dso_local global i32 0, align 4
@KEY_FORMAT_3_5 = common dso_local global i32 0, align 4
@DOT_OFFSET = common dso_local global i32 0, align 4
@TYPE_DIRENTRY = common dso_local global i32 0, align 4
@EMPTY_DIR_SIZE_V1 = common dso_local global i32 0, align 4
@IO_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"vs-13080\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"i/o failure occurred creating new directory\00", align 1
@EIO = common dso_local global i32 0, align 4
@ITEM_FOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"vs-13070\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"object with this key exists (%k)\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reiserfs_transaction_handle*, %struct.inode*, %struct.item_head*, %struct.treepath*, %struct.inode*)* @reiserfs_new_directory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reiserfs_new_directory(%struct.reiserfs_transaction_handle* %0, %struct.inode* %1, %struct.item_head* %2, %struct.treepath* %3, %struct.inode* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.reiserfs_transaction_handle*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.item_head*, align 8
  %10 = alloca %struct.treepath*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.super_block*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.cpu_key, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.reiserfs_transaction_handle* %0, %struct.reiserfs_transaction_handle** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.item_head* %2, %struct.item_head** %9, align 8
  store %struct.treepath* %3, %struct.treepath** %10, align 8
  store %struct.inode* %4, %struct.inode** %11, align 8
  %19 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %7, align 8
  %20 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %19, i32 0, i32 1
  %21 = load %struct.super_block*, %struct.super_block** %20, align 8
  store %struct.super_block* %21, %struct.super_block** %12, align 8
  %22 = load i32, i32* @EMPTY_DIR_SIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %13, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %14, align 8
  store i8* %25, i8** %15, align 8
  %26 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %7, align 8
  %27 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUG_ON(i32 %31)
  %33 = load i32, i32* @KEY_FORMAT_3_5, align 4
  %34 = load %struct.item_head*, %struct.item_head** %9, align 8
  %35 = getelementptr inbounds %struct.item_head, %struct.item_head* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le32_to_cpu(i32 %37)
  %39 = load %struct.item_head*, %struct.item_head** %9, align 8
  %40 = getelementptr inbounds %struct.item_head, %struct.item_head* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le32_to_cpu(i32 %42)
  %44 = load i32, i32* @DOT_OFFSET, align 4
  %45 = load i32, i32* @TYPE_DIRENTRY, align 4
  %46 = call i32 @_make_cpu_key(%struct.cpu_key* %16, i32 %33, i32 %38, i32 %43, i32 %44, i32 %45, i32 3)
  %47 = load %struct.super_block*, %struct.super_block** %12, align 8
  %48 = call i64 @old_format_only(%struct.super_block* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %75

50:                                               ; preds = %5
  %51 = load %struct.item_head*, %struct.item_head** %9, align 8
  %52 = load i32, i32* @KEY_FORMAT_3_5, align 4
  %53 = load i32, i32* @DOT_OFFSET, align 4
  %54 = load i32, i32* @TYPE_DIRENTRY, align 4
  %55 = load i32, i32* @EMPTY_DIR_SIZE_V1, align 4
  %56 = call i32 @make_le_item_head(%struct.item_head* %51, i32* null, i32 %52, i32 %53, i32 %54, i32 %55, i32 2)
  %57 = load i8*, i8** %15, align 8
  %58 = load %struct.item_head*, %struct.item_head** %9, align 8
  %59 = getelementptr inbounds %struct.item_head, %struct.item_head* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.item_head*, %struct.item_head** %9, align 8
  %63 = getelementptr inbounds %struct.item_head, %struct.item_head* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.inode*, %struct.inode** %11, align 8
  %67 = call %struct.TYPE_4__* @INODE_PKEY(%struct.inode* %66)
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.inode*, %struct.inode** %11, align 8
  %71 = call %struct.TYPE_4__* @INODE_PKEY(%struct.inode* %70)
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @make_empty_dir_item_v1(i8* %57, i32 %61, i32 %65, i32 %69, i32 %73)
  br label %100

75:                                               ; preds = %5
  %76 = load %struct.item_head*, %struct.item_head** %9, align 8
  %77 = load i32, i32* @KEY_FORMAT_3_5, align 4
  %78 = load i32, i32* @DOT_OFFSET, align 4
  %79 = load i32, i32* @TYPE_DIRENTRY, align 4
  %80 = load i32, i32* @EMPTY_DIR_SIZE, align 4
  %81 = call i32 @make_le_item_head(%struct.item_head* %76, i32* null, i32 %77, i32 %78, i32 %79, i32 %80, i32 2)
  %82 = load i8*, i8** %15, align 8
  %83 = load %struct.item_head*, %struct.item_head** %9, align 8
  %84 = getelementptr inbounds %struct.item_head, %struct.item_head* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.item_head*, %struct.item_head** %9, align 8
  %88 = getelementptr inbounds %struct.item_head, %struct.item_head* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.inode*, %struct.inode** %11, align 8
  %92 = call %struct.TYPE_4__* @INODE_PKEY(%struct.inode* %91)
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.inode*, %struct.inode** %11, align 8
  %96 = call %struct.TYPE_4__* @INODE_PKEY(%struct.inode* %95)
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @make_empty_dir_item(i8* %82, i32 %86, i32 %90, i32 %94, i32 %98)
  br label %100

100:                                              ; preds = %75, %50
  %101 = load %struct.super_block*, %struct.super_block** %12, align 8
  %102 = load %struct.treepath*, %struct.treepath** %10, align 8
  %103 = call i32 @search_item(%struct.super_block* %101, %struct.cpu_key* %16, %struct.treepath* %102)
  store i32 %103, i32* %17, align 4
  %104 = load i32, i32* %17, align 4
  %105 = load i32, i32* @IO_ERROR, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %100
  %108 = load %struct.super_block*, %struct.super_block** %12, align 8
  %109 = call i32 @reiserfs_error(%struct.super_block* %108, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %110 = load i32, i32* @EIO, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %132

112:                                              ; preds = %100
  %113 = load i32, i32* %17, align 4
  %114 = load i32, i32* @ITEM_FOUND, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %125

116:                                              ; preds = %112
  %117 = load %struct.treepath*, %struct.treepath** %10, align 8
  %118 = call i32 @pathrelse(%struct.treepath* %117)
  %119 = load %struct.super_block*, %struct.super_block** %12, align 8
  %120 = load %struct.item_head*, %struct.item_head** %9, align 8
  %121 = getelementptr inbounds %struct.item_head, %struct.item_head* %120, i32 0, i32 0
  %122 = call i32 @reiserfs_warning(%struct.super_block* %119, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_3__* %121)
  %123 = load i32, i32* @EEXIST, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %132

125:                                              ; preds = %112
  %126 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %7, align 8
  %127 = load %struct.treepath*, %struct.treepath** %10, align 8
  %128 = load %struct.item_head*, %struct.item_head** %9, align 8
  %129 = load %struct.inode*, %struct.inode** %8, align 8
  %130 = load i8*, i8** %15, align 8
  %131 = call i32 @reiserfs_insert_item(%struct.reiserfs_transaction_handle* %126, %struct.treepath* %127, %struct.cpu_key* %16, %struct.item_head* %128, %struct.inode* %129, i8* %130)
  store i32 %131, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %132

132:                                              ; preds = %125, %116, %107
  %133 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %133)
  %134 = load i32, i32* %6, align 4
  ret i32 %134
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i32 @_make_cpu_key(%struct.cpu_key*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @le32_to_cpu(i32) #2

declare dso_local i64 @old_format_only(%struct.super_block*) #2

declare dso_local i32 @make_le_item_head(%struct.item_head*, i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @make_empty_dir_item_v1(i8*, i32, i32, i32, i32) #2

declare dso_local %struct.TYPE_4__* @INODE_PKEY(%struct.inode*) #2

declare dso_local i32 @make_empty_dir_item(i8*, i32, i32, i32, i32) #2

declare dso_local i32 @search_item(%struct.super_block*, %struct.cpu_key*, %struct.treepath*) #2

declare dso_local i32 @reiserfs_error(%struct.super_block*, i8*, i8*) #2

declare dso_local i32 @pathrelse(%struct.treepath*) #2

declare dso_local i32 @reiserfs_warning(%struct.super_block*, i8*, i8*, %struct.TYPE_3__*) #2

declare dso_local i32 @reiserfs_insert_item(%struct.reiserfs_transaction_handle*, %struct.treepath*, %struct.cpu_key*, %struct.item_head*, %struct.inode*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
