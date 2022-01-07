; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_stabs.c_s_stab_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_stabs.c_s_stab_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8* }
%struct.TYPE_6__ = type { i64, i32*, i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@notes = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@input_line_pointer = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c".stab%c: missing comma\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c".stab%c: description field '%x' too big, try a different debug format\00", align 1
@listing = common dso_local global i64 0, align 8
@SEPARATE_STAB_SECTIONS = common dso_local global i64 0, align 8
@now_seg = common dso_local global i32 0, align 4
@now_subseg = common dso_local global i32 0, align 4
@frag_now = common dso_local global i32* null, align 8
@s_stab_generic.cached_sec = internal global i32 0, align 4
@s_stab_generic.cached_secname = internal global i8* null, align 8
@stdoutput = common dso_local global i32 0, align 4
@SEC_READONLY = common dso_local global i32 0, align 4
@SEC_RELOC = common dso_local global i32 0, align 4
@SEC_DEBUGGING = common dso_local global i32 0, align 4
@O_symbol = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*)* @s_stab_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s_stab_generic(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_6__, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 115
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  store i8* null, i8** %9, align 8
  br label %43

26:                                               ; preds = %3
  %27 = call i8* @demand_copy_C_string(i32* %13)
  store i8* %27, i8** %8, align 8
  %28 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @notes, i32 0, i32 0), align 8
  store i8* %28, i8** %9, align 8
  %29 = call i32 (...) @SKIP_WHITESPACE()
  %30 = load i8*, i8** @input_line_pointer, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 44
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i8*, i8** @input_line_pointer, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** @input_line_pointer, align 8
  br label %42

37:                                               ; preds = %26
  %38 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* %4, align 4
  %40 = call i32 (i32, i32, ...) @as_warn(i32 %38, i32 %39)
  %41 = call i32 (...) @ignore_rest_of_line()
  br label %217

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42, %25
  %44 = call signext i8 @get_absolute_expression_and_terminator(i64* %7)
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 44
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* %4, align 4
  %50 = call i32 (i32, i32, ...) @as_warn(i32 %48, i32 %49)
  %51 = call i32 (...) @ignore_rest_of_line()
  br label %217

52:                                               ; preds = %43
  %53 = load i64, i64* %7, align 8
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %10, align 4
  %55 = call signext i8 @get_absolute_expression_and_terminator(i64* %7)
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 44
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* %4, align 4
  %61 = call i32 (i32, i32, ...) @as_warn(i32 %59, i32 %60)
  %62 = call i32 (...) @ignore_rest_of_line()
  br label %217

63:                                               ; preds = %52
  %64 = load i64, i64* %7, align 8
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %11, align 4
  %66 = call i32 (...) @get_absolute_expression()
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp sgt i32 %67, 65535
  br i1 %68, label %72, label %69

69:                                               ; preds = %63
  %70 = load i32, i32* %12, align 4
  %71 = icmp slt i32 %70, -32768
  br i1 %71, label %72, label %77

