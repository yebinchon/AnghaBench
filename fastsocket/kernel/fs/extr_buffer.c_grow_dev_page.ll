; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_buffer.c_grow_dev_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_buffer.c_grow_dev_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.page = type { i32 }
%struct.buffer_head = type { i32 }

@__GFP_FS = common dso_local global i32 0, align 4
@__GFP_MOVABLE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, i64, i32, i32, i32)* @grow_dev_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grow_dev_page(%struct.block_device* %0, i64 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.block_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.page*, align 8
  %14 = alloca %struct.buffer_head*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load %struct.block_device*, %struct.block_device** %7, align 8
  %18 = getelementptr inbounds %struct.block_device, %struct.block_device* %17, i32 0, i32 0
  %19 = load %struct.inode*, %struct.inode** %18, align 8
  store %struct.inode* %19, %struct.inode** %12, align 8
  store i32 0, i32* %16, align 4
  %20 = load %struct.inode*, %struct.inode** %12, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.inode*, %struct.inode** %12, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = call i32 @mapping_gfp_mask(%struct.TYPE_3__* %26)
  %28 = load i32, i32* @__GFP_FS, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  %31 = load i32, i32* @__GFP_MOVABLE, align 4
  %32 = or i32 %30, %31
  %33 = call %struct.page* @find_or_create_page(%struct.TYPE_3__* %22, i32 %23, i32 %32)
  store %struct.page* %33, %struct.page** %13, align 8
  %34 = load %struct.page*, %struct.page** %13, align 8
  %35 = icmp ne %struct.page* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %5
  %37 = load i32, i32* %16, align 4
  store i32 %37, i32* %6, align 4
  br label %114

38:                                               ; preds = %5
  %39 = load %struct.page*, %struct.page** %13, align 8
  %40 = call i32 @PageLocked(%struct.page* %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @BUG_ON(i32 %43)
  %45 = load %struct.page*, %struct.page** %13, align 8
  %46 = call i64 @page_has_buffers(%struct.page* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %70

48:                                               ; preds = %38
  %49 = load %struct.page*, %struct.page** %13, align 8
  %50 = call %struct.buffer_head* @page_buffers(%struct.page* %49)
  store %struct.buffer_head* %50, %struct.buffer_head** %14, align 8
  %51 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %52 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %48
  %57 = load %struct.page*, %struct.page** %13, align 8
  %58 = load %struct.block_device*, %struct.block_device** %7, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %11, align 4
  %61 = shl i32 %59, %60
  %62 = load i32, i32* %10, align 4
  %63 = call i64 @init_page_buffers(%struct.page* %57, %struct.block_device* %58, i32 %61, i32 %62)
  store i64 %63, i64* %15, align 8
  br label %98

64:                                               ; preds = %48
  %65 = load %struct.page*, %struct.page** %13, align 8
  %66 = call i32 @try_to_free_buffers(%struct.page* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  br label %108

69:                                               ; preds = %64
  br label %70

70:                                               ; preds = %69, %38
  %71 = load %struct.page*, %struct.page** %13, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call %struct.buffer_head* @alloc_page_buffers(%struct.page* %71, i32 %72, i32 0)
  store %struct.buffer_head* %73, %struct.buffer_head** %14, align 8
  %74 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %75 = icmp ne %struct.buffer_head* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %70
  br label %108

77:                                               ; preds = %70
  %78 = load %struct.inode*, %struct.inode** %12, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 0
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = call i32 @spin_lock(i32* %81)
  %83 = load %struct.page*, %struct.page** %13, align 8
  %84 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %85 = call i32 @link_dev_buffers(%struct.page* %83, %struct.buffer_head* %84)
  %86 = load %struct.page*, %struct.page** %13, align 8
  %87 = load %struct.block_device*, %struct.block_device** %7, align 8
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %11, align 4
  %90 = shl i32 %88, %89
  %91 = load i32, i32* %10, align 4
  %92 = call i64 @init_page_buffers(%struct.page* %86, %struct.block_device* %87, i32 %90, i32 %91)
  store i64 %92, i64* %15, align 8
  %93 = load %struct.inode*, %struct.inode** %12, align 8
  %94 = getelementptr inbounds %struct.inode, %struct.inode* %93, i32 0, i32 0
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = call i32 @spin_unlock(i32* %96)
  br label %98

98:                                               ; preds = %77, %56
  %99 = load i64, i64* %8, align 8
  %100 = load i64, i64* %15, align 8
  %101 = icmp slt i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  br label %106

103:                                              ; preds = %98
  %104 = load i32, i32* @ENXIO, align 4
  %105 = sub nsw i32 0, %104
  br label %106

106:                                              ; preds = %103, %102
  %107 = phi i32 [ 1, %102 ], [ %105, %103 ]
  store i32 %107, i32* %16, align 4
  br label %108

108:                                              ; preds = %106, %76, %68
  %109 = load %struct.page*, %struct.page** %13, align 8
  %110 = call i32 @unlock_page(%struct.page* %109)
  %111 = load %struct.page*, %struct.page** %13, align 8
  %112 = call i32 @page_cache_release(%struct.page* %111)
  %113 = load i32, i32* %16, align 4
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %108, %36
  %115 = load i32, i32* %6, align 4
  ret i32 %115
}

declare dso_local %struct.page* @find_or_create_page(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @mapping_gfp_mask(%struct.TYPE_3__*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i64 @page_has_buffers(%struct.page*) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i64 @init_page_buffers(%struct.page*, %struct.block_device*, i32, i32) #1

declare dso_local i32 @try_to_free_buffers(%struct.page*) #1

declare dso_local %struct.buffer_head* @alloc_page_buffers(%struct.page*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @link_dev_buffers(%struct.page*, %struct.buffer_head*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
