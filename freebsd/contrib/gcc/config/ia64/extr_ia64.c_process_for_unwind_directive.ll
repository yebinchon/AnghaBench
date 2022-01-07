; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_process_for_unwind_directive.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_process_for_unwind_directive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@flag_unwind_tables = common dso_local global i64 0, align 8
@flag_exceptions = common dso_local global i64 0, align 8
@USING_SJLJ_EXCEPTIONS = common dso_local global i32 0, align 4
@NOTE = common dso_local global i32 0, align 4
@NOTE_INSN_BASIC_BLOCK = common dso_local global i64 0, align 8
@EXIT_BLOCK_PTR = common dso_local global i64 0, align 8
@last_block = common dso_local global i32 0, align 4
@need_copy_state = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"\09.body\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"\09.copy_state %d\0A\00", align 1
@cfun = common dso_local global %struct.TYPE_5__* null, align 8
@IA64_CHANGE_CFA_IN_EPILOGUE = common dso_local global i64 0, align 8
@REG_FRAME_RELATED_EXPR = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_for_unwind_directive(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load i64, i64* @flag_unwind_tables, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %2
  %14 = load i64, i64* @flag_exceptions, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i32, i32* @USING_SJLJ_EXCEPTIONS, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %16, %13
  %21 = phi i1 [ false, %13 ], [ %19, %16 ]
  br label %22

22:                                               ; preds = %20, %2
  %23 = phi i1 [ true, %2 ], [ %21, %20 ]
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %5, align 4
  %25 = call i32 (...) @dwarf2out_do_frame()
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %137

31:                                               ; preds = %28, %22
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @GET_CODE(i64 %32)
  %34 = load i32, i32* @NOTE, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %75

36:                                               ; preds = %31
  %37 = load i64, i64* %4, align 8
  %38 = call i64 @NOTE_LINE_NUMBER(i64 %37)
  %39 = load i64, i64* @NOTE_INSN_BASIC_BLOCK, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %75

41:                                               ; preds = %36
  %42 = load i64, i64* %4, align 8
  %43 = call %struct.TYPE_6__* @NOTE_BASIC_BLOCK(i64 %42)
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @EXIT_BLOCK_PTR, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  store i32 %48, i32* @last_block, align 4
  %49 = load i32, i32* @need_copy_state, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %74

51:                                               ; preds = %41
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %51
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 (i32*, i8*, ...) @fprintf(i32* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %57 = load i32*, i32** %3, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cfun, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i32*, i8*, ...) @fprintf(i32* %57, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %54, %51
  %65 = load i64, i64* @IA64_CHANGE_CFA_IN_EPILOGUE, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i64, i64* %4, align 8
  %72 = call i32 @ia64_dwarf2out_def_steady_cfa(i64 %71)
  br label %73

73:                                               ; preds = %70, %67, %64
  store i32 0, i32* @need_copy_state, align 4
  br label %74

74:                                               ; preds = %73, %41
  br label %75

75:                                               ; preds = %74, %36, %31
  %76 = load i64, i64* %4, align 8
  %77 = call i32 @GET_CODE(i64 %76)
  %78 = load i32, i32* @NOTE, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %84, label %80

80:                                               ; preds = %75
  %81 = load i64, i64* %4, align 8
  %82 = call i32 @RTX_FRAME_RELATED_P(i64 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %80, %75
  br label %137

85:                                               ; preds = %80
  %86 = load i64, i64* %4, align 8
  %87 = load i32, i32* @REG_FRAME_RELATED_EXPR, align 4
  %88 = load i32, i32* @NULL_RTX, align 4
  %89 = call i64 @find_reg_note(i64 %86, i32 %87, i32 %88)
  store i64 %89, i64* %7, align 8
  %90 = load i64, i64* %7, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load i64, i64* %7, align 8
  %94 = call i64 @XEXP(i64 %93, i32 0)
  store i64 %94, i64* %7, align 8
  br label %98

95:                                               ; preds = %85
  %96 = load i64, i64* %4, align 8
  %97 = call i64 @PATTERN(i64 %96)
  store i64 %97, i64* %7, align 8
  br label %98

98:                                               ; preds = %95, %92
  %99 = load i64, i64* %7, align 8
  %100 = call i32 @GET_CODE(i64 %99)
  switch i32 %100, label %134 [
    i32 128, label %101
    i32 129, label %108
  ]

101:                                              ; preds = %98
  %102 = load i32*, i32** %3, align 8
  %103 = load i64, i64* %7, align 8
  %104 = load i64, i64* %4, align 8
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @process_set(i32* %102, i64 %103, i64 %104, i32 %105, i32 %106)
  br label %136

108:                                              ; preds = %98
  %109 = load i64, i64* %7, align 8
  %110 = call i32 @XVECLEN(i64 %109, i32 0)
  store i32 %110, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %111

111:                                              ; preds = %130, %108
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %9, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %133

115:                                              ; preds = %111
  %116 = load i64, i64* %7, align 8
  %117 = load i32, i32* %8, align 4
  %118 = call i64 @XVECEXP(i64 %116, i32 0, i32 %117)
  store i64 %118, i64* %10, align 8
  %119 = load i64, i64* %10, align 8
  %120 = call i32 @GET_CODE(i64 %119)
  %121 = icmp eq i32 %120, 128
  br i1 %121, label %122, label %129

122:                                              ; preds = %115
  %123 = load i32*, i32** %3, align 8
  %124 = load i64, i64* %10, align 8
  %125 = load i64, i64* %4, align 8
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @process_set(i32* %123, i64 %124, i64 %125, i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %122, %115
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %8, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %8, align 4
  br label %111

133:                                              ; preds = %111
  br label %136

134:                                              ; preds = %98
  %135 = call i32 (...) @gcc_unreachable()
  br label %136

136:                                              ; preds = %134, %133, %101
  br label %137

137:                                              ; preds = %84, %136, %28
  ret void
}

declare dso_local i32 @dwarf2out_do_frame(...) #1

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i64 @NOTE_LINE_NUMBER(i64) #1

declare dso_local %struct.TYPE_6__* @NOTE_BASIC_BLOCK(i64) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @ia64_dwarf2out_def_steady_cfa(i64) #1

declare dso_local i32 @RTX_FRAME_RELATED_P(i64) #1

declare dso_local i64 @find_reg_note(i64, i32, i32) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @PATTERN(i64) #1

declare dso_local i32 @process_set(i32*, i64, i64, i32, i32) #1

declare dso_local i32 @XVECLEN(i64, i32) #1

declare dso_local i64 @XVECEXP(i64, i32, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
