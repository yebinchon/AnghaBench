; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent_io.c_end_extent_writepage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent_io.c_end_extent_writepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.extent_io_tree = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.page*, i32, i32, i32*, i32)* }
%struct.TYPE_6__ = type { %struct.extent_io_tree }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @end_extent_writepage(%struct.page* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.extent_io_tree*, align 8
  %11 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %9, align 4
  %15 = load %struct.page*, %struct.page** %5, align 8
  %16 = getelementptr inbounds %struct.page, %struct.page* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.TYPE_6__* @BTRFS_I(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store %struct.extent_io_tree* %21, %struct.extent_io_tree** %10, align 8
  %22 = load %struct.extent_io_tree*, %struct.extent_io_tree** %10, align 8
  %23 = getelementptr inbounds %struct.extent_io_tree, %struct.extent_io_tree* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = icmp ne %struct.TYPE_5__* %24, null
  br i1 %25, label %26, label %48

26:                                               ; preds = %4
  %27 = load %struct.extent_io_tree*, %struct.extent_io_tree** %10, align 8
  %28 = getelementptr inbounds %struct.extent_io_tree, %struct.extent_io_tree* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32 (%struct.page*, i32, i32, i32*, i32)*, i32 (%struct.page*, i32, i32, i32*, i32)** %30, align 8
  %32 = icmp ne i32 (%struct.page*, i32, i32, i32*, i32)* %31, null
  br i1 %32, label %33, label %48

33:                                               ; preds = %26
  %34 = load %struct.extent_io_tree*, %struct.extent_io_tree** %10, align 8
  %35 = getelementptr inbounds %struct.extent_io_tree, %struct.extent_io_tree* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32 (%struct.page*, i32, i32, i32*, i32)*, i32 (%struct.page*, i32, i32, i32*, i32)** %37, align 8
  %39 = load %struct.page*, %struct.page** %5, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 %38(%struct.page* %39, i32 %40, i32 %41, i32* null, i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %33
  store i32 0, i32* %9, align 4
  br label %47

47:                                               ; preds = %46, %33
  br label %48

48:                                               ; preds = %47, %26, %4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %48
  %52 = load %struct.page*, %struct.page** %5, align 8
  %53 = call i32 @ClearPageUptodate(%struct.page* %52)
  %54 = load %struct.page*, %struct.page** %5, align 8
  %55 = call i32 @SetPageError(%struct.page* %54)
  br label %56

56:                                               ; preds = %51, %48
  ret i32 0
}

declare dso_local %struct.TYPE_6__* @BTRFS_I(i32) #1

declare dso_local i32 @ClearPageUptodate(%struct.page*) #1

declare dso_local i32 @SetPageError(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
