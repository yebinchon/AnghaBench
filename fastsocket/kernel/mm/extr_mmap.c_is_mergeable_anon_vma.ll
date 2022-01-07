; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mmap.c_is_mergeable_anon_vma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mmap.c_is_mergeable_anon_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon_vma = type { i32 }
%struct.vm_area_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.anon_vma*, %struct.anon_vma*, %struct.vm_area_struct*)* @is_mergeable_anon_vma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_mergeable_anon_vma(%struct.anon_vma* %0, %struct.anon_vma* %1, %struct.vm_area_struct* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.anon_vma*, align 8
  %6 = alloca %struct.anon_vma*, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  store %struct.anon_vma* %0, %struct.anon_vma** %5, align 8
  store %struct.anon_vma* %1, %struct.anon_vma** %6, align 8
  store %struct.vm_area_struct* %2, %struct.vm_area_struct** %7, align 8
  %8 = load %struct.anon_vma*, %struct.anon_vma** %5, align 8
  %9 = icmp ne %struct.anon_vma* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load %struct.anon_vma*, %struct.anon_vma** %6, align 8
  %12 = icmp ne %struct.anon_vma* %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %10, %3
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %15 = icmp ne %struct.vm_area_struct* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %18 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %17, i32 0, i32 0
  %19 = call i64 @list_is_singular(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %13
  store i32 1, i32* %4, align 4
  br label %27

22:                                               ; preds = %16, %10
  %23 = load %struct.anon_vma*, %struct.anon_vma** %5, align 8
  %24 = load %struct.anon_vma*, %struct.anon_vma** %6, align 8
  %25 = icmp eq %struct.anon_vma* %23, %24
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %22, %21
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i64 @list_is_singular(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
