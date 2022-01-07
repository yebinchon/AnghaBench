; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_function_arg_advance.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_function_arg_advance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i64 }

@VOIDmode = common dso_local global i32 0, align 4
@MAX_ARGUMENT_SLOTS = common dso_local global i32 0, align 4
@BLKmode = common dso_local global i32 0, align 4
@UNITS_PER_WORD = common dso_local global i32 0, align 4
@TFmode = common dso_local global i32 0, align 4
@TCmode = common dso_local global i32 0, align 4
@MODE_COMPLEX_FLOAT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ia64_function_arg_advance(%struct.TYPE_4__* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load i64, i64* %7, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @ia64_function_arg_words(i64 %17, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @ia64_function_arg_offset(%struct.TYPE_4__* %20, i64 %21, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* @VOIDmode, align 4
  store i32 %24, i32* %11, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @MAX_ARGUMENT_SLOTS, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  br label %178

31:                                               ; preds = %4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %32, %33
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %31
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @hfa_element_mode(i64 %42, i32 0)
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %41, %31
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @VOIDmode, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %110

48:                                               ; preds = %44
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %110

56:                                               ; preds = %53, %48
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %12, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sub nsw i32 %62, %63
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @GET_MODE_SIZE(i32 %65)
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @BLKmode, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %56
  %71 = load i64, i64* %7, align 8
  %72 = call i32 @int_size_in_bytes(i64 %71)
  br label %76

73:                                               ; preds = %56
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @GET_MODE_SIZE(i32 %74)
  br label %76

76:                                               ; preds = %73, %70
  %77 = phi i32 [ %72, %70 ], [ %75, %73 ]
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* @UNITS_PER_WORD, align 4
  %80 = mul nsw i32 %78, %79
  store i32 %80, i32* %16, align 4
  store i32 0, i32* %10, align 4
  br label %81

81:                                               ; preds = %97, %76
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %15, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %81
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @MAX_ARGUMENT_SLOTS, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %85
  %90 = load i32, i32* %16, align 4
  %91 = load i32, i32* @MAX_ARGUMENT_SLOTS, align 4
  %92 = load i32, i32* @UNITS_PER_WORD, align 4
  %93 = mul nsw i32 %91, %92
  %94 = icmp slt i32 %90, %93
  br label %95

95:                                               ; preds = %89, %85, %81
  %96 = phi i1 [ false, %85 ], [ false, %81 ], [ %94, %89 ]
  br i1 %96, label %97, label %106

97:                                               ; preds = %95
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* %16, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %16, align 4
  %104 = load i32, i32* %12, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %12, align 4
  br label %81

106:                                              ; preds = %95
  %107 = load i32, i32* %12, align 4
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  br label %178

110:                                              ; preds = %53, %44
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* @TFmode, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %128, label %114

114:                                              ; preds = %110
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* @TCmode, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %128, label %118

118:                                              ; preds = %114
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @FLOAT_MODE_P(i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %118
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @MAX_ARGUMENT_SLOTS, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %134

128:                                              ; preds = %122, %118, %114, %110
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 8
  br label %177

134:                                              ; preds = %122
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %160

139:                                              ; preds = %134
  %140 = load i32, i32* %8, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %148, label %142

142:                                              ; preds = %139
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 2
  store i32 %145, i32* %147, align 8
  br label %159

148:                                              ; preds = %139
  %149 = load i32, i32* %6, align 4
  %150 = call i64 @GET_MODE_CLASS(i32 %149)
  %151 = load i64, i64* @MODE_COMPLEX_FLOAT, align 8
  %152 = icmp eq i64 %150, %151
  %153 = zext i1 %152 to i64
  %154 = select i1 %152, i32 2, i32 1
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, %154
  store i32 %158, i32* %156, align 4
  br label %159

159:                                              ; preds = %148, %142
  br label %176

160:                                              ; preds = %134
  %161 = load i32, i32* %6, align 4
  %162 = call i64 @GET_MODE_CLASS(i32 %161)
  %163 = load i64, i64* @MODE_COMPLEX_FLOAT, align 8
  %164 = icmp eq i64 %162, %163
  %165 = zext i1 %164 to i64
  %166 = select i1 %164, i32 2, i32 1
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %169, %166
  store i32 %170, i32* %168, align 4
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 2
  store i32 %173, i32* %175, align 8
  br label %176

176:                                              ; preds = %160, %159
  br label %177

177:                                              ; preds = %176, %128
  br label %178

178:                                              ; preds = %30, %177, %106
  ret void
}

declare dso_local i32 @ia64_function_arg_words(i64, i32) #1

declare dso_local i32 @ia64_function_arg_offset(%struct.TYPE_4__*, i64, i32) #1

declare dso_local i32 @hfa_element_mode(i64, i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @int_size_in_bytes(i64) #1

declare dso_local i32 @FLOAT_MODE_P(i32) #1

declare dso_local i64 @GET_MODE_CLASS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
