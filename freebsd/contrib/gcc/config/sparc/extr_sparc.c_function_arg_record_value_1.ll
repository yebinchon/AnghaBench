; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_function_arg_record_value_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_function_arg_record_value_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.function_arg_record_value_parms = type { i32, i32, i32, i32, i64 }

@FIELD_DECL = common dso_local global i64 0, align 8
@RECORD_TYPE = common dso_local global i64 0, align 8
@VECTOR_TYPE = common dso_local global i64 0, align 8
@TARGET_FPU = common dso_local global i64 0, align 8
@BITS_PER_WORD = common dso_local global i32 0, align 4
@SPARC_INT_ARG_MAX = common dso_local global i32 0, align 4
@BLKmode = common dso_local global i64 0, align 8
@COMPLEX_TYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, %struct.function_arg_record_value_parms*, i32)* @function_arg_record_value_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @function_arg_record_value_1(i64 %0, i32 %1, %struct.function_arg_record_value_parms* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.function_arg_record_value_parms*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.function_arg_record_value_parms* %2, %struct.function_arg_record_value_parms** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %38, label %17

17:                                               ; preds = %4
  %18 = load i64, i64* %5, align 8
  %19 = call i64 @TYPE_FIELDS(i64 %18)
  store i64 %19, i64* %9, align 8
  br label %20

20:                                               ; preds = %34, %17
  %21 = load i64, i64* %9, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %20
  %24 = load i64, i64* %9, align 8
  %25 = call i64 @TREE_CODE(i64 %24)
  %26 = load i64, i64* @FIELD_DECL, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i64, i64* %9, align 8
  %30 = call i64 @DECL_PACKED(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 1, i32* %8, align 4
  br label %37

33:                                               ; preds = %28, %23
  br label %34

34:                                               ; preds = %33
  %35 = load i64, i64* %9, align 8
  %36 = call i64 @TREE_CHAIN(i64 %35)
  store i64 %36, i64* %9, align 8
  br label %20

37:                                               ; preds = %32, %20
  br label %38

38:                                               ; preds = %37, %4
  %39 = load i64, i64* %5, align 8
  %40 = call i64 @TYPE_FIELDS(i64 %39)
  store i64 %40, i64* %9, align 8
  br label %41

41:                                               ; preds = %215, %38
  %42 = load i64, i64* %9, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %218

44:                                               ; preds = %41
  %45 = load i64, i64* %9, align 8
  %46 = call i64 @TREE_CODE(i64 %45)
  %47 = load i64, i64* @FIELD_DECL, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %214

49:                                               ; preds = %44
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %10, align 4
  %51 = load i64, i64* %9, align 8
  %52 = call i64 @DECL_SIZE(i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %73

54:                                               ; preds = %49
  %55 = load i64, i64* %9, align 8
  %56 = call i64 @DECL_SIZE(i64 %55)
  %57 = call i64 @integer_zerop(i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %215

60:                                               ; preds = %54
  %61 = load i64, i64* %9, align 8
  %62 = call i32 @bit_position(i64 %61)
  %63 = call i64 @host_integerp(i32 %62, i32 1)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load i64, i64* %9, align 8
  %67 = call i64 @int_bit_position(i64 %66)
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, %67
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %65, %60
  br label %73

73:                                               ; preds = %72, %49
  %74 = load i64, i64* %9, align 8
  %75 = call i64 @TREE_TYPE(i64 %74)
  %76 = call i64 @TREE_CODE(i64 %75)
  %77 = load i64, i64* @RECORD_TYPE, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %73
  %80 = load i64, i64* %9, align 8
  %81 = call i64 @TREE_TYPE(i64 %80)
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.function_arg_record_value_parms*, %struct.function_arg_record_value_parms** %7, align 8
  %84 = load i32, i32* %8, align 4
  call void @function_arg_record_value_1(i64 %81, i32 %82, %struct.function_arg_record_value_parms* %83, i32 %84)
  br label %213

85:                                               ; preds = %73
  %86 = load i64, i64* %9, align 8
  %87 = call i64 @TREE_TYPE(i64 %86)
  %88 = call i64 @FLOAT_TYPE_P(i64 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %85
  %91 = load i64, i64* %9, align 8
  %92 = call i64 @TREE_TYPE(i64 %91)
  %93 = call i64 @TREE_CODE(i64 %92)
  %94 = load i64, i64* @VECTOR_TYPE, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %202

96:                                               ; preds = %90, %85
  %97 = load i64, i64* @TARGET_FPU, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %202

99:                                               ; preds = %96
  %100 = load %struct.function_arg_record_value_parms*, %struct.function_arg_record_value_parms** %7, align 8
  %101 = getelementptr inbounds %struct.function_arg_record_value_parms, %struct.function_arg_record_value_parms* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %202

104:                                              ; preds = %99
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %202, label %107

107:                                              ; preds = %104
  %108 = load %struct.function_arg_record_value_parms*, %struct.function_arg_record_value_parms** %7, align 8
  %109 = getelementptr inbounds %struct.function_arg_record_value_parms, %struct.function_arg_record_value_parms* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, -1
  br i1 %111, label %112, label %163

112:                                              ; preds = %107
  %113 = load %struct.function_arg_record_value_parms*, %struct.function_arg_record_value_parms** %7, align 8
  %114 = getelementptr inbounds %struct.function_arg_record_value_parms, %struct.function_arg_record_value_parms* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @BITS_PER_WORD, align 4
  %117 = sub nsw i32 0, %116
  %118 = and i32 %115, %117
  store i32 %118, i32* %11, align 4
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* @BITS_PER_WORD, align 4
  %121 = add nsw i32 %119, %120
  %122 = sub nsw i32 %121, 1
  %123 = load i32, i32* @BITS_PER_WORD, align 4
  %124 = sub nsw i32 0, %123
  %125 = and i32 %122, %124
  store i32 %125, i32* %12, align 4
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* %11, align 4
  %128 = sub i32 %126, %127
  %129 = load i32, i32* @BITS_PER_WORD, align 4
  %130 = udiv i32 %128, %129
  store i32 %130, i32* %13, align 4
  %131 = load %struct.function_arg_record_value_parms*, %struct.function_arg_record_value_parms** %7, align 8
  %132 = getelementptr inbounds %struct.function_arg_record_value_parms, %struct.function_arg_record_value_parms* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.function_arg_record_value_parms*, %struct.function_arg_record_value_parms** %7, align 8
  %135 = getelementptr inbounds %struct.function_arg_record_value_parms, %struct.function_arg_record_value_parms* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @BITS_PER_WORD, align 4
  %138 = sdiv i32 %136, %137
  %139 = add nsw i32 %133, %138
  store i32 %139, i32* %14, align 4
  %140 = load i32, i32* %13, align 4
  %141 = icmp sgt i32 %140, 0
  br i1 %141, label %142, label %155

142:                                              ; preds = %112
  %143 = load i32, i32* %13, align 4
  %144 = load i32, i32* @SPARC_INT_ARG_MAX, align 4
  %145 = load i32, i32* %14, align 4
  %146 = sub nsw i32 %144, %145
  %147 = icmp sgt i32 %143, %146
  br i1 %147, label %148, label %155

148:                                              ; preds = %142
  %149 = load i32, i32* @SPARC_INT_ARG_MAX, align 4
  %150 = load i32, i32* %14, align 4
  %151 = sub nsw i32 %149, %150
  %152 = call i32 @MAX(i32 0, i32 %151)
  store i32 %152, i32* %13, align 4
  %153 = load %struct.function_arg_record_value_parms*, %struct.function_arg_record_value_parms** %7, align 8
  %154 = getelementptr inbounds %struct.function_arg_record_value_parms, %struct.function_arg_record_value_parms* %153, i32 0, i32 2
  store i32 1, i32* %154, align 8
  br label %155

155:                                              ; preds = %148, %142, %112
  %156 = load i32, i32* %13, align 4
  %157 = load %struct.function_arg_record_value_parms*, %struct.function_arg_record_value_parms** %7, align 8
  %158 = getelementptr inbounds %struct.function_arg_record_value_parms, %struct.function_arg_record_value_parms* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %159, %156
  store i32 %160, i32* %158, align 4
  %161 = load %struct.function_arg_record_value_parms*, %struct.function_arg_record_value_parms** %7, align 8
  %162 = getelementptr inbounds %struct.function_arg_record_value_parms, %struct.function_arg_record_value_parms* %161, i32 0, i32 0
  store i32 -1, i32* %162, align 8
  br label %163

163:                                              ; preds = %155, %107
  %164 = load i64, i64* %9, align 8
  %165 = call i64 @TREE_TYPE(i64 %164)
  %166 = call i64 @TREE_CODE(i64 %165)
  %167 = load i64, i64* @VECTOR_TYPE, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %184

169:                                              ; preds = %163
  %170 = load i64, i64* %9, align 8
  %171 = call i64 @DECL_MODE(i64 %170)
  %172 = load i64, i64* @BLKmode, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %184

174:                                              ; preds = %169
  %175 = load i64, i64* %9, align 8
  %176 = call i64 @TREE_TYPE(i64 %175)
  %177 = call i64 @TYPE_VECTOR_SUBPARTS(i64 %176)
  %178 = load %struct.function_arg_record_value_parms*, %struct.function_arg_record_value_parms** %7, align 8
  %179 = getelementptr inbounds %struct.function_arg_record_value_parms, %struct.function_arg_record_value_parms* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = sext i32 %180 to i64
  %182 = add nsw i64 %181, %177
  %183 = trunc i64 %182 to i32
  store i32 %183, i32* %179, align 4
  br label %201

184:                                              ; preds = %169, %163
  %185 = load i64, i64* %9, align 8
  %186 = call i64 @TREE_TYPE(i64 %185)
  %187 = call i64 @TREE_CODE(i64 %186)
  %188 = load i64, i64* @COMPLEX_TYPE, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %195

190:                                              ; preds = %184
  %191 = load %struct.function_arg_record_value_parms*, %struct.function_arg_record_value_parms** %7, align 8
  %192 = getelementptr inbounds %struct.function_arg_record_value_parms, %struct.function_arg_record_value_parms* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = add nsw i32 %193, 2
  store i32 %194, i32* %192, align 4
  br label %200

195:                                              ; preds = %184
  %196 = load %struct.function_arg_record_value_parms*, %struct.function_arg_record_value_parms** %7, align 8
  %197 = getelementptr inbounds %struct.function_arg_record_value_parms, %struct.function_arg_record_value_parms* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %197, align 4
  br label %200

200:                                              ; preds = %195, %190
  br label %201

201:                                              ; preds = %200, %174
  br label %212

202:                                              ; preds = %104, %99, %96, %90
  %203 = load %struct.function_arg_record_value_parms*, %struct.function_arg_record_value_parms** %7, align 8
  %204 = getelementptr inbounds %struct.function_arg_record_value_parms, %struct.function_arg_record_value_parms* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = icmp eq i32 %205, -1
  br i1 %206, label %207, label %211

207:                                              ; preds = %202
  %208 = load i32, i32* %10, align 4
  %209 = load %struct.function_arg_record_value_parms*, %struct.function_arg_record_value_parms** %7, align 8
  %210 = getelementptr inbounds %struct.function_arg_record_value_parms, %struct.function_arg_record_value_parms* %209, i32 0, i32 0
  store i32 %208, i32* %210, align 8
  br label %211

211:                                              ; preds = %207, %202
  br label %212

212:                                              ; preds = %211, %201
  br label %213

213:                                              ; preds = %212, %79
  br label %214

214:                                              ; preds = %213, %44
  br label %215

215:                                              ; preds = %214, %59
  %216 = load i64, i64* %9, align 8
  %217 = call i64 @TREE_CHAIN(i64 %216)
  store i64 %217, i64* %9, align 8
  br label %41

218:                                              ; preds = %41
  ret void
}

declare dso_local i64 @TYPE_FIELDS(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @DECL_PACKED(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @DECL_SIZE(i64) #1

declare dso_local i64 @integer_zerop(i64) #1

declare dso_local i64 @host_integerp(i32, i32) #1

declare dso_local i32 @bit_position(i64) #1

declare dso_local i64 @int_bit_position(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @FLOAT_TYPE_P(i64) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i64 @DECL_MODE(i64) #1

declare dso_local i64 @TYPE_VECTOR_SUBPARTS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
