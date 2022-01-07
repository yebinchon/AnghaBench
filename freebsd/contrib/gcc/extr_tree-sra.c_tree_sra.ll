; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-sra.c_tree_sra.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-sra.c_tree_sra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@todoflags = common dso_local global i32 0, align 4
@sra_obstack = common dso_local global i32 0, align 4
@sra_candidates = common dso_local global i32 0, align 4
@needs_copy_in = common dso_local global i32 0, align 4
@sra_elt_hash = common dso_local global i32 0, align 4
@sra_elt_eq = common dso_local global i32 0, align 4
@sra_map = common dso_local global i32* null, align 8
@sra_type_decomp_cache = common dso_local global i32 0, align 4
@sra_type_inst_cache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @tree_sra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tree_sra() #0 {
  store i32 0, i32* @todoflags, align 4
  %1 = call i32 @gcc_obstack_init(i32* @sra_obstack)
  %2 = call i32 @BITMAP_ALLOC(i32* null)
  store i32 %2, i32* @sra_candidates, align 4
  %3 = call i32 @BITMAP_ALLOC(i32* null)
  store i32 %3, i32* @needs_copy_in, align 4
  %4 = call i32 (...) @sra_init_cache()
  %5 = load i32, i32* @sra_elt_hash, align 4
  %6 = load i32, i32* @sra_elt_eq, align 4
  %7 = call i32* @htab_create(i32 101, i32 %5, i32 %6, i32* null)
  store i32* %7, i32** @sra_map, align 8
  %8 = call i64 (...) @find_candidates_for_sra()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %0
  %11 = call i32 (...) @scan_function()
  %12 = call i32 (...) @decide_instantiations()
  %13 = call i32 (...) @scalarize_function()
  br label %14

14:                                               ; preds = %10, %0
  %15 = load i32*, i32** @sra_map, align 8
  %16 = call i32 @htab_delete(i32* %15)
  store i32* null, i32** @sra_map, align 8
  %17 = load i32, i32* @sra_candidates, align 4
  %18 = call i32 @BITMAP_FREE(i32 %17)
  %19 = load i32, i32* @needs_copy_in, align 4
  %20 = call i32 @BITMAP_FREE(i32 %19)
  %21 = load i32, i32* @sra_type_decomp_cache, align 4
  %22 = call i32 @BITMAP_FREE(i32 %21)
  %23 = load i32, i32* @sra_type_inst_cache, align 4
  %24 = call i32 @BITMAP_FREE(i32 %23)
  %25 = call i32 @obstack_free(i32* @sra_obstack, i32* null)
  %26 = load i32, i32* @todoflags, align 4
  ret i32 %26
}

declare dso_local i32 @gcc_obstack_init(i32*) #1

declare dso_local i32 @BITMAP_ALLOC(i32*) #1

declare dso_local i32 @sra_init_cache(...) #1

declare dso_local i32* @htab_create(i32, i32, i32, i32*) #1

declare dso_local i64 @find_candidates_for_sra(...) #1

declare dso_local i32 @scan_function(...) #1

declare dso_local i32 @decide_instantiations(...) #1

declare dso_local i32 @scalarize_function(...) #1

declare dso_local i32 @htab_delete(i32*) #1

declare dso_local i32 @BITMAP_FREE(i32) #1

declare dso_local i32 @obstack_free(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
