; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_libfs.c_simple_write_begin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_libfs.c_simple_write_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.address_space = type { i32 }
%struct.page = type { i32 }

@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @simple_write_begin(%struct.file* %0, %struct.address_space* %1, i32 %2, i32 %3, i32 %4, %struct.page** %5, i8** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.file*, align 8
  %10 = alloca %struct.address_space*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.page**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca %struct.page*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %9, align 8
  store %struct.address_space* %1, %struct.address_space** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.page** %5, %struct.page*** %14, align 8
  store i8** %6, i8*** %15, align 8
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %21 = ashr i32 %19, %20
  store i32 %21, i32* %17, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %24 = sub nsw i32 %23, 1
  %25 = and i32 %22, %24
  store i32 %25, i32* %18, align 4
  %26 = load %struct.address_space*, %struct.address_space** %10, align 8
  %27 = load i32, i32* %17, align 4
  %28 = load i32, i32* %13, align 4
  %29 = call %struct.page* @grab_cache_page_write_begin(%struct.address_space* %26, i32 %27, i32 %28)
  store %struct.page* %29, %struct.page** %16, align 8
  %30 = load %struct.page*, %struct.page** %16, align 8
  %31 = icmp ne %struct.page* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %7
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %8, align 4
  br label %45

35:                                               ; preds = %7
  %36 = load %struct.page*, %struct.page** %16, align 8
  %37 = load %struct.page**, %struct.page*** %14, align 8
  store %struct.page* %36, %struct.page** %37, align 8
  %38 = load %struct.file*, %struct.file** %9, align 8
  %39 = load %struct.page*, %struct.page** %16, align 8
  %40 = load i32, i32* %18, align 4
  %41 = load i32, i32* %18, align 4
  %42 = load i32, i32* %12, align 4
  %43 = add i32 %41, %42
  %44 = call i32 @simple_prepare_write(%struct.file* %38, %struct.page* %39, i32 %40, i32 %43)
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %35, %32
  %46 = load i32, i32* %8, align 4
  ret i32 %46
}

declare dso_local %struct.page* @grab_cache_page_write_begin(%struct.address_space*, i32, i32) #1

declare dso_local i32 @simple_prepare_write(%struct.file*, %struct.page*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
