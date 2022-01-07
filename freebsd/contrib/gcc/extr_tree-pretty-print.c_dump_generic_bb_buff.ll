; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-pretty-print.c_dump_generic_bb_buff.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-pretty-print.c_dump_generic_bb_buff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LABEL_EXPR = common dso_local global i64 0, align 8
@TDF_BLOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32)* @dump_generic_bb_buff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_generic_bb_buff(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = sub nsw i32 %13, 2
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %17, %4
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @dump_bb_header(i32* %19, i32 %20, i32 %21, i32 %22)
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @dump_phi_nodes(i32* %24, i32 %25, i32 %26, i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @bsi_start(i32 %29)
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %58, %18
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @bsi_end_p(i32 %32)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  br i1 %35, label %36, label %60

36:                                               ; preds = %31
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @bsi_stmt(i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i64 @TREE_CODE(i32 %39)
  %41 = load i64, i64* @LABEL_EXPR, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* %11, align 4
  br label %47

45:                                               ; preds = %36
  %46 = load i32, i32* %7, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @INDENT(i32 %49)
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @dump_generic_node(i32* %51, i32 %52, i32 %53, i32 %54, i32 1)
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @pp_newline(i32* %56)
  br label %58

58:                                               ; preds = %47
  %59 = call i32 @bsi_next(i32* %9)
  br label %31

60:                                               ; preds = %31
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @dump_implicit_edges(i32* %61, i32 %62, i32 %63, i32 %64)
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @TDF_BLOCKS, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %60
  %71 = load i32*, i32** %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @dump_bb_end(i32* %71, i32 %72, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %70, %60
  ret void
}

declare dso_local i32 @dump_bb_header(i32*, i32, i32, i32) #1

declare dso_local i32 @dump_phi_nodes(i32*, i32, i32, i32) #1

declare dso_local i32 @bsi_start(i32) #1

declare dso_local i32 @bsi_end_p(i32) #1

declare dso_local i32 @bsi_stmt(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @INDENT(i32) #1

declare dso_local i32 @dump_generic_node(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @pp_newline(i32*) #1

declare dso_local i32 @bsi_next(i32*) #1

declare dso_local i32 @dump_implicit_edges(i32*, i32, i32, i32) #1

declare dso_local i32 @dump_bb_end(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
