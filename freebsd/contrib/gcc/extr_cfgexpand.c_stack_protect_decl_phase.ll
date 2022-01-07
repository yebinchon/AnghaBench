; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgexpand.c_stack_protect_decl_phase.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgexpand.c_stack_protect_decl_phase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPCT_HAS_SMALL_CHAR_ARRAY = common dso_local global i32 0, align 4
@has_short_buffer = common dso_local global i32 0, align 4
@flag_stack_protect = common dso_local global i64 0, align 8
@SPCT_FLAG_ALL = common dso_local global i64 0, align 8
@SPCT_FLAG_STRONG = common dso_local global i64 0, align 8
@SPCT_HAS_LARGE_CHAR_ARRAY = common dso_local global i32 0, align 4
@SPCT_HAS_AGGREGATE = common dso_local global i32 0, align 4
@SPCT_HAS_ARRAY = common dso_local global i32 0, align 4
@has_protected_decls = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @stack_protect_decl_phase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stack_protect_decl_phase(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @TREE_TYPE(i32 %5)
  %7 = call i32 @stack_protect_classify_type(i32 %6)
  store i32 %7, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @SPCT_HAS_SMALL_CHAR_ARRAY, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 1, i32* @has_short_buffer, align 4
  br label %13

13:                                               ; preds = %12, %1
  %14 = load i64, i64* @flag_stack_protect, align 8
  %15 = load i64, i64* @SPCT_FLAG_ALL, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i64, i64* @flag_stack_protect, align 8
  %19 = load i64, i64* @SPCT_FLAG_STRONG, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %42

21:                                               ; preds = %17, %13
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @SPCT_HAS_SMALL_CHAR_ARRAY, align 4
  %24 = load i32, i32* @SPCT_HAS_LARGE_CHAR_ARRAY, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @SPCT_HAS_AGGREGATE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  store i32 1, i32* %4, align 4
  br label %41

34:                                               ; preds = %28, %21
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @SPCT_HAS_ARRAY, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 2, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %34
  br label %41

41:                                               ; preds = %40, %33
  br label %48

42:                                               ; preds = %17
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @SPCT_HAS_LARGE_CHAR_ARRAY, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %42, %41
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 1, i32* @has_protected_decls, align 4
  br label %52

52:                                               ; preds = %51, %48
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @stack_protect_classify_type(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
