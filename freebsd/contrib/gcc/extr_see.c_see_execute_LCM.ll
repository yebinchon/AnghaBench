; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_see.c_see_execute_LCM.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_see.c_see_execute_LCM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@see_pre_extension_hash = common dso_local global i32 0, align 4
@dump_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"* Phase 3: Eliminate globally redundant extensions.  *\0A\00", align 1
@last_bb = common dso_local global i32 0, align 4
@transp = common dso_local global i8* null, align 8
@comp = common dso_local global i8* null, align 8
@antloc = common dso_local global i8* null, align 8
@ae_kill = common dso_local global i8* null, align 8
@see_bb_splay_ar = common dso_local global i64* null, align 8
@see_analyze_ref_local_prop = common dso_local global i32 0, align 4
@pre_insert_map = common dso_local global i32 0, align 4
@pre_delete_map = common dso_local global i32 0, align 4
@edge_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @see_execute_LCM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @see_execute_LCM() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @see_pre_extension_hash, align 4
  %4 = call i64 @htab_elements(i32 %3)
  store i64 %4, i64* %1, align 8
  store i32 0, i32* %2, align 4
  %5 = load i64, i64* @dump_file, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i64, i64* @dump_file, align 8
  %9 = call i32 @fprintf(i64 %8, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %7, %0
  %11 = load i32, i32* @last_bb, align 4
  %12 = load i64, i64* %1, align 8
  %13 = call i8* @sbitmap_vector_alloc(i32 %11, i64 %12)
  store i8* %13, i8** @transp, align 8
  %14 = load i32, i32* @last_bb, align 4
  %15 = load i64, i64* %1, align 8
  %16 = call i8* @sbitmap_vector_alloc(i32 %14, i64 %15)
  store i8* %16, i8** @comp, align 8
  %17 = load i32, i32* @last_bb, align 4
  %18 = load i64, i64* %1, align 8
  %19 = call i8* @sbitmap_vector_alloc(i32 %17, i64 %18)
  store i8* %19, i8** @antloc, align 8
  %20 = load i32, i32* @last_bb, align 4
  %21 = load i64, i64* %1, align 8
  %22 = call i8* @sbitmap_vector_alloc(i32 %20, i64 %21)
  store i8* %22, i8** @ae_kill, align 8
  %23 = load i8*, i8** @transp, align 8
  %24 = load i32, i32* @last_bb, align 4
  %25 = call i32 @sbitmap_vector_ones(i8* %23, i32 %24)
  %26 = load i8*, i8** @comp, align 8
  %27 = load i32, i32* @last_bb, align 4
  %28 = call i32 @sbitmap_vector_zero(i8* %26, i32 %27)
  %29 = load i8*, i8** @antloc, align 8
  %30 = load i32, i32* @last_bb, align 4
  %31 = call i32 @sbitmap_vector_zero(i8* %29, i32 %30)
  %32 = load i8*, i8** @ae_kill, align 8
  %33 = load i32, i32* @last_bb, align 4
  %34 = call i32 @sbitmap_vector_zero(i8* %32, i32 %33)
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %55, %10
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* @last_bb, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %58

39:                                               ; preds = %35
  %40 = load i64*, i64** @see_bb_splay_ar, align 8
  %41 = load i32, i32* %2, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %39
  %47 = load i64*, i64** @see_bb_splay_ar, align 8
  %48 = load i32, i32* %2, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* @see_analyze_ref_local_prop, align 4
  %53 = call i32 @splay_tree_foreach(i64 %51, i32 %52, i32* null)
  br label %54

54:                                               ; preds = %46, %39
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %2, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %2, align 4
  br label %35

58:                                               ; preds = %35
  %59 = call i32 (...) @add_noreturn_fake_exit_edges()
  %60 = load i64, i64* %1, align 8
  %61 = load i8*, i8** @transp, align 8
  %62 = load i8*, i8** @comp, align 8
  %63 = load i8*, i8** @antloc, align 8
  %64 = load i8*, i8** @ae_kill, align 8
  %65 = call i32 @pre_edge_lcm(i64 %60, i8* %61, i8* %62, i8* %63, i8* %64, i32* @pre_insert_map, i32* @pre_delete_map)
  store i32 %65, i32* @edge_list, align 4
  %66 = call i32 (...) @remove_fake_exit_edges()
  ret void
}

declare dso_local i64 @htab_elements(i32) #1

declare dso_local i32 @fprintf(i64, i8*) #1

declare dso_local i8* @sbitmap_vector_alloc(i32, i64) #1

declare dso_local i32 @sbitmap_vector_ones(i8*, i32) #1

declare dso_local i32 @sbitmap_vector_zero(i8*, i32) #1

declare dso_local i32 @splay_tree_foreach(i64, i32, i32*) #1

declare dso_local i32 @add_noreturn_fake_exit_edges(...) #1

declare dso_local i32 @pre_edge_lcm(i64, i8*, i8*, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @remove_fake_exit_edges(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
