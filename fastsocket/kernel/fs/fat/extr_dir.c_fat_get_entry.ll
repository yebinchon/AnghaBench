; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_dir.c_fat_get_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_dir.c_fat_get_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.msdos_dir_entry = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32*, %struct.buffer_head**, %struct.msdos_dir_entry**)* @fat_get_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fat_get_entry(%struct.inode* %0, i32* %1, %struct.buffer_head** %2, %struct.msdos_dir_entry** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.buffer_head**, align 8
  %9 = alloca %struct.msdos_dir_entry**, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.buffer_head** %2, %struct.buffer_head*** %8, align 8
  store %struct.msdos_dir_entry** %3, %struct.msdos_dir_entry*** %9, align 8
  %10 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  %11 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %12 = icmp ne %struct.buffer_head* %11, null
  br i1 %12, label %13, label %47

13:                                               ; preds = %4
  %14 = load %struct.msdos_dir_entry**, %struct.msdos_dir_entry*** %9, align 8
  %15 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %14, align 8
  %16 = icmp ne %struct.msdos_dir_entry* %15, null
  br i1 %16, label %17, label %47

17:                                               ; preds = %13
  %18 = load %struct.msdos_dir_entry**, %struct.msdos_dir_entry*** %9, align 8
  %19 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %18, align 8
  %20 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  %21 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %22 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.msdos_dir_entry*
  %25 = ptrtoint %struct.msdos_dir_entry* %19 to i64
  %26 = ptrtoint %struct.msdos_dir_entry* %24 to i64
  %27 = sub i64 %25, %26
  %28 = sdiv exact i64 %27, 4
  %29 = load %struct.inode*, %struct.inode** %6, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.TYPE_2__* @MSDOS_SB(i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = icmp slt i64 %28, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %17
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = add i64 %41, 4
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %39, align 4
  %44 = load %struct.msdos_dir_entry**, %struct.msdos_dir_entry*** %9, align 8
  %45 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %44, align 8
  %46 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %45, i32 1
  store %struct.msdos_dir_entry* %46, %struct.msdos_dir_entry** %44, align 8
  store i32 0, i32* %5, align 4
  br label %53

47:                                               ; preds = %17, %13, %4
  %48 = load %struct.inode*, %struct.inode** %6, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  %51 = load %struct.msdos_dir_entry**, %struct.msdos_dir_entry*** %9, align 8
  %52 = call i32 @fat__get_entry(%struct.inode* %48, i32* %49, %struct.buffer_head** %50, %struct.msdos_dir_entry** %51)
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %47, %38
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local %struct.TYPE_2__* @MSDOS_SB(i32) #1

declare dso_local i32 @fat__get_entry(%struct.inode*, i32*, %struct.buffer_head**, %struct.msdos_dir_entry**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
