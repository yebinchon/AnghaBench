; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arc.c_arc_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arc.c_arc_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_18__*, %struct.TYPE_20__* }
%struct.TYPE_18__ = type { i32 }

@input_line_pointer = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"expected comma after symbol name\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"negative symbol length\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"ignoring attempt to re-define symbol\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"length of symbol \22%s\22 already %ld, ignoring %d\00", align 1
@zero_address_frag = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [34 x i8] c"assuming symbol alignment of zero\00", align 1
@now_seg = common dso_local global i64 0, align 8
@now_subseg = common dso_local global i32 0, align 4
@bss_section = common dso_local global i64 0, align 8
@frag_now = common dso_local global %struct.TYPE_20__* null, align 8
@rs_org = common dso_local global i32 0, align 4
@bfd_com_section_ptr = common dso_local global i64 0, align 8
@BSF_OBJECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @arc_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arc_common(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %12 = load i8*, i8** @input_line_pointer, align 8
  store i8* %12, i8** %3, align 8
  %13 = call signext i8 (...) @get_symbol_end()
  store i8 %13, i8* %4, align 1
  %14 = load i8*, i8** @input_line_pointer, align 8
  store i8* %14, i8** %5, align 8
  %15 = load i8, i8* %4, align 1
  %16 = load i8*, i8** %5, align 8
  store i8 %15, i8* %16, align 1
  %17 = call i32 (...) @SKIP_WHITESPACE()
  %18 = load i8*, i8** @input_line_pointer, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 44
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = call i32 @as_bad(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 (...) @ignore_rest_of_line()
  br label %158

25:                                               ; preds = %1
  %26 = load i8*, i8** @input_line_pointer, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** @input_line_pointer, align 8
  %28 = call i32 (...) @get_absolute_expression()
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = call i32 @as_bad(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %33 = call i32 (...) @ignore_rest_of_line()
  br label %158

34:                                               ; preds = %25
  %35 = load i8*, i8** %5, align 8
  store i8 0, i8* %35, align 1
  %36 = load i8*, i8** %3, align 8
  %37 = call %struct.TYPE_19__* @symbol_find_or_make(i8* %36)
  store %struct.TYPE_19__* %37, %struct.TYPE_19__** %8, align 8
  %38 = load i8, i8* %4, align 1
  %39 = load i8*, i8** %5, align 8
  store i8 %38, i8* %39, align 1
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %41 = call i64 @S_IS_DEFINED(%struct.TYPE_19__* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %34
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %45 = call i32 @S_IS_COMMON(%struct.TYPE_19__* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = call i32 @as_bad(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %49 = call i32 (...) @ignore_rest_of_line()
  br label %158

50:                                               ; preds = %43, %34
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %52 = call i64 @S_GET_VALUE(%struct.TYPE_19__* %51)
  %53 = trunc i64 %52 to i32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %50
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %57 = call i64 @S_GET_VALUE(%struct.TYPE_19__* %56)
  %58 = trunc i64 %57 to i32
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %55
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %63 = call i32 @S_GET_NAME(%struct.TYPE_19__* %62)
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %65 = call i64 @S_GET_VALUE(%struct.TYPE_19__* %64)
  %66 = load i32, i32* %7, align 4
  %67 = call i32 (i8*, ...) @as_warn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %63, i64 %65, i32 %66)
  br label %68

68:                                               ; preds = %61, %55, %50
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %70, align 8
  %72 = icmp eq %struct.TYPE_20__* %71, @zero_address_frag
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load i8*, i8** @input_line_pointer, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 44
  br i1 %78, label %79, label %88

79:                                               ; preds = %68
  %80 = load i8*, i8** @input_line_pointer, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** @input_line_pointer, align 8
  %82 = call i32 (...) @get_absolute_expression()
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  store i32 0, i32* %6, align 4
  %86 = call i32 (i8*, ...) @as_warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %79
  br label %89

88:                                               ; preds = %68
  store i32 0, i32* %6, align 4
  br label %89

89:                                               ; preds = %88, %87
  %90 = load i32, i32* %2, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %137

92:                                               ; preds = %89
  %93 = load i64, i64* @now_seg, align 8
  store i64 %93, i64* %9, align 8
  %94 = load i32, i32* @now_subseg, align 4
  store i32 %94, i32* %10, align 4
  %95 = load i64, i64* @bss_section, align 8
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @record_alignment(i64 %95, i32 %96)
  %98 = load i64, i64* @bss_section, align 8
  %99 = call i32 @subseg_set(i64 %98, i32 0)
  %100 = load i32, i32* %6, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %92
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @frag_align(i32 %103, i32 0, i32 0)
  br label %105

105:                                              ; preds = %102, %92
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %107 = call i64 @S_GET_SEGMENT(%struct.TYPE_19__* %106)
  %108 = load i64, i64* @bss_section, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 0
  store i32* null, i32** %114, align 8
  br label %115

115:                                              ; preds = %110, %105
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** @frag_now, align 8
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 2
  store %struct.TYPE_20__* %116, %struct.TYPE_20__** %118, align 8
  %119 = load i32, i32* @rs_org, align 4
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %121 = load i32, i32* %7, align 4
  %122 = call i8* @frag_var(i32 %119, i32 1, i32 1, i32 0, %struct.TYPE_19__* %120, i32 %121, i8* null)
  store i8* %122, i8** %11, align 8
  %123 = load i8*, i8** %11, align 8
  store i8 0, i8* %123, align 1
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %125 = load i32, i32* %7, align 4
  %126 = call i32 @S_SET_SIZE(%struct.TYPE_19__* %124, i32 %125)
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %128 = load i64, i64* @bss_section, align 8
  %129 = call i32 @S_SET_SEGMENT(%struct.TYPE_19__* %127, i64 %128)
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %131 = call i32 @S_CLEAR_EXTERNAL(%struct.TYPE_19__* %130)
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 0
  store i32 1, i32* %133, align 8
  %134 = load i64, i64* %9, align 8
  %135 = load i32, i32* %10, align 4
  %136 = call i32 @subseg_set(i64 %134, i32 %135)
  br label %149

137:                                              ; preds = %89
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %139 = load i32, i32* %7, align 4
  %140 = call i32 @S_SET_VALUE(%struct.TYPE_19__* %138, i32 %139)
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %142 = load i32, i32* %6, align 4
  %143 = call i32 @S_SET_ALIGN(%struct.TYPE_19__* %141, i32 %142)
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %145 = call i32 @S_SET_EXTERNAL(%struct.TYPE_19__* %144)
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %147 = load i64, i64* @bfd_com_section_ptr, align 8
  %148 = call i32 @S_SET_SEGMENT(%struct.TYPE_19__* %146, i64 %147)
  br label %149

149:                                              ; preds = %137, %115
  %150 = load i32, i32* @BSF_OBJECT, align 4
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = or i32 %155, %150
  store i32 %156, i32* %154, align 4
  %157 = call i32 (...) @demand_empty_rest_of_line()
  br label %158

158:                                              ; preds = %149, %47, %31, %22
  ret void
}

declare dso_local signext i8 @get_symbol_end(...) #1

declare dso_local i32 @SKIP_WHITESPACE(...) #1

declare dso_local i32 @as_bad(i8*) #1

declare dso_local i32 @ignore_rest_of_line(...) #1

declare dso_local i32 @get_absolute_expression(...) #1

declare dso_local %struct.TYPE_19__* @symbol_find_or_make(i8*) #1

declare dso_local i64 @S_IS_DEFINED(%struct.TYPE_19__*) #1

declare dso_local i32 @S_IS_COMMON(%struct.TYPE_19__*) #1

declare dso_local i64 @S_GET_VALUE(%struct.TYPE_19__*) #1

declare dso_local i32 @as_warn(i8*, ...) #1

declare dso_local i32 @S_GET_NAME(%struct.TYPE_19__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @record_alignment(i64, i32) #1

declare dso_local i32 @subseg_set(i64, i32) #1

declare dso_local i32 @frag_align(i32, i32, i32) #1

declare dso_local i64 @S_GET_SEGMENT(%struct.TYPE_19__*) #1

declare dso_local i8* @frag_var(i32, i32, i32, i32, %struct.TYPE_19__*, i32, i8*) #1

declare dso_local i32 @S_SET_SIZE(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @S_SET_SEGMENT(%struct.TYPE_19__*, i64) #1

declare dso_local i32 @S_CLEAR_EXTERNAL(%struct.TYPE_19__*) #1

declare dso_local i32 @S_SET_VALUE(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @S_SET_ALIGN(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @S_SET_EXTERNAL(%struct.TYPE_19__*) #1

declare dso_local i32 @demand_empty_rest_of_line(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
