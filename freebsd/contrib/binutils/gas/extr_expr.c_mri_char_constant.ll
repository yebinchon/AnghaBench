; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_expr.c_mri_char_constant.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_expr.c_mri_char_constant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8* }

@input_line_pointer = common dso_local global i8* null, align 8
@O_constant = common dso_local global i8* null, align 8
@SIZE_OF_LARGE_NUMBER = common dso_local global i32 0, align 4
@generic_bignum = common dso_local global i32* null, align 8
@CHARS_PER_LITTLENUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"character constant too large\00", align 1
@LITTLENUM_NUMBER_OF_BITS = common dso_local global i32 0, align 4
@O_big = common dso_local global i8* null, align 8
@LITTLENUM_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @mri_char_constant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mri_char_constant(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %7 = load i8*, i8** @input_line_pointer, align 8
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 39
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load i8*, i8** @input_line_pointer, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 39
  br i1 %16, label %17, label %23

17:                                               ; preds = %11
  %18 = load i8*, i8** @O_constant, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  br label %193

23:                                               ; preds = %11, %1
  %24 = load i32, i32* @SIZE_OF_LARGE_NUMBER, align 4
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %108, %23
  %27 = load i32, i32* %3, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %111

29:                                               ; preds = %26
  %30 = load i32*, i32** @generic_bignum, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32 0, i32* %33, align 4
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %71, %29
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @CHARS_PER_LITTLENUM, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %74

38:                                               ; preds = %34
  %39 = load i8*, i8** @input_line_pointer, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 39
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = load i8*, i8** @input_line_pointer, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 39
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %74

50:                                               ; preds = %43
  %51 = load i8*, i8** @input_line_pointer, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** @input_line_pointer, align 8
  br label %53

53:                                               ; preds = %50, %38
  %54 = load i32*, i32** @generic_bignum, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = shl i32 %58, 8
  store i32 %59, i32* %57, align 4
  %60 = load i8*, i8** @input_line_pointer, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = load i32*, i32** @generic_bignum, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, %62
  store i32 %68, i32* %66, align 4
  %69 = load i8*, i8** @input_line_pointer, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** @input_line_pointer, align 8
  br label %71

71:                                               ; preds = %53
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %4, align 4
  br label %34

74:                                               ; preds = %49, %34
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* @SIZE_OF_LARGE_NUMBER, align 4
  %77 = sub nsw i32 %76, 1
  %78 = icmp slt i32 %75, %77
  br i1 %78, label %79, label %95

79:                                               ; preds = %74
  br label %80

80:                                               ; preds = %91, %79
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @CHARS_PER_LITTLENUM, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %94

84:                                               ; preds = %80
  %85 = load i32*, i32** @generic_bignum, align 8
  %86 = load i32, i32* %3, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = shl i32 %89, 8
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %84
  %92 = load i32, i32* %4, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %4, align 4
  br label %80

94:                                               ; preds = %80
  br label %95

95:                                               ; preds = %94, %74
  %96 = load i8*, i8** @input_line_pointer, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 39
  br i1 %99, label %100, label %107

100:                                              ; preds = %95
  %101 = load i8*, i8** @input_line_pointer, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 1
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp ne i32 %104, 39
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  br label %111

107:                                              ; preds = %100, %95
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %3, align 4
  %110 = add nsw i32 %109, -1
  store i32 %110, i32* %3, align 4
  br label %26

111:                                              ; preds = %106, %26
  %112 = load i32, i32* %3, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %116 = call i32 @as_bad(i32 %115)
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %114, %111
  %118 = load i32, i32* %3, align 4
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %145

120:                                              ; preds = %117
  %121 = load i32, i32* @SIZE_OF_LARGE_NUMBER, align 4
  %122 = load i32, i32* %3, align 4
  %123 = sub nsw i32 %121, %122
  store i32 %123, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %124

124:                                              ; preds = %140, %120
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* %5, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %143

128:                                              ; preds = %124
  %129 = load i32*, i32** @generic_bignum, align 8
  %130 = load i32, i32* %3, align 4
  %131 = load i32, i32* %6, align 4
  %132 = add nsw i32 %130, %131
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %129, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = load i32*, i32** @generic_bignum, align 8
  %137 = load i32, i32* %6, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  store i32 %135, i32* %139, align 4
  br label %140

140:                                              ; preds = %128
  %141 = load i32, i32* %6, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %6, align 4
  br label %124

143:                                              ; preds = %124
  %144 = load i32, i32* %5, align 4
  store i32 %144, i32* %3, align 4
  br label %145

145:                                              ; preds = %143, %117
  %146 = load i32, i32* @LITTLENUM_NUMBER_OF_BITS, align 4
  %147 = icmp eq i32 %146, 16
  %148 = zext i1 %147 to i32
  %149 = call i32 @know(i32 %148)
  %150 = load i32, i32* %3, align 4
  %151 = icmp sgt i32 %150, 2
  br i1 %151, label %152, label %159

152:                                              ; preds = %145
  %153 = load i8*, i8** @O_big, align 8
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 1
  store i8* %153, i8** %155, align 8
  %156 = load i32, i32* %3, align 4
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 8
  br label %190

159:                                              ; preds = %145
  %160 = load i8*, i8** @O_constant, align 8
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 1
  store i8* %160, i8** %162, align 8
  %163 = load i32, i32* %3, align 4
  %164 = icmp slt i32 %163, 2
  br i1 %164, label %165, label %173

165:                                              ; preds = %159
  %166 = load i32*, i32** @generic_bignum, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @LITTLENUM_MASK, align 4
  %170 = and i32 %168, %169
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 8
  br label %189

173:                                              ; preds = %159
  %174 = load i32*, i32** @generic_bignum, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 1
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @LITTLENUM_MASK, align 4
  %178 = and i32 %176, %177
  %179 = load i32, i32* @LITTLENUM_NUMBER_OF_BITS, align 4
  %180 = shl i32 %178, %179
  %181 = load i32*, i32** @generic_bignum, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @LITTLENUM_MASK, align 4
  %185 = and i32 %183, %184
  %186 = or i32 %180, %185
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 0
  store i32 %186, i32* %188, align 8
  br label %189

189:                                              ; preds = %173, %165
  br label %190

190:                                              ; preds = %189, %152
  %191 = load i8*, i8** @input_line_pointer, align 8
  %192 = getelementptr inbounds i8, i8* %191, i32 1
  store i8* %192, i8** @input_line_pointer, align 8
  br label %193

193:                                              ; preds = %190, %17
  ret void
}

declare dso_local i32 @as_bad(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @know(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
