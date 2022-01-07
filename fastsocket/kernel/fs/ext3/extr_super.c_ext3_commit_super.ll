; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_super.c_ext3_commit_super.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_super.c_ext3_commit_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext3_super_block = type { i8*, i8*, i8* }
%struct.buffer_head = type { i32 }
%struct.TYPE_2__ = type { %struct.buffer_head* }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"previous I/O error to superblock detected\00", align 1
@MS_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"marking dirty\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"I/O error while writing superblock\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.ext3_super_block*, i32)* @ext3_commit_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext3_commit_super(%struct.super_block* %0, %struct.ext3_super_block* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.ext3_super_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.ext3_super_block* %1, %struct.ext3_super_block** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.super_block*, %struct.super_block** %5, align 8
  %11 = call %struct.TYPE_2__* @EXT3_SB(%struct.super_block* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  store %struct.buffer_head* %13, %struct.buffer_head** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %15 = icmp ne %struct.buffer_head* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %4, align 4
  br label %76

18:                                               ; preds = %3
  %19 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %20 = call i64 @buffer_write_io_error(%struct.buffer_head* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = load %struct.super_block*, %struct.super_block** %5, align 8
  %24 = load i32, i32* @KERN_ERR, align 4
  %25 = call i32 @ext3_msg(%struct.super_block* %23, i32 %24, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %27 = call i32 @clear_buffer_write_io_error(%struct.buffer_head* %26)
  %28 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %29 = call i32 @set_buffer_uptodate(%struct.buffer_head* %28)
  br label %30

30:                                               ; preds = %22, %18
  %31 = load %struct.super_block*, %struct.super_block** %5, align 8
  %32 = getelementptr inbounds %struct.super_block, %struct.super_block* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @MS_RDONLY, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %30
  %38 = call i32 (...) @get_seconds()
  %39 = call i8* @cpu_to_le32(i32 %38)
  %40 = load %struct.ext3_super_block*, %struct.ext3_super_block** %6, align 8
  %41 = getelementptr inbounds %struct.ext3_super_block, %struct.ext3_super_block* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  br label %42

42:                                               ; preds = %37, %30
  %43 = load %struct.super_block*, %struct.super_block** %5, align 8
  %44 = call i32 @ext3_count_free_blocks(%struct.super_block* %43)
  %45 = call i8* @cpu_to_le32(i32 %44)
  %46 = load %struct.ext3_super_block*, %struct.ext3_super_block** %6, align 8
  %47 = getelementptr inbounds %struct.ext3_super_block, %struct.ext3_super_block* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load %struct.super_block*, %struct.super_block** %5, align 8
  %49 = call i32 @ext3_count_free_inodes(%struct.super_block* %48)
  %50 = call i8* @cpu_to_le32(i32 %49)
  %51 = load %struct.ext3_super_block*, %struct.ext3_super_block** %6, align 8
  %52 = getelementptr inbounds %struct.ext3_super_block, %struct.ext3_super_block* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %54 = call i32 @BUFFER_TRACE(%struct.buffer_head* %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %56 = call i32 @mark_buffer_dirty(%struct.buffer_head* %55)
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %74

59:                                               ; preds = %42
  %60 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %61 = call i32 @sync_dirty_buffer(%struct.buffer_head* %60)
  store i32 %61, i32* %9, align 4
  %62 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %63 = call i64 @buffer_write_io_error(%struct.buffer_head* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %59
  %66 = load %struct.super_block*, %struct.super_block** %5, align 8
  %67 = load i32, i32* @KERN_ERR, align 4
  %68 = call i32 @ext3_msg(%struct.super_block* %66, i32 %67, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %69 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %70 = call i32 @clear_buffer_write_io_error(%struct.buffer_head* %69)
  %71 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %72 = call i32 @set_buffer_uptodate(%struct.buffer_head* %71)
  br label %73

73:                                               ; preds = %65, %59
  br label %74

74:                                               ; preds = %73, %42
  %75 = load i32, i32* %9, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %74, %16
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local %struct.TYPE_2__* @EXT3_SB(%struct.super_block*) #1

declare dso_local i64 @buffer_write_io_error(%struct.buffer_head*) #1

declare dso_local i32 @ext3_msg(%struct.super_block*, i32, i8*) #1

declare dso_local i32 @clear_buffer_write_io_error(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @get_seconds(...) #1

declare dso_local i32 @ext3_count_free_blocks(%struct.super_block*) #1

declare dso_local i32 @ext3_count_free_inodes(%struct.super_block*) #1

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @sync_dirty_buffer(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
