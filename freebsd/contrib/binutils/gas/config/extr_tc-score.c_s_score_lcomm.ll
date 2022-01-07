; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_s_score_lcomm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_s_score_lcomm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@now_seg = common dso_local global i64 0, align 8
@now_subseg = common dso_local global i32 0, align 4
@bss_section = common dso_local global i64 0, align 8
@input_line_pointer = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"expected symbol name\00", align 1
@is_end_of_line = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"missing size expression\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"BSS length (%d) < 0 ignored\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"missing alignment\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"alignment too large; %d assumed\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"alignment negative; 0 assumed\00", align 1
@frag_now = common dso_local global i32 0, align 4
@rs_org = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"symbol `%s' is already defined\00", align 1
@C_EXT = common dso_local global i64 0, align 8
@C_STAT = common dso_local global i32 0, align 4
@OUTPUT_FLAVOR = common dso_local global i64 0, align 8
@SEC_ALLOC = common dso_local global i32 0, align 4
@bfd_target_aout_flavour = common dso_local global i64 0, align 8
@bfd_target_ecoff_flavour = common dso_local global i64 0, align 8
@bfd_target_elf_flavour = common dso_local global i64 0, align 8
@stdoutput = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @s_score_lcomm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s_score_lcomm(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %16 = load i64, i64* @now_seg, align 8
  store i64 %16, i64* %8, align 8
  %17 = load i32, i32* @now_subseg, align 4
  store i32 %17, i32* %9, align 4
  store i32 15, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %18 = load i64, i64* @bss_section, align 8
  store i64 %18, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %19 = load i8*, i8** @input_line_pointer, align 8
  store i8* %19, i8** %3, align 8
  %20 = call signext i8 (...) @get_symbol_end()
  store i8 %20, i8* %4, align 1
  %21 = load i8*, i8** @input_line_pointer, align 8
  store i8* %21, i8** %5, align 8
  %22 = load i8, i8* %4, align 1
  %23 = load i8*, i8** %5, align 8
  store i8 %22, i8* %23, align 1
  %24 = load i8*, i8** %3, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = icmp eq i8* %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %29 = call i32 (i32, ...) @as_bad(i32 %28)
  %30 = call i32 (...) @discard_rest_of_line()
  br label %196

31:                                               ; preds = %1
  %32 = call i32 (...) @SKIP_WHITESPACE()
  %33 = load i8*, i8** @input_line_pointer, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 44
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i8*, i8** @input_line_pointer, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** @input_line_pointer, align 8
  %40 = call i32 (...) @SKIP_WHITESPACE()
  br label %41

41:                                               ; preds = %37, %31
  %42 = load i64*, i64** @is_end_of_line, align 8
  %43 = load i8*, i8** @input_line_pointer, align 8
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i64
  %46 = getelementptr inbounds i64, i64* %42, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %51 = call i32 (i32, ...) @as_bad(i32 %50)
  br label %196

52:                                               ; preds = %41
  %53 = call i32 (...) @get_absolute_expression()
  store i32 %53, i32* %6, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %57 = load i32, i32* %6, align 4
  %58 = call i32 (i32, ...) @as_warn(i32 %56, i32 %57)
  %59 = call i32 (...) @ignore_rest_of_line()
  br label %196

60:                                               ; preds = %52
  %61 = call i32 (...) @SKIP_WHITESPACE()
  %62 = load i8*, i8** @input_line_pointer, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 44
  br i1 %65, label %66, label %83

66:                                               ; preds = %60
  %67 = load i8*, i8** @input_line_pointer, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** @input_line_pointer, align 8
  %69 = call i32 (...) @SKIP_WHITESPACE()
  %70 = load i64*, i64** @is_end_of_line, align 8
  %71 = load i8*, i8** @input_line_pointer, align 8
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i64
  %74 = getelementptr inbounds i64, i64* %70, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %66
  %78 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %79 = call i32 (i32, ...) @as_bad(i32 %78)
  br label %196

80:                                               ; preds = %66
  %81 = call i32 (...) @get_absolute_expression()
  store i32 %81, i32* %11, align 4
  store i32 1, i32* %13, align 4
  br label %82

82:                                               ; preds = %80
  br label %83

83:                                               ; preds = %82, %60
  %84 = load i32, i32* %13, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %97, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @TC_IMPLICIT_LCOMM_ALIGNMENT(i32 %87, i32 %88)
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = load i64, i64* %12, align 8
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @record_alignment(i64 %93, i32 %94)
  br label %96

96:                                               ; preds = %92, %86
  br label %97

97:                                               ; preds = %96, %83
  %98 = load i32, i32* %13, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %138

100:                                              ; preds = %97
  %101 = load i32, i32* %2, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %120

103:                                              ; preds = %100
  %104 = load i32, i32* %11, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %119

106:                                              ; preds = %103
  store i32 0, i32* %14, align 4
  br label %107

107:                                              ; preds = %111, %106
  %108 = load i32, i32* %11, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %107
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %11, align 4
  %113 = ashr i32 %112, 1
  store i32 %113, i32* %11, align 4
  %114 = load i32, i32* %14, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %14, align 4
  br label %107

116:                                              ; preds = %107
  %117 = load i32, i32* %14, align 4
  %118 = sub i32 %117, 1
  store i32 %118, i32* %11, align 4
  br label %119

119:                                              ; preds = %116, %103
  br label %120

120:                                              ; preds = %119, %100
  %121 = load i32, i32* %11, align 4
  %122 = icmp sgt i32 %121, 15
  br i1 %122, label %123, label %127

123:                                              ; preds = %120
  store i32 15, i32* %11, align 4
  %124 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %125 = load i32, i32* %11, align 4
  %126 = call i32 (i32, ...) @as_warn(i32 %124, i32 %125)
  br label %134

127:                                              ; preds = %120
  %128 = load i32, i32* %11, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  store i32 0, i32* %11, align 4
  %131 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %132 = call i32 (i32, ...) @as_warn(i32 %131)
  br label %133

133:                                              ; preds = %130, %127
  br label %134

134:                                              ; preds = %133, %123
  %135 = load i64, i64* %12, align 8
  %136 = load i32, i32* %11, align 4
  %137 = call i32 @record_alignment(i64 %135, i32 %136)
  br label %139

138:                                              ; preds = %97
  br label %139

139:                                              ; preds = %138, %134
  %140 = load i8*, i8** %5, align 8
  store i8 0, i8* %140, align 1
  %141 = load i8*, i8** %3, align 8
  %142 = call i32* @symbol_find_or_make(i8* %141)
  store i32* %142, i32** %7, align 8
  %143 = load i8, i8* %4, align 1
  %144 = load i8*, i8** %5, align 8
  store i8 %143, i8* %144, align 1
  %145 = load i32*, i32** %7, align 8
  %146 = call i64 @S_GET_SEGMENT(i32* %145)
  %147 = load i64, i64* %12, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %157, label %149

149:                                              ; preds = %139
  %150 = load i32*, i32** %7, align 8
  %151 = call i32 @S_IS_DEFINED(i32* %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %186, label %153

153:                                              ; preds = %149
  %154 = load i32*, i32** %7, align 8
  %155 = call i64 @S_GET_VALUE(i32* %154)
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %186

157:                                              ; preds = %153, %139
  %158 = load i64, i64* %12, align 8
  %159 = call i32 @subseg_set(i64 %158, i32 1)
  %160 = load i32, i32* %11, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %157
  %163 = load i32, i32* %11, align 4
  %164 = call i32 @frag_align(i32 %163, i32 0, i32 0)
  br label %165

165:                                              ; preds = %162, %157
  %166 = load i32*, i32** %7, align 8
  %167 = call i64 @S_GET_SEGMENT(i32* %166)
  %168 = load i64, i64* %12, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %174

170:                                              ; preds = %165
  %171 = load i32*, i32** %7, align 8
  %172 = call %struct.TYPE_3__* @symbol_get_frag(i32* %171)
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  store i32* null, i32** %173, align 8
  br label %174

174:                                              ; preds = %170, %165
  %175 = load i32*, i32** %7, align 8
  %176 = load i32, i32* @frag_now, align 4
  %177 = call i32 @symbol_set_frag(i32* %175, i32 %176)
  %178 = load i32, i32* @rs_org, align 4
  %179 = load i32*, i32** %7, align 8
  %180 = load i32, i32* %6, align 4
  %181 = call i8* @frag_var(i32 %178, i32 1, i32 1, i32 0, i32* %179, i32 %180, i32* null)
  store i8* %181, i8** %15, align 8
  %182 = load i8*, i8** %15, align 8
  store i8 0, i8* %182, align 1
  %183 = load i32*, i32** %7, align 8
  %184 = load i64, i64* %12, align 8
  %185 = call i32 @S_SET_SEGMENT(i32* %183, i64 %184)
  br label %191

186:                                              ; preds = %153, %149
  %187 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %188 = load i32*, i32** %7, align 8
  %189 = call i32 @S_GET_NAME(i32* %188)
  %190 = call i32 (i32, ...) @as_bad(i32 %187, i32 %189)
  br label %191

191:                                              ; preds = %186, %174
  %192 = load i64, i64* %8, align 8
  %193 = load i32, i32* %9, align 4
  %194 = call i32 @subseg_set(i64 %192, i32 %193)
  %195 = call i32 (...) @demand_empty_rest_of_line()
  br label %196

196:                                              ; preds = %191, %77, %55, %49, %27
  ret void
}

declare dso_local signext i8 @get_symbol_end(...) #1

declare dso_local i32 @as_bad(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @discard_rest_of_line(...) #1

declare dso_local i32 @SKIP_WHITESPACE(...) #1

declare dso_local i32 @get_absolute_expression(...) #1

declare dso_local i32 @as_warn(i32, ...) #1

declare dso_local i32 @ignore_rest_of_line(...) #1

declare dso_local i32 @TC_IMPLICIT_LCOMM_ALIGNMENT(i32, i32) #1

declare dso_local i32 @record_alignment(i64, i32) #1

declare dso_local i32* @symbol_find_or_make(i8*) #1

declare dso_local i64 @S_GET_SEGMENT(i32*) #1

declare dso_local i32 @S_IS_DEFINED(i32*) #1

declare dso_local i64 @S_GET_VALUE(i32*) #1

declare dso_local i32 @subseg_set(i64, i32) #1

declare dso_local i32 @frag_align(i32, i32, i32) #1

declare dso_local %struct.TYPE_3__* @symbol_get_frag(i32*) #1

declare dso_local i32 @symbol_set_frag(i32*, i32) #1

declare dso_local i8* @frag_var(i32, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @S_SET_SEGMENT(i32*, i64) #1

declare dso_local i32 @S_GET_NAME(i32*) #1

declare dso_local i32 @demand_empty_rest_of_line(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
