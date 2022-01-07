; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swapfile.c_unuse_mm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swapfile.c_unuse_mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32, %struct.vm_area_struct* }
%struct.vm_area_struct = type { i64, %struct.vm_area_struct* }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_struct*, i32, %struct.page*)* @unuse_mm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unuse_mm(%struct.mm_struct* %0, i32 %1, %struct.page* %2) #0 {
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.page* %2, %struct.page** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %10 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %9, i32 0, i32 0
  %11 = call i32 @down_read_trylock(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %3
  %14 = load %struct.page*, %struct.page** %6, align 8
  %15 = call i32 @activate_page(%struct.page* %14)
  %16 = load %struct.page*, %struct.page** %6, align 8
  %17 = call i32 @unlock_page(%struct.page* %16)
  %18 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %19 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %18, i32 0, i32 0
  %20 = call i32 @down_read(i32* %19)
  %21 = load %struct.page*, %struct.page** %6, align 8
  %22 = call i32 @lock_page(%struct.page* %21)
  br label %23

23:                                               ; preds = %13, %3
  %24 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %25 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %24, i32 0, i32 1
  %26 = load %struct.vm_area_struct*, %struct.vm_area_struct** %25, align 8
  store %struct.vm_area_struct* %26, %struct.vm_area_struct** %7, align 8
  br label %27

27:                                               ; preds = %43, %23
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %29 = icmp ne %struct.vm_area_struct* %28, null
  br i1 %29, label %30, label %47

30:                                               ; preds = %27
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %32 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.page*, %struct.page** %6, align 8
  %39 = call i32 @unuse_vma(%struct.vm_area_struct* %36, i32 %37, %struct.page* %38)
  store i32 %39, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %47

42:                                               ; preds = %35, %30
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %45 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %44, i32 0, i32 1
  %46 = load %struct.vm_area_struct*, %struct.vm_area_struct** %45, align 8
  store %struct.vm_area_struct* %46, %struct.vm_area_struct** %7, align 8
  br label %27

47:                                               ; preds = %41, %27
  %48 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %49 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %48, i32 0, i32 0
  %50 = call i32 @up_read(i32* %49)
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* %8, align 4
  br label %56

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %53
  %57 = phi i32 [ %54, %53 ], [ 0, %55 ]
  ret i32 %57
}

declare dso_local i32 @down_read_trylock(i32*) #1

declare dso_local i32 @activate_page(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @unuse_vma(%struct.vm_area_struct*, i32, %struct.page*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
