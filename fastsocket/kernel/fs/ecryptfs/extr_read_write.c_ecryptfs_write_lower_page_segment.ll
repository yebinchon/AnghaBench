; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_read_write.c_ecryptfs_write_lower_page_segment.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_read_write.c_ecryptfs_write_lower_page_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.page = type { i64 }

@PAGE_CACHE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecryptfs_write_lower_page_segment(%struct.inode* %0, %struct.page* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.page*, %struct.page** %6, align 8
  %13 = getelementptr inbounds %struct.page, %struct.page* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %16 = shl i64 %14, %15
  %17 = load i64, i64* %7, align 8
  %18 = add i64 %16, %17
  store i64 %18, i64* %10, align 8
  %19 = load %struct.page*, %struct.page** %6, align 8
  %20 = call i8* @kmap(%struct.page* %19)
  store i8* %20, i8** %9, align 8
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @ecryptfs_write_lower(%struct.inode* %21, i8* %22, i64 %23, i64 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %28, %4
  %30 = load %struct.page*, %struct.page** %6, align 8
  %31 = call i32 @kunmap(%struct.page* %30)
  %32 = load i32, i32* %11, align 4
  ret i32 %32
}

declare dso_local i8* @kmap(%struct.page*) #1

declare dso_local i32 @ecryptfs_write_lower(%struct.inode*, i8*, i64, i64) #1

declare dso_local i32 @kunmap(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
