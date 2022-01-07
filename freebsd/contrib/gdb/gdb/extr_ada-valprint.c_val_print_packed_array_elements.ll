; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-valprint.c_val_print_packed_array_elements.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-valprint.c_val_print_packed_array_elements.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.ui_file = type { i32 }
%struct.value = type { i32 }

@print_max = common dso_local global i32 0, align 4
@prettyprint_arrays = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@HOST_CHAR_BIT = common dso_local global i32 0, align 4
@repeat_count_threshold = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c" <repeats %u times>\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.type*, i8*, i32, %struct.ui_file*, i32, i32, i32)* @val_print_packed_array_elements to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @val_print_packed_array_elements(%struct.type* %0, i8* %1, i32 %2, %struct.ui_file* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.type*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ui_file*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.type*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca %struct.value*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.value*, align 8
  %27 = alloca %struct.value*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.ui_file* %3, %struct.ui_file** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %30 = load %struct.type*, %struct.type** %8, align 8
  %31 = call i64 @TYPE_FIELD_BITSIZE(%struct.type* %30, i32 0)
  store i64 %31, i64* %22, align 8
  %32 = call %struct.value* (...) @value_mark()
  store %struct.value* %32, %struct.value** %23, align 8
  %33 = load %struct.type*, %struct.type** %8, align 8
  %34 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %33)
  store %struct.type* %34, %struct.type** %18, align 8
  %35 = load %struct.type*, %struct.type** %18, align 8
  %36 = call i32 @check_typedef(%struct.type* %35)
  %37 = call i32 @TYPE_LENGTH(i32 %36)
  store i32 %37, i32* %19, align 4
  %38 = load %struct.type*, %struct.type** %8, align 8
  %39 = call i32 @TYPE_FIELD_TYPE(%struct.type* %38, i32 0)
  %40 = call i64 @get_discrete_bounds(i32 %39, i32* %24, i32* %25)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %7
  store i32 1, i32* %17, align 4
  br label %48

43:                                               ; preds = %7
  %44 = load i32, i32* %25, align 4
  %45 = load i32, i32* %24, align 4
  %46 = sub nsw i32 %44, %45
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %17, align 4
  br label %48

48:                                               ; preds = %43, %42
  store i32 0, i32* %15, align 4
  %49 = load i32, i32* %15, align 4
  %50 = load %struct.type*, %struct.type** %18, align 8
  %51 = call i32 @annotate_array_section_begin(i32 %49, %struct.type* %50)
  br label %52

52:                                               ; preds = %215, %48
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* %17, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i32, i32* %16, align 4
  %58 = load i32, i32* @print_max, align 4
  %59 = icmp ult i32 %57, %58
  br label %60

60:                                               ; preds = %56, %52
  %61 = phi i1 [ false, %52 ], [ %59, %56 ]
  br i1 %61, label %62, label %221

62:                                               ; preds = %60
  %63 = load i32, i32* %15, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %62
  %66 = load i64, i64* @prettyprint_arrays, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %65
  %69 = load %struct.ui_file*, %struct.ui_file** %11, align 8
  %70 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %71 = load i32, i32* %13, align 4
  %72 = mul nsw i32 2, %71
  %73 = add nsw i32 2, %72
  %74 = load %struct.ui_file*, %struct.ui_file** %11, align 8
  %75 = call i32 @print_spaces_filtered(i32 %73, %struct.ui_file* %74)
  br label %79

76:                                               ; preds = %65
  %77 = load %struct.ui_file*, %struct.ui_file** %11, align 8
  %78 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %77, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %79

79:                                               ; preds = %76, %68
  br label %80

80:                                               ; preds = %79, %62
  %81 = load i32, i32* %13, align 4
  %82 = mul nsw i32 2, %81
  %83 = add nsw i32 2, %82
  %84 = call i32 @n_spaces(i32 %83)
  %85 = call i32 @wrap_here(i32 %84)
  %86 = load i32, i32* %15, align 4
  store i32 %86, i32* %28, align 4
  %87 = load i8*, i8** %9, align 8
  %88 = load i32, i32* %28, align 4
  %89 = sext i32 %88 to i64
  %90 = load i64, i64* %22, align 8
  %91 = mul i64 %89, %90
  %92 = load i32, i32* @HOST_CHAR_BIT, align 4
  %93 = sext i32 %92 to i64
  %94 = udiv i64 %91, %93
  %95 = trunc i64 %94 to i32
  %96 = load i32, i32* %28, align 4
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* %22, align 8
  %99 = mul i64 %97, %98
  %100 = load i32, i32* @HOST_CHAR_BIT, align 4
  %101 = sext i32 %100 to i64
  %102 = urem i64 %99, %101
  %103 = trunc i64 %102 to i32
  %104 = load i64, i64* %22, align 8
  %105 = load %struct.type*, %struct.type** %18, align 8
  %106 = call %struct.value* @ada_value_primitive_packed_val(i32* null, i8* %87, i32 %95, i32 %103, i64 %104, %struct.type* %105)
  store %struct.value* %106, %struct.value** %26, align 8
  br label %107

