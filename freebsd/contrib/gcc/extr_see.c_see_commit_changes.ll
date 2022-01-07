; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_see.c_see_commit_changes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_see.c_see_commit_changes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.see_pre_extension_expr = type { i32 }

@see_pre_extension_hash = common dso_local global i32 0, align 4
@dump_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"* Phase 4: Commit changes to the insn stream.  *\0A\00", align 1
@see_map_extension = common dso_local global i32 0, align 4
@see_pre_delete_extension = common dso_local global i32 0, align 4
@df = common dso_local global i32* null, align 8
@last_bb = common dso_local global i32 0, align 4
@see_bb_splay_ar = common dso_local global i64* null, align 8
@see_commit_ref_changes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @see_commit_changes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @see_commit_changes() #0 {
  %1 = alloca %struct.see_pre_extension_expr**, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @see_pre_extension_hash, align 4
  %6 = call i64 @htab_elements(i32 %5)
  store i64 %6, i64* %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load i64, i64* %2, align 8
  %8 = call %struct.see_pre_extension_expr** @xcalloc(i64 %7, i32 8)
  store %struct.see_pre_extension_expr** %8, %struct.see_pre_extension_expr*** %1, align 8
  %9 = load i64, i64* @dump_file, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %0
  %12 = load i64, i64* @dump_file, align 8
  %13 = call i32 @fprintf(i64 %12, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %11, %0
  %15 = load i32, i32* @see_pre_extension_hash, align 4
  %16 = load i32, i32* @see_map_extension, align 4
  %17 = load %struct.see_pre_extension_expr**, %struct.see_pre_extension_expr*** %1, align 8
  %18 = bitcast %struct.see_pre_extension_expr** %17 to i32*
  %19 = call i32 @htab_traverse(i32 %15, i32 %16, i32* %18)
  %20 = load i32, i32* @see_pre_extension_hash, align 4
  %21 = load i32, i32* @see_pre_delete_extension, align 4
  %22 = call i32 @htab_traverse(i32 %20, i32 %21, i32* null)
  %23 = load i32*, i32** @df, align 8
  %24 = call i32 @df_finish(i32* %23)
  store i32* null, i32** @df, align 8
  %25 = load %struct.see_pre_extension_expr**, %struct.see_pre_extension_expr*** %1, align 8
  %26 = call i32 @see_pre_insert_extensions(%struct.see_pre_extension_expr** %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %14
  %30 = call i32 (...) @commit_edge_insertions()
  br label %31

31:                                               ; preds = %29, %14
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %52, %31
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @last_bb, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %32
  %37 = load i64*, i64** @see_bb_splay_ar, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %36
  %44 = load i64*, i64** @see_bb_splay_ar, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* @see_commit_ref_changes, align 4
  %50 = call i32 @splay_tree_foreach(i64 %48, i32 %49, i32* null)
  br label %51

51:                                               ; preds = %43, %36
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %32

55:                                               ; preds = %32
  %56 = load %struct.see_pre_extension_expr**, %struct.see_pre_extension_expr*** %1, align 8
  %57 = call i32 @free(%struct.see_pre_extension_expr** %56)
  ret void
}

declare dso_local i64 @htab_elements(i32) #1

declare dso_local %struct.see_pre_extension_expr** @xcalloc(i64, i32) #1

declare dso_local i32 @fprintf(i64, i8*) #1

declare dso_local i32 @htab_traverse(i32, i32, i32*) #1

declare dso_local i32 @df_finish(i32*) #1

declare dso_local i32 @see_pre_insert_extensions(%struct.see_pre_extension_expr**) #1

declare dso_local i32 @commit_edge_insertions(...) #1

declare dso_local i32 @splay_tree_foreach(i64, i32, i32*) #1

declare dso_local i32 @free(%struct.see_pre_extension_expr**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
