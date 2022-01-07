; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_init.c_build_dtor_call.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_init.c_build_dtor_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@complete_dtor_identifier = common dso_local global i32 0, align 4
@base_dtor_identifier = common dso_local global i32 0, align 4
@deleting_dtor_identifier = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @build_dtor_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_dtor_call(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %16 [
    i32 129, label %10
    i32 130, label %12
    i32 128, label %14
  ]

10:                                               ; preds = %3
  %11 = load i32, i32* @complete_dtor_identifier, align 4
  store i32 %11, i32* %7, align 4
  br label %18

12:                                               ; preds = %3
  %13 = load i32, i32* @base_dtor_identifier, align 4
  store i32 %13, i32* %7, align 4
  br label %18

14:                                               ; preds = %3
  %15 = load i32, i32* @deleting_dtor_identifier, align 4
  store i32 %15, i32* %7, align 4
  br label %18

16:                                               ; preds = %3
  %17 = call i32 (...) @gcc_unreachable()
  br label %18

18:                                               ; preds = %16, %14, %12, %10
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @TREE_TYPE(i32 %19)
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @lookup_fnfields(i32 %20, i32 %21, i32 2)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @NULL_TREE, align 4
  %26 = load i32, i32* @NULL_TREE, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @build_new_method_call(i32 %23, i32 %24, i32 %25, i32 %26, i32 %27, i32* null)
  ret i32 %28
}

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @lookup_fnfields(i32, i32, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @build_new_method_call(i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
