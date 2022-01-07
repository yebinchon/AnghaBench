; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_dw2gencfi.c_dot_cfi.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_dw2gencfi.c_dot_cfi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, i64, i32 }
%struct.TYPE_4__ = type { i32 }

@frchain_now = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [53 x i8] c"CFI instruction used without previous .cfi_startproc\00", align 1
@frag_now = common dso_local global i64 0, align 8
@input_line_pointer = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @dot_cfi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dot_cfi(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** @frchain_now, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = icmp eq %struct.TYPE_5__* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = call i32 @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @as_bad(i32 %11)
  %13 = call i32 (...) @ignore_rest_of_line()
  br label %144

14:                                               ; preds = %1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @frchain_now, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @symbol_get_frag(i32 %19)
  %21 = load i64, i64* @frag_now, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %32, label %23

23:                                               ; preds = %14
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @frchain_now, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @S_GET_VALUE(i32 %28)
  %30 = call i64 (...) @frag_now_fix()
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %23, %14
  %33 = call i32 (...) @symbol_temp_new_now()
  %34 = call i32 @cfi_add_advance_loc(i32 %33)
  br label %35

35:                                               ; preds = %32, %23
  %36 = load i32, i32* %2, align 4
  switch i32 %36, label %140 [
    i32 134, label %37
    i32 141, label %44
    i32 137, label %57
    i32 133, label %64
    i32 135, label %71
    i32 136, label %75
    i32 142, label %79
    i32 131, label %89
    i32 128, label %104
    i32 129, label %119
    i32 140, label %123
    i32 132, label %127
    i32 130, label %129
    i32 138, label %131
    i32 139, label %133
  ]

37:                                               ; preds = %35
  %38 = call i32 (...) @cfi_parse_reg()
  store i32 %38, i32* %4, align 4
  %39 = call i32 (...) @cfi_parse_separator()
  %40 = call i64 (...) @cfi_parse_const()
  store i64 %40, i64* %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load i64, i64* %3, align 8
  %43 = call i32 @cfi_add_CFA_offset(i32 %41, i64 %42)
  br label %142

44:                                               ; preds = %35
  %45 = call i32 (...) @cfi_parse_reg()
  store i32 %45, i32* %4, align 4
  %46 = call i32 (...) @cfi_parse_separator()
  %47 = call i64 (...) @cfi_parse_const()
  store i64 %47, i64* %3, align 8
  %48 = load i32, i32* %4, align 4
  %49 = load i64, i64* %3, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** @frchain_now, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %49, %54
  %56 = call i32 @cfi_add_CFA_offset(i32 %48, i64 %55)
  br label %142

57:                                               ; preds = %35
  %58 = call i32 (...) @cfi_parse_reg()
  store i32 %58, i32* %4, align 4
  %59 = call i32 (...) @cfi_parse_separator()
  %60 = call i64 (...) @cfi_parse_const()
  store i64 %60, i64* %3, align 8
  %61 = load i32, i32* %4, align 4
  %62 = load i64, i64* %3, align 8
  %63 = call i32 @cfi_add_CFA_def_cfa(i32 %61, i64 %62)
  br label %142

64:                                               ; preds = %35
  %65 = call i32 (...) @cfi_parse_reg()
  store i32 %65, i32* %4, align 4
  %66 = call i32 (...) @cfi_parse_separator()
  %67 = call i32 (...) @cfi_parse_reg()
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @cfi_add_CFA_register(i32 %68, i32 %69)
  br label %142

71:                                               ; preds = %35
  %72 = call i32 (...) @cfi_parse_reg()
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @cfi_add_CFA_def_cfa_register(i32 %73)
  br label %142

75:                                               ; preds = %35
  %76 = call i64 (...) @cfi_parse_const()
  store i64 %76, i64* %3, align 8
  %77 = load i64, i64* %3, align 8
  %78 = call i32 @cfi_add_CFA_def_cfa_offset(i64 %77)
  br label %142

79:                                               ; preds = %35
  %80 = call i64 (...) @cfi_parse_const()
  store i64 %80, i64* %3, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** @frchain_now, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %3, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @cfi_add_CFA_def_cfa_offset(i64 %87)
  br label %142

89:                                               ; preds = %35
  br label %90

90:                                               ; preds = %100, %89
  %91 = call i32 (...) @cfi_parse_reg()
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @cfi_add_CFA_restore(i32 %92)
  %94 = call i32 (...) @SKIP_WHITESPACE()
  %95 = load i8*, i8** @input_line_pointer, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp ne i32 %97, 44
  br i1 %98, label %99, label %100

99:                                               ; preds = %90
  br label %103

100:                                              ; preds = %90
  %101 = load i8*, i8** @input_line_pointer, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** @input_line_pointer, align 8
  br label %90

103:                                              ; preds = %99
  br label %142

104:                                              ; preds = %35
  br label %105

105:                                              ; preds = %115, %104
  %106 = call i32 (...) @cfi_parse_reg()
  store i32 %106, i32* %4, align 4
  %107 = load i32, i32* %4, align 4
  %108 = call i32 @cfi_add_CFA_undefined(i32 %107)
  %109 = call i32 (...) @SKIP_WHITESPACE()
  %110 = load i8*, i8** @input_line_pointer, align 8
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp ne i32 %112, 44
  br i1 %113, label %114, label %115

114:                                              ; preds = %105
  br label %118

115:                                              ; preds = %105
  %116 = load i8*, i8** @input_line_pointer, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** @input_line_pointer, align 8
  br label %105

118:                                              ; preds = %114
  br label %142

119:                                              ; preds = %35
  %120 = call i32 (...) @cfi_parse_reg()
  store i32 %120, i32* %4, align 4
  %121 = load i32, i32* %4, align 4
  %122 = call i32 @cfi_add_CFA_same_value(i32 %121)
  br label %142

123:                                              ; preds = %35
  %124 = call i32 (...) @cfi_parse_reg()
  store i32 %124, i32* %4, align 4
  %125 = load i32, i32* %4, align 4
  %126 = call i32 @cfi_set_return_column(i32 %125)
  br label %142

127:                                              ; preds = %35
  %128 = call i32 (...) @cfi_add_CFA_remember_state()
  br label %142

129:                                              ; preds = %35
  %130 = call i32 (...) @cfi_add_CFA_restore_state()
  br label %142

131:                                              ; preds = %35
  %132 = call i32 @cfi_add_CFA_insn(i32 138)
  br label %142

133:                                              ; preds = %35
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** @frchain_now, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  store i32 1, i32* %139, align 4
  br label %142

140:                                              ; preds = %35
  %141 = call i32 (...) @abort() #3
  unreachable

142:                                              ; preds = %133, %131, %129, %127, %123, %119, %118, %103, %79, %75, %71, %64, %57, %44, %37
  %143 = call i32 (...) @demand_empty_rest_of_line()
  br label %144

144:                                              ; preds = %142, %10
  ret void
}

