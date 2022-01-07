; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_page.c_nilfs_alloc_private_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_page.c_nilfs_alloc_private_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.block_device = type { i32 }
%struct.buffer_head = type { i64, %struct.buffer_head*, %struct.block_device* }

@GFP_NOFS = common dso_local global i32 0, align 4
@BH_NILFS_Allocated = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page* @nilfs_alloc_private_page(%struct.block_device* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.block_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.page*, align 8
  store %struct.block_device* %0, %struct.block_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %12 = load i32, i32* @GFP_NOFS, align 4
  %13 = call %struct.page* @alloc_page(i32 %12)
  store %struct.page* %13, %struct.page** %11, align 8
  %14 = load %struct.page*, %struct.page** %11, align 8
  %15 = icmp ne %struct.page* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store %struct.page* null, %struct.page** %4, align 8
  br label %65

21:                                               ; preds = %3
  %22 = load %struct.page*, %struct.page** %11, align 8
  %23 = call i32 @lock_page(%struct.page* %22)
  %24 = load %struct.page*, %struct.page** %11, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call %struct.buffer_head* @alloc_page_buffers(%struct.page* %24, i32 %25, i32 0)
  store %struct.buffer_head* %26, %struct.buffer_head** %9, align 8
  %27 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %28 = icmp ne %struct.buffer_head* %27, null
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %21
  %34 = load %struct.page*, %struct.page** %11, align 8
  %35 = call i32 @unlock_page(%struct.page* %34)
  %36 = load %struct.page*, %struct.page** %11, align 8
  %37 = call i32 @__free_page(%struct.page* %36)
  store %struct.page* null, %struct.page** %4, align 8
  br label %65

38:                                               ; preds = %21
  %39 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  store %struct.buffer_head* %39, %struct.buffer_head** %8, align 8
  br label %40

40:                                               ; preds = %54, %38
  %41 = load i64, i64* @BH_NILFS_Allocated, align 8
  %42 = shl i64 1, %41
  %43 = load i64, i64* %7, align 8
  %44 = or i64 %42, %43
  %45 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %46 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  store %struct.buffer_head* %47, %struct.buffer_head** %10, align 8
  %48 = load %struct.block_device*, %struct.block_device** %5, align 8
  %49 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %50 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %49, i32 0, i32 2
  store %struct.block_device* %48, %struct.block_device** %50, align 8
  %51 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %52 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %51, i32 0, i32 1
  %53 = load %struct.buffer_head*, %struct.buffer_head** %52, align 8
  store %struct.buffer_head* %53, %struct.buffer_head** %8, align 8
  br label %54

54:                                               ; preds = %40
  %55 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %56 = icmp ne %struct.buffer_head* %55, null
  br i1 %56, label %40, label %57

57:                                               ; preds = %54
  %58 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %59 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %60 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %59, i32 0, i32 1
  store %struct.buffer_head* %58, %struct.buffer_head** %60, align 8
  %61 = load %struct.page*, %struct.page** %11, align 8
  %62 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %63 = call i32 @attach_page_buffers(%struct.page* %61, %struct.buffer_head* %62)
  %64 = load %struct.page*, %struct.page** %11, align 8
  store %struct.page* %64, %struct.page** %4, align 8
  br label %65

65:                                               ; preds = %57, %33, %20
  %66 = load %struct.page*, %struct.page** %4, align 8
  ret %struct.page* %66
}

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local %struct.buffer_head* @alloc_page_buffers(%struct.page*, i32, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @__free_page(%struct.page*) #1

declare dso_local i32 @attach_page_buffers(%struct.page*, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
