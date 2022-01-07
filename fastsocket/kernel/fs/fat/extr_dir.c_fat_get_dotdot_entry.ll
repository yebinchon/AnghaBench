; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_dir.c_fat_get_dotdot_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_dir.c_fat_get_dotdot_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.msdos_dir_entry = type { i32 }

@MSDOS_DOTDOT = common dso_local global i32 0, align 4
@MSDOS_NAME = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fat_get_dotdot_entry(%struct.inode* %0, %struct.buffer_head** %1, %struct.msdos_dir_entry** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.buffer_head**, align 8
  %8 = alloca %struct.msdos_dir_entry**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.buffer_head** %1, %struct.buffer_head*** %7, align 8
  store %struct.msdos_dir_entry** %2, %struct.msdos_dir_entry*** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64 0, i64* %10, align 8
  %11 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %11, align 8
  br label %12

12:                                               ; preds = %37, %4
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %15 = load %struct.msdos_dir_entry**, %struct.msdos_dir_entry*** %8, align 8
  %16 = call i64 @fat_get_short_entry(%struct.inode* %13, i64* %10, %struct.buffer_head** %14, %struct.msdos_dir_entry** %15)
  %17 = icmp sge i64 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %12
  %19 = load %struct.msdos_dir_entry**, %struct.msdos_dir_entry*** %8, align 8
  %20 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %19, align 8
  %21 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MSDOS_DOTDOT, align 4
  %24 = load i32, i32* @MSDOS_NAME, align 4
  %25 = call i32 @strncmp(i32 %22, i32 %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %18
  %28 = load %struct.inode*, %struct.inode** %6, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %32 = load %struct.buffer_head*, %struct.buffer_head** %31, align 8
  %33 = load %struct.msdos_dir_entry**, %struct.msdos_dir_entry*** %8, align 8
  %34 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %33, align 8
  %35 = call i64 @fat_make_i_pos(i32 %30, %struct.buffer_head* %32, %struct.msdos_dir_entry* %34)
  %36 = load i64*, i64** %9, align 8
  store i64 %35, i64* %36, align 8
  store i32 0, i32* %5, align 4
  br label %41

37:                                               ; preds = %18
  br label %12

38:                                               ; preds = %12
  %39 = load i32, i32* @ENOENT, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %38, %27
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i64 @fat_get_short_entry(%struct.inode*, i64*, %struct.buffer_head**, %struct.msdos_dir_entry**) #1

declare dso_local i32 @strncmp(i32, i32, i32) #1

declare dso_local i64 @fat_make_i_pos(i32, %struct.buffer_head*, %struct.msdos_dir_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
