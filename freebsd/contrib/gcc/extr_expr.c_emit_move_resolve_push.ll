; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_emit_move_resolve_push.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_emit_move_resolve_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PLUS = common dso_local global i64 0, align 8
@MINUS = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8
@Pmode = common dso_local global i32 0, align 4
@stack_pointer_rtx = common dso_local global i64 0, align 8
@OPTAB_LIB_WIDEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64)* @emit_move_resolve_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @emit_move_resolve_push(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i64 @XEXP(i64 %10, i32 0)
  %12 = call i64 @GET_CODE(i64 %11)
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @GET_MODE_SIZE(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 130
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 133
  br i1 %20, label %21, label %24

21:                                               ; preds = %18, %2
  %22 = load i32, i32* %6, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %79

24:                                               ; preds = %18
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 128
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, 131
  br i1 %29, label %30, label %78

30:                                               ; preds = %27, %24
  %31 = load i64, i64* %4, align 8
  %32 = call i64 @XEXP(i64 %31, i32 0)
  %33 = call i64 @XEXP(i64 %32, i32 1)
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call i64 @GET_CODE(i64 %34)
  %36 = load i64, i64* @PLUS, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %43, label %38

38:                                               ; preds = %30
  %39 = load i64, i64* %8, align 8
  %40 = call i64 @GET_CODE(i64 %39)
  %41 = load i64, i64* @MINUS, align 8
  %42 = icmp eq i64 %40, %41
  br label %43

43:                                               ; preds = %38, %30
  %44 = phi i1 [ true, %30 ], [ %42, %38 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @gcc_assert(i32 %45)
  %47 = load i64, i64* %8, align 8
  %48 = call i64 @XEXP(i64 %47, i32 1)
  %49 = call i64 @GET_CODE(i64 %48)
  %50 = load i64, i64* @CONST_INT, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @gcc_assert(i32 %52)
  %54 = load i64, i64* %8, align 8
  %55 = call i64 @XEXP(i64 %54, i32 1)
  %56 = call i32 @INTVAL(i64 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i64, i64* %8, align 8
  %58 = call i64 @GET_CODE(i64 %57)
  %59 = load i64, i64* @MINUS, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %43
  %62 = load i32, i32* %9, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %61, %43
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %73, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %9, align 4
  %71 = sub nsw i32 0, %70
  %72 = icmp eq i32 %69, %71
  br label %73

73:                                               ; preds = %68, %64
  %74 = phi i1 [ true, %64 ], [ %72, %68 ]
  %75 = zext i1 %74 to i32
  %76 = call i32 @gcc_assert(i32 %75)
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %73, %27
  br label %79

79:                                               ; preds = %78, %21
  %80 = load i32, i32* @Pmode, align 4
  %81 = load i64, i64* @PLUS, align 8
  %82 = load i64, i64* @stack_pointer_rtx, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @GEN_INT(i32 %83)
  %85 = load i64, i64* @stack_pointer_rtx, align 8
  %86 = load i32, i32* @OPTAB_LIB_WIDEN, align 4
  %87 = call i64 @expand_simple_binop(i32 %80, i64 %81, i64 %82, i32 %84, i64 %85, i32 0, i32 %86)
  store i64 %87, i64* %7, align 8
  %88 = load i64, i64* %7, align 8
  %89 = load i64, i64* @stack_pointer_rtx, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %79
  %92 = load i64, i64* @stack_pointer_rtx, align 8
  %93 = load i64, i64* %7, align 8
  %94 = call i32 @emit_move_insn(i64 %92, i64 %93)
  br label %95

95:                                               ; preds = %91, %79
  %96 = load i32, i32* %5, align 4
  switch i32 %96, label %104 [
    i32 129, label %97
    i32 130, label %97
    i32 128, label %97
    i32 132, label %99
    i32 133, label %99
    i32 131, label %99
  ]

97:                                               ; preds = %95, %95, %95
  %98 = load i64, i64* @stack_pointer_rtx, align 8
  store i64 %98, i64* %7, align 8
  br label %106

99:                                               ; preds = %95, %95, %95
  %100 = load i64, i64* @stack_pointer_rtx, align 8
  %101 = load i32, i32* %6, align 4
  %102 = sub nsw i32 0, %101
  %103 = call i64 @plus_constant(i64 %100, i32 %102)
  store i64 %103, i64* %7, align 8
  br label %106

104:                                              ; preds = %95
  %105 = call i32 (...) @gcc_unreachable()
  br label %106

106:                                              ; preds = %104, %99, %97
  %107 = load i64, i64* %4, align 8
  %108 = load i64, i64* %7, align 8
  %109 = call i64 @replace_equiv_address(i64 %107, i64 %108)
  ret i64 %109
}

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @INTVAL(i64) #1

declare dso_local i64 @expand_simple_binop(i32, i64, i64, i32, i64, i32, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @emit_move_insn(i64, i64) #1

declare dso_local i64 @plus_constant(i64, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i64 @replace_equiv_address(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
