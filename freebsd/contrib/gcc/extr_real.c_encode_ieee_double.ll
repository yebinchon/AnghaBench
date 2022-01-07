; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_real.c_encode_ieee_double.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_real.c_encode_ieee_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.real_format = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32*, i32, i32, i32, i32 }

@SIGSZ = common dso_local global i32 0, align 4
@SIG_MSB = common dso_local global i32 0, align 4
@HOST_BITS_PER_LONG = common dso_local global i32 0, align 4
@FLOAT_WORDS_BIG_ENDIAN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.real_format*, i64*, %struct.TYPE_4__*)* @encode_ieee_double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_ieee_double(%struct.real_format* %0, i64* %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca %struct.real_format*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.real_format* %0, %struct.real_format** %4, align 8
  store i64* %1, i64** %5, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %6, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* @SIGSZ, align 4
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @SIG_MSB, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %12, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = shl i32 %27, 31
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %8, align 8
  store i64 0, i64* %7, align 8
  %30 = load i32, i32* @HOST_BITS_PER_LONG, align 4
  %31 = icmp eq i32 %30, 64
  br i1 %31, label %32, label %49

32:                                               ; preds = %3
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* @SIGSZ, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %10, align 8
  %42 = load i64, i64* %10, align 8
  %43 = lshr i64 %42, 11
  %44 = and i64 %43, 4294967295
  store i64 %44, i64* %9, align 8
  %45 = load i64, i64* %10, align 8
  %46 = lshr i64 %45, 12
  %47 = lshr i64 %46, 31
  %48 = and i64 %47, 1048575
  store i64 %48, i64* %10, align 8
  br label %76

49:                                               ; preds = %3
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* @SIGSZ, align 4
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %10, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* @SIGSZ, align 4
  %63 = sub nsw i32 %62, 2
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  store i64 %67, i64* %9, align 8
  %68 = load i64, i64* %10, align 8
  %69 = shl i64 %68, 21
  %70 = load i64, i64* %9, align 8
  %71 = lshr i64 %70, 11
  %72 = or i64 %69, %71
  store i64 %72, i64* %9, align 8
  %73 = load i64, i64* %10, align 8
  %74 = lshr i64 %73, 11
  %75 = and i64 %74, 1048575
  store i64 %75, i64* %10, align 8
  br label %76

76:                                               ; preds = %49, %32
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  switch i32 %79, label %169 [
    i32 128, label %80
    i32 131, label %81
    i32 130, label %93
    i32 129, label %150
  ]

80:                                               ; preds = %76
  br label %171

81:                                               ; preds = %76
  %82 = load %struct.real_format*, %struct.real_format** %4, align 8
  %83 = getelementptr inbounds %struct.real_format, %struct.real_format* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i64, i64* %8, align 8
  %88 = or i64 %87, 2146435072
  store i64 %88, i64* %8, align 8
  br label %92

89:                                               ; preds = %81
  %90 = load i64, i64* %8, align 8
  %91 = or i64 %90, 2147483647
  store i64 %91, i64* %8, align 8
  store i64 4294967295, i64* %7, align 8
  br label %92

92:                                               ; preds = %89, %86
  br label %171

93:                                               ; preds = %76
  %94 = load %struct.real_format*, %struct.real_format** %4, align 8
  %95 = getelementptr inbounds %struct.real_format, %struct.real_format* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %146

98:                                               ; preds = %93
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %104

104:                                              ; preds = %103, %98
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.real_format*, %struct.real_format** %4, align 8
  %109 = getelementptr inbounds %struct.real_format, %struct.real_format* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %107, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %104
  %113 = load i64, i64* %10, align 8
  %114 = and i64 %113, -524289
  store i64 %114, i64* %10, align 8
  br label %118

115:                                              ; preds = %104
  %116 = load i64, i64* %10, align 8
  %117 = or i64 %116, 524288
  store i64 %117, i64* %10, align 8
  br label %118

118:                                              ; preds = %115, %112
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %118
  %124 = load %struct.real_format*, %struct.real_format** %4, align 8
  %125 = getelementptr inbounds %struct.real_format, %struct.real_format* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %123
  %129 = load i64, i64* %10, align 8
  %130 = or i64 %129, 524287
  store i64 %130, i64* %10, align 8
  store i64 4294967295, i64* %9, align 8
  br label %139

131:                                              ; preds = %123, %118
  %132 = load i64, i64* %10, align 8
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %131
  %135 = load i64, i64* %9, align 8
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  store i64 262144, i64* %10, align 8
  br label %138

138:                                              ; preds = %137, %134, %131
  br label %139

139:                                              ; preds = %138, %128
  %140 = load i64, i64* %8, align 8
  %141 = or i64 %140, 2146435072
  store i64 %141, i64* %8, align 8
  %142 = load i64, i64* %10, align 8
  %143 = load i64, i64* %8, align 8
  %144 = or i64 %143, %142
  store i64 %144, i64* %8, align 8
  %145 = load i64, i64* %9, align 8
  store i64 %145, i64* %7, align 8
  br label %149

146:                                              ; preds = %93
  %147 = load i64, i64* %8, align 8
  %148 = or i64 %147, 2147483647
  store i64 %148, i64* %8, align 8
  store i64 4294967295, i64* %7, align 8
  br label %149

149:                                              ; preds = %146, %139
  br label %171

150:                                              ; preds = %76
  %151 = load i32, i32* %12, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %150
  store i64 0, i64* %11, align 8
  br label %160

154:                                              ; preds = %150
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %156 = call i32 @REAL_EXP(%struct.TYPE_4__* %155)
  %157 = add nsw i32 %156, 1023
  %158 = sub nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  store i64 %159, i64* %11, align 8
  br label %160

160:                                              ; preds = %154, %153
  %161 = load i64, i64* %11, align 8
  %162 = shl i64 %161, 20
  %163 = load i64, i64* %8, align 8
  %164 = or i64 %163, %162
  store i64 %164, i64* %8, align 8
  %165 = load i64, i64* %10, align 8
  %166 = load i64, i64* %8, align 8
  %167 = or i64 %166, %165
  store i64 %167, i64* %8, align 8
  %168 = load i64, i64* %9, align 8
  store i64 %168, i64* %7, align 8
  br label %171

169:                                              ; preds = %76
  %170 = call i32 (...) @gcc_unreachable()
  br label %171

171:                                              ; preds = %169, %160, %149, %92, %80
  %172 = load i64, i64* @FLOAT_WORDS_BIG_ENDIAN, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %181

174:                                              ; preds = %171
  %175 = load i64, i64* %8, align 8
  %176 = load i64*, i64** %5, align 8
  %177 = getelementptr inbounds i64, i64* %176, i64 0
  store i64 %175, i64* %177, align 8
  %178 = load i64, i64* %7, align 8
  %179 = load i64*, i64** %5, align 8
  %180 = getelementptr inbounds i64, i64* %179, i64 1
  store i64 %178, i64* %180, align 8
  br label %188

181:                                              ; preds = %171
  %182 = load i64, i64* %7, align 8
  %183 = load i64*, i64** %5, align 8
  %184 = getelementptr inbounds i64, i64* %183, i64 0
  store i64 %182, i64* %184, align 8
  %185 = load i64, i64* %8, align 8
  %186 = load i64*, i64** %5, align 8
  %187 = getelementptr inbounds i64, i64* %186, i64 1
  store i64 %185, i64* %187, align 8
  br label %188

188:                                              ; preds = %181, %174
  ret void
}

declare dso_local i32 @REAL_EXP(%struct.TYPE_4__*) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
