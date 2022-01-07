; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_produce_memory_decl_rtl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_produce_memory_decl_rtl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Pmode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @produce_memory_decl_rtl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @produce_memory_decl_rtl(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @gcc_assert(i32 %7)
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @TREE_STATIC(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @DECL_EXTERNAL(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %12, %2
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @DECL_ASSEMBLER_NAME(i32 %17)
  %19 = call i8* @IDENTIFIER_POINTER(i32 %18)
  store i8* %19, i8** %6, align 8
  %20 = load i32, i32* @Pmode, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @gen_rtx_SYMBOL_REF(i32 %20, i8* %21)
  store i32 %22, i32* %5, align 4
  br label %29

23:                                               ; preds = %12
  %24 = load i32, i32* @Pmode, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  %28 = call i32 @gen_raw_REG(i32 %24, i32 %26)
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %23, %16
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @DECL_MODE(i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @gen_rtx_MEM(i32 %31, i32 %32)
  ret i32 %33
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_STATIC(i32) #1

declare dso_local i64 @DECL_EXTERNAL(i32) #1

declare dso_local i8* @IDENTIFIER_POINTER(i32) #1

declare dso_local i32 @DECL_ASSEMBLER_NAME(i32) #1

declare dso_local i32 @gen_rtx_SYMBOL_REF(i32, i8*) #1

declare dso_local i32 @gen_raw_REG(i32, i32) #1

declare dso_local i32 @gen_rtx_MEM(i32, i32) #1

declare dso_local i32 @DECL_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
