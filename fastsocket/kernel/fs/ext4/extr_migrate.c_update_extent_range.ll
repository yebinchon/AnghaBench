; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_migrate.c_update_extent_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_migrate.c_update_extent_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.list_blocks_struct = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, i64, i64, %struct.list_blocks_struct*)* @update_extent_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_extent_range(i32* %0, %struct.inode* %1, i64 %2, i64 %3, %struct.list_blocks_struct* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.list_blocks_struct*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.list_blocks_struct* %4, %struct.list_blocks_struct** %11, align 8
  %13 = load %struct.list_blocks_struct*, %struct.list_blocks_struct** %11, align 8
  %14 = getelementptr inbounds %struct.list_blocks_struct, %struct.list_blocks_struct* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %5
  %18 = load %struct.list_blocks_struct*, %struct.list_blocks_struct** %11, align 8
  %19 = getelementptr inbounds %struct.list_blocks_struct, %struct.list_blocks_struct* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 1
  %22 = load i64, i64* %9, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %17
  %25 = load %struct.list_blocks_struct*, %struct.list_blocks_struct** %11, align 8
  %26 = getelementptr inbounds %struct.list_blocks_struct, %struct.list_blocks_struct* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 1
  %29 = load i64, i64* %10, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %24
  %32 = load i64, i64* %9, align 8
  %33 = load %struct.list_blocks_struct*, %struct.list_blocks_struct** %11, align 8
  %34 = getelementptr inbounds %struct.list_blocks_struct, %struct.list_blocks_struct* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  %35 = load i64, i64* %10, align 8
  %36 = load %struct.list_blocks_struct*, %struct.list_blocks_struct** %11, align 8
  %37 = getelementptr inbounds %struct.list_blocks_struct, %struct.list_blocks_struct* %36, i32 0, i32 2
  store i64 %35, i64* %37, align 8
  store i32 0, i32* %6, align 4
  br label %54

38:                                               ; preds = %24, %17, %5
  %39 = load i32*, i32** %7, align 8
  %40 = load %struct.inode*, %struct.inode** %8, align 8
  %41 = load %struct.list_blocks_struct*, %struct.list_blocks_struct** %11, align 8
  %42 = call i32 @finish_range(i32* %39, %struct.inode* %40, %struct.list_blocks_struct* %41)
  store i32 %42, i32* %12, align 4
  %43 = load i64, i64* %9, align 8
  %44 = load %struct.list_blocks_struct*, %struct.list_blocks_struct** %11, align 8
  %45 = getelementptr inbounds %struct.list_blocks_struct, %struct.list_blocks_struct* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = load %struct.list_blocks_struct*, %struct.list_blocks_struct** %11, align 8
  %47 = getelementptr inbounds %struct.list_blocks_struct, %struct.list_blocks_struct* %46, i32 0, i32 0
  store i64 %43, i64* %47, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load %struct.list_blocks_struct*, %struct.list_blocks_struct** %11, align 8
  %50 = getelementptr inbounds %struct.list_blocks_struct, %struct.list_blocks_struct* %49, i32 0, i32 2
  store i64 %48, i64* %50, align 8
  %51 = load %struct.list_blocks_struct*, %struct.list_blocks_struct** %11, align 8
  %52 = getelementptr inbounds %struct.list_blocks_struct, %struct.list_blocks_struct* %51, i32 0, i32 3
  store i64 %48, i64* %52, align 8
  %53 = load i32, i32* %12, align 4
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %38, %31
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i32 @finish_range(i32*, %struct.inode*, %struct.list_blocks_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
