; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_free_store_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_free_store_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ae_gen = common dso_local global i32* null, align 8
@ae_kill = common dso_local global i32* null, align 8
@transp = common dso_local global i32* null, align 8
@st_antloc = common dso_local global i32* null, align 8
@pre_insert_map = common dso_local global i32* null, align 8
@pre_delete_map = common dso_local global i32* null, align 8
@reg_set_in_block = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @free_store_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_store_memory() #0 {
  %1 = call i32 (...) @free_ldst_mems()
  %2 = load i32*, i32** @ae_gen, align 8
  %3 = icmp ne i32* %2, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i32*, i32** @ae_gen, align 8
  %6 = call i32 @sbitmap_vector_free(i32* %5)
  br label %7

7:                                                ; preds = %4, %0
  %8 = load i32*, i32** @ae_kill, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load i32*, i32** @ae_kill, align 8
  %12 = call i32 @sbitmap_vector_free(i32* %11)
  br label %13

13:                                               ; preds = %10, %7
  %14 = load i32*, i32** @transp, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32*, i32** @transp, align 8
  %18 = call i32 @sbitmap_vector_free(i32* %17)
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i32*, i32** @st_antloc, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32*, i32** @st_antloc, align 8
  %24 = call i32 @sbitmap_vector_free(i32* %23)
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i32*, i32** @pre_insert_map, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32*, i32** @pre_insert_map, align 8
  %30 = call i32 @sbitmap_vector_free(i32* %29)
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i32*, i32** @pre_delete_map, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32*, i32** @pre_delete_map, align 8
  %36 = call i32 @sbitmap_vector_free(i32* %35)
  br label %37

37:                                               ; preds = %34, %31
  %38 = load i32*, i32** @reg_set_in_block, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32*, i32** @reg_set_in_block, align 8
  %42 = call i32 @sbitmap_vector_free(i32* %41)
  br label %43

43:                                               ; preds = %40, %37
  store i32* null, i32** @st_antloc, align 8
  store i32* null, i32** @transp, align 8
  store i32* null, i32** @ae_kill, align 8
  store i32* null, i32** @ae_gen, align 8
  store i32* null, i32** @reg_set_in_block, align 8
  store i32* null, i32** @pre_delete_map, align 8
  store i32* null, i32** @pre_insert_map, align 8
  ret void
}

declare dso_local i32 @free_ldst_mems(...) #1

declare dso_local i32 @sbitmap_vector_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