107:                                              ; preds = %80, %143
  %108 = load i32, i32* %15, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %15, align 4
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* %17, align 4
  %112 = icmp uge i32 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  br label %144

114:                                              ; preds = %107
  %115 = load i8*, i8** %9, align 8
  %116 = load i32, i32* %15, align 4
  %117 = zext i32 %116 to i64
  %118 = load i64, i64* %22, align 8
  %119 = mul i64 %117, %118
  %120 = load i32, i32* @HOST_CHAR_BIT, align 4
  %121 = sext i32 %120 to i64
  %122 = udiv i64 %119, %121
  %123 = trunc i64 %122 to i32
  %124 = load i32, i32* %15, align 4
  %125 = zext i32 %124 to i64
  %126 = load i64, i64* %22, align 8
  %127 = mul i64 %125, %126
  %128 = load i32, i32* @HOST_CHAR_BIT, align 4
  %129 = sext i32 %128 to i64
  %130 = urem i64 %127, %129
  %131 = trunc i64 %130 to i32
  %132 = load i64, i64* %22, align 8
  %133 = load %struct.type*, %struct.type** %18, align 8
  %134 = call %struct.value* @ada_value_primitive_packed_val(i32* null, i8* %115, i32 %123, i32 %131, i64 %132, %struct.type* %133)
  store %struct.value* %134, %struct.value** %27, align 8
  %135 = load %struct.value*, %struct.value** %26, align 8
  %136 = call i32 @VALUE_CONTENTS(%struct.value* %135)
  %137 = load %struct.value*, %struct.value** %27, align 8
  %138 = call i32 @VALUE_CONTENTS(%struct.value* %137)
  %139 = load i32, i32* %19, align 4
  %140 = call i64 @memcmp(i32 %136, i32 %138, i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %114
  br label %144

143:                                              ; preds = %114
  br label %107

144:                                              ; preds = %142, %113
  %145 = load i32, i32* %15, align 4
  %146 = load i32, i32* %28, align 4
  %147 = sub i32 %145, %146
  %148 = load i32, i32* @repeat_count_threshold, align 4
  %149 = icmp ugt i32 %147, %148
  br i1 %149, label %150, label %170

150:                                              ; preds = %144
  %151 = load %struct.type*, %struct.type** %18, align 8
  %152 = load %struct.value*, %struct.value** %26, align 8
  %153 = call i32 @VALUE_CONTENTS(%struct.value* %152)
  %154 = load %struct.ui_file*, %struct.ui_file** %11, align 8
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* %13, align 4
  %157 = add nsw i32 %156, 1
  %158 = load i32, i32* %14, align 4
  %159 = call i32 @val_print(%struct.type* %151, i32 %153, i32 0, i32 0, %struct.ui_file* %154, i32 %155, i32 0, i32 %157, i32 %158)
  %160 = load i32, i32* %15, align 4
  %161 = load i32, i32* %28, align 4
  %162 = sub i32 %160, %161
  %163 = call i32 @annotate_elt_rep(i32 %162)
  %164 = load %struct.ui_file*, %struct.ui_file** %11, align 8
  %165 = load i32, i32* %15, align 4
  %166 = load i32, i32* %28, align 4
  %167 = sub i32 %165, %166
  %168 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %164, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %167)
  %169 = call i32 (...) @annotate_elt_rep_end()
  br label %215

170:                                              ; preds = %144
  %171 = load i32, i32* %28, align 4
  store i32 %171, i32* %29, align 4
  br label %172

172:                                              ; preds = %211, %170
  %173 = load i32, i32* %29, align 4
  %174 = load i32, i32* %15, align 4
  %175 = icmp ult i32 %173, %174
  br i1 %175, label %176, label %214