72:                                               ; preds = %69, %63
  %73 = call i32 @_(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0))
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* %12, align 4
  %76 = call i32 (i32, i32, ...) @as_warn(i32 %73, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %72, %69
  %78 = load i32, i32* %4, align 4
  %79 = icmp eq i32 %78, 115
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %4, align 4
  %82 = icmp eq i32 %81, 110
  br i1 %82, label %83, label %97

83:                                               ; preds = %80, %77
  %84 = load i8*, i8** @input_line_pointer, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 44
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %90 = load i32, i32* %4, align 4
  %91 = call i32 (i32, i32, ...) @as_warn(i32 %89, i32 %90)
  %92 = call i32 (...) @ignore_rest_of_line()
  br label %217

93:                                               ; preds = %83
  %94 = load i8*, i8** @input_line_pointer, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** @input_line_pointer, align 8
  %96 = call i32 (...) @SKIP_WHITESPACE()
  br label %97

97:                                               ; preds = %93, %80
  %98 = load i64, i64* @listing, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %97
  %101 = load i32, i32* %10, align 4
  switch i32 %101, label %108 [
    i32 130, label %102
    i32 129, label %105
    i32 128, label %105
  ]

102:                                              ; preds = %100
  %103 = load i32, i32* %12, align 4
  %104 = call i32 @listing_source_line(i32 %103)
  br label %108

105:                                              ; preds = %100, %100
  %106 = load i8*, i8** %8, align 8
  %107 = call i32 @listing_source_file(i8* %106)
  br label %108

108:                                              ; preds = %100, %105, %102
  br label %109

109:                                              ; preds = %108, %97
  %110 = load i64, i64* @SEPARATE_STAB_SECTIONS, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %213

112:                                              ; preds = %109
  %113 = load i32, i32* @now_seg, align 4
  store i32 %113, i32* %14, align 4
  %114 = load i32, i32* @now_subseg, align 4
  store i32 %114, i32* %15, align 4
  %115 = load i32*, i32** @frag_now, align 8
  store i32* %115, i32** %16, align 8
  %116 = call i32 (...) @frag_now_fix()
  store i32 %116, i32* %17, align 4
  %117 = load i8*, i8** @s_stab_generic.cached_secname, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %128

119:                                              ; preds = %112
  %120 = load i8*, i8** @s_stab_generic.cached_secname, align 8
  %121 = load i8*, i8** %5, align 8
  %122 = call i32 @strcmp(i8* %120, i8* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %119
  %125 = load i32, i32* @s_stab_generic.cached_sec, align 4
  store i32 %125, i32* %18, align 4
  %126 = load i32, i32* %18, align 4
  %127 = call i32 @subseg_set(i32 %126, i32 0)
  br label %140

128:                                              ; preds = %119, %112
  %129 = load i8*, i8** %5, align 8
  %130 = call i32 @subseg_new(i8* %129, i32 0)
  store i32 %130, i32* %18, align 4
  %131 = load i8*, i8** @s_stab_generic.cached_secname, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load i8*, i8** @s_stab_generic.cached_secname, align 8
  %135 = call i32 @free(i8* %134)
  br label %136

136:                                              ; preds = %133, %128
  %137 = load i8*, i8** %5, align 8
  %138 = call i8* @xstrdup(i8* %137)
  store i8* %138, i8** @s_stab_generic.cached_secname, align 8
  %139 = load i32, i32* %18, align 4
  store i32 %139, i32* @s_stab_generic.cached_sec, align 4
  br label %140

140:                                              ; preds = %136, %124
  %141 = load i32, i32* %18, align 4
  %142 = call %struct.TYPE_7__* @seg_info(i32 %141)
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %158, label %146

146:                                              ; preds = %140
  %147 = load i32, i32* @stdoutput, align 4
  %148 = load i32, i32* %18, align 4
  %149 = load i32, i32* @SEC_READONLY, align 4
  %150 = load i32, i32* @SEC_RELOC, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* @SEC_DEBUGGING, align 4
  %153 = or i32 %151, %152
  %154 = call i32 @bfd_set_section_flags(i32 %147, i32 %148, i32 %153)
  %155 = load i32, i32* %18, align 4
  %156 = call %struct.TYPE_7__* @seg_info(i32 %155)
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  store i32 1, i32* %157, align 4
  br label %158

158:                                              ; preds = %146, %140
  %159 = load i8*, i8** %8, align 8
  %160 = load i8*, i8** %6, align 8
  %161 = call i32 @get_stab_string_offset(i8* %159, i8* %160)
  store i32 %161, i32* %19, align 4
  %162 = load i32, i32* %4, align 4
  %163 = icmp eq i32 %162, 115
  br i1 %163, label %164, label %172

164:                                              ; preds = %158
  %165 = load i8*, i8** %9, align 8
  %166 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @notes, i32 0, i32 0), align 8
  %167 = icmp eq i8* %165, %166
  br i1 %167, label %168, label %171

168:                                              ; preds = %164
  %169 = load i8*, i8** %8, align 8
  %170 = call i32 @obstack_free(%struct.TYPE_8__* @notes, i8* %169)
  br label %171

171:                                              ; preds = %168, %164
  br label %172

172:                                              ; preds = %171, %158
  %173 = call i8* @frag_more(i32 8)
  store i8* %173, i8** %20, align 8
  %174 = load i8*, i8** %20, align 8
  %175 = load i32, i32* %19, align 4
  %176 = call i32 @md_number_to_chars(i8* %174, i32 %175, i32 4)
  %177 = load i8*, i8** %20, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 4
  %179 = load i32, i32* %10, align 4
  %180 = call i32 @md_number_to_chars(i8* %178, i32 %179, i32 1)
  %181 = load i8*, i8** %20, align 8
  %182 = getelementptr inbounds i8, i8* %181, i64 5
  %183 = load i32, i32* %11, align 4
  %184 = call i32 @md_number_to_chars(i8* %182, i32 %183, i32 1)
  %185 = load i8*, i8** %20, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 6
  %187 = load i32, i32* %12, align 4
  %188 = call i32 @md_number_to_chars(i8* %186, i32 %187, i32 2)
  %189 = load i32, i32* %4, align 4
  %190 = icmp eq i32 %189, 115
  br i1 %190, label %194, label %191

191:                                              ; preds = %172
  %192 = load i32, i32* %4, align 4
  %193 = icmp eq i32 %192, 110
  br i1 %193, label %194, label %198

194:                                              ; preds = %191, %172
  %195 = call i32 @cons(i32 4)
  %196 = load i8*, i8** @input_line_pointer, align 8
  %197 = getelementptr inbounds i8, i8* %196, i32 -1
  store i8* %197, i8** @input_line_pointer, align 8
  br label %209

198:                                              ; preds = %191
  %199 = load i32, i32* %14, align 4
  %200 = load i32, i32* %17, align 4
  %201 = load i32*, i32** %16, align 8
  %202 = call i32* @symbol_temp_new(i32 %199, i32 %200, i32* %201)
  store i32* %202, i32** %21, align 8
  %203 = load i32, i32* @O_symbol, align 4
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  store i32 %203, i32* %204, align 8
  %205 = load i32*, i32** %21, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  store i32* %205, i32** %206, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i64 0, i64* %207, align 8
  %208 = call i32 @emit_expr(%struct.TYPE_6__* %22, i32 4)
  br label %209

209:                                              ; preds = %198, %194
  %210 = load i32, i32* %14, align 4
  %211 = load i32, i32* %15, align 4
  %212 = call i32 @subseg_set(i32 %210, i32 %211)
  br label %215

213:                                              ; preds = %109
  %214 = call i32 (...) @abort() #3
  unreachable

215:                                              ; preds = %209
  %216 = call i32 (...) @demand_empty_rest_of_line()
  br label %217

217:                                              ; preds = %215, %88, %58, %47, %37
  ret void
}

