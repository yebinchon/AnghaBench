; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_migrate.c_update_ind_extent_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_migrate.c_update_ind_extent_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.list_blocks_struct = type { i32 }
%struct.buffer_head = type { i64 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, i32, i64*, %struct.list_blocks_struct*)* @update_ind_extent_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_ind_extent_range(i32* %0, %struct.inode* %1, i32 %2, i64* %3, %struct.list_blocks_struct* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca %struct.list_blocks_struct*, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store %struct.list_blocks_struct* %4, %struct.list_blocks_struct** %11, align 8
  store i32 0, i32* %15, align 4
  %18 = load i64*, i64** %10, align 8
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %16, align 8
  %20 = load %struct.inode*, %struct.inode** %8, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 2
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %17, align 8
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %5
  %30 = load i64, i64* %17, align 8
  %31 = load i64*, i64** %10, align 8
  %32 = load i64, i64* %31, align 8
  %33 = add i64 %32, %30
  store i64 %33, i64* %31, align 8
  store i32 0, i32* %6, align 4
  br label %90

34:                                               ; preds = %5
  %35 = load %struct.inode*, %struct.inode** %8, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call %struct.buffer_head* @sb_bread(%struct.TYPE_2__* %37, i32 %38)
  store %struct.buffer_head* %39, %struct.buffer_head** %12, align 8
  %40 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %41 = icmp ne %struct.buffer_head* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %34
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %90

45:                                               ; preds = %34
  %46 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %47 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i64*
  store i64* %49, i64** %13, align 8
  store i32 0, i32* %14, align 4
  br label %50

50:                                               ; preds = %79, %45
  %51 = load i32, i32* %14, align 4
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* %17, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %84

55:                                               ; preds = %50
  %56 = load i64*, i64** %13, align 8
  %57 = load i32, i32* %14, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %55
  %63 = load i32*, i32** %7, align 8
  %64 = load %struct.inode*, %struct.inode** %8, align 8
  %65 = load i64*, i64** %13, align 8
  %66 = load i32, i32* %14, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @le32_to_cpu(i64 %69)
  %71 = load i64, i64* %16, align 8
  %72 = load %struct.list_blocks_struct*, %struct.list_blocks_struct** %11, align 8
  %73 = call i32 @update_extent_range(i32* %63, %struct.inode* %64, i32 %70, i64 %71, %struct.list_blocks_struct* %72)
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %15, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %62
  br label %84

77:                                               ; preds = %62
  br label %78

78:                                               ; preds = %77, %55
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %14, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %14, align 4
  %82 = load i64, i64* %16, align 8
  %83 = add nsw i64 %82, 1
  store i64 %83, i64* %16, align 8
  br label %50

84:                                               ; preds = %76, %50
  %85 = load i64, i64* %16, align 8
  %86 = load i64*, i64** %10, align 8
  store i64 %85, i64* %86, align 8
  %87 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %88 = call i32 @put_bh(%struct.buffer_head* %87)
  %89 = load i32, i32* %15, align 4
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %84, %42, %29
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local %struct.buffer_head* @sb_bread(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @update_extent_range(i32*, %struct.inode*, i32, i64, %struct.list_blocks_struct*) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @put_bh(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
