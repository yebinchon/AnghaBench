; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_prints.c_print_super_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_prints.c_print_super_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32, i32, i64 }
%struct.reiserfs_super_block = type { i32 }

@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"3.5\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"3.6\00", align 1
@REISERFS_VERSION_2 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"%s's super block is in block %llu\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Reiserfs version %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Block count %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Blocksize %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Free blocks %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [104 x i8] c"Busy blocks (skipped %d, bitmaps - %d, journal (or reserved) blocks - %d\0A1 super block, %d data blocks\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"Root block %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Journal block (first) %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"Journal dev %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"Journal orig size %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"FS state %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"Hash function \22%s\22\0A\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"Tree height %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.buffer_head*)* @print_super_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_super_block(%struct.buffer_head* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca %struct.reiserfs_super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.buffer_head* %0, %struct.buffer_head** %3, align 8
  %11 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %12 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.reiserfs_super_block*
  store %struct.reiserfs_super_block* %14, %struct.reiserfs_super_block** %4, align 8
  %15 = load i32, i32* @BDEVNAME_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %4, align 8
  %20 = call i64 @is_reiserfs_3_5(%struct.reiserfs_super_block* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %42

23:                                               ; preds = %1
  %24 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %4, align 8
  %25 = call i64 @is_reiserfs_3_6(%struct.reiserfs_super_block* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %41

28:                                               ; preds = %23
  %29 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %4, align 8
  %30 = call i64 @is_reiserfs_jr(%struct.reiserfs_super_block* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %4, align 8
  %34 = call i64 @sb_version(%struct.reiserfs_super_block* %33)
  %35 = load i64, i64* @REISERFS_VERSION_2, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)
  store i8* %38, i8** %7, align 8
  br label %40

39:                                               ; preds = %28
  store i32 1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %129

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40, %27
  br label %42

42:                                               ; preds = %41, %22
  %43 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %44 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @bdevname(i32 %45, i8* %18)
  %47 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %48 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %46, i64 %50)
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %52)
  %54 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %4, align 8
  %55 = call i32 @sb_block_count(%struct.reiserfs_super_block* %54)
  %56 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %55)
  %57 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %4, align 8
  %58 = call i32 @sb_blocksize(%struct.reiserfs_super_block* %57)
  %59 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %58)
  %60 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %4, align 8
  %61 = call i32 @sb_free_blocks(%struct.reiserfs_super_block* %60)
  %62 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %61)
  %63 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %64 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %5, align 4
  %66 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %4, align 8
  %67 = call i32 @sb_block_count(%struct.reiserfs_super_block* %66)
  %68 = load i32, i32* %5, align 4
  %69 = sub nsw i32 %67, %68
  %70 = sub nsw i32 %69, 1
  %71 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %4, align 8
  %72 = call i32 @sb_bmap_nr(%struct.reiserfs_super_block* %71)
  %73 = sub nsw i32 %70, %72
  %74 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %4, align 8
  %75 = call i64 @is_reiserfs_jr(%struct.reiserfs_super_block* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %42
  %78 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %4, align 8
  %79 = call i32 @sb_jp_journal_size(%struct.reiserfs_super_block* %78)
  %80 = add nsw i32 %79, 1
  br label %84

81:                                               ; preds = %42
  %82 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %4, align 8
  %83 = call i32 @sb_reserved_for_journal(%struct.reiserfs_super_block* %82)
  br label %84

84:                                               ; preds = %81, %77
  %85 = phi i32 [ %80, %77 ], [ %83, %81 ]
  %86 = sub nsw i32 %73, %85
  %87 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %4, align 8
  %88 = call i32 @sb_free_blocks(%struct.reiserfs_super_block* %87)
  %89 = sub nsw i32 %86, %88
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %5, align 4
  %91 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %4, align 8
  %92 = call i32 @sb_bmap_nr(%struct.reiserfs_super_block* %91)
  %93 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %4, align 8
  %94 = call i64 @is_reiserfs_jr(%struct.reiserfs_super_block* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %84
  %97 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %4, align 8
  %98 = call i32 @sb_jp_journal_size(%struct.reiserfs_super_block* %97)
  %99 = add nsw i32 %98, 1
  br label %103

100:                                              ; preds = %84
  %101 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %4, align 8
  %102 = call i32 @sb_reserved_for_journal(%struct.reiserfs_super_block* %101)
  br label %103

103:                                              ; preds = %100, %96
  %104 = phi i32 [ %99, %96 ], [ %102, %100 ]
  %105 = load i32, i32* %6, align 4
  %106 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.7, i64 0, i64 0), i32 %90, i32 %92, i32 %104, i32 %105)
  %107 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %4, align 8
  %108 = call i32 @sb_root_block(%struct.reiserfs_super_block* %107)
  %109 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %108)
  %110 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %4, align 8
  %111 = call i32 @sb_jp_journal_1st_block(%struct.reiserfs_super_block* %110)
  %112 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 %111)
  %113 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %4, align 8
  %114 = call i32 @sb_jp_journal_dev(%struct.reiserfs_super_block* %113)
  %115 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32 %114)
  %116 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %4, align 8
  %117 = call i32 @sb_jp_journal_size(%struct.reiserfs_super_block* %116)
  %118 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i32 %117)
  %119 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %4, align 8
  %120 = call i32 @sb_fs_state(%struct.reiserfs_super_block* %119)
  %121 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32 %120)
  %122 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %4, align 8
  %123 = call i32 @sb_hash_function_code(%struct.reiserfs_super_block* %122)
  %124 = call i32 @reiserfs_hashname(i32 %123)
  %125 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 %124)
  %126 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %4, align 8
  %127 = call i32 @sb_tree_height(%struct.reiserfs_super_block* %126)
  %128 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 %127)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %129

129:                                              ; preds = %103, %39
  %130 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %130)
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @is_reiserfs_3_5(%struct.reiserfs_super_block*) #2

declare dso_local i64 @is_reiserfs_3_6(%struct.reiserfs_super_block*) #2

declare dso_local i64 @is_reiserfs_jr(%struct.reiserfs_super_block*) #2

declare dso_local i64 @sb_version(%struct.reiserfs_super_block*) #2

declare dso_local i32 @printk(i8*, ...) #2

declare dso_local i32 @bdevname(i32, i8*) #2

declare dso_local i32 @sb_block_count(%struct.reiserfs_super_block*) #2

declare dso_local i32 @sb_blocksize(%struct.reiserfs_super_block*) #2

declare dso_local i32 @sb_free_blocks(%struct.reiserfs_super_block*) #2

declare dso_local i32 @sb_bmap_nr(%struct.reiserfs_super_block*) #2

declare dso_local i32 @sb_jp_journal_size(%struct.reiserfs_super_block*) #2

declare dso_local i32 @sb_reserved_for_journal(%struct.reiserfs_super_block*) #2

declare dso_local i32 @sb_root_block(%struct.reiserfs_super_block*) #2

declare dso_local i32 @sb_jp_journal_1st_block(%struct.reiserfs_super_block*) #2

declare dso_local i32 @sb_jp_journal_dev(%struct.reiserfs_super_block*) #2

declare dso_local i32 @sb_fs_state(%struct.reiserfs_super_block*) #2

declare dso_local i32 @reiserfs_hashname(i32) #2

declare dso_local i32 @sb_hash_function_code(%struct.reiserfs_super_block*) #2

declare dso_local i32 @sb_tree_height(%struct.reiserfs_super_block*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
