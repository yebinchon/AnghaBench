; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cp-demangle.c_cplus_demangle_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cp-demangle.c_cplus_demangle_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_component = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.d_info = type { i32 }

@cplus_demangle_builtin_types = common dso_local global i32* null, align 8
@DEMANGLE_COMPONENT_VENDOR_TYPE = common dso_local global i32 0, align 4
@DEMANGLE_COMPONENT_TEMPLATE = common dso_local global i32 0, align 4
@DEMANGLE_COMPONENT_SUB_STD = common dso_local global i32 0, align 4
@DEMANGLE_COMPONENT_POINTER = common dso_local global i32 0, align 4
@DEMANGLE_COMPONENT_REFERENCE = common dso_local global i32 0, align 4
@DEMANGLE_COMPONENT_COMPLEX = common dso_local global i32 0, align 4
@DEMANGLE_COMPONENT_IMAGINARY = common dso_local global i32 0, align 4
@DEMANGLE_COMPONENT_VENDOR_TYPE_QUAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %0) #0 {
  %2 = alloca %struct.demangle_component*, align 8
  %3 = alloca %struct.d_info*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.demangle_component*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.demangle_component**, align 8
  %8 = alloca i8, align 1
  store %struct.d_info* %0, %struct.d_info** %3, align 8
  %9 = load %struct.d_info*, %struct.d_info** %3, align 8
  %10 = call signext i8 @d_peek_char(%struct.d_info* %9)
  store i8 %10, i8* %4, align 1
  %11 = load i8, i8* %4, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 114
  br i1 %13, label %22, label %14

14:                                               ; preds = %1
  %15 = load i8, i8* %4, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 86
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load i8, i8* %4, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 75
  br i1 %21, label %22, label %43

22:                                               ; preds = %18, %14, %1
  %23 = load %struct.d_info*, %struct.d_info** %3, align 8
  %24 = call %struct.demangle_component** @d_cv_qualifiers(%struct.d_info* %23, %struct.demangle_component** %5, i32 0)
  store %struct.demangle_component** %24, %struct.demangle_component*** %7, align 8
  %25 = load %struct.demangle_component**, %struct.demangle_component*** %7, align 8
  %26 = icmp eq %struct.demangle_component** %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %209

28:                                               ; preds = %22
  %29 = load %struct.d_info*, %struct.d_info** %3, align 8
  %30 = call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %29)
  %31 = load %struct.demangle_component**, %struct.demangle_component*** %7, align 8
  store %struct.demangle_component* %30, %struct.demangle_component** %31, align 8
  %32 = load %struct.demangle_component**, %struct.demangle_component*** %7, align 8
  %33 = load %struct.demangle_component*, %struct.demangle_component** %32, align 8
  %34 = icmp ne %struct.demangle_component* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load %struct.d_info*, %struct.d_info** %3, align 8
  %37 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %38 = call i32 @d_add_substitution(%struct.d_info* %36, %struct.demangle_component* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35, %28
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %209

41:                                               ; preds = %35
  %42 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  store %struct.demangle_component* %42, %struct.demangle_component** %2, align 8
  br label %209

43:                                               ; preds = %18
  store i32 1, i32* %6, align 4
  %44 = load i8, i8* %4, align 1
  %45 = sext i8 %44 to i32
  switch i32 %45, label %196 [
    i32 97, label %46
    i32 98, label %46
    i32 99, label %46
    i32 100, label %46
    i32 101, label %46
    i32 102, label %46
    i32 103, label %46
    i32 104, label %46
    i32 105, label %46
    i32 106, label %46
    i32 108, label %46
    i32 109, label %46
    i32 110, label %46
    i32 111, label %46
    i32 115, label %46
    i32 116, label %46
    i32 118, label %46
    i32 119, label %46
    i32 120, label %46
    i32 121, label %46
    i32 122, label %46
    i32 117, label %68
    i32 70, label %76
    i32 48, label %79
    i32 49, label %79
    i32 50, label %79
    i32 51, label %79
    i32 52, label %79
    i32 53, label %79
    i32 54, label %79
    i32 55, label %79
    i32 56, label %79
    i32 57, label %79
    i32 78, label %79
    i32 90, label %79
    i32 65, label %82
    i32 77, label %85
    i32 84, label %88
    i32 83, label %109
    i32 80, label %153
    i32 82, label %161
    i32 67, label %169
    i32 71, label %177
    i32 85, label %185
  ]

46:                                               ; preds = %43, %43, %43, %43, %43, %43, %43, %43, %43, %43, %43, %43, %43, %43, %43, %43, %43, %43, %43, %43, %43
  %47 = load %struct.d_info*, %struct.d_info** %3, align 8
  %48 = load i32*, i32** @cplus_demangle_builtin_types, align 8
  %49 = load i8, i8* %4, align 1
  %50 = sext i8 %49 to i32
  %51 = sub nsw i32 %50, 97
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %48, i64 %52
  %54 = call %struct.demangle_component* @d_make_builtin_type(%struct.d_info* %47, i32* %53)
  store %struct.demangle_component* %54, %struct.demangle_component** %5, align 8
  %55 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %56 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.d_info*, %struct.d_info** %3, align 8
  %63 = getelementptr inbounds %struct.d_info, %struct.d_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, %61
  store i32 %65, i32* %63, align 4
  store i32 0, i32* %6, align 4
  %66 = load %struct.d_info*, %struct.d_info** %3, align 8
  %67 = call i32 @d_advance(%struct.d_info* %66, i32 1)
  br label %197

68:                                               ; preds = %43
  %69 = load %struct.d_info*, %struct.d_info** %3, align 8
  %70 = call i32 @d_advance(%struct.d_info* %69, i32 1)
  %71 = load %struct.d_info*, %struct.d_info** %3, align 8
  %72 = load i32, i32* @DEMANGLE_COMPONENT_VENDOR_TYPE, align 4
  %73 = load %struct.d_info*, %struct.d_info** %3, align 8
  %74 = call %struct.demangle_component* @d_source_name(%struct.d_info* %73)
  %75 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %71, i32 %72, %struct.demangle_component* %74, %struct.demangle_component* null)
  store %struct.demangle_component* %75, %struct.demangle_component** %5, align 8
  br label %197

