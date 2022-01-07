; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-alias-warnings.c_processed_func_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-alias-warnings.c_processed_func_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@processed_func_p.seen = internal global i32* null, align 8
@htab_hash_pointer = common dso_local global i32 0, align 4
@htab_eq_pointer = common dso_local global i32 0, align 4
@INSERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @processed_func_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @processed_func_p(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i32*, i32** @processed_func_p.seen, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @htab_hash_pointer, align 4
  %9 = load i32, i32* @htab_eq_pointer, align 4
  %10 = call i32* @htab_create(i32 100, i32 %8, i32 %9, i32* null)
  store i32* %10, i32** @processed_func_p.seen, align 8
  br label %11

11:                                               ; preds = %7, %1
  %12 = load i32*, i32** @processed_func_p.seen, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = load i32, i32* @INSERT, align 4
  %15 = call i8** @htab_find_slot(i32* %12, i8* %13, i32 %14)
  store i8** %15, i8*** %4, align 8
  %16 = load i8**, i8*** %4, align 8
  %17 = call i32 @gcc_assert(i8** %16)
  %18 = load i8**, i8*** %4, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %25

22:                                               ; preds = %11
  %23 = load i8*, i8** %3, align 8
  %24 = load i8**, i8*** %4, align 8
  store i8* %23, i8** %24, align 8
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %22, %21
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32* @htab_create(i32, i32, i32, i32*) #1

declare dso_local i8** @htab_find_slot(i32*, i8*, i32) #1

declare dso_local i32 @gcc_assert(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
