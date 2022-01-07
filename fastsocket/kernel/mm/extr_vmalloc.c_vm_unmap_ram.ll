; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmalloc.c_vm_unmap_ram.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmalloc.c_vm_unmap_ram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SHIFT = common dso_local global i32 0, align 4
@VMALLOC_START = common dso_local global i64 0, align 8
@VMALLOC_END = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@VMAP_MAX_ALLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_unmap_ram(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @PAGE_SHIFT, align 4
  %9 = shl i32 %7, %8
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %5, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = ptrtoint i8* %11 to i64
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp ne i64 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = sext i32 %16 to i64
  %18 = call i32 @BUG_ON(i64 %17)
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @VMALLOC_START, align 8
  %21 = icmp ult i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = sext i32 %22 to i64
  %24 = call i32 @BUG_ON(i64 %23)
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @VMALLOC_END, align 8
  %27 = icmp ugt i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = sext i32 %28 to i64
  %30 = call i32 @BUG_ON(i64 %29)
  %31 = load i64, i64* %6, align 8
  %32 = load i32, i32* @PAGE_SIZE, align 4
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = and i64 %31, %34
  %36 = call i32 @BUG_ON(i64 %35)
  %37 = load i8*, i8** %3, align 8
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @debug_check_no_locks_freed(i8* %37, i64 %38)
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* %5, align 8
  %43 = add i64 %41, %42
  %44 = call i32 @vmap_debug_free_range(i64 %40, i64 %43)
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @VMAP_MAX_ALLOC, align 4
  %47 = icmp ule i32 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i64 @likely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %2
  %52 = load i8*, i8** %3, align 8
  %53 = load i64, i64* %5, align 8
  %54 = call i32 @vb_free(i8* %52, i64 %53)
  br label %58

55:                                               ; preds = %2
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @free_unmap_vmap_area_addr(i64 %56)
  br label %58

58:                                               ; preds = %55, %51
  ret void
}

declare dso_local i32 @BUG_ON(i64) #1

declare dso_local i32 @debug_check_no_locks_freed(i8*, i64) #1

declare dso_local i32 @vmap_debug_free_range(i64, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @vb_free(i8*, i64) #1

declare dso_local i32 @free_unmap_vmap_area_addr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
