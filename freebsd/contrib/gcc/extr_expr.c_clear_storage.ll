; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_clear_storage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_clear_storage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BLOCK_OP_NORMAL = common dso_local global i32 0, align 4
@BLOCK_OP_TAILCALL = common dso_local global i32 0, align 4
@BLKmode = common dso_local global i32 0, align 4
@CONST_INT = common dso_local global i64 0, align 8
@const0_rtx = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @clear_storage(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @GET_MODE(i32* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @BLOCK_OP_NORMAL, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @BLOCK_OP_TAILCALL, align 4
  %19 = icmp eq i32 %17, %18
  br label %20

20:                                               ; preds = %16, %3
  %21 = phi i1 [ true, %3 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @gcc_assert(i32 %22)
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @BLKmode, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %66

27:                                               ; preds = %20
  %28 = load i32*, i32** %6, align 8
  %29 = call i64 @GET_CODE(i32* %28)
  %30 = load i64, i64* @CONST_INT, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %66

32:                                               ; preds = %27
  %33 = load i32*, i32** %6, align 8
  %34 = call i64 @INTVAL(i32* %33)
  %35 = load i32, i32* %8, align 4
  %36 = call i64 @GET_MODE_SIZE(i32 %35)
  %37 = icmp eq i64 %34, %36
  br i1 %37, label %38, label %66

38:                                               ; preds = %32
  %39 = load i32, i32* %8, align 4
  %40 = call i32* @CONST0_RTX(i32 %39)
  store i32* %40, i32** %10, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32*, i32** %5, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = call i32 @emit_move_insn(i32* %44, i32* %45)
  store i32* null, i32** %4, align 8
  br label %108

47:                                               ; preds = %38
  %48 = load i32, i32* %8, align 4
  %49 = call i64 @COMPLEX_MODE_P(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %47
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @GET_MODE_INNER(i32 %52)
  %54 = call i32* @CONST0_RTX(i32 %53)
  store i32* %54, i32** %10, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = load i32*, i32** %5, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = call i32 @write_complex_part(i32* %58, i32* %59, i32 0)
  %61 = load i32*, i32** %5, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = call i32 @write_complex_part(i32* %61, i32* %62, i32 1)
  store i32* null, i32** %4, align 8
  br label %108

64:                                               ; preds = %51
  br label %65

65:                                               ; preds = %64, %47
  br label %66

66:                                               ; preds = %65, %32, %27, %20
  %67 = load i32*, i32** %6, align 8
  %68 = load i32*, i32** @const0_rtx, align 8
  %69 = icmp eq i32* %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i32* null, i32** %4, align 8
  br label %108

71:                                               ; preds = %66
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @MEM_ALIGN(i32* %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32*, i32** %6, align 8
  %75 = call i64 @GET_CODE(i32* %74)
  %76 = load i64, i64* @CONST_INT, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %71
  %79 = load i32*, i32** %6, align 8
  %80 = call i64 @INTVAL(i32* %79)
  %81 = load i32, i32* %9, align 4
  %82 = call i64 @CLEAR_BY_PIECES_P(i64 %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %78
  %85 = load i32*, i32** %5, align 8
  %86 = load i32*, i32** %6, align 8
  %87 = call i64 @INTVAL(i32* %86)
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @clear_by_pieces(i32* %85, i64 %87, i32 %88)
  br label %107

90:                                               ; preds = %78, %71
  %91 = load i32*, i32** %5, align 8
  %92 = load i32*, i32** %6, align 8
  %93 = load i32*, i32** @const0_rtx, align 8
  %94 = load i32, i32* %9, align 4
  %95 = call i64 @set_storage_via_setmem(i32* %91, i32* %92, i32* %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  br label %106

98:                                               ; preds = %90
  %99 = load i32*, i32** %5, align 8
  %100 = load i32*, i32** %6, align 8
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @BLOCK_OP_TAILCALL, align 4
  %103 = icmp eq i32 %101, %102
  %104 = zext i1 %103 to i32
  %105 = call i32* @clear_storage_via_libcall(i32* %99, i32* %100, i32 %104)
  store i32* %105, i32** %4, align 8
  br label %108

106:                                              ; preds = %97
  br label %107

107:                                              ; preds = %106, %84
  store i32* null, i32** %4, align 8
  br label %108

108:                                              ; preds = %107, %98, %70, %57, %43
  %109 = load i32*, i32** %4, align 8
  ret i32* %109
}

declare dso_local i32 @GET_MODE(i32*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @GET_CODE(i32*) #1

declare dso_local i64 @INTVAL(i32*) #1

declare dso_local i64 @GET_MODE_SIZE(i32) #1

declare dso_local i32* @CONST0_RTX(i32) #1

declare dso_local i32 @emit_move_insn(i32*, i32*) #1

declare dso_local i64 @COMPLEX_MODE_P(i32) #1

declare dso_local i32 @GET_MODE_INNER(i32) #1

declare dso_local i32 @write_complex_part(i32*, i32*, i32) #1

declare dso_local i32 @MEM_ALIGN(i32*) #1

declare dso_local i64 @CLEAR_BY_PIECES_P(i64, i32) #1

declare dso_local i32 @clear_by_pieces(i32*, i64, i32) #1

declare dso_local i64 @set_storage_via_setmem(i32*, i32*, i32*, i32) #1

declare dso_local i32* @clear_storage_via_libcall(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
