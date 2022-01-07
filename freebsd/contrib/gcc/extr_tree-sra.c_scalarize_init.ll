; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-sra.c_scalarize_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-sra.c_scalarize_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sra_elt = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sra_elt*, i32*, i32*)* @scalarize_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scalarize_init(%struct.sra_elt* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.sra_elt*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.sra_elt* %0, %struct.sra_elt** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 1, i32* %7, align 4
  store i32* null, i32** %8, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load i32*, i32** %5, align 8
  %14 = call i32* @unshare_expr(i32* %13)
  store i32* %14, i32** %5, align 8
  %15 = load %struct.sra_elt*, %struct.sra_elt** %4, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @generate_element_init(%struct.sra_elt* %15, i32* %16, i32** %8)
  store i32 %17, i32* %7, align 4
  br label %18

18:                                               ; preds = %12, %3
  %19 = load %struct.sra_elt*, %struct.sra_elt** %4, align 8
  %20 = call i32 @generate_element_zero(%struct.sra_elt* %19, i32** %8)
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %18
  store i32* null, i32** %9, align 8
  %24 = load %struct.sra_elt*, %struct.sra_elt** %4, align 8
  %25 = load %struct.sra_elt*, %struct.sra_elt** %4, align 8
  %26 = call i32 @generate_element_ref(%struct.sra_elt* %25)
  %27 = call i32 @generate_copy_inout(%struct.sra_elt* %24, i32 1, i32 %26, i32** %9)
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @append_to_statement_list(i32* %28, i32** %9)
  %30 = load i32*, i32** %9, align 8
  store i32* %30, i32** %8, align 8
  br label %31

31:                                               ; preds = %23, %18
  %32 = load %struct.sra_elt*, %struct.sra_elt** %4, align 8
  %33 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %36, %31
  %40 = load i32*, i32** %8, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @mark_all_v_defs(i32* %43)
  %45 = load i32*, i32** %6, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @sra_insert_after(i32* %45, i32* %46)
  br label %48

48:                                               ; preds = %42, %39
  br label %61

49:                                               ; preds = %36
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @gcc_assert(i32* %50)
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %52, align 4
  %54 = call i32* @bsi_stmt(i32 %53)
  %55 = call i32 @mark_all_v_defs(i32* %54)
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 @mark_all_v_defs(i32* %56)
  %58 = load i32*, i32** %6, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 @sra_replace(i32* %58, i32* %59)
  br label %61

61:                                               ; preds = %49, %48
  ret void
}

declare dso_local i32* @unshare_expr(i32*) #1

declare dso_local i32 @generate_element_init(%struct.sra_elt*, i32*, i32**) #1

declare dso_local i32 @generate_element_zero(%struct.sra_elt*, i32**) #1

declare dso_local i32 @generate_copy_inout(%struct.sra_elt*, i32, i32, i32**) #1

declare dso_local i32 @generate_element_ref(%struct.sra_elt*) #1

declare dso_local i32 @append_to_statement_list(i32*, i32**) #1

declare dso_local i32 @mark_all_v_defs(i32*) #1

declare dso_local i32 @sra_insert_after(i32*, i32*) #1

declare dso_local i32 @gcc_assert(i32*) #1

declare dso_local i32* @bsi_stmt(i32) #1

declare dso_local i32 @sra_replace(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
