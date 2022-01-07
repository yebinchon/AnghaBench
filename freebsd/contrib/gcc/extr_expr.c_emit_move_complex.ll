; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_emit_move_complex.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_emit_move_complex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@MODE_COMPLEX_FLOAT = common dso_local global i64 0, align 8
@mov_optab = common dso_local global %struct.TYPE_4__* null, align 8
@CODE_FOR_nothing = common dso_local global i64 0, align 8
@CONCAT = common dso_local global i64 0, align 8
@STRICT_ALIGNMENT = common dso_local global i32 0, align 4
@BIGGEST_ALIGNMENT = common dso_local global i64 0, align 8
@BLOCK_OP_NO_LIBCALL = common dso_local global i32 0, align 4
@reload_completed = common dso_local global i32 0, align 4
@reload_in_progress = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64, i64)* @emit_move_complex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @emit_move_complex(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @push_operand(i64 %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i64 @emit_move_complex_push(i32 %15, i64 %16, i64 %17)
  store i64 %18, i64* %4, align 8
  br label %143

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @GET_MODE_CLASS(i32 %20)
  %22 = load i64, i64* @MODE_COMPLEX_FLOAT, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %19
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mov_optab, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @GET_MODE_INNER(i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CODE_FOR_nothing, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  store i32 0, i32* %8, align 4
  br label %83

36:                                               ; preds = %24, %19
  %37 = load i64, i64* %6, align 8
  %38 = call i64 @GET_CODE(i64 %37)
  %39 = load i64, i64* @CONCAT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load i64, i64* %7, align 8
  %43 = call i64 @GET_CODE(i64 %42)
  %44 = load i64, i64* @CONCAT, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %41, %36
  store i32 0, i32* %8, align 4
  br label %82

47:                                               ; preds = %41
  %48 = load i64, i64* %6, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i64 @register_operand(i64 %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load i64, i64* %7, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i64 @register_operand(i64 %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  store i32 1, i32* %8, align 4
  br label %81

58:                                               ; preds = %52, %47
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @MEM_P(i64 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i64, i64* %7, align 8
  %64 = call i32 @CONSTANT_P(i64 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %79, label %70

66:                                               ; preds = %58
  %67 = load i64, i64* %7, align 8
  %68 = call i32 @MEM_P(i64 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %66, %62
  %71 = load i32, i32* @STRICT_ALIGNMENT, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load i32, i32* %5, align 4
  %75 = call i64 @get_mode_alignment(i32 %74)
  %76 = load i64, i64* @BIGGEST_ALIGNMENT, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %73, %70
  store i32 1, i32* %8, align 4
  br label %80

79:                                               ; preds = %73, %66, %62
  store i32 0, i32* %8, align 4
  br label %80

80:                                               ; preds = %79, %78
  br label %81

81:                                               ; preds = %80, %57
  br label %82

82:                                               ; preds = %81, %46
  br label %83

83:                                               ; preds = %82, %35
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %113

86:                                               ; preds = %83
  %87 = load i64, i64* %6, align 8
  %88 = call i32 @MEM_P(i64 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %86
  %91 = load i64, i64* %7, align 8
  %92 = call i32 @MEM_P(i64 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %90
  %95 = load i64, i64* %6, align 8
  %96 = load i64, i64* %7, align 8
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @GET_MODE_SIZE(i32 %97)
  %99 = call i32 @GEN_INT(i32 %98)
  %100 = load i32, i32* @BLOCK_OP_NO_LIBCALL, align 4
  %101 = call i32 @emit_block_move(i64 %95, i64 %96, i32 %99, i32 %100)
  %102 = call i64 (...) @get_last_insn()
  store i64 %102, i64* %4, align 8
  br label %143

103:                                              ; preds = %90, %86
  %104 = load i32, i32* %5, align 4
  %105 = load i64, i64* %6, align 8
  %106 = load i64, i64* %7, align 8
  %107 = call i64 @emit_move_via_integer(i32 %104, i64 %105, i64 %106, i32 1)
  store i64 %107, i64* %9, align 8
  %108 = load i64, i64* %9, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %103
  %111 = load i64, i64* %9, align 8
  store i64 %111, i64* %4, align 8
  br label %143

112:                                              ; preds = %103
  br label %113

113:                                              ; preds = %112, %83
  %114 = load i32, i32* @reload_completed, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %133, label %116

116:                                              ; preds = %113
  %117 = load i32, i32* @reload_in_progress, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %133, label %119

119:                                              ; preds = %116
  %120 = load i64, i64* %6, align 8
  %121 = call i64 @REG_P(i64 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %119
  %124 = load i64, i64* %6, align 8
  %125 = load i64, i64* %7, align 8
  %126 = call i32 @reg_overlap_mentioned_p(i64 %124, i64 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %133, label %128

128:                                              ; preds = %123
  %129 = load i32, i32* @VOIDmode, align 4
  %130 = load i64, i64* %6, align 8
  %131 = call i32 @gen_rtx_CLOBBER(i32 %129, i64 %130)
  %132 = call i32 @emit_insn(i32 %131)
  br label %133

133:                                              ; preds = %128, %123, %119, %116, %113
  %134 = load i64, i64* %6, align 8
  %135 = load i64, i64* %7, align 8
  %136 = call i32 @read_complex_part(i64 %135, i32 0)
  %137 = call i32 @write_complex_part(i64 %134, i32 %136, i32 0)
  %138 = load i64, i64* %6, align 8
  %139 = load i64, i64* %7, align 8
  %140 = call i32 @read_complex_part(i64 %139, i32 1)
  %141 = call i32 @write_complex_part(i64 %138, i32 %140, i32 1)
  %142 = call i64 (...) @get_last_insn()
  store i64 %142, i64* %4, align 8
  br label %143

143:                                              ; preds = %133, %110, %94, %14
  %144 = load i64, i64* %4, align 8
  ret i64 %144
}

declare dso_local i64 @push_operand(i64, i32) #1

declare dso_local i64 @emit_move_complex_push(i32, i64, i64) #1

declare dso_local i64 @GET_MODE_CLASS(i32) #1

declare dso_local i64 @GET_MODE_INNER(i32) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @register_operand(i64, i32) #1

declare dso_local i32 @MEM_P(i64) #1

declare dso_local i32 @CONSTANT_P(i64) #1

declare dso_local i64 @get_mode_alignment(i32) #1

declare dso_local i32 @emit_block_move(i64, i64, i32, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i64 @get_last_insn(...) #1

declare dso_local i64 @emit_move_via_integer(i32, i64, i64, i32) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i32 @reg_overlap_mentioned_p(i64, i64) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_rtx_CLOBBER(i32, i64) #1

declare dso_local i32 @write_complex_part(i64, i32, i32) #1

declare dso_local i32 @read_complex_part(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
