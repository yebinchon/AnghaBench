; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_dir.c___fat_remove_entries.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_dir.c___fat_remove_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i64 }
%struct.buffer_head = type { i64 }
%struct.msdos_dir_entry = type { i32* }

@EIO = common dso_local global i32 0, align 4
@DELETED_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32)* @__fat_remove_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__fat_remove_entries(%struct.inode* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.msdos_dir_entry*, align 8
  %10 = alloca %struct.msdos_dir_entry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load %struct.super_block*, %struct.super_block** %14, align 8
  store %struct.super_block* %15, %struct.super_block** %7, align 8
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %71, %3
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %82

19:                                               ; preds = %16
  store %struct.buffer_head* null, %struct.buffer_head** %8, align 8
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = call i64 @fat_get_entry(%struct.inode* %20, i32* %5, %struct.buffer_head** %8, %struct.msdos_dir_entry** %9)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %11, align 4
  br label %82

26:                                               ; preds = %19
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %12, align 4
  %28 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %29 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.super_block*, %struct.super_block** %7, align 8
  %32 = getelementptr inbounds %struct.super_block, %struct.super_block* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %30, %33
  %35 = inttoptr i64 %34 to %struct.msdos_dir_entry*
  store %struct.msdos_dir_entry* %35, %struct.msdos_dir_entry** %10, align 8
  br label %36

36:                                               ; preds = %45, %26
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %9, align 8
  %41 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %42 = icmp ult %struct.msdos_dir_entry* %40, %41
  br label %43

43:                                               ; preds = %39, %36
  %44 = phi i1 [ false, %36 ], [ %42, %39 ]
  br i1 %44, label %45, label %55

45:                                               ; preds = %43
  %46 = load i32, i32* @DELETED_FLAG, align 4
  %47 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %9, align 8
  %48 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  store i32 %46, i32* %50, align 4
  %51 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %9, align 8
  %52 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %51, i32 1
  store %struct.msdos_dir_entry* %52, %struct.msdos_dir_entry** %9, align 8
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %6, align 4
  br label %36

55:                                               ; preds = %43
  %56 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %57 = load %struct.inode*, %struct.inode** %4, align 8
  %58 = call i32 @mark_buffer_dirty_inode(%struct.buffer_head* %56, %struct.inode* %57)
  %59 = load %struct.inode*, %struct.inode** %4, align 8
  %60 = call i64 @IS_DIRSYNC(%struct.inode* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %64 = call i32 @sync_dirty_buffer(%struct.buffer_head* %63)
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %62, %55
  %66 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %67 = call i32 @brelse(%struct.buffer_head* %66)
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %82

71:                                               ; preds = %65
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %6, align 4
  %74 = sub nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = mul i64 %75, 8
  %77 = sub i64 %76, 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = add i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %5, align 4
  br label %16

82:                                               ; preds = %70, %23, %16
  %83 = load i32, i32* %11, align 4
  ret i32 %83
}

declare dso_local i64 @fat_get_entry(%struct.inode*, i32*, %struct.buffer_head**, %struct.msdos_dir_entry**) #1

declare dso_local i32 @mark_buffer_dirty_inode(%struct.buffer_head*, %struct.inode*) #1

declare dso_local i64 @IS_DIRSYNC(%struct.inode*) #1

declare dso_local i32 @sync_dirty_buffer(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
