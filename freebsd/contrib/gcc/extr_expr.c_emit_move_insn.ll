; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_emit_move_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_emit_move_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_RTX = common dso_local global i64 0, align 8
@BLKmode = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i64 0, align 8
@optimize = common dso_local global i64 0, align 8
@flag_force_addr = common dso_local global i64 0, align 8
@REG_EQUAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @emit_move_insn(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i64 @GET_MODE(i64 %10)
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %6, align 4
  %13 = load i64, i64* @NULL_RTX, align 8
  store i64 %13, i64* %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @BLKmode, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %2
  %18 = load i64, i64* %5, align 8
  %19 = call i64 @GET_MODE(i64 %18)
  %20 = load i32, i32* %6, align 4
  %21 = zext i32 %20 to i64
  %22 = icmp eq i64 %19, %21
  br i1 %22, label %28, label %23

23:                                               ; preds = %17
  %24 = load i64, i64* %5, align 8
  %25 = call i64 @GET_MODE(i64 %24)
  %26 = load i64, i64* @VOIDmode, align 8
  %27 = icmp eq i64 %25, %26
  br label %28

28:                                               ; preds = %23, %17
  %29 = phi i1 [ true, %17 ], [ %27, %23 ]
  br label %30

30:                                               ; preds = %28, %2
  %31 = phi i1 [ false, %2 ], [ %29, %28 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @gcc_assert(i32 %32)
  %34 = load i64, i64* %5, align 8
  %35 = call i64 @CONSTANT_P(i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %70

37:                                               ; preds = %30
  %38 = load i64, i64* @optimize, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %37
  %41 = load i64, i64* %4, align 8
  %42 = call i64 @GET_MODE(i64 %41)
  %43 = call i64 @SCALAR_FLOAT_MODE_P(i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load i64, i64* %4, align 8
  %47 = load i64, i64* %5, align 8
  %48 = call i64 @compress_float_constant(i64 %46, i64 %47)
  store i64 %48, i64* %8, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i64, i64* %8, align 8
  store i64 %51, i64* %3, align 8
  br label %158

52:                                               ; preds = %45, %40, %37
  %53 = load i64, i64* %5, align 8
  store i64 %53, i64* %7, align 8
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @LEGITIMATE_CONSTANT_P(i64 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %69, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %6, align 4
  %59 = load i64, i64* %5, align 8
  %60 = call i64 @force_const_mem(i32 %58, i64 %59)
  store i64 %60, i64* %5, align 8
  %61 = load i64, i64* %5, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %57
  %64 = load i64, i64* %7, align 8
  store i64 %64, i64* %5, align 8
  br label %68

65:                                               ; preds = %57
  %66 = load i64, i64* %5, align 8
  %67 = call i64 @use_anchored_address(i64 %66)
  store i64 %67, i64* %5, align 8
  br label %68

68:                                               ; preds = %65, %63
  br label %69

69:                                               ; preds = %68, %52
  br label %70

70:                                               ; preds = %69, %30
  %71 = load i64, i64* %4, align 8
  %72 = call i64 @MEM_P(i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %98

74:                                               ; preds = %70
  %75 = load i64, i64* %4, align 8
  %76 = call i64 @GET_MODE(i64 %75)
  %77 = load i64, i64* %4, align 8
  %78 = call i32 @XEXP(i64 %77, i32 0)
  %79 = call i32 @memory_address_p(i64 %76, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %74
  %82 = load i64, i64* %4, align 8
  %83 = load i64, i64* %4, align 8
  %84 = call i64 @GET_MODE(i64 %83)
  %85 = call i32 @push_operand(i64 %82, i64 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %81, %74
  %88 = load i64, i64* @flag_force_addr, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %87
  %91 = load i64, i64* %4, align 8
  %92 = call i32 @XEXP(i64 %91, i32 0)
  %93 = call i64 @CONSTANT_ADDRESS_P(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90, %81
  %96 = load i64, i64* %4, align 8
  %97 = call i64 @validize_mem(i64 %96)
  store i64 %97, i64* %4, align 8
  br label %98

98:                                               ; preds = %95, %90, %87, %70
  %99 = load i64, i64* %5, align 8
  %100 = call i64 @MEM_P(i64 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %120

102:                                              ; preds = %98
  %103 = load i64, i64* %5, align 8
  %104 = call i64 @GET_MODE(i64 %103)
  %105 = load i64, i64* %5, align 8
  %106 = call i32 @XEXP(i64 %105, i32 0)
  %107 = call i32 @memory_address_p(i64 %104, i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %102
  %110 = load i64, i64* @flag_force_addr, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %109
  %113 = load i64, i64* %5, align 8
  %114 = call i32 @XEXP(i64 %113, i32 0)
  %115 = call i64 @CONSTANT_ADDRESS_P(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %112, %102
  %118 = load i64, i64* %5, align 8
  %119 = call i64 @validize_mem(i64 %118)
  store i64 %119, i64* %5, align 8
  br label %120

120:                                              ; preds = %117, %112, %109, %98
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* @BLKmode, align 4
  %123 = icmp ne i32 %121, %122
  %124 = zext i1 %123 to i32
  %125 = call i32 @gcc_assert(i32 %124)
  %126 = load i64, i64* %4, align 8
  %127 = load i64, i64* %5, align 8
  %128 = call i64 @emit_move_insn_1(i64 %126, i64 %127)
  store i64 %128, i64* %8, align 8
  %129 = load i64, i64* %7, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %156

131:                                              ; preds = %120
  %132 = load i64, i64* %4, align 8
  %133 = call i64 @REG_P(i64 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %156

135:                                              ; preds = %131
  %136 = load i64, i64* %8, align 8
  %137 = call i64 @single_set(i64 %136)
  store i64 %137, i64* %9, align 8
  %138 = load i64, i64* @NULL_RTX, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %156

140:                                              ; preds = %135
  %141 = load i64, i64* %9, align 8
  %142 = call i64 @SET_DEST(i64 %141)
  %143 = load i64, i64* %4, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %156

145:                                              ; preds = %140
  %146 = load i64, i64* %7, align 8
  %147 = load i64, i64* %9, align 8
  %148 = call i32 @SET_SRC(i64 %147)
  %149 = call i32 @rtx_equal_p(i64 %146, i32 %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %156, label %151

151:                                              ; preds = %145
  %152 = load i64, i64* %8, align 8
  %153 = load i32, i32* @REG_EQUAL, align 4
  %154 = load i64, i64* %7, align 8
  %155 = call i32 @set_unique_reg_note(i64 %152, i32 %153, i64 %154)
  br label %156

156:                                              ; preds = %151, %145, %140, %135, %131, %120
  %157 = load i64, i64* %8, align 8
  store i64 %157, i64* %3, align 8
  br label %158

158:                                              ; preds = %156, %50
  %159 = load i64, i64* %3, align 8
  ret i64 %159
}

declare dso_local i64 @GET_MODE(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @CONSTANT_P(i64) #1

declare dso_local i64 @SCALAR_FLOAT_MODE_P(i64) #1

declare dso_local i64 @compress_float_constant(i64, i64) #1

declare dso_local i32 @LEGITIMATE_CONSTANT_P(i64) #1

declare dso_local i64 @force_const_mem(i32, i64) #1

declare dso_local i64 @use_anchored_address(i64) #1

declare dso_local i64 @MEM_P(i64) #1

declare dso_local i32 @memory_address_p(i64, i32) #1

declare dso_local i32 @XEXP(i64, i32) #1

declare dso_local i32 @push_operand(i64, i64) #1

declare dso_local i64 @CONSTANT_ADDRESS_P(i32) #1

declare dso_local i64 @validize_mem(i64) #1

declare dso_local i64 @emit_move_insn_1(i64, i64) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i64 @single_set(i64) #1

declare dso_local i64 @SET_DEST(i64) #1

declare dso_local i32 @rtx_equal_p(i64, i32) #1

declare dso_local i32 @SET_SRC(i64) #1

declare dso_local i32 @set_unique_reg_note(i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
