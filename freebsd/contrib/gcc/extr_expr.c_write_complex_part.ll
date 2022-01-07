; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_write_complex_part.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_write_complex_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONCAT = common dso_local global i64 0, align 8
@BITS_PER_WORD = common dso_local global i32 0, align 4
@FIRST_PSEUDO_REGISTER = common dso_local global i64 0, align 8
@hard_regno_nregs = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i32)* @write_complex_part to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_complex_part(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i64, i64* %4, align 8
  %12 = call i64 @GET_CODE(i64 %11)
  %13 = load i64, i64* @CONCAT, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load i64, i64* %4, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @XEXP(i64 %16, i32 %17)
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @emit_move_insn(i64 %18, i64 %19)
  br label %115

21:                                               ; preds = %3
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @GET_MODE(i64 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @GET_MODE_INNER(i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @GET_MODE_BITSIZE(i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i64, i64* %4, align 8
  %29 = call i64 @MEM_P(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %21
  %32 = load i64, i64* %4, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @GET_MODE_SIZE(i32 %37)
  br label %40

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %36
  %41 = phi i32 [ %38, %36 ], [ 0, %39 ]
  %42 = call i64 @adjust_address_nv(i64 %32, i32 %33, i32 %41)
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @emit_move_insn(i64 %42, i64 %43)
  br label %115

45:                                               ; preds = %21
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @BITS_PER_WORD, align 4
  %48 = icmp uge i32 %46, %47
  br i1 %48, label %70, label %49

49:                                               ; preds = %45
  %50 = load i64, i64* %4, align 8
  %51 = call i64 @REG_P(i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %102

53:                                               ; preds = %49
  %54 = load i64, i64* %4, align 8
  %55 = call i64 @REGNO(i64 %54)
  %56 = load i64, i64* @FIRST_PSEUDO_REGISTER, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %102

58:                                               ; preds = %53
  %59 = load i32**, i32*** @hard_regno_nregs, align 8
  %60 = load i64, i64* %4, align 8
  %61 = call i64 @REGNO(i64 %60)
  %62 = getelementptr inbounds i32*, i32** %59, i64 %61
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = srem i32 %67, 2
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %102

70:                                               ; preds = %58, %45
  %71 = load i32, i32* %8, align 4
  %72 = load i64, i64* %4, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @GET_MODE_SIZE(i32 %77)
  br label %80

79:                                               ; preds = %70
  br label %80

80:                                               ; preds = %79, %76
  %81 = phi i32 [ %78, %76 ], [ 0, %79 ]
  %82 = call i64 @simplify_gen_subreg(i32 %71, i64 %72, i32 %73, i32 %81)
  store i64 %82, i64* %10, align 8
  %83 = load i64, i64* %10, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load i64, i64* %10, align 8
  %87 = load i64, i64* %5, align 8
  %88 = call i32 @emit_move_insn(i64 %86, i64 %87)
  br label %115

89:                                               ; preds = %80
  %90 = load i64, i64* %4, align 8
  %91 = call i64 @MEM_P(i64 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @BITS_PER_WORD, align 4
  %96 = icmp ult i32 %94, %95
  br label %97

97:                                               ; preds = %93, %89
  %98 = phi i1 [ false, %89 ], [ %96, %93 ]
  %99 = zext i1 %98 to i32
  %100 = call i32 @gcc_assert(i32 %99)
  br label %101

101:                                              ; preds = %97
  br label %102

102:                                              ; preds = %101, %58, %53, %49
  %103 = load i64, i64* %4, align 8
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = load i32, i32* %9, align 4
  br label %110

109:                                              ; preds = %102
  br label %110

110:                                              ; preds = %109, %107
  %111 = phi i32 [ %108, %107 ], [ 0, %109 ]
  %112 = load i32, i32* %8, align 4
  %113 = load i64, i64* %5, align 8
  %114 = call i32 @store_bit_field(i64 %103, i32 %104, i32 %111, i32 %112, i64 %113)
  br label %115

115:                                              ; preds = %110, %85, %40, %15
  ret void
}

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i32 @emit_move_insn(i64, i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i32 @GET_MODE_INNER(i32) #1

declare dso_local i32 @GET_MODE_BITSIZE(i32) #1

declare dso_local i64 @MEM_P(i64) #1

declare dso_local i64 @adjust_address_nv(i64, i32, i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i64 @REGNO(i64) #1

declare dso_local i64 @simplify_gen_subreg(i32, i64, i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @store_bit_field(i64, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
