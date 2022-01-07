; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_file.c_btrfs_dirty_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_file.c_btrfs_dirty_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i64 }
%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.extent_state = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_dirty_pages(%struct.btrfs_root* %0, %struct.inode* %1, %struct.page** %2, i64 %3, i64 %4, i64 %5, %struct.extent_state** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.btrfs_root*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.page**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.extent_state**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.page*, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %9, align 8
  store %struct.inode* %1, %struct.inode** %10, align 8
  store %struct.page** %2, %struct.page*** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store %struct.extent_state** %6, %struct.extent_state*** %15, align 8
  store i32 0, i32* %16, align 4
  %24 = load i64, i64* %13, align 8
  %25 = load i64, i64* %14, align 8
  %26 = add i64 %24, %25
  store i64 %26, i64* %21, align 8
  %27 = load %struct.inode*, %struct.inode** %10, align 8
  %28 = call i64 @i_size_read(%struct.inode* %27)
  store i64 %28, i64* %22, align 8
  %29 = load i64, i64* %13, align 8
  %30 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %31 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = sub i64 %32, 1
  %34 = xor i64 %33, -1
  %35 = and i64 %29, %34
  store i64 %35, i64* %19, align 8
  %36 = load i64, i64* %14, align 8
  %37 = load i64, i64* %13, align 8
  %38 = add i64 %36, %37
  %39 = load i64, i64* %19, align 8
  %40 = sub i64 %38, %39
  %41 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %42 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add i64 %40, %43
  %45 = sub i64 %44, 1
  %46 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %47 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = sub i64 %48, 1
  %50 = xor i64 %49, -1
  %51 = and i64 %45, %50
  store i64 %51, i64* %18, align 8
  %52 = load i64, i64* %19, align 8
  %53 = load i64, i64* %18, align 8
  %54 = add i64 %52, %53
  %55 = sub i64 %54, 1
  store i64 %55, i64* %20, align 8
  %56 = load %struct.inode*, %struct.inode** %10, align 8
  %57 = load i64, i64* %19, align 8
  %58 = load i64, i64* %20, align 8
  %59 = load %struct.extent_state**, %struct.extent_state*** %15, align 8
  %60 = call i32 @btrfs_set_extent_delalloc(%struct.inode* %56, i64 %57, i64 %58, %struct.extent_state** %59)
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %16, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %7
  %64 = load i32, i32* %16, align 4
  store i32 %64, i32* %8, align 4
  br label %95

65:                                               ; preds = %7
  store i32 0, i32* %17, align 4
  br label %66

66:                                               ; preds = %83, %65
  %67 = load i32, i32* %17, align 4
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* %12, align 8
  %70 = icmp ult i64 %68, %69
  br i1 %70, label %71, label %86

71:                                               ; preds = %66
  %72 = load %struct.page**, %struct.page*** %11, align 8
  %73 = load i32, i32* %17, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.page*, %struct.page** %72, i64 %74
  %76 = load %struct.page*, %struct.page** %75, align 8
  store %struct.page* %76, %struct.page** %23, align 8
  %77 = load %struct.page*, %struct.page** %23, align 8
  %78 = call i32 @SetPageUptodate(%struct.page* %77)
  %79 = load %struct.page*, %struct.page** %23, align 8
  %80 = call i32 @ClearPageChecked(%struct.page* %79)
  %81 = load %struct.page*, %struct.page** %23, align 8
  %82 = call i32 @set_page_dirty(%struct.page* %81)
  br label %83

83:                                               ; preds = %71
  %84 = load i32, i32* %17, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %17, align 4
  br label %66

86:                                               ; preds = %66
  %87 = load i64, i64* %21, align 8
  %88 = load i64, i64* %22, align 8
  %89 = icmp ugt i64 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load %struct.inode*, %struct.inode** %10, align 8
  %92 = load i64, i64* %21, align 8
  %93 = call i32 @i_size_write(%struct.inode* %91, i64 %92)
  br label %94

94:                                               ; preds = %90, %86
  store i32 0, i32* %8, align 4
  br label %95

95:                                               ; preds = %94, %63
  %96 = load i32, i32* %8, align 4
  ret i32 %96
}

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @btrfs_set_extent_delalloc(%struct.inode*, i64, i64, %struct.extent_state**) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @ClearPageChecked(%struct.page*) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
