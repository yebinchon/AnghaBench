; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_arg_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_arg_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.mips_arg_info = type { i32, i32, i32, i64, i64 }

@UNITS_PER_WORD = common dso_local global i32 0, align 4
@mips_abi = common dso_local global i32 0, align 4
@MODE_FLOAT = common dso_local global i32 0, align 4
@MODE_VECTOR_FLOAT = common dso_local global i32 0, align 4
@UNITS_PER_FPVALUE = common dso_local global i32 0, align 4
@MODE_COMPLEX_FLOAT = common dso_local global i32 0, align 4
@MAX_ARGS_IN_REGISTERS = common dso_local global i32 0, align 4
@BITS_PER_WORD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i64, i32, %struct.mips_arg_info*)* @mips_arg_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mips_arg_info(%struct.TYPE_3__* %0, i32 %1, i64 %2, i32 %3, %struct.mips_arg_info* %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mips_arg_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.mips_arg_info* %4, %struct.mips_arg_info** %10, align 8
  %15 = load i64, i64* %8, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @int_size_in_bytes(i64 %18)
  br label %23

20:                                               ; preds = %5
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @GET_MODE_SIZE(i32 %21)
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi i32 [ %19, %17 ], [ %22, %20 ]
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* @UNITS_PER_WORD, align 4
  %27 = add i32 %25, %26
  %28 = sub i32 %27, 1
  %29 = load i32, i32* @UNITS_PER_WORD, align 4
  %30 = udiv i32 %28, %29
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* @mips_abi, align 4
  switch i32 %31, label %155 [
    i32 130, label %32
    i32 132, label %52
    i32 128, label %52
    i32 129, label %93
    i32 131, label %93
  ]

32:                                               ; preds = %23
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @GET_MODE_CLASS(i32 %33)
  %35 = load i32, i32* @MODE_FLOAT, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @GET_MODE_CLASS(i32 %38)
  %40 = load i32, i32* @MODE_VECTOR_FLOAT, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %37, %32
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @GET_MODE_SIZE(i32 %43)
  %45 = load i32, i32* @UNITS_PER_FPVALUE, align 4
  %46 = icmp ule i32 %44, %45
  br label %47

47:                                               ; preds = %42, %37
  %48 = phi i1 [ false, %37 ], [ %46, %42 ]
  %49 = zext i1 %48 to i32
  %50 = load %struct.mips_arg_info*, %struct.mips_arg_info** %10, align 8
  %51 = getelementptr inbounds %struct.mips_arg_info, %struct.mips_arg_info* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  br label %157

52:                                               ; preds = %23, %23
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %88, label %57

57:                                               ; preds = %52
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %60, 2
  br i1 %61, label %62, label %88

62:                                               ; preds = %57
  %63 = load i64, i64* %8, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %62
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @SCALAR_FLOAT_TYPE_P(i64 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load i64, i64* %8, align 8
  %71 = call i32 @VECTOR_FLOAT_TYPE_P(i64 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %69, %65, %62
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @GET_MODE_CLASS(i32 %74)
  %76 = load i32, i32* @MODE_FLOAT, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %83, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @GET_MODE_CLASS(i32 %79)
  %81 = load i32, i32* @MODE_VECTOR_FLOAT, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %78, %73
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @GET_MODE_SIZE(i32 %84)
  %86 = load i32, i32* @UNITS_PER_FPVALUE, align 4
  %87 = icmp ule i32 %85, %86
  br label %88

88:                                               ; preds = %83, %78, %69, %57, %52
  %89 = phi i1 [ false, %78 ], [ false, %69 ], [ false, %57 ], [ false, %52 ], [ %87, %83 ]
  %90 = zext i1 %89 to i32
  %91 = load %struct.mips_arg_info*, %struct.mips_arg_info** %10, align 8
  %92 = getelementptr inbounds %struct.mips_arg_info, %struct.mips_arg_info* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  br label %157

93:                                               ; preds = %23, %23
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %123

96:                                               ; preds = %93
  %97 = load i64, i64* %8, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %96
  %100 = load i64, i64* %8, align 8
  %101 = call i32 @FLOAT_TYPE_P(i64 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %123

103:                                              ; preds = %99, %96
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @GET_MODE_CLASS(i32 %104)
  %106 = load i32, i32* @MODE_FLOAT, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %118, label %108

108:                                              ; preds = %103
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @GET_MODE_CLASS(i32 %109)
  %111 = load i32, i32* @MODE_COMPLEX_FLOAT, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %118, label %113

113:                                              ; preds = %108
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @GET_MODE_CLASS(i32 %114)
  %116 = load i32, i32* @MODE_VECTOR_FLOAT, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %113, %108, %103
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @GET_MODE_UNIT_SIZE(i32 %119)
  %121 = load i32, i32* @UNITS_PER_FPVALUE, align 4
  %122 = icmp ule i32 %120, %121
  br label %123

123:                                              ; preds = %118, %113, %99, %93
  %124 = phi i1 [ false, %113 ], [ false, %99 ], [ false, %93 ], [ %122, %118 ]
  %125 = zext i1 %124 to i32
  %126 = load %struct.mips_arg_info*, %struct.mips_arg_info** %10, align 8
  %127 = getelementptr inbounds %struct.mips_arg_info, %struct.mips_arg_info* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  %128 = load %struct.mips_arg_info*, %struct.mips_arg_info** %10, align 8
  %129 = getelementptr inbounds %struct.mips_arg_info, %struct.mips_arg_info* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %154

132:                                              ; preds = %123
  %133 = load i32, i32* %7, align 4
  %134 = call i32 @GET_MODE_CLASS(i32 %133)
  %135 = load i32, i32* @MODE_COMPLEX_FLOAT, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %154

137:                                              ; preds = %132
  %138 = load i32, i32* %7, align 4
  %139 = call i32 @GET_MODE_UNIT_SIZE(i32 %138)
  %140 = load i32, i32* @UNITS_PER_FPVALUE, align 4
  %141 = icmp ult i32 %139, %140
  br i1 %141, label %142, label %154

142:                                              ; preds = %137
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @MAX_ARGS_IN_REGISTERS, align 4
  %147 = sub nsw i32 %146, 1
  %148 = icmp sge i32 %145, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %142
  %150 = load %struct.mips_arg_info*, %struct.mips_arg_info** %10, align 8
  %151 = getelementptr inbounds %struct.mips_arg_info, %struct.mips_arg_info* %150, i32 0, i32 0
  store i32 0, i32* %151, align 8
  br label %153

152:                                              ; preds = %142
  store i32 2, i32* %13, align 4
  br label %153

153:                                              ; preds = %152, %149
  br label %154

154:                                              ; preds = %153, %137, %132, %123
  br label %157

155:                                              ; preds = %23
  %156 = call i32 (...) @gcc_unreachable()
  br label %157

157:                                              ; preds = %155, %154, %88, %47
  %158 = load i32, i32* %7, align 4
  %159 = load i64, i64* %8, align 8
  %160 = call i64 @FUNCTION_ARG_BOUNDARY(i32 %158, i64 %159)
  %161 = load i64, i64* @BITS_PER_WORD, align 8
  %162 = icmp sgt i64 %160, %161
  %163 = zext i1 %162 to i32
  store i32 %163, i32* %11, align 4
  %164 = load i32, i32* @mips_abi, align 4
  %165 = icmp eq i32 %164, 130
  br i1 %165, label %166, label %175

166:                                              ; preds = %157
  %167 = load %struct.mips_arg_info*, %struct.mips_arg_info** %10, align 8
  %168 = getelementptr inbounds %struct.mips_arg_info, %struct.mips_arg_info* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %166
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  br label %179

175:                                              ; preds = %166, %157
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  br label %179

179:                                              ; preds = %175, %171
  %180 = phi i32 [ %174, %171 ], [ %178, %175 ]
  %181 = load %struct.mips_arg_info*, %struct.mips_arg_info** %10, align 8
  %182 = getelementptr inbounds %struct.mips_arg_info, %struct.mips_arg_info* %181, i32 0, i32 1
  store i32 %180, i32* %182, align 4
  %183 = load i32, i32* %11, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %194

185:                                              ; preds = %179
  %186 = load %struct.mips_arg_info*, %struct.mips_arg_info** %10, align 8
  %187 = getelementptr inbounds %struct.mips_arg_info, %struct.mips_arg_info* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = and i32 %188, 1
  %190 = load %struct.mips_arg_info*, %struct.mips_arg_info** %10, align 8
  %191 = getelementptr inbounds %struct.mips_arg_info, %struct.mips_arg_info* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %192, %189
  store i32 %193, i32* %191, align 4
  br label %194

194:                                              ; preds = %185, %179
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.mips_arg_info*, %struct.mips_arg_info** %10, align 8
  %199 = getelementptr inbounds %struct.mips_arg_info, %struct.mips_arg_info* %198, i32 0, i32 2
  store i32 %197, i32* %199, align 8
  %200 = load i32, i32* %11, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %211

202:                                              ; preds = %194
  %203 = load %struct.mips_arg_info*, %struct.mips_arg_info** %10, align 8
  %204 = getelementptr inbounds %struct.mips_arg_info, %struct.mips_arg_info* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = and i32 %205, 1
  %207 = load %struct.mips_arg_info*, %struct.mips_arg_info** %10, align 8
  %208 = getelementptr inbounds %struct.mips_arg_info, %struct.mips_arg_info* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = add nsw i32 %209, %206
  store i32 %210, i32* %208, align 8
  br label %211

211:                                              ; preds = %202, %194
  %212 = load i32, i32* @MAX_ARGS_IN_REGISTERS, align 4
  %213 = load %struct.mips_arg_info*, %struct.mips_arg_info** %10, align 8
  %214 = getelementptr inbounds %struct.mips_arg_info, %struct.mips_arg_info* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = sub nsw i32 %212, %215
  store i32 %216, i32* %14, align 4
  %217 = load i32, i32* %13, align 4
  %218 = load i32, i32* %14, align 4
  %219 = call i64 @MIN(i32 %217, i32 %218)
  %220 = load %struct.mips_arg_info*, %struct.mips_arg_info** %10, align 8
  %221 = getelementptr inbounds %struct.mips_arg_info, %struct.mips_arg_info* %220, i32 0, i32 3
  store i64 %219, i64* %221, align 8
  %222 = load i32, i32* %13, align 4
  %223 = zext i32 %222 to i64
  %224 = load %struct.mips_arg_info*, %struct.mips_arg_info** %10, align 8
  %225 = getelementptr inbounds %struct.mips_arg_info, %struct.mips_arg_info* %224, i32 0, i32 3
  %226 = load i64, i64* %225, align 8
  %227 = sub nsw i64 %223, %226
  %228 = load %struct.mips_arg_info*, %struct.mips_arg_info** %10, align 8
  %229 = getelementptr inbounds %struct.mips_arg_info, %struct.mips_arg_info* %228, i32 0, i32 4
  store i64 %227, i64* %229, align 8
  ret void
}

declare dso_local i32 @int_size_in_bytes(i64) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @GET_MODE_CLASS(i32) #1

declare dso_local i32 @SCALAR_FLOAT_TYPE_P(i64) #1

declare dso_local i32 @VECTOR_FLOAT_TYPE_P(i64) #1

declare dso_local i32 @FLOAT_TYPE_P(i64) #1

declare dso_local i32 @GET_MODE_UNIT_SIZE(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i64 @FUNCTION_ARG_BOUNDARY(i32, i64) #1

declare dso_local i64 @MIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