76:                                               ; preds = %43
  %77 = load %struct.d_info*, %struct.d_info** %3, align 8
  %78 = call %struct.demangle_component* @d_function_type(%struct.d_info* %77)
  store %struct.demangle_component* %78, %struct.demangle_component** %5, align 8
  br label %197

79:                                               ; preds = %43, %43, %43, %43, %43, %43, %43, %43, %43, %43, %43, %43
  %80 = load %struct.d_info*, %struct.d_info** %3, align 8
  %81 = call %struct.demangle_component* @d_class_enum_type(%struct.d_info* %80)
  store %struct.demangle_component* %81, %struct.demangle_component** %5, align 8
  br label %197

82:                                               ; preds = %43
  %83 = load %struct.d_info*, %struct.d_info** %3, align 8
  %84 = call %struct.demangle_component* @d_array_type(%struct.d_info* %83)
  store %struct.demangle_component* %84, %struct.demangle_component** %5, align 8
  br label %197

85:                                               ; preds = %43
  %86 = load %struct.d_info*, %struct.d_info** %3, align 8
  %87 = call %struct.demangle_component* @d_pointer_to_member_type(%struct.d_info* %86)
  store %struct.demangle_component* %87, %struct.demangle_component** %5, align 8
  br label %197

88:                                               ; preds = %43
  %89 = load %struct.d_info*, %struct.d_info** %3, align 8
  %90 = call %struct.demangle_component* @d_template_param(%struct.d_info* %89)
  store %struct.demangle_component* %90, %struct.demangle_component** %5, align 8
  %91 = load %struct.d_info*, %struct.d_info** %3, align 8
  %92 = call signext i8 @d_peek_char(%struct.d_info* %91)
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 73
  br i1 %94, label %95, label %108

95:                                               ; preds = %88
  %96 = load %struct.d_info*, %struct.d_info** %3, align 8
  %97 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %98 = call i32 @d_add_substitution(%struct.d_info* %96, %struct.demangle_component* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %95
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %209

101:                                              ; preds = %95
  %102 = load %struct.d_info*, %struct.d_info** %3, align 8
  %103 = load i32, i32* @DEMANGLE_COMPONENT_TEMPLATE, align 4
  %104 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %105 = load %struct.d_info*, %struct.d_info** %3, align 8
  %106 = call %struct.demangle_component* @d_template_args(%struct.d_info* %105)
  %107 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %102, i32 %103, %struct.demangle_component* %104, %struct.demangle_component* %106)
  store %struct.demangle_component* %107, %struct.demangle_component** %5, align 8
  br label %108

