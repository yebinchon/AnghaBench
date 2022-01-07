; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_stmt.c_is_body_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_stmt.c_is_body_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@lang_hooks = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@BLOCK = common dso_local global i64 0, align 8
@FUNCTION_DECL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_body_block(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lang_hooks, i32 0, i32 0), align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %38

9:                                                ; preds = %1
  %10 = load i64, i64* %3, align 8
  %11 = call i64 @TREE_CODE(i64 %10)
  %12 = load i64, i64* @BLOCK, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %9
  %15 = load i64, i64* %3, align 8
  %16 = call i64 @BLOCK_SUPERCONTEXT(i64 %15)
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %14
  %20 = load i64, i64* %4, align 8
  %21 = call i64 @TREE_CODE(i64 %20)
  %22 = load i64, i64* @BLOCK, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %19
  %25 = load i64, i64* %4, align 8
  %26 = call i64 @BLOCK_SUPERCONTEXT(i64 %25)
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load i64, i64* %5, align 8
  %31 = call i64 @TREE_CODE(i64 %30)
  %32 = load i64, i64* @FUNCTION_DECL, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 1, i32* %2, align 4
  br label %38

35:                                               ; preds = %29, %24
  br label %36

36:                                               ; preds = %35, %19, %14
  br label %37

37:                                               ; preds = %36, %9
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %34, %8
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @BLOCK_SUPERCONTEXT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
