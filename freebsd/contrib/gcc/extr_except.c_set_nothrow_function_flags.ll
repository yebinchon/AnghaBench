; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_set_nothrow_function_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_set_nothrow_function_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@current_function_decl = common dso_local global i32 0, align 4
@cfun = common dso_local global %struct.TYPE_2__* null, align 8
@flag_exceptions = common dso_local global i32 0, align 4
@current_function_epilogue_delay_list = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_nothrow_function_flags() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @current_function_decl, align 4
  %7 = call i64 @DECL_REPLACEABLE_P(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %67

10:                                               ; preds = %0
  store i32 1, i32* %3, align 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfun, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = load i32, i32* @flag_exceptions, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  store i32 0, i32* %1, align 4
  br label %67

16:                                               ; preds = %10
  %17 = call i64 (...) @get_insns()
  store i64 %17, i64* %2, align 8
  br label %18

18:                                               ; preds = %38, %16
  %19 = load i64, i64* %2, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %18
  %22 = load i64, i64* %2, align 8
  %23 = call i64 @can_throw_external(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  %26 = load i64, i64* %2, align 8
  %27 = call i32 @CALL_P(i64 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i64, i64* %2, align 8
  %31 = call i32 @SIBLING_CALL_P(i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %29, %25
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfun, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 0, i32* %35, align 4
  store i32 0, i32* %1, align 4
  br label %67

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %21
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %2, align 8
  %40 = call i64 @NEXT_INSN(i64 %39)
  store i64 %40, i64* %2, align 8
  br label %18

41:                                               ; preds = %18
  %42 = load i64, i64* @current_function_epilogue_delay_list, align 8
  store i64 %42, i64* %2, align 8
  br label %43

43:                                               ; preds = %63, %41
  %44 = load i64, i64* %2, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %66

46:                                               ; preds = %43
  %47 = load i64, i64* %2, align 8
  %48 = call i64 @can_throw_external(i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %46
  store i32 0, i32* %5, align 4
  %51 = load i64, i64* %2, align 8
  %52 = call i32 @CALL_P(i64 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i64, i64* %2, align 8
  %56 = call i32 @SIBLING_CALL_P(i64 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %54, %50
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfun, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i32 0, i32* %60, align 4
  store i32 0, i32* %1, align 4
  br label %67

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61, %46
  br label %63

63:                                               ; preds = %62
  %64 = load i64, i64* %2, align 8
  %65 = call i64 @XEXP(i64 %64, i32 1)
  store i64 %65, i64* %2, align 8
  br label %43

66:                                               ; preds = %43
  store i32 0, i32* %1, align 4
  br label %67

67:                                               ; preds = %66, %58, %33, %15, %9
  %68 = load i32, i32* %1, align 4
  ret i32 %68
}

declare dso_local i64 @DECL_REPLACEABLE_P(i32) #1

declare dso_local i64 @get_insns(...) #1

declare dso_local i64 @can_throw_external(i64) #1

declare dso_local i32 @CALL_P(i64) #1

declare dso_local i32 @SIBLING_CALL_P(i64) #1

declare dso_local i64 @NEXT_INSN(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
