; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_aops.c_ocfs2_direct_IO_get_blocks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_aops.c_ocfs2_direct_IO_get_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8 }
%struct.buffer_head = type { i64 }

@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"get_blocks() failed iblock=%llu\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@OCFS2_EXT_REFCOUNTED = common dso_local global i32 0, align 4
@OCFS2_EXT_UNWRITTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* @ocfs2_direct_IO_get_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_direct_IO_get_blocks(%struct.inode* %0, i64 %1, %struct.buffer_head* %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i8, i8* %19, align 1
  store i8 %20, i8* %14, align 1
  %21 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %22 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.inode*, %struct.inode** %5, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = lshr i64 %23, %26
  store i64 %27, i64* %15, align 8
  %28 = load %struct.inode*, %struct.inode** %5, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load %struct.inode*, %struct.inode** %5, align 8
  %32 = call i32 @i_size_read(%struct.inode* %31)
  %33 = call i64 @ocfs2_blocks_for_bytes(%struct.TYPE_3__* %30, i32 %32)
  store i64 %33, i64* %11, align 8
  %34 = load %struct.inode*, %struct.inode** %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @ocfs2_extent_map_get_blocks(%struct.inode* %34, i64 %35, i64* %10, i64* %12, i32* %13)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %4
  %40 = load i32, i32* @ML_ERROR, align 4
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @mlog(i32 %40, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %41)
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %9, align 4
  br label %81

45:                                               ; preds = %4
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* @OCFS2_EXT_REFCOUNTED, align 4
  %48 = and i32 %46, %47
  %49 = call i32 @BUG_ON(i32 %48)
  %50 = load i64, i64* %10, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %45
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* @OCFS2_EXT_UNWRITTEN, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %52
  %58 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %59 = load %struct.inode*, %struct.inode** %5, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 1
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = load i64, i64* %10, align 8
  %63 = call i32 @map_bh(%struct.buffer_head* %58, %struct.TYPE_3__* %61, i64 %62)
  br label %67

64:                                               ; preds = %52, %45
  %65 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %66 = call i32 @clear_buffer_mapped(%struct.buffer_head* %65)
  br label %67

67:                                               ; preds = %64, %57
  %68 = load i64, i64* %15, align 8
  %69 = load i64, i64* %12, align 8
  %70 = icmp ult i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i64, i64* %15, align 8
  store i64 %72, i64* %12, align 8
  br label %73

73:                                               ; preds = %71, %67
  %74 = load i64, i64* %12, align 8
  %75 = load i8, i8* %14, align 1
  %76 = zext i8 %75 to i32
  %77 = zext i32 %76 to i64
  %78 = shl i64 %74, %77
  %79 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %80 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  br label %81

81:                                               ; preds = %73, %39
  %82 = load i32, i32* %9, align 4
  ret i32 %82
}

declare dso_local i64 @ocfs2_blocks_for_bytes(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @ocfs2_extent_map_get_blocks(%struct.inode*, i64, i64*, i64*, i32*) #1

declare dso_local i32 @mlog(i32, i8*, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @map_bh(%struct.buffer_head*, %struct.TYPE_3__*, i64) #1

declare dso_local i32 @clear_buffer_mapped(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