108:                                              ; preds = %101, %88
  br label %197

109:                                              ; preds = %43
  %110 = load %struct.d_info*, %struct.d_info** %3, align 8
  %111 = call signext i8 @d_peek_next_char(%struct.d_info* %110)
  store i8 %111, i8* %8, align 1
  %112 = load i8, i8* %8, align 1
  %113 = call i32 @IS_DIGIT(i8 signext %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %123, label %115

115:                                              ; preds = %109
  %116 = load i8, i8* %8, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 95
  br i1 %118, label %123, label %119

119:                                              ; preds = %115
  %120 = load i8, i8* %8, align 1
  %121 = call i32 @IS_UPPER(i8 signext %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %139

123:                                              ; preds = %119, %115, %109
  %124 = load %struct.d_info*, %struct.d_info** %3, align 8
  %125 = call %struct.demangle_component* @d_substitution(%struct.d_info* %124, i32 0)
  store %struct.demangle_component* %125, %struct.demangle_component** %5, align 8
  %126 = load %struct.d_info*, %struct.d_info** %3, align 8
  %127 = call signext i8 @d_peek_char(%struct.d_info* %126)
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 73
  br i1 %129, label %130, label %137

130:                                              ; preds = %123
  %131 = load %struct.d_info*, %struct.d_info** %3, align 8
  %132 = load i32, i32* @DEMANGLE_COMPONENT_TEMPLATE, align 4
  %133 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %134 = load %struct.d_info*, %struct.d_info** %3, align 8
  %135 = call %struct.demangle_component* @d_template_args(%struct.d_info* %134)
  %136 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %131, i32 %132, %struct.demangle_component* %133, %struct.demangle_component* %135)
  store %struct.demangle_component* %136, %struct.demangle_component** %5, align 8
  br label %138

137:                                              ; preds = %123
  store i32 0, i32* %6, align 4
  br label %138

138:                                              ; preds = %137, %130
  br label %152

139:                                              ; preds = %119
  %140 = load %struct.d_info*, %struct.d_info** %3, align 8
  %141 = call %struct.demangle_component* @d_class_enum_type(%struct.d_info* %140)
  store %struct.demangle_component* %141, %struct.demangle_component** %5, align 8
  %142 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %143 = icmp ne %struct.demangle_component* %142, null
  br i1 %143, label %144, label %151

144:                                              ; preds = %139
  %145 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %146 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @DEMANGLE_COMPONENT_SUB_STD, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %144
  store i32 0, i32* %6, align 4
  br label %151

151:                                              ; preds = %150, %144, %139
  br label %152

152:                                              ; preds = %151, %138
  br label %197

153:                                              ; preds = %43
  %154 = load %struct.d_info*, %struct.d_info** %3, align 8
  %155 = call i32 @d_advance(%struct.d_info* %154, i32 1)
  %156 = load %struct.d_info*, %struct.d_info** %3, align 8
  %157 = load i32, i32* @DEMANGLE_COMPONENT_POINTER, align 4
  %158 = load %struct.d_info*, %struct.d_info** %3, align 8
  %159 = call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %158)
  %160 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %156, i32 %157, %struct.demangle_component* %159, %struct.demangle_component* null)
  store %struct.demangle_component* %160, %struct.demangle_component** %5, align 8
  br label %197

161:                                              ; preds = %43
  %162 = load %struct.d_info*, %struct.d_info** %3, align 8
  %163 = call i32 @d_advance(%struct.d_info* %162, i32 1)
  %164 = load %struct.d_info*, %struct.d_info** %3, align 8
  %165 = load i32, i32* @DEMANGLE_COMPONENT_REFERENCE, align 4
  %166 = load %struct.d_info*, %struct.d_info** %3, align 8
  %167 = call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %166)
  %168 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %164, i32 %165, %struct.demangle_component* %167, %struct.demangle_component* null)
  store %struct.demangle_component* %168, %struct.demangle_component** %5, align 8
  br label %197

