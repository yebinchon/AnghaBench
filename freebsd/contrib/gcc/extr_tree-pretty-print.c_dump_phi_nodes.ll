; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-pretty-print.c_dump_phi_nodes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-pretty-print.c_dump_phi_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TDF_VOPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"# \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32)* @dump_phi_nodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_phi_nodes(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @phi_nodes(i32 %10)
  store i64 %11, i64* %9, align 8
  %12 = load i64, i64* %9, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  br label %45

15:                                               ; preds = %4
  br label %16

16:                                               ; preds = %42, %15
  %17 = load i64, i64* %9, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %45

19:                                               ; preds = %16
  %20 = load i64, i64* %9, align 8
  %21 = call i32 @PHI_RESULT(i64 %20)
  %22 = call i64 @is_gimple_reg(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @TDF_VOPS, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %24, %19
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @INDENT(i32 %30)
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @pp_string(i32* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %34 = load i32*, i32** %5, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @dump_generic_node(i32* %34, i64 %35, i32 %36, i32 %37, i32 0)
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @pp_newline(i32* %39)
  br label %41

41:                                               ; preds = %29, %24
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %9, align 8
  %44 = call i64 @PHI_CHAIN(i64 %43)
  store i64 %44, i64* %9, align 8
  br label %16

45:                                               ; preds = %14, %16
  ret void
}

declare dso_local i64 @phi_nodes(i32) #1

declare dso_local i64 @is_gimple_reg(i32) #1

declare dso_local i32 @PHI_RESULT(i64) #1

declare dso_local i32 @INDENT(i32) #1

declare dso_local i32 @pp_string(i32*, i8*) #1

declare dso_local i32 @dump_generic_node(i32*, i64, i32, i32, i32) #1

declare dso_local i32 @pp_newline(i32*) #1

declare dso_local i64 @PHI_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