declare dso_local i8* @demand_copy_C_string(i32*) #1

declare dso_local i32 @SKIP_WHITESPACE(...) #1

declare dso_local i32 @as_warn(i32, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @ignore_rest_of_line(...) #1

declare dso_local signext i8 @get_absolute_expression_and_terminator(i64*) #1

declare dso_local i32 @get_absolute_expression(...) #1

declare dso_local i32 @listing_source_line(i32) #1

declare dso_local i32 @listing_source_file(i8*) #1

declare dso_local i32 @frag_now_fix(...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @subseg_set(i32, i32) #1

declare dso_local i32 @subseg_new(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local %struct.TYPE_7__* @seg_info(i32) #1

declare dso_local i32 @bfd_set_section_flags(i32, i32, i32) #1

declare dso_local i32 @get_stab_string_offset(i8*, i8*) #1

declare dso_local i32 @obstack_free(%struct.TYPE_8__*, i8*) #1

declare dso_local i8* @frag_more(i32) #1

declare dso_local i32 @md_number_to_chars(i8*, i32, i32) #1

declare dso_local i32 @cons(i32) #1

declare dso_local i32* @symbol_temp_new(i32, i32, i32*) #1

declare dso_local i32 @emit_expr(%struct.TYPE_6__*, i32) #1

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
