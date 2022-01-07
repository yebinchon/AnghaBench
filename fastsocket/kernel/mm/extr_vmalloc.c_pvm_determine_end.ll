; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmalloc.c_pvm_determine_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmalloc.c_pvm_determine_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmap_area = type { i64, i64, i32 }

@VMALLOC_END = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vmap_area**, %struct.vmap_area**, i64)* @pvm_determine_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pvm_determine_end(%struct.vmap_area** %0, %struct.vmap_area** %1, i64 %2) #0 {
  %4 = alloca %struct.vmap_area**, align 8
  %5 = alloca %struct.vmap_area**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.vmap_area** %0, %struct.vmap_area*** %4, align 8
  store %struct.vmap_area** %1, %struct.vmap_area*** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* @VMALLOC_END, align 8
  %10 = load i64, i64* %6, align 8
  %11 = sub i64 %10, 1
  %12 = xor i64 %11, -1
  %13 = and i64 %9, %12
  store i64 %13, i64* %7, align 8
  %14 = load %struct.vmap_area**, %struct.vmap_area*** %4, align 8
  %15 = load %struct.vmap_area*, %struct.vmap_area** %14, align 8
  %16 = icmp ne %struct.vmap_area* %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %3
  %18 = load %struct.vmap_area**, %struct.vmap_area*** %4, align 8
  %19 = load %struct.vmap_area*, %struct.vmap_area** %18, align 8
  %20 = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = sub i64 %22, 1
  %24 = xor i64 %23, -1
  %25 = and i64 %21, %24
  %26 = load i64, i64* %7, align 8
  %27 = call i64 @min(i64 %25, i64 %26)
  store i64 %27, i64* %8, align 8
  br label %30

28:                                               ; preds = %3
  %29 = load i64, i64* %7, align 8
  store i64 %29, i64* %8, align 8
  br label %30

30:                                               ; preds = %28, %17
  br label %31

31:                                               ; preds = %44, %30
  %32 = load %struct.vmap_area**, %struct.vmap_area*** %5, align 8
  %33 = load %struct.vmap_area*, %struct.vmap_area** %32, align 8
  %34 = icmp ne %struct.vmap_area* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load %struct.vmap_area**, %struct.vmap_area*** %5, align 8
  %37 = load %struct.vmap_area*, %struct.vmap_area** %36, align 8
  %38 = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp ugt i64 %39, %40
  br label %42

42:                                               ; preds = %35, %31
  %43 = phi i1 [ false, %31 ], [ %41, %35 ]
  br i1 %43, label %44, label %54

44:                                               ; preds = %42
  %45 = load %struct.vmap_area**, %struct.vmap_area*** %5, align 8
  %46 = load %struct.vmap_area*, %struct.vmap_area** %45, align 8
  %47 = load %struct.vmap_area**, %struct.vmap_area*** %4, align 8
  store %struct.vmap_area* %46, %struct.vmap_area** %47, align 8
  %48 = load %struct.vmap_area**, %struct.vmap_area*** %4, align 8
  %49 = load %struct.vmap_area*, %struct.vmap_area** %48, align 8
  %50 = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %49, i32 0, i32 2
  %51 = call i32 @rb_prev(i32* %50)
  %52 = call %struct.vmap_area* @node_to_va(i32 %51)
  %53 = load %struct.vmap_area**, %struct.vmap_area*** %5, align 8
  store %struct.vmap_area* %52, %struct.vmap_area** %53, align 8
  br label %31

54:                                               ; preds = %42
  %55 = load i64, i64* %8, align 8
  ret i64 %55
}

declare dso_local i64 @min(i64, i64) #1

declare dso_local %struct.vmap_area* @node_to_va(i32) #1

declare dso_local i32 @rb_prev(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
