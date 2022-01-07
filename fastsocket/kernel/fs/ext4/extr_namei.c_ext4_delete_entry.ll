; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_namei.c_ext4_delete_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_namei.c_ext4_delete_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ext4_dir_entry_2 = type { i32, i64 }
%struct.buffer_head = type { i32, i64 }

@.str = private unnamed_addr constant [18 x i8] c"ext4_delete_entry\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"get_write_access\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"call ext4_handle_dirty_metadata\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.ext4_dir_entry_2*, %struct.buffer_head*)* @ext4_delete_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_delete_entry(i32* %0, %struct.inode* %1, %struct.ext4_dir_entry_2* %2, %struct.buffer_head* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.ext4_dir_entry_2*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.ext4_dir_entry_2*, align 8
  %11 = alloca %struct.ext4_dir_entry_2*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.ext4_dir_entry_2* %2, %struct.ext4_dir_entry_2** %8, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %9, align 8
  %14 = load %struct.inode*, %struct.inode** %7, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store %struct.ext4_dir_entry_2* null, %struct.ext4_dir_entry_2** %11, align 8
  %19 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %20 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.ext4_dir_entry_2*
  store %struct.ext4_dir_entry_2* %22, %struct.ext4_dir_entry_2** %10, align 8
  br label %23

23:                                               ; preds = %81, %4
  %24 = load i32, i32* %13, align 4
  %25 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %26 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %95

29:                                               ; preds = %23
  %30 = load %struct.inode*, %struct.inode** %7, align 8
  %31 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %10, align 8
  %32 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %33 = load i32, i32* %13, align 4
  %34 = call i32 @ext4_check_dir_entry(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.inode* %30, %struct.ext4_dir_entry_2* %31, %struct.buffer_head* %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %98

39:                                               ; preds = %29
  %40 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %10, align 8
  %41 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %8, align 8
  %42 = icmp eq %struct.ext4_dir_entry_2* %40, %41
  br i1 %42, label %43, label %81

43:                                               ; preds = %39
  %44 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %45 = call i32 @BUFFER_TRACE(%struct.buffer_head* %44, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32*, i32** %6, align 8
  %47 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %48 = call i32 @ext4_journal_get_write_access(i32* %46, %struct.buffer_head* %47)
  %49 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %11, align 8
  %50 = icmp ne %struct.ext4_dir_entry_2* %49, null
  br i1 %50, label %51, label %67

51:                                               ; preds = %43
  %52 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %11, align 8
  %53 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %12, align 4
  %56 = call i64 @ext4_rec_len_from_disk(i32 %54, i32 %55)
  %57 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %10, align 8
  %58 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %12, align 4
  %61 = call i64 @ext4_rec_len_from_disk(i32 %59, i32 %60)
  %62 = add nsw i64 %56, %61
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @ext4_rec_len_to_disk(i64 %62, i32 %63)
  %65 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %11, align 8
  %66 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  br label %70

67:                                               ; preds = %43
  %68 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %10, align 8
  %69 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %68, i32 0, i32 1
  store i64 0, i64* %69, align 8
  br label %70

70:                                               ; preds = %67, %51
  %71 = load %struct.inode*, %struct.inode** %7, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 8
  %75 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %76 = call i32 @BUFFER_TRACE(%struct.buffer_head* %75, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i32*, i32** %6, align 8
  %78 = load %struct.inode*, %struct.inode** %7, align 8
  %79 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %80 = call i32 @ext4_handle_dirty_metadata(i32* %77, %struct.inode* %78, %struct.buffer_head* %79)
  store i32 0, i32* %5, align 4
  br label %98

81:                                               ; preds = %39
  %82 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %10, align 8
  %83 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %12, align 4
  %86 = call i64 @ext4_rec_len_from_disk(i32 %84, i32 %85)
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %88, %86
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %13, align 4
  %91 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %10, align 8
  store %struct.ext4_dir_entry_2* %91, %struct.ext4_dir_entry_2** %11, align 8
  %92 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %10, align 8
  %93 = load i32, i32* %12, align 4
  %94 = call %struct.ext4_dir_entry_2* @ext4_next_entry(%struct.ext4_dir_entry_2* %92, i32 %93)
  store %struct.ext4_dir_entry_2* %94, %struct.ext4_dir_entry_2** %10, align 8
  br label %23

95:                                               ; preds = %23
  %96 = load i32, i32* @ENOENT, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %95, %70, %36
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32 @ext4_check_dir_entry(i8*, %struct.inode*, %struct.ext4_dir_entry_2*, %struct.buffer_head*, i32) #1

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @ext4_journal_get_write_access(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ext4_rec_len_to_disk(i64, i32) #1

declare dso_local i64 @ext4_rec_len_from_disk(i32, i32) #1

declare dso_local i32 @ext4_handle_dirty_metadata(i32*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local %struct.ext4_dir_entry_2* @ext4_next_entry(%struct.ext4_dir_entry_2*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
