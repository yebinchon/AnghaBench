; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_emit_block_move.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_emit_block_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NO_DEFER_POP = common dso_local global i32 0, align 4
@BLKmode = common dso_local global i32 0, align 4
@CONST_INT = common dso_local global i64 0, align 8
@OK_DEFER_POP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @emit_block_move(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* %9, align 4
  switch i32 %13, label %19 [
    i32 130, label %14
    i32 128, label %14
    i32 131, label %15
    i32 129, label %18
  ]

14:                                               ; preds = %4, %4
  store i32 1, i32* %10, align 4
  br label %21

15:                                               ; preds = %4
  %16 = call i32 (...) @block_move_libcall_safe_for_call_parm()
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* @NO_DEFER_POP, align 4
  br label %21

18:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %21

19:                                               ; preds = %4
  %20 = call i32 (...) @gcc_unreachable()
  br label %21

21:                                               ; preds = %19, %18, %15, %14
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @MEM_ALIGN(i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @MEM_ALIGN(i32 %24)
  %26 = call i32 @MIN(i32 %23, i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @MEM_P(i32 %27)
  %29 = call i32 @gcc_assert(i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @MEM_P(i32 %30)
  %32 = call i32 @gcc_assert(i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @gcc_assert(i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @BLKmode, align 4
  %37 = call i32 @adjust_address(i32 %35, i32 %36, i32 0)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @BLKmode, align 4
  %40 = call i32 @adjust_address(i32 %38, i32 %39, i32 0)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i64 @GET_CODE(i32 %41)
  %43 = load i64, i64* @CONST_INT, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %61

45:                                               ; preds = %21
  %46 = load i32, i32* %8, align 4
  %47 = call i64 @INTVAL(i32 %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %113

50:                                               ; preds = %45
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @shallow_copy_rtx(i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @shallow_copy_rtx(i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @set_mem_size(i32 %55, i32 %56)
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @set_mem_size(i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %50, %21
  %62 = load i32, i32* %8, align 4
  %63 = call i64 @GET_CODE(i32 %62)
  %64 = load i64, i64* @CONST_INT, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %61
  %67 = load i32, i32* %8, align 4
  %68 = call i64 @INTVAL(i32 %67)
  %69 = load i32, i32* %12, align 4
  %70 = call i64 @MOVE_BY_PIECES_P(i64 %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %66
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %8, align 4
  %76 = call i64 @INTVAL(i32 %75)
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @move_by_pieces(i32 %73, i32 %74, i64 %76, i32 %77, i32 0)
  br label %106

79:                                               ; preds = %66, %61
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %12, align 4
  %84 = call i64 @emit_block_move_via_movmem(i32 %80, i32 %81, i32 %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %105

87:                                               ; preds = %79
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %87
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp eq i32 %94, 128
  %96 = zext i1 %95 to i32
  %97 = call i32 @emit_block_move_via_libcall(i32 %91, i32 %92, i32 %93, i32 %96)
  store i32 %97, i32* %11, align 4
  br label %104

98:                                               ; preds = %87
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %12, align 4
  %103 = call i32 @emit_block_move_via_loop(i32 %99, i32 %100, i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %98, %90
  br label %105

105:                                              ; preds = %104, %86
  br label %106

106:                                              ; preds = %105, %72
  %107 = load i32, i32* %9, align 4
  %108 = icmp eq i32 %107, 131
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = load i32, i32* @OK_DEFER_POP, align 4
  br label %111

111:                                              ; preds = %109, %106
  %112 = load i32, i32* %11, align 4
  store i32 %112, i32* %5, align 4
  br label %113

113:                                              ; preds = %111, %49
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i32 @block_move_libcall_safe_for_call_parm(...) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @MEM_ALIGN(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @MEM_P(i32) #1

declare dso_local i32 @adjust_address(i32, i32, i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i64 @INTVAL(i32) #1

declare dso_local i32 @shallow_copy_rtx(i32) #1

declare dso_local i32 @set_mem_size(i32, i32) #1

declare dso_local i64 @MOVE_BY_PIECES_P(i64, i32) #1

declare dso_local i32 @move_by_pieces(i32, i32, i64, i32, i32) #1

declare dso_local i64 @emit_block_move_via_movmem(i32, i32, i32, i32) #1

declare dso_local i32 @emit_block_move_via_libcall(i32, i32, i32, i32) #1

declare dso_local i32 @emit_block_move_via_loop(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
