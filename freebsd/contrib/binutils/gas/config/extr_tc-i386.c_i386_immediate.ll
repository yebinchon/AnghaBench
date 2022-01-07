; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_i386_immediate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_i386_immediate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i32*, i32*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i32, i32*, i32* }
%struct.TYPE_15__ = type { i8* }

@i = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@MAX_IMMEDIATE_OPERANDS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"at most %d immediate operands are allowed\00", align 1
@im_expressions = common dso_local global %struct.TYPE_16__* null, align 8
@this_operand = common dso_local global i64 0, align 8
@input_line_pointer = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"junk `%s' after expression\00", align 1
@O_absent = common dso_local global i64 0, align 8
@O_big = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [56 x i8] c"missing or invalid immediate expression `%s' taken as 0\00", align 1
@O_constant = common dso_local global i64 0, align 8
@Imm64 = common dso_local global i32 0, align 4
@use_rela_relocations = common dso_local global i32 0, align 4
@intel_syntax = common dso_local global i32 0, align 4
@O_register = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"illegal immediate register operand %s\00", align 1
@Imm8 = common dso_local global i32 0, align 4
@Imm16 = common dso_local global i32 0, align 4
@Imm32 = common dso_local global i32 0, align 4
@Imm32S = common dso_local global i32 0, align 4
@OUTPUT_FLAVOR = common dso_local global i64 0, align 8
@absolute_section = common dso_local global %struct.TYPE_15__* null, align 8
@bfd_target_aout_flavour = common dso_local global i64 0, align 8
@bss_section = common dso_local global %struct.TYPE_15__* null, align 8
@data_section = common dso_local global %struct.TYPE_15__* null, align 8
@text_section = common dso_local global %struct.TYPE_15__* null, align 8
@undefined_section = common dso_local global %struct.TYPE_15__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @i386_immediate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i386_immediate(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %6, align 8
  store i32 -1, i32* %8, align 4
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @i, i32 0, i32 0), align 8
  %10 = load i64, i64* @MAX_IMMEDIATE_OPERANDS, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %14 = load i64, i64* @MAX_IMMEDIATE_OPERANDS, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = call i32 @as_bad(i32 %13, i8* %15)
  store i32 0, i32* %2, align 4
  br label %155

17:                                               ; preds = %1
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** @im_expressions, align 8
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @i, i32 0, i32 0), align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @i, i32 0, i32 0), align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i64 %19
  store %struct.TYPE_16__* %21, %struct.TYPE_16__** %7, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @i, i32 0, i32 3), align 8
  %24 = load i64, i64* @this_operand, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  store %struct.TYPE_16__* %22, %struct.TYPE_16__** %26, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = load i8, i8* %27, align 1
  %29 = call i64 @is_space_char(i8 signext %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %17
  %32 = load i8*, i8** %3, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %3, align 8
  br label %34

34:                                               ; preds = %31, %17
  %35 = load i8*, i8** @input_line_pointer, align 8
  store i8* %35, i8** %4, align 8
  %36 = load i8*, i8** %3, align 8
  store i8* %36, i8** @input_line_pointer, align 8
  %37 = load i32*, i32** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @i, i32 0, i32 2), align 8
  %38 = load i64, i64* @this_operand, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = call i8* @lex_got(i32* %39, i32* null, i32* %8)
  store i8* %40, i8** %5, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i8*, i8** %5, align 8
  store i8* %44, i8** @input_line_pointer, align 8
  br label %45

45:                                               ; preds = %43, %34
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %47 = call %struct.TYPE_15__* @expression(%struct.TYPE_16__* %46)
  store %struct.TYPE_15__* %47, %struct.TYPE_15__** %6, align 8
  %48 = call i32 (...) @SKIP_WHITESPACE()
  %49 = load i8*, i8** @input_line_pointer, align 8
  %50 = load i8, i8* %49, align 1
  %51 = icmp ne i8 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i8*, i8** @input_line_pointer, align 8
  %55 = call i32 @as_bad(i32 %53, i8* %54)
  br label %56

56:                                               ; preds = %52, %45
  %57 = load i8*, i8** %4, align 8
  store i8* %57, i8** @input_line_pointer, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i8*, i8** %5, align 8
  %62 = call i32 @free(i8* %61)
  br label %63

63:                                               ; preds = %60, %56
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @O_absent, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %75, label %69

69:                                               ; preds = %63
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @O_big, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %69, %63
  %76 = call i32 @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i8*, i8** %3, align 8
  %78 = call i32 @as_bad(i32 %76, i8* %77)
  %79 = load i64, i64* @O_constant, align 8
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 1
  store i32 0, i32* %83, align 8
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 3
  store i32* null, i32** %85, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 2
  store i32* null, i32** %87, align 8
  br label %154

88:                                               ; preds = %69
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @O_constant, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %118

94:                                               ; preds = %88
  %95 = load i32, i32* @Imm64, align 4
  %96 = load i32*, i32** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @i, i32 0, i32 1), align 8
  %97 = load i64, i64* @this_operand, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %95
  store i32 %100, i32* %98, align 4
  %101 = load i32, i32* @use_rela_relocations, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %117, label %103

103:                                              ; preds = %94
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = and i32 %106, 0
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %103
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = xor i32 %112, -2147483648
  %114 = sub nsw i32 %113, -2147483648
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 8
  br label %117

117:                                              ; preds = %109, %103, %94
  br label %153

118:                                              ; preds = %88
  %119 = load i32, i32* @intel_syntax, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %131, label %121

121:                                              ; preds = %118
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @O_register, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %121
  %128 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %129 = load i8*, i8** %3, align 8
  %130 = call i32 @as_bad(i32 %128, i8* %129)
  store i32 0, i32* %2, align 4
  br label %155

131:                                              ; preds = %121, %118
  %132 = load i32, i32* @Imm8, align 4
  %133 = load i32, i32* @Imm16, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* @Imm32, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @Imm32S, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @Imm64, align 4
  %140 = or i32 %138, %139
  %141 = load i32*, i32** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @i, i32 0, i32 1), align 8
  %142 = load i64, i64* @this_operand, align 8
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, %140
  store i32 %145, i32* %143, align 4
  %146 = load i32, i32* %8, align 4
  %147 = load i32*, i32** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @i, i32 0, i32 1), align 8
  %148 = load i64, i64* @this_operand, align 8
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = and i32 %150, %146
  store i32 %151, i32* %149, align 4
  br label %152

152:                                              ; preds = %131
  br label %153

153:                                              ; preds = %152, %117
  br label %154

154:                                              ; preds = %153, %75
  store i32 1, i32* %2, align 4
  br label %155

155:                                              ; preds = %154, %127, %12
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local i32 @as_bad(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @is_space_char(i8 signext) #1

declare dso_local i8* @lex_got(i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_15__* @expression(%struct.TYPE_16__*) #1

declare dso_local i32 @SKIP_WHITESPACE(...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
