; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-sra.c_scalarize_use.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-sra.c_scalarize_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sra_elt = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sra_elt*, i32**, i32*, i32, i32)* @scalarize_use to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scalarize_use(%struct.sra_elt* %0, i32** %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sra_elt*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.sra_elt* %0, %struct.sra_elt** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32* null, i32** %11, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = load i32, i32* %13, align 4
  %15 = call i32* @bsi_stmt(i32 %14)
  store i32* %15, i32** %12, align 8
  %16 = load %struct.sra_elt*, %struct.sra_elt** %6, align 8
  %17 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %33

20:                                               ; preds = %5
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32*, i32** %12, align 8
  %25 = call i32 @mark_all_v_defs(i32* %24)
  br label %26

26:                                               ; preds = %23, %20
  %27 = load %struct.sra_elt*, %struct.sra_elt** %6, align 8
  %28 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32**, i32*** %7, align 8
  store i32* %29, i32** %30, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = call i32 @update_stmt(i32* %31)
  br label %62

33:                                               ; preds = %5
  %34 = load %struct.sra_elt*, %struct.sra_elt** %6, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.sra_elt*, %struct.sra_elt** %6, align 8
  %37 = call i32 @generate_element_ref(%struct.sra_elt* %36)
  %38 = call i32 @generate_copy_inout(%struct.sra_elt* %34, i32 %35, i32 %37, i32** %11)
  %39 = load i32*, i32** %11, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %62

42:                                               ; preds = %33
  %43 = load i32*, i32** %11, align 8
  %44 = call i32 @mark_all_v_defs(i32* %43)
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32*, i32** %8, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = call i32 @sra_insert_after(i32* %48, i32* %49)
  br label %61

51:                                               ; preds = %42
  %52 = load i32*, i32** %8, align 8
  %53 = load i32*, i32** %11, align 8
  %54 = call i32 @sra_insert_before(i32* %52, i32* %53)
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load %struct.sra_elt*, %struct.sra_elt** %6, align 8
  %59 = call i32 @mark_no_warning(%struct.sra_elt* %58)
  br label %60

60:                                               ; preds = %57, %51
  br label %61

61:                                               ; preds = %60, %47
  br label %62

62:                                               ; preds = %41, %61, %26
  ret void
}

declare dso_local i32* @bsi_stmt(i32) #1

declare dso_local i32 @mark_all_v_defs(i32*) #1

declare dso_local i32 @update_stmt(i32*) #1

declare dso_local i32 @generate_copy_inout(%struct.sra_elt*, i32, i32, i32**) #1

declare dso_local i32 @generate_element_ref(%struct.sra_elt*) #1

declare dso_local i32 @sra_insert_after(i32*, i32*) #1

declare dso_local i32 @sra_insert_before(i32*, i32*) #1

declare dso_local i32 @mark_no_warning(%struct.sra_elt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
