; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_free_pre_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_free_pre_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@transp = common dso_local global i32* null, align 8
@comp = common dso_local global i32* null, align 8
@pre_optimal = common dso_local global i32* null, align 8
@pre_redundant = common dso_local global i32* null, align 8
@pre_insert_map = common dso_local global i32* null, align 8
@pre_delete_map = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @free_pre_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_pre_mem() #0 {
  %1 = load i32*, i32** @transp, align 8
  %2 = call i32 @sbitmap_vector_free(i32* %1)
  %3 = load i32*, i32** @comp, align 8
  %4 = call i32 @sbitmap_vector_free(i32* %3)
  %5 = load i32*, i32** @pre_optimal, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i32*, i32** @pre_optimal, align 8
  %9 = call i32 @sbitmap_vector_free(i32* %8)
  br label %10

10:                                               ; preds = %7, %0
  %11 = load i32*, i32** @pre_redundant, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32*, i32** @pre_redundant, align 8
  %15 = call i32 @sbitmap_vector_free(i32* %14)
  br label %16

16:                                               ; preds = %13, %10
  %17 = load i32*, i32** @pre_insert_map, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32*, i32** @pre_insert_map, align 8
  %21 = call i32 @sbitmap_vector_free(i32* %20)
  br label %22

22:                                               ; preds = %19, %16
  %23 = load i32*, i32** @pre_delete_map, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32*, i32** @pre_delete_map, align 8
  %27 = call i32 @sbitmap_vector_free(i32* %26)
  br label %28

28:                                               ; preds = %25, %22
  store i32* null, i32** @comp, align 8
  store i32* null, i32** @transp, align 8
  store i32* null, i32** @pre_delete_map, align 8
  store i32* null, i32** @pre_insert_map, align 8
  store i32* null, i32** @pre_redundant, align 8
  store i32* null, i32** @pre_optimal, align 8
  ret void
}

declare dso_local i32 @sbitmap_vector_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
