; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cselib.c_cselib_process_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cselib.c_cselib_process_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@REG_LIBCALL = common dso_local global i32 0, align 4
@cselib_current_insn_in_libcall = common dso_local global i32 0, align 4
@cselib_current_insn = common dso_local global i64 0, align 8
@REG_SETJMP = common dso_local global i32 0, align 4
@ASM_OPERANDS = common dso_local global i64 0, align 8
@REG_RETVAL = common dso_local global i32 0, align 4
@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@call_used_regs = common dso_local global i64* null, align 8
@reg_raw_mode = common dso_local global i32* null, align 8
@callmem = common dso_local global i32 0, align 4
@CLOBBER = common dso_local global i64 0, align 8
@n_useless_values = common dso_local global i64 0, align 8
@MAX_USELESS_VALUES = common dso_local global i64 0, align 8
@cselib_hash_table = common dso_local global %struct.TYPE_7__* null, align 8
@REG_INC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cselib_process_insn(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = load i32, i32* @REG_LIBCALL, align 4
  %7 = call i64 @find_reg_note(i64 %5, i32 %6, i32* null)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 1, i32* @cselib_current_insn_in_libcall, align 4
  br label %10

10:                                               ; preds = %9, %1
  %11 = load i64, i64* %2, align 8
  store i64 %11, i64* @cselib_current_insn, align 8
  %12 = load i64, i64* %2, align 8
  %13 = call i64 @LABEL_P(i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %39, label %15

15:                                               ; preds = %10
  %16 = load i64, i64* %2, align 8
  %17 = call i64 @CALL_P(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load i64, i64* %2, align 8
  %21 = load i32, i32* @REG_SETJMP, align 4
  %22 = call i64 @find_reg_note(i64 %20, i32 %21, i32* null)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %39, label %24

24:                                               ; preds = %19, %15
  %25 = load i64, i64* %2, align 8
  %26 = call i64 @NONJUMP_INSN_P(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %24
  %29 = load i64, i64* %2, align 8
  %30 = call i64 @PATTERN(i64 %29)
  %31 = call i64 @GET_CODE(i64 %30)
  %32 = load i64, i64* @ASM_OPERANDS, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %28
  %35 = load i64, i64* %2, align 8
  %36 = call i64 @PATTERN(i64 %35)
  %37 = call i64 @MEM_VOLATILE_P(i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34, %19, %10
  %40 = load i64, i64* %2, align 8
  %41 = load i32, i32* @REG_RETVAL, align 4
  %42 = call i64 @find_reg_note(i64 %40, i32 %41, i32* null)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 0, i32* @cselib_current_insn_in_libcall, align 4
  br label %45

45:                                               ; preds = %44, %39
  %46 = call i32 (...) @cselib_clear_table()
  br label %164

47:                                               ; preds = %34, %28, %24
  %48 = load i64, i64* %2, align 8
  %49 = call i32 @INSN_P(i64 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %47
  %52 = load i64, i64* %2, align 8
  %53 = load i32, i32* @REG_RETVAL, align 4
  %54 = call i64 @find_reg_note(i64 %52, i32 %53, i32* null)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i32 0, i32* @cselib_current_insn_in_libcall, align 4
  br label %57

57:                                               ; preds = %56, %51
  store i64 0, i64* @cselib_current_insn, align 8
  br label %164

58:                                               ; preds = %47
  %59 = load i64, i64* %2, align 8
  %60 = call i64 @CALL_P(i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %116

62:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %105, %62
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %108

67:                                               ; preds = %63
  %68 = load i64*, i64** @call_used_regs, align 8
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %96, label %74

74:                                               ; preds = %67
  %75 = load i32, i32* %3, align 4
  %76 = call %struct.TYPE_8__* @REG_VALUES(i32 %75)
  %77 = icmp ne %struct.TYPE_8__* %76, null
  br i1 %77, label %78, label %104

78:                                               ; preds = %74
  %79 = load i32, i32* %3, align 4
  %80 = call %struct.TYPE_8__* @REG_VALUES(i32 %79)
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = icmp ne %struct.TYPE_6__* %82, null
  br i1 %83, label %84, label %104

84:                                               ; preds = %78
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* %3, align 4
  %87 = call %struct.TYPE_8__* @REG_VALUES(i32 %86)
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @GET_MODE(i32 %92)
  %94 = call i64 @HARD_REGNO_CALL_PART_CLOBBERED(i32 %85, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %84, %67
  %97 = load i32, i32* %3, align 4
  %98 = load i32*, i32** @reg_raw_mode, align 8
  %99 = load i32, i32* %3, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @cselib_invalidate_regno(i32 %97, i32 %102)
  br label %104

104:                                              ; preds = %96, %84, %78, %74
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %3, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %3, align 4
  br label %63

108:                                              ; preds = %63
  %109 = load i64, i64* %2, align 8
  %110 = call i32 @CONST_OR_PURE_CALL_P(i64 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %108
  %113 = load i32, i32* @callmem, align 4
  %114 = call i32 @cselib_invalidate_mem(i32 %113)
  br label %115

115:                                              ; preds = %112, %108
  br label %116

116:                                              ; preds = %115, %58
  %117 = load i64, i64* %2, align 8
  %118 = call i32 @cselib_record_sets(i64 %117)
  %119 = load i64, i64* %2, align 8
  %120 = call i64 @CALL_P(i64 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %144

122:                                              ; preds = %116
  %123 = load i64, i64* %2, align 8
  %124 = call i64 @CALL_INSN_FUNCTION_USAGE(i64 %123)
  store i64 %124, i64* %4, align 8
  br label %125

125:                                              ; preds = %140, %122
  %126 = load i64, i64* %4, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %143

128:                                              ; preds = %125
  %129 = load i64, i64* %4, align 8
  %130 = call i64 @XEXP(i64 %129, i32 0)
  %131 = call i64 @GET_CODE(i64 %130)
  %132 = load i64, i64* @CLOBBER, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %139

134:                                              ; preds = %128
  %135 = load i64, i64* %4, align 8
  %136 = call i64 @XEXP(i64 %135, i32 0)
  %137 = call i64 @XEXP(i64 %136, i32 0)
  %138 = call i32 @cselib_invalidate_rtx(i64 %137)
  br label %139

139:                                              ; preds = %134, %128
  br label %140

140:                                              ; preds = %139
  %141 = load i64, i64* %4, align 8
  %142 = call i64 @XEXP(i64 %141, i32 1)
  store i64 %142, i64* %4, align 8
  br label %125

143:                                              ; preds = %125
  br label %144

144:                                              ; preds = %143, %116
  %145 = load i64, i64* %2, align 8
  %146 = load i32, i32* @REG_RETVAL, align 4
  %147 = call i64 @find_reg_note(i64 %145, i32 %146, i32* null)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %144
  store i32 0, i32* @cselib_current_insn_in_libcall, align 4
  br label %150

150:                                              ; preds = %149, %144
  store i64 0, i64* @cselib_current_insn, align 8
  %151 = load i64, i64* @n_useless_values, align 8
  %152 = load i64, i64* @MAX_USELESS_VALUES, align 8
  %153 = icmp sgt i64 %151, %152
  br i1 %153, label %154, label %164

154:                                              ; preds = %150
  %155 = load i64, i64* @n_useless_values, align 8
  %156 = trunc i64 %155 to i32
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cselib_hash_table, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = sdiv i32 %159, 4
  %161 = icmp ugt i32 %156, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %154
  %163 = call i32 (...) @remove_useless_values()
  br label %164

164:                                              ; preds = %45, %57, %162, %154, %150
  ret void
}

declare dso_local i64 @find_reg_note(i64, i32, i32*) #1

declare dso_local i64 @LABEL_P(i64) #1

declare dso_local i64 @CALL_P(i64) #1

declare dso_local i64 @NONJUMP_INSN_P(i64) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @PATTERN(i64) #1

declare dso_local i64 @MEM_VOLATILE_P(i64) #1

declare dso_local i32 @cselib_clear_table(...) #1

declare dso_local i32 @INSN_P(i64) #1

declare dso_local %struct.TYPE_8__* @REG_VALUES(i32) #1

declare dso_local i64 @HARD_REGNO_CALL_PART_CLOBBERED(i32, i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @cselib_invalidate_regno(i32, i32) #1

declare dso_local i32 @CONST_OR_PURE_CALL_P(i64) #1

declare dso_local i32 @cselib_invalidate_mem(i32) #1

declare dso_local i32 @cselib_record_sets(i64) #1

declare dso_local i64 @CALL_INSN_FUNCTION_USAGE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @cselib_invalidate_rtx(i64) #1

declare dso_local i32 @remove_useless_values(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
