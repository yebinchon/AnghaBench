; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_buildsym.c_push_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_buildsym.c_push_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context_stack = type { i32, i32*, i32, i32, i32*, i32* }

@context_stack_depth = common dso_local global i32 0, align 4
@context_stack_size = common dso_local global i32 0, align 4
@context_stack = common dso_local global %struct.context_stack* null, align 8
@local_symbols = common dso_local global i32* null, align 8
@param_symbols = common dso_local global i32* null, align 8
@pending_blocks = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.context_stack* @push_context(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.context_stack*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @context_stack_depth, align 4
  %7 = load i32, i32* @context_stack_size, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %20

9:                                                ; preds = %2
  %10 = load i32, i32* @context_stack_size, align 4
  %11 = mul nsw i32 %10, 2
  store i32 %11, i32* @context_stack_size, align 4
  %12 = load %struct.context_stack*, %struct.context_stack** @context_stack, align 8
  %13 = bitcast %struct.context_stack* %12 to i8*
  %14 = load i32, i32* @context_stack_size, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 40
  %17 = trunc i64 %16 to i32
  %18 = call i64 @xrealloc(i8* %13, i32 %17)
  %19 = inttoptr i64 %18 to %struct.context_stack*
  store %struct.context_stack* %19, %struct.context_stack** @context_stack, align 8
  br label %20

20:                                               ; preds = %9, %2
  %21 = load %struct.context_stack*, %struct.context_stack** @context_stack, align 8
  %22 = load i32, i32* @context_stack_depth, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* @context_stack_depth, align 4
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds %struct.context_stack, %struct.context_stack* %21, i64 %24
  store %struct.context_stack* %25, %struct.context_stack** %5, align 8
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.context_stack*, %struct.context_stack** %5, align 8
  %28 = getelementptr inbounds %struct.context_stack, %struct.context_stack* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32*, i32** @local_symbols, align 8
  %30 = load %struct.context_stack*, %struct.context_stack** %5, align 8
  %31 = getelementptr inbounds %struct.context_stack, %struct.context_stack* %30, i32 0, i32 5
  store i32* %29, i32** %31, align 8
  %32 = load i32*, i32** @param_symbols, align 8
  %33 = load %struct.context_stack*, %struct.context_stack** %5, align 8
  %34 = getelementptr inbounds %struct.context_stack, %struct.context_stack* %33, i32 0, i32 4
  store i32* %32, i32** %34, align 8
  %35 = load i32, i32* @pending_blocks, align 4
  %36 = load %struct.context_stack*, %struct.context_stack** %5, align 8
  %37 = getelementptr inbounds %struct.context_stack, %struct.context_stack* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.context_stack*, %struct.context_stack** %5, align 8
  %40 = getelementptr inbounds %struct.context_stack, %struct.context_stack* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.context_stack*, %struct.context_stack** %5, align 8
  %42 = getelementptr inbounds %struct.context_stack, %struct.context_stack* %41, i32 0, i32 1
  store i32* null, i32** %42, align 8
  store i32* null, i32** @local_symbols, align 8
  store i32* null, i32** @param_symbols, align 8
  %43 = load %struct.context_stack*, %struct.context_stack** %5, align 8
  ret %struct.context_stack* %43
}

declare dso_local i64 @xrealloc(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