169:                                              ; preds = %43
  %170 = load %struct.d_info*, %struct.d_info** %3, align 8
  %171 = call i32 @d_advance(%struct.d_info* %170, i32 1)
  %172 = load %struct.d_info*, %struct.d_info** %3, align 8
  %173 = load i32, i32* @DEMANGLE_COMPONENT_COMPLEX, align 4
  %174 = load %struct.d_info*, %struct.d_info** %3, align 8
  %175 = call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %174)
  %176 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %172, i32 %173, %struct.demangle_component* %175, %struct.demangle_component* null)
  store %struct.demangle_component* %176, %struct.demangle_component** %5, align 8
  br label %197

177:                                              ; preds = %43
  %178 = load %struct.d_info*, %struct.d_info** %3, align 8
  %179 = call i32 @d_advance(%struct.d_info* %178, i32 1)
  %180 = load %struct.d_info*, %struct.d_info** %3, align 8
  %181 = load i32, i32* @DEMANGLE_COMPONENT_IMAGINARY, align 4
  %182 = load %struct.d_info*, %struct.d_info** %3, align 8
  %183 = call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %182)
  %184 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %180, i32 %181, %struct.demangle_component* %183, %struct.demangle_component* null)
  store %struct.demangle_component* %184, %struct.demangle_component** %5, align 8
  br label %197

185:                                              ; preds = %43
  %186 = load %struct.d_info*, %struct.d_info** %3, align 8
  %187 = call i32 @d_advance(%struct.d_info* %186, i32 1)
  %188 = load %struct.d_info*, %struct.d_info** %3, align 8
  %189 = call %struct.demangle_component* @d_source_name(%struct.d_info* %188)
  store %struct.demangle_component* %189, %struct.demangle_component** %5, align 8
  %190 = load %struct.d_info*, %struct.d_info** %3, align 8
  %191 = load i32, i32* @DEMANGLE_COMPONENT_VENDOR_TYPE_QUAL, align 4
  %192 = load %struct.d_info*, %struct.d_info** %3, align 8
  %193 = call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %192)
  %194 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %195 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %190, i32 %191, %struct.demangle_component* %193, %struct.demangle_component* %194)
  store %struct.demangle_component* %195, %struct.demangle_component** %5, align 8
  br label %197

196:                                              ; preds = %43
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %209

197:                                              ; preds = %185, %177, %169, %161, %153, %152, %108, %85, %82, %79, %76, %68, %46
  %198 = load i32, i32* %6, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %207

200:                                              ; preds = %197
  %201 = load %struct.d_info*, %struct.d_info** %3, align 8
  %202 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %203 = call i32 @d_add_substitution(%struct.d_info* %201, %struct.demangle_component* %202)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %206, label %205

205:                                              ; preds = %200
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %209

206:                                              ; preds = %200
  br label %207

207:                                              ; preds = %206, %197
  %208 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  store %struct.demangle_component* %208, %struct.demangle_component** %2, align 8
  br label %209

209:                                              ; preds = %207, %205, %196, %100, %41, %40, %27
  %210 = load %struct.demangle_component*, %struct.demangle_component** %2, align 8
  ret %struct.demangle_component* %210
}

declare dso_local signext i8 @d_peek_char(%struct.d_info*) #1

declare dso_local %struct.demangle_component** @d_cv_qualifiers(%struct.d_info*, %struct.demangle_component**, i32) #1

declare dso_local i32 @d_add_substitution(%struct.d_info*, %struct.demangle_component*) #1

declare dso_local %struct.demangle_component* @d_make_builtin_type(%struct.d_info*, i32*) #1

declare dso_local i32 @d_advance(%struct.d_info*, i32) #1

declare dso_local %struct.demangle_component* @d_make_comp(%struct.d_info*, i32, %struct.demangle_component*, %struct.demangle_component*) #1

declare dso_local %struct.demangle_component* @d_source_name(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @d_function_type(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @d_class_enum_type(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @d_array_type(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @d_pointer_to_member_type(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @d_template_param(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @d_template_args(%struct.d_info*) #1

declare dso_local signext i8 @d_peek_next_char(%struct.d_info*) #1

declare dso_local i32 @IS_DIGIT(i8 signext) #1

declare dso_local i32 @IS_UPPER(i8 signext) #1

declare dso_local %struct.demangle_component* @d_substitution(%struct.d_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
