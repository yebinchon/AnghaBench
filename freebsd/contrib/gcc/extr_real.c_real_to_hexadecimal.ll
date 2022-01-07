; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_real.c_real_to_hexadecimal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_real.c_real_to_hexadecimal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32*, i64 }

@.str = private unnamed_addr constant [5 x i8] c"-Inf\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"+Inf\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"-NaN\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"+NaN\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@SIGNIFICAND_BITS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"p%+d\00", align 1
@SIGSZ = common dso_local global i32 0, align 4
@HOST_BITS_PER_LONG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @real_to_hexadecimal(i8* %0, %struct.TYPE_4__* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca [16 x i8], align 16
  %17 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %19 = call i32 @REAL_EXP(%struct.TYPE_4__* %18)
  store i32 %19, i32* %13, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %43 [
    i32 128, label %23
    i32 129, label %24
    i32 131, label %25
    i32 130, label %34
  ]

23:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  br label %45

24:                                               ; preds = %5
  br label %45

25:                                               ; preds = %5
  %26 = load i8*, i8** %6, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)
  %33 = call i32 @strcpy(i8* %26, i8* %32)
  br label %168

34:                                               ; preds = %5
  %35 = load i8*, i8** %6, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %42 = call i32 @strcpy(i8* %35, i8* %41)
  br label %168

43:                                               ; preds = %5
  %44 = call i32 (...) @gcc_unreachable()
  br label %45

45:                                               ; preds = %43, %24, %23
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @strcpy(i8* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %168

53:                                               ; preds = %45
  %54 = load i64, i64* %9, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i32, i32* @SIGNIFICAND_BITS, align 4
  %58 = sdiv i32 %57, 4
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %9, align 8
  br label %60

60:                                               ; preds = %56, %53
  %61 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @sprintf(i8* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %62)
  %64 = load i64, i64* %8, align 8
  %65 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %66 = call i64 @strlen(i8* %65)
  %67 = sub i64 %64, %66
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = sub i64 %67, %70
  %72 = sub i64 %71, 4
  %73 = sub i64 %72, 1
  store i64 %73, i64* %17, align 8
  %74 = load i64, i64* %17, align 8
  %75 = load i64, i64* %8, align 8
  %76 = icmp ule i64 %74, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @gcc_assert(i32 %77)
  %79 = load i64, i64* %9, align 8
  %80 = load i64, i64* %17, align 8
  %81 = icmp ugt i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %60
  %83 = load i64, i64* %17, align 8
  store i64 %83, i64* %9, align 8
  br label %84

84:                                               ; preds = %82, %60
  %85 = load i8*, i8** %6, align 8
  store i8* %85, i8** %14, align 8
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load i8*, i8** %14, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %14, align 8
  store i8 45, i8* %91, align 1
  br label %93

93:                                               ; preds = %90, %84
  %94 = load i8*, i8** %14, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %14, align 8
  store i8 48, i8* %94, align 1
  %96 = load i8*, i8** %14, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %14, align 8
  store i8 120, i8* %96, align 1
  %98 = load i8*, i8** %14, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %14, align 8
  store i8 48, i8* %98, align 1
  %100 = load i8*, i8** %14, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %14, align 8
  store i8 46, i8* %100, align 1
  %102 = load i8*, i8** %14, align 8
  store i8* %102, i8** %15, align 8
  %103 = load i32, i32* @SIGSZ, align 4
  %104 = sub nsw i32 %103, 1
  store i32 %104, i32* %11, align 4
  br label %105

105:                                              ; preds = %139, %93
  %106 = load i32, i32* %11, align 4
  %107 = icmp sge i32 %106, 0
  br i1 %107, label %108, label %142

108:                                              ; preds = %105
  %109 = load i32, i32* @HOST_BITS_PER_LONG, align 4
  %110 = sub nsw i32 %109, 4
  store i32 %110, i32* %12, align 4
  br label %111

111:                                              ; preds = %135, %108
  %112 = load i32, i32* %12, align 4
  %113 = icmp sge i32 %112, 0
  br i1 %113, label %114, label %138

114:                                              ; preds = %111
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %11, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %12, align 4
  %123 = ashr i32 %121, %122
  %124 = and i32 %123, 15
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.6, i64 0, i64 %125
  %127 = load i8, i8* %126, align 1
  %128 = load i8*, i8** %14, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %14, align 8
  store i8 %127, i8* %128, align 1
  %130 = load i64, i64* %9, align 8
  %131 = add i64 %130, -1
  store i64 %131, i64* %9, align 8
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %114
  br label %143

134:                                              ; preds = %114
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %12, align 4
  %137 = sub nsw i32 %136, 4
  store i32 %137, i32* %12, align 4
  br label %111

138:                                              ; preds = %111
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %11, align 4
  %141 = add nsw i32 %140, -1
  store i32 %141, i32* %11, align 4
  br label %105

142:                                              ; preds = %105
  br label %143

143:                                              ; preds = %142, %133
  %144 = load i32, i32* %10, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %164

146:                                              ; preds = %143
  br label %147

147:                                              ; preds = %160, %146
  %148 = load i8*, i8** %14, align 8
  %149 = load i8*, i8** %15, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 1
  %151 = icmp ugt i8* %148, %150
  br i1 %151, label %152, label %158

152:                                              ; preds = %147
  %153 = load i8*, i8** %14, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 -1
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp eq i32 %156, 48
  br label %158

158:                                              ; preds = %152, %147
  %159 = phi i1 [ false, %147 ], [ %157, %152 ]
  br i1 %159, label %160, label %163

160:                                              ; preds = %158
  %161 = load i8*, i8** %14, align 8
  %162 = getelementptr inbounds i8, i8* %161, i32 -1
  store i8* %162, i8** %14, align 8
  br label %147

163:                                              ; preds = %158
  br label %164

164:                                              ; preds = %163, %143
  %165 = load i8*, i8** %14, align 8
  %166 = load i32, i32* %13, align 4
  %167 = call i32 @sprintf(i8* %165, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %166)
  br label %168

168:                                              ; preds = %164, %50, %34, %25
  ret void
}

declare dso_local i32 @REAL_EXP(%struct.TYPE_4__*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @gcc_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