176:                                              ; preds = %172
  %177 = load i32, i32* %29, align 4
  %178 = load i32, i32* %28, align 4
  %179 = icmp sgt i32 %177, %178
  br i1 %179, label %180, label %200

180:                                              ; preds = %176
  %181 = load i64, i64* @prettyprint_arrays, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %191

183:                                              ; preds = %180
  %184 = load %struct.ui_file*, %struct.ui_file** %11, align 8
  %185 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %184, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %186 = load i32, i32* %13, align 4
  %187 = mul nsw i32 2, %186
  %188 = add nsw i32 2, %187
  %189 = load %struct.ui_file*, %struct.ui_file** %11, align 8
  %190 = call i32 @print_spaces_filtered(i32 %188, %struct.ui_file* %189)
  br label %194

191:                                              ; preds = %180
  %192 = load %struct.ui_file*, %struct.ui_file** %11, align 8
  %193 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %192, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %194

194:                                              ; preds = %191, %183
  %195 = load i32, i32* %13, align 4
  %196 = mul nsw i32 2, %195
  %197 = add nsw i32 2, %196
  %198 = call i32 @n_spaces(i32 %197)
  %199 = call i32 @wrap_here(i32 %198)
  br label %200

200:                                              ; preds = %194, %176
  %201 = load %struct.type*, %struct.type** %18, align 8
  %202 = load %struct.value*, %struct.value** %26, align 8
  %203 = call i32 @VALUE_CONTENTS(%struct.value* %202)
  %204 = load %struct.ui_file*, %struct.ui_file** %11, align 8
  %205 = load i32, i32* %12, align 4
  %206 = load i32, i32* %13, align 4
  %207 = add nsw i32 %206, 1
  %208 = load i32, i32* %14, align 4
  %209 = call i32 @val_print(%struct.type* %201, i32 %203, i32 0, i32 0, %struct.ui_file* %204, i32 %205, i32 0, i32 %207, i32 %208)
  %210 = call i32 (...) @annotate_elt()
  br label %211

211:                                              ; preds = %200
  %212 = load i32, i32* %29, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %29, align 4
  br label %172

214:                                              ; preds = %172
  br label %215

215:                                              ; preds = %214, %150
  %216 = load i32, i32* %15, align 4
  %217 = load i32, i32* %28, align 4
  %218 = sub i32 %216, %217
  %219 = load i32, i32* %16, align 4
  %220 = add i32 %219, %218
  store i32 %220, i32* %16, align 4
  br label %52

221:                                              ; preds = %60
  %222 = call i32 (...) @annotate_array_section_end()
  %223 = load i32, i32* %15, align 4
  %224 = load i32, i32* %17, align 4
  %225 = icmp ult i32 %223, %224
  br i1 %225, label %226, label %229

226:                                              ; preds = %221
  %227 = load %struct.ui_file*, %struct.ui_file** %11, align 8
  %228 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %227, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %229

229:                                              ; preds = %226, %221
  %230 = load %struct.value*, %struct.value** %23, align 8
  %231 = call i32 @value_free_to_mark(%struct.value* %230)
  ret void
}

declare dso_local i64 @TYPE_FIELD_BITSIZE(%struct.type*, i32) #1

declare dso_local %struct.value* @value_mark(...) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local i32 @TYPE_LENGTH(i32) #1

declare dso_local i32 @check_typedef(%struct.type*) #1

declare dso_local i64 @get_discrete_bounds(i32, i32*, i32*) #1

declare dso_local i32 @TYPE_FIELD_TYPE(%struct.type*, i32) #1

declare dso_local i32 @annotate_array_section_begin(i32, %struct.type*) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, ...) #1

declare dso_local i32 @print_spaces_filtered(i32, %struct.ui_file*) #1

declare dso_local i32 @wrap_here(i32) #1

declare dso_local i32 @n_spaces(i32) #1

declare dso_local %struct.value* @ada_value_primitive_packed_val(i32*, i8*, i32, i32, i64, %struct.type*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @VALUE_CONTENTS(%struct.value*) #1

declare dso_local i32 @val_print(%struct.type*, i32, i32, i32, %struct.ui_file*, i32, i32, i32, i32) #1

declare dso_local i32 @annotate_elt_rep(i32) #1

declare dso_local i32 @annotate_elt_rep_end(...) #1

declare dso_local i32 @annotate_elt(...) #1

declare dso_local i32 @annotate_array_section_end(...) #1

declare dso_local i32 @value_free_to_mark(%struct.value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