declare dso_local i32 @as_bad(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @ignore_rest_of_line(...) #1

declare dso_local i64 @symbol_get_frag(i32) #1

declare dso_local i64 @S_GET_VALUE(i32) #1

declare dso_local i64 @frag_now_fix(...) #1

declare dso_local i32 @cfi_add_advance_loc(i32) #1

declare dso_local i32 @symbol_temp_new_now(...) #1

declare dso_local i32 @cfi_parse_reg(...) #1

declare dso_local i32 @cfi_parse_separator(...) #1

declare dso_local i64 @cfi_parse_const(...) #1

declare dso_local i32 @cfi_add_CFA_offset(i32, i64) #1

declare dso_local i32 @cfi_add_CFA_def_cfa(i32, i64) #1

declare dso_local i32 @cfi_add_CFA_register(i32, i32) #1

declare dso_local i32 @cfi_add_CFA_def_cfa_register(i32) #1

declare dso_local i32 @cfi_add_CFA_def_cfa_offset(i64) #1

declare dso_local i32 @cfi_add_CFA_restore(i32) #1

declare dso_local i32 @SKIP_WHITESPACE(...) #1

declare dso_local i32 @cfi_add_CFA_undefined(i32) #1

declare dso_local i32 @cfi_add_CFA_same_value(i32) #1

declare dso_local i32 @cfi_set_return_column(i32) #1

declare dso_local i32 @cfi_add_CFA_remember_state(...) #1

declare dso_local i32 @cfi_add_CFA_restore_state(...) #1

declare dso_local i32 @cfi_add_CFA_insn(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @demand_empty_rest_of_line(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
