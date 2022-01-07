; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_read.c_s_comm_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_read.c_s_comm_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64, i32 }

@flag_mri = common dso_local global i64 0, align 8
@input_line_pointer = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"expected symbol name\00", align 1
@stdoutput = common dso_local global %struct.TYPE_7__* null, align 8
@O_absent = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"missing size expression\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"size (%ld) out of range, ignored\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"symbol `%s' is already defined\00", align 1
@undefined_section = common dso_local global i32 0, align 4
@zero_address_frag = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"size of \22%s\22 is already %ld; not changing to %ld\00", align 1
@bfd_com_section_ptr = common dso_local global i32 0, align 4
@const_flag = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @s_comm_internal(i32 %0, i32* (i32, i32*, i32)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32* (i32, i32*, i32)*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca %struct.TYPE_6__, align 8
  store i32 %0, i32* %3, align 4
  store i32* (i32, i32*, i32)* %1, i32* (i32, i32*, i32)** %4, align 8
  store i32* null, i32** %10, align 8
  store i8* null, i8** %11, align 8
  store i8 0, i8* %12, align 1
  %14 = load i64, i64* @flag_mri, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i8* @mri_comment_field(i8* %12)
  store i8* %17, i8** %11, align 8
  br label %18

18:                                               ; preds = %16, %2
  %19 = load i8*, i8** @input_line_pointer, align 8
  store i8* %19, i8** %5, align 8
  %20 = call signext i8 (...) @get_symbol_end()
  store i8 %20, i8* %6, align 1
  %21 = load i8*, i8** @input_line_pointer, align 8
  store i8* %21, i8** %7, align 8
  %22 = load i8, i8* %6, align 1
  %23 = load i8*, i8** %7, align 8
  store i8 %22, i8* %23, align 1
  %24 = load i8*, i8** %5, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = icmp eq i8* %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %18
  %28 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %29 = call i32 (i32, ...) @as_bad(i32 %28)
  %30 = call i32 (...) @ignore_rest_of_line()
  br label %156

31:                                               ; preds = %18
  %32 = call i32 (...) @SKIP_WHITESPACE()
  %33 = load i8*, i8** @input_line_pointer, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 44
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i8*, i8** @input_line_pointer, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** @input_line_pointer, align 8
  br label %40

40:                                               ; preds = %37, %31
  %41 = call i32 @get_absolute_expr(%struct.TYPE_6__* %13)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %9, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** @stdoutput, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %47, 1
  %49 = shl i32 2, %48
  %50 = sub nsw i32 %49, 1
  %51 = load i32, i32* %9, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %9, align 4
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @O_absent, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %40
  %58 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %59 = call i32 (i32, ...) @as_bad(i32 %58)
  %60 = call i32 (...) @ignore_rest_of_line()
  br label %156

61:                                               ; preds = %40
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %65, %61
  %70 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = call i32 (i32, ...) @as_warn(i32 %70, i64 %72)
  %74 = call i32 (...) @ignore_rest_of_line()
  br label %156

75:                                               ; preds = %65
  br label %76

76:                                               ; preds = %75
  %77 = load i8*, i8** %7, align 8
  store i8 0, i8* %77, align 1
  %78 = load i8*, i8** %5, align 8
  %79 = call i32* @symbol_find_or_make(i8* %78)
  store i32* %79, i32** %10, align 8
  %80 = load i32*, i32** %10, align 8
  %81 = call i64 @S_IS_DEFINED(i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %76
  %84 = load i32*, i32** %10, align 8
  %85 = call i64 @symbol_equated_p(i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %114

87:                                               ; preds = %83, %76
  %88 = load i32*, i32** %10, align 8
  %89 = call i32 @S_IS_COMMON(i32* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %114, label %91

91:                                               ; preds = %87
  %92 = load i32*, i32** %10, align 8
  %93 = call i32 @S_IS_VOLATILE(i32* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %91
  store i32* null, i32** %10, align 8
  %96 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %97 = load i8*, i8** %5, align 8
  %98 = call i32 (i32, ...) @as_bad(i32 %96, i8* %97)
  %99 = load i8, i8* %6, align 1
  %100 = load i8*, i8** %7, align 8
  store i8 %99, i8* %100, align 1
  %101 = call i32 (...) @ignore_rest_of_line()
  br label %156

102:                                              ; preds = %91
  %103 = load i32*, i32** %10, align 8
  %104 = call i32* @symbol_clone(i32* %103, i32 1)
  store i32* %104, i32** %10, align 8
  %105 = load i32*, i32** %10, align 8
  %106 = load i32, i32* @undefined_section, align 4
  %107 = call i32 @S_SET_SEGMENT(i32* %105, i32 %106)
  %108 = load i32*, i32** %10, align 8
  %109 = call i32 @S_SET_VALUE(i32* %108, i32 0)
  %110 = load i32*, i32** %10, align 8
  %111 = call i32 @symbol_set_frag(i32* %110, i32* @zero_address_frag)
  %112 = load i32*, i32** %10, align 8
  %113 = call i32 @S_CLEAR_VOLATILE(i32* %112)
  br label %114

114:                                              ; preds = %102, %87, %83
  %115 = load i32*, i32** %10, align 8
  %116 = call i32 @S_GET_VALUE(i32* %115)
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %114
  %120 = load i32, i32* %8, align 4
  store i32 %120, i32* %9, align 4
  br label %134

121:                                              ; preds = %114
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* %8, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %125, label %133

125:                                              ; preds = %121
  %126 = call i32 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  %127 = load i8*, i8** %5, align 8
  %128 = load i32, i32* %9, align 4
  %129 = sext i32 %128 to i64
  %130 = load i32, i32* %8, align 4
  %131 = sext i32 %130 to i64
  %132 = call i32 (i32, ...) @as_warn(i32 %126, i8* %127, i64 %129, i64 %131)
  br label %133

133:                                              ; preds = %125, %121
  br label %134

134:                                              ; preds = %133, %119
  %135 = load i8, i8* %6, align 1
  %136 = load i8*, i8** %7, align 8
  store i8 %135, i8* %136, align 1
  %137 = load i32* (i32, i32*, i32)*, i32* (i32, i32*, i32)** %4, align 8
  %138 = icmp ne i32* (i32, i32*, i32)* %137, null
  br i1 %138, label %139, label %145

139:                                              ; preds = %134
  %140 = load i32* (i32, i32*, i32)*, i32* (i32, i32*, i32)** %4, align 8
  %141 = load i32, i32* %3, align 4
  %142 = load i32*, i32** %10, align 8
  %143 = load i32, i32* %9, align 4
  %144 = call i32* %140(i32 %141, i32* %142, i32 %143)
  store i32* %144, i32** %10, align 8
  br label %154

145:                                              ; preds = %134
  %146 = load i32*, i32** %10, align 8
  %147 = load i32, i32* %9, align 4
  %148 = call i32 @S_SET_VALUE(i32* %146, i32 %147)
  %149 = load i32*, i32** %10, align 8
  %150 = call i32 @S_SET_EXTERNAL(i32* %149)
  %151 = load i32*, i32** %10, align 8
  %152 = load i32, i32* @bfd_com_section_ptr, align 4
  %153 = call i32 @S_SET_SEGMENT(i32* %151, i32 %152)
  br label %154

154:                                              ; preds = %145, %139
  %155 = call i32 (...) @demand_empty_rest_of_line()
  br label %156

156:                                              ; preds = %154, %95, %69, %57, %27
  %157 = load i64, i64* @flag_mri, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %156
  %160 = load i8*, i8** %11, align 8
  %161 = load i8, i8* %12, align 1
  %162 = call i32 @mri_comment_end(i8* %160, i8 signext %161)
  br label %163

163:                                              ; preds = %159, %156
  %164 = load i32*, i32** %10, align 8
  ret i32* %164
}

declare dso_local i8* @mri_comment_field(i8*) #1

declare dso_local signext i8 @get_symbol_end(...) #1

declare dso_local i32 @as_bad(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @ignore_rest_of_line(...) #1

declare dso_local i32 @SKIP_WHITESPACE(...) #1

declare dso_local i32 @get_absolute_expr(%struct.TYPE_6__*) #1

declare dso_local i32 @as_warn(i32, ...) #1

declare dso_local i32* @symbol_find_or_make(i8*) #1

declare dso_local i64 @S_IS_DEFINED(i32*) #1

declare dso_local i64 @symbol_equated_p(i32*) #1

declare dso_local i32 @S_IS_COMMON(i32*) #1

declare dso_local i32 @S_IS_VOLATILE(i32*) #1

declare dso_local i32* @symbol_clone(i32*, i32) #1

declare dso_local i32 @S_SET_SEGMENT(i32*, i32) #1

declare dso_local i32 @S_SET_VALUE(i32*, i32) #1

declare dso_local i32 @symbol_set_frag(i32*, i32*) #1

declare dso_local i32 @S_CLEAR_VOLATILE(i32*) #1

declare dso_local i32 @S_GET_VALUE(i32*) #1

declare dso_local i32 @S_SET_EXTERNAL(i32*) #1

declare dso_local i32 @demand_empty_rest_of_line(...) #1

declare dso_local i32 @mri_comment_end(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
