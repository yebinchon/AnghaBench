; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_buffer.c_block_write_begin_newtrunc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_buffer.c_block_write_begin_newtrunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.page = type { i32 }

@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @block_write_begin_newtrunc(%struct.file* %0, %struct.address_space* %1, i32 %2, i32 %3, i32 %4, %struct.page** %5, i8** %6, i32* %7) #0 {
  %9 = alloca %struct.file*, align 8
  %10 = alloca %struct.address_space*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.page**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.inode*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.page*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %9, align 8
  store %struct.address_space* %1, %struct.address_space** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.page** %5, %struct.page*** %14, align 8
  store i8** %6, i8*** %15, align 8
  store i32* %7, i32** %16, align 8
  %24 = load %struct.address_space*, %struct.address_space** %10, align 8
  %25 = getelementptr inbounds %struct.address_space, %struct.address_space* %24, i32 0, i32 0
  %26 = load %struct.inode*, %struct.inode** %25, align 8
  store %struct.inode* %26, %struct.inode** %17, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %23, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %29 = ashr i32 %27, %28
  store i32 %29, i32* %20, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %32 = sub nsw i32 %31, 1
  %33 = and i32 %30, %32
  store i32 %33, i32* %21, align 4
  %34 = load i32, i32* %21, align 4
  %35 = load i32, i32* %12, align 4
  %36 = add i32 %34, %35
  store i32 %36, i32* %22, align 4
  %37 = load %struct.page**, %struct.page*** %14, align 8
  %38 = load %struct.page*, %struct.page** %37, align 8
  store %struct.page* %38, %struct.page** %19, align 8
  %39 = load %struct.page*, %struct.page** %19, align 8
  %40 = icmp eq %struct.page* %39, null
  br i1 %40, label %41, label %54

41:                                               ; preds = %8
  store i32 1, i32* %23, align 4
  %42 = load %struct.address_space*, %struct.address_space** %10, align 8
  %43 = load i32, i32* %20, align 4
  %44 = load i32, i32* %13, align 4
  %45 = call %struct.page* @grab_cache_page_write_begin(%struct.address_space* %42, i32 %43, i32 %44)
  store %struct.page* %45, %struct.page** %19, align 8
  %46 = load %struct.page*, %struct.page** %19, align 8
  %47 = icmp ne %struct.page* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %18, align 4
  br label %84

51:                                               ; preds = %41
  %52 = load %struct.page*, %struct.page** %19, align 8
  %53 = load %struct.page**, %struct.page*** %14, align 8
  store %struct.page* %52, %struct.page** %53, align 8
  br label %61

54:                                               ; preds = %8
  %55 = load %struct.page*, %struct.page** %19, align 8
  %56 = call i32 @PageLocked(%struct.page* %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i32 @BUG_ON(i32 %59)
  br label %61

61:                                               ; preds = %54, %51
  %62 = load %struct.inode*, %struct.inode** %17, align 8
  %63 = load %struct.page*, %struct.page** %19, align 8
  %64 = load i32, i32* %21, align 4
  %65 = load i32, i32* %22, align 4
  %66 = load i32*, i32** %16, align 8
  %67 = call i32 @__block_prepare_write(%struct.inode* %62, %struct.page* %63, i32 %64, i32 %65, i32* %66)
  store i32 %67, i32* %18, align 4
  %68 = load i32, i32* %18, align 4
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %61
  %72 = load %struct.page*, %struct.page** %19, align 8
  %73 = call i32 @ClearPageUptodate(%struct.page* %72)
  %74 = load i32, i32* %23, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load %struct.page*, %struct.page** %19, align 8
  %78 = call i32 @unlock_page(%struct.page* %77)
  %79 = load %struct.page*, %struct.page** %19, align 8
  %80 = call i32 @page_cache_release(%struct.page* %79)
  %81 = load %struct.page**, %struct.page*** %14, align 8
  store %struct.page* null, %struct.page** %81, align 8
  br label %82

82:                                               ; preds = %76, %71
  br label %83

83:                                               ; preds = %82, %61
  br label %84

84:                                               ; preds = %83, %48
  %85 = load i32, i32* %18, align 4
  ret i32 %85
}

declare dso_local %struct.page* @grab_cache_page_write_begin(%struct.address_space*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i32 @__block_prepare_write(%struct.inode*, %struct.page*, i32, i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ClearPageUptodate(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
