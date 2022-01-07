; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cp-gimplify.c_gimplify_for_stmt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cp-gimplify.c_gimplify_for_stmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @gimplify_for_stmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gimplify_for_stmt(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @FOR_INIT_STMT(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @FOR_INIT_STMT(i32 %12)
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @gimplify_and_add(i64 %13, i32* %14)
  br label %16

16:                                               ; preds = %11, %2
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @FOR_COND(i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @FOR_BODY(i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @FOR_EXPR(i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @FOR_ATTRIBUTES(i32 %23)
  %25 = load i32, i32* @NULL_TREE, align 4
  %26 = call i32 @gimplify_cp_loop(i32 %18, i32 %20, i32 %22, i32 %24, i32 1, i32 %25)
  %27 = load i32*, i32** %3, align 8
  store i32 %26, i32* %27, align 4
  ret void
}

declare dso_local i64 @FOR_INIT_STMT(i32) #1

declare dso_local i32 @gimplify_and_add(i64, i32*) #1

declare dso_local i32 @gimplify_cp_loop(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FOR_COND(i32) #1

declare dso_local i32 @FOR_BODY(i32) #1

declare dso_local i32 @FOR_EXPR(i32) #1

declare dso_local i32 @FOR_ATTRIBUTES(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
