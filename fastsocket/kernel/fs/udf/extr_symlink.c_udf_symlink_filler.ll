; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_symlink.c_udf_symlink_filler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_symlink.c_udf_symlink_filler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.page = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32, i32 }
%struct.buffer_head = type { i8* }
%struct.udf_inode_info = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }

@EIO = common dso_local global i32 0, align 4
@ICBTAG_FLAG_AD_IN_ICB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.page*)* @udf_symlink_filler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_symlink_filler(%struct.file* %0, %struct.page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.udf_inode_info*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  %12 = load %struct.page*, %struct.page** %5, align 8
  %13 = getelementptr inbounds %struct.page, %struct.page* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.inode*, %struct.inode** %15, align 8
  store %struct.inode* %16, %struct.inode** %6, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %7, align 8
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %9, align 4
  %19 = load %struct.page*, %struct.page** %5, align 8
  %20 = call i8* @kmap(%struct.page* %19)
  store i8* %20, i8** %10, align 8
  %21 = call i32 (...) @lock_kernel()
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %22)
  store %struct.udf_inode_info* %23, %struct.udf_inode_info** %11, align 8
  %24 = load %struct.udf_inode_info*, %struct.udf_inode_info** %11, align 8
  %25 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ICBTAG_FLAG_AD_IN_ICB, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %2
  %30 = load %struct.udf_inode_info*, %struct.udf_inode_info** %11, align 8
  %31 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.udf_inode_info*, %struct.udf_inode_info** %11, align 8
  %35 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %33, i64 %37
  store i8* %38, i8** %8, align 8
  br label %53

39:                                               ; preds = %2
  %40 = load %struct.inode*, %struct.inode** %6, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.inode*, %struct.inode** %6, align 8
  %44 = call i32 @udf_block_map(%struct.inode* %43, i32 0)
  %45 = call %struct.buffer_head* @sb_bread(i32 %42, i32 %44)
  store %struct.buffer_head* %45, %struct.buffer_head** %7, align 8
  %46 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %47 = icmp ne %struct.buffer_head* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %39
  br label %72

49:                                               ; preds = %39
  %50 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %51 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %8, align 8
  br label %53

53:                                               ; preds = %49, %29
  %54 = load %struct.inode*, %struct.inode** %6, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %8, align 8
  %58 = load %struct.inode*, %struct.inode** %6, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i8*, i8** %10, align 8
  %62 = call i32 @udf_pc_to_char(i32 %56, i8* %57, i32 %60, i8* %61)
  %63 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %64 = call i32 @brelse(%struct.buffer_head* %63)
  %65 = call i32 (...) @unlock_kernel()
  %66 = load %struct.page*, %struct.page** %5, align 8
  %67 = call i32 @SetPageUptodate(%struct.page* %66)
  %68 = load %struct.page*, %struct.page** %5, align 8
  %69 = call i32 @kunmap(%struct.page* %68)
  %70 = load %struct.page*, %struct.page** %5, align 8
  %71 = call i32 @unlock_page(%struct.page* %70)
  store i32 0, i32* %3, align 4
  br label %81

72:                                               ; preds = %48
  %73 = call i32 (...) @unlock_kernel()
  %74 = load %struct.page*, %struct.page** %5, align 8
  %75 = call i32 @SetPageError(%struct.page* %74)
  %76 = load %struct.page*, %struct.page** %5, align 8
  %77 = call i32 @kunmap(%struct.page* %76)
  %78 = load %struct.page*, %struct.page** %5, align 8
  %79 = call i32 @unlock_page(%struct.page* %78)
  %80 = load i32, i32* %9, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %72, %53
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i8* @kmap(%struct.page*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local %struct.udf_inode_info* @UDF_I(%struct.inode*) #1

declare dso_local %struct.buffer_head* @sb_bread(i32, i32) #1

declare dso_local i32 @udf_block_map(%struct.inode*, i32) #1

declare dso_local i32 @udf_pc_to_char(i32, i8*, i32, i8*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @unlock_kernel(...) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @SetPageError(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
