; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-cfg.c_dump_tree_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-cfg.c_dump_tree_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* (i32, i32)* }

@TDF_DETAILS = common dso_local global i32 0, align 4
@lang_hooks = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@current_function_decl = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c";; Function %s\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c";; \0A%d basic blocks, %d edges, last basic block %d.\0A\0A\00", align 1
@n_basic_blocks = common dso_local global i32 0, align 4
@n_edges = common dso_local global i32 0, align 4
@last_basic_block = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@TDF_STATS = common dso_local global i32 0, align 4
@TDF_BLOCKS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_tree_cfg(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @TDF_DETAILS, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %2
  %11 = load i8* (i32, i32)*, i8* (i32, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lang_hooks, i32 0, i32 0), align 8
  %12 = load i32, i32* @current_function_decl, align 4
  %13 = call i8* %11(i32 %12, i32 2)
  store i8* %13, i8** %5, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @fputc(i8 signext 10, i32* %14)
  %16 = load i32*, i32** %3, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 (i32*, i8*, ...) @fprintf(i32* %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* @n_basic_blocks, align 4
  %21 = load i32, i32* @n_edges, align 4
  %22 = load i32, i32* @last_basic_block, align 4
  %23 = call i32 (i32*, i8*, ...) @fprintf(i32* %19, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %20, i32 %21, i32 %22)
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @brief_dump_cfg(i32* %24)
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 (i32*, i8*, ...) @fprintf(i32* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %28

28:                                               ; preds = %10, %2
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @TDF_STATS, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @dump_cfg_stats(i32* %34)
  br label %36

36:                                               ; preds = %33, %28
  %37 = load i32, i32* @current_function_decl, align 4
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @TDF_BLOCKS, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @dump_function_to_file(i32 %37, i32* %38, i32 %41)
  ret void
}

declare dso_local i32 @fputc(i8 signext, i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @brief_dump_cfg(i32*) #1

declare dso_local i32 @dump_cfg_stats(i32*) #1

declare dso_local i32 @dump_function_to_file(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
