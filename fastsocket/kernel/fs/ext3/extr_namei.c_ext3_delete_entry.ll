; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_namei.c_ext3_delete_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_namei.c_ext3_delete_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext3_dir_entry_2 = type { i32, i64 }
%struct.buffer_head = type { i32, i64 }

@.str = private unnamed_addr constant [18 x i8] c"ext3_delete_entry\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"get_write_access\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"call ext3_journal_dirty_metadata\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.ext3_dir_entry_2*, %struct.buffer_head*)* @ext3_delete_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext3_delete_entry(i32* %0, %struct.inode* %1, %struct.ext3_dir_entry_2* %2, %struct.buffer_head* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.ext3_dir_entry_2*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.ext3_dir_entry_2*, align 8
  %11 = alloca %struct.ext3_dir_entry_2*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.ext3_dir_entry_2* %2, %struct.ext3_dir_entry_2** %8, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %9, align 8
  store i32 0, i32* %12, align 4
  store %struct.ext3_dir_entry_2* null, %struct.ext3_dir_entry_2** %11, align 8
  %13 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %14 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.ext3_dir_entry_2*
  store %struct.ext3_dir_entry_2* %16, %struct.ext3_dir_entry_2** %10, align 8
  br label %17

17:                                               ; preds = %71, %4
  %18 = load i32, i32* %12, align 4
  %19 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %20 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %83

23:                                               ; preds = %17
  %24 = load %struct.inode*, %struct.inode** %7, align 8
  %25 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  %26 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @ext3_check_dir_entry(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.inode* %24, %struct.ext3_dir_entry_2* %25, %struct.buffer_head* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %86

33:                                               ; preds = %23
  %34 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  %35 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %8, align 8
  %36 = icmp eq %struct.ext3_dir_entry_2* %34, %35
  br i1 %36, label %37, label %71

37:                                               ; preds = %33
  %38 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %39 = call i32 @BUFFER_TRACE(%struct.buffer_head* %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32*, i32** %6, align 8
  %41 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %42 = call i32 @ext3_journal_get_write_access(i32* %40, %struct.buffer_head* %41)
  %43 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %11, align 8
  %44 = icmp ne %struct.ext3_dir_entry_2* %43, null
  br i1 %44, label %45, label %58

45:                                               ; preds = %37
  %46 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %11, align 8
  %47 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @ext3_rec_len_from_disk(i32 %48)
  %50 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  %51 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @ext3_rec_len_from_disk(i32 %52)
  %54 = add nsw i64 %49, %53
  %55 = call i32 @ext3_rec_len_to_disk(i64 %54)
  %56 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %11, align 8
  %57 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  br label %61

58:                                               ; preds = %37
  %59 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  %60 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %59, i32 0, i32 1
  store i64 0, i64* %60, align 8
  br label %61

61:                                               ; preds = %58, %45
  %62 = load %struct.inode*, %struct.inode** %7, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  %66 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %67 = call i32 @BUFFER_TRACE(%struct.buffer_head* %66, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32*, i32** %6, align 8
  %69 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %70 = call i32 @ext3_journal_dirty_metadata(i32* %68, %struct.buffer_head* %69)
  store i32 0, i32* %5, align 4
  br label %86

71:                                               ; preds = %33
  %72 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  %73 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @ext3_rec_len_from_disk(i32 %74)
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %77, %75
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %12, align 4
  %80 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  store %struct.ext3_dir_entry_2* %80, %struct.ext3_dir_entry_2** %11, align 8
  %81 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  %82 = call %struct.ext3_dir_entry_2* @ext3_next_entry(%struct.ext3_dir_entry_2* %81)
  store %struct.ext3_dir_entry_2* %82, %struct.ext3_dir_entry_2** %10, align 8
  br label %17

83:                                               ; preds = %17
  %84 = load i32, i32* @ENOENT, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %83, %61, %30
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @ext3_check_dir_entry(i8*, %struct.inode*, %struct.ext3_dir_entry_2*, %struct.buffer_head*, i32) #1

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @ext3_journal_get_write_access(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ext3_rec_len_to_disk(i64) #1

declare dso_local i64 @ext3_rec_len_from_disk(i32) #1

declare dso_local i32 @ext3_journal_dirty_metadata(i32*, %struct.buffer_head*) #1

declare dso_local %struct.ext3_dir_entry_2* @ext3_next_entry(%struct.ext3_dir_entry_2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
