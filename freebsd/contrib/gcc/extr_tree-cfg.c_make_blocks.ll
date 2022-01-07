; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-cfg.c_make_blocks.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-cfg.c_make_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENTRY_BLOCK_PTR = common dso_local global i32 0, align 4
@found_computed_goto = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @make_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_blocks(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @tsi_start(i32* %9)
  store i32 %10, i32* %3, align 4
  store i32* null, i32** %4, align 8
  store i32 1, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %11 = load i32, i32* @ENTRY_BLOCK_PTR, align 4
  store i32 %11, i32* %7, align 4
  br label %12

12:                                               ; preds = %50, %1
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @tsi_end_p(i32 %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br i1 %16, label %17, label %52

17:                                               ; preds = %12
  %18 = load i32*, i32** %4, align 8
  store i32* %18, i32** %8, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i32* @tsi_stmt(i32 %19)
  store i32* %20, i32** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %17
  %24 = load i32*, i32** %4, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = call i64 @stmt_starts_bb_p(i32* %24, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %23, %17
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = call i32* @tsi_split_statement_list_before(i32* %3)
  store i32* %32, i32** %2, align 8
  br label %33

33:                                               ; preds = %31, %28
  %34 = load i32*, i32** %2, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @create_basic_block(i32* %34, i32* null, i32 %35)
  store i32 %36, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %33, %23
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @set_bb_for_stmt(i32* %38, i32 %39)
  %41 = load i32*, i32** %4, align 8
  %42 = call i64 @computed_goto_p(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store i32 1, i32* @found_computed_goto, align 4
  br label %45

45:                                               ; preds = %44, %37
  %46 = load i32*, i32** %4, align 8
  %47 = call i64 @stmt_ends_bb_p(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 1, i32* %5, align 4
  br label %50

50:                                               ; preds = %49, %45
  %51 = call i32 @tsi_next(i32* %3)
  store i32 0, i32* %6, align 4
  br label %12

52:                                               ; preds = %12
  ret void
}

declare dso_local i32 @tsi_start(i32*) #1

declare dso_local i32 @tsi_end_p(i32) #1

declare dso_local i32* @tsi_stmt(i32) #1

declare dso_local i64 @stmt_starts_bb_p(i32*, i32*) #1

declare dso_local i32* @tsi_split_statement_list_before(i32*) #1

declare dso_local i32 @create_basic_block(i32*, i32*, i32) #1

declare dso_local i32 @set_bb_for_stmt(i32*, i32) #1

declare dso_local i64 @computed_goto_p(i32*) #1

declare dso_local i64 @stmt_ends_bb_p(i32*) #1

declare dso_local i32 @tsi_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
