; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_cleanup_bitmap_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_cleanup_bitmap_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.reiserfs_list_bitmap = type { i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, %struct.reiserfs_list_bitmap*)* @cleanup_bitmap_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_bitmap_list(%struct.super_block* %0, %struct.reiserfs_list_bitmap* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.reiserfs_list_bitmap*, align 8
  %5 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.reiserfs_list_bitmap* %1, %struct.reiserfs_list_bitmap** %4, align 8
  %6 = load %struct.reiserfs_list_bitmap*, %struct.reiserfs_list_bitmap** %4, align 8
  %7 = getelementptr inbounds %struct.reiserfs_list_bitmap, %struct.reiserfs_list_bitmap* %6, i32 0, i32 0
  %8 = load i32**, i32*** %7, align 8
  %9 = icmp eq i32** %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %46

11:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %43, %11
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.super_block*, %struct.super_block** %3, align 8
  %15 = call i32 @reiserfs_bmap_count(%struct.super_block* %14)
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %46

17:                                               ; preds = %12
  %18 = load %struct.reiserfs_list_bitmap*, %struct.reiserfs_list_bitmap** %4, align 8
  %19 = getelementptr inbounds %struct.reiserfs_list_bitmap, %struct.reiserfs_list_bitmap* %18, i32 0, i32 0
  %20 = load i32**, i32*** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32*, i32** %20, i64 %22
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %42

26:                                               ; preds = %17
  %27 = load %struct.super_block*, %struct.super_block** %3, align 8
  %28 = load %struct.reiserfs_list_bitmap*, %struct.reiserfs_list_bitmap** %4, align 8
  %29 = getelementptr inbounds %struct.reiserfs_list_bitmap, %struct.reiserfs_list_bitmap* %28, i32 0, i32 0
  %30 = load i32**, i32*** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32*, i32** %30, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @free_bitmap_node(%struct.super_block* %27, i32* %34)
  %36 = load %struct.reiserfs_list_bitmap*, %struct.reiserfs_list_bitmap** %4, align 8
  %37 = getelementptr inbounds %struct.reiserfs_list_bitmap, %struct.reiserfs_list_bitmap* %36, i32 0, i32 0
  %38 = load i32**, i32*** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32*, i32** %38, i64 %40
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %26, %17
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %12

46:                                               ; preds = %10, %12
  ret void
}

declare dso_local i32 @reiserfs_bmap_count(%struct.super_block*) #1

declare dso_local i32 @free_bitmap_node(%struct.super_block*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
