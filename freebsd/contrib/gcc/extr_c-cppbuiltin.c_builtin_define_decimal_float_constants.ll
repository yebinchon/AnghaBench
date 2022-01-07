; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-cppbuiltin.c_builtin_define_decimal_float_constants.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-cppbuiltin.c_builtin_define_decimal_float_constants.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.real_format = type { i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"__%s_MANT_DIG__\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"__%s_MIN_EXP__\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"(%d)\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"__%s_MAX_EXP__\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"__%s_MIN__\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"1E%d%s\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"__%s_MAX__\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"E%d%s\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"__%s_EPSILON__\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"1E-%d%s\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"__%s_DEN__\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @builtin_define_decimal_float_constants to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @builtin_define_decimal_float_constants(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.real_format*, align 8
  %8 = alloca [64 x i8], align 16
  %9 = alloca [128 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @TYPE_MODE(i32 %12)
  %14 = call %struct.real_format* @REAL_MODE_FORMAT(i32 %13)
  store %struct.real_format* %14, %struct.real_format** %7, align 8
  %15 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 (i8*, i8*, ...) @sprintf(i8* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %19 = load %struct.real_format*, %struct.real_format** %7, align 8
  %20 = getelementptr inbounds %struct.real_format, %struct.real_format* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @builtin_define_with_int_value(i8* %18, i32 %21)
  %23 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 (i8*, i8*, ...) @sprintf(i8* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  %26 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %27 = load %struct.real_format*, %struct.real_format** %7, align 8
  %28 = getelementptr inbounds %struct.real_format, %struct.real_format* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i8*, i8*, ...) @sprintf(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %32 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %33 = call i32 @builtin_define_with_value(i8* %31, i8* %32, i32 0)
  %34 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 (i8*, i8*, ...) @sprintf(i8* %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %35)
  %37 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %38 = load %struct.real_format*, %struct.real_format** %7, align 8
  %39 = getelementptr inbounds %struct.real_format, %struct.real_format* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @builtin_define_with_int_value(i8* %37, i32 %40)
  %42 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 (i8*, i8*, ...) @sprintf(i8* %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %43)
  %45 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %46 = load %struct.real_format*, %struct.real_format** %7, align 8
  %47 = getelementptr inbounds %struct.real_format, %struct.real_format* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 (i8*, i8*, ...) @sprintf(i8* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %48, i8* %49)
  %51 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %52 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %53 = call i32 @builtin_define_with_value(i8* %51, i8* %52, i32 0)
  %54 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %55 = load i8*, i8** %4, align 8
  %56 = call i32 (i8*, i8*, ...) @sprintf(i8* %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* %55)
  %57 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  store i8* %57, i8** %10, align 8
  %58 = load %struct.real_format*, %struct.real_format** %7, align 8
  %59 = getelementptr inbounds %struct.real_format, %struct.real_format* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %76, %3
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %61
  %65 = load i8*, i8** %10, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %10, align 8
  store i8 57, i8* %65, align 1
  %67 = load i32, i32* %11, align 4
  %68 = load %struct.real_format*, %struct.real_format** %7, align 8
  %69 = getelementptr inbounds %struct.real_format, %struct.real_format* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %67, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %64
  %73 = load i8*, i8** %10, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %10, align 8
  store i8 46, i8* %73, align 1
  br label %75

75:                                               ; preds = %72, %64
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %11, align 4
  br label %61

79:                                               ; preds = %61
  %80 = load i8*, i8** %10, align 8
  store i8 0, i8* %80, align 1
  %81 = load %struct.real_format*, %struct.real_format** %7, align 8
  %82 = getelementptr inbounds %struct.real_format, %struct.real_format* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 %85
  %87 = load %struct.real_format*, %struct.real_format** %7, align 8
  %88 = getelementptr inbounds %struct.real_format, %struct.real_format* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i8*, i8** %5, align 8
  %91 = call i32 (i8*, i8*, ...) @sprintf(i8* %86, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %89, i8* %90)
  %92 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %93 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %94 = call i32 @builtin_define_with_value(i8* %92, i8* %93, i32 0)
  %95 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %96 = load i8*, i8** %4, align 8
  %97 = call i32 (i8*, i8*, ...) @sprintf(i8* %95, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* %96)
  %98 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %99 = load %struct.real_format*, %struct.real_format** %7, align 8
  %100 = getelementptr inbounds %struct.real_format, %struct.real_format* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = sub nsw i32 %101, 1
  %103 = load i8*, i8** %5, align 8
  %104 = call i32 (i8*, i8*, ...) @sprintf(i8* %98, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %102, i8* %103)
  %105 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %106 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %107 = call i32 @builtin_define_with_value(i8* %105, i8* %106, i32 0)
  %108 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %109 = load i8*, i8** %4, align 8
  %110 = call i32 (i8*, i8*, ...) @sprintf(i8* %108, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* %109)
  %111 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  store i8* %111, i8** %10, align 8
  %112 = load %struct.real_format*, %struct.real_format** %7, align 8
  %113 = getelementptr inbounds %struct.real_format, %struct.real_format* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %11, align 4
  br label %115

115:                                              ; preds = %130, %79
  %116 = load i32, i32* %11, align 4
  %117 = icmp sgt i32 %116, 1
  br i1 %117, label %118, label %133

118:                                              ; preds = %115
  %119 = load i8*, i8** %10, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %10, align 8
  store i8 48, i8* %119, align 1
  %121 = load i32, i32* %11, align 4
  %122 = load %struct.real_format*, %struct.real_format** %7, align 8
  %123 = getelementptr inbounds %struct.real_format, %struct.real_format* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %121, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %118
  %127 = load i8*, i8** %10, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %10, align 8
  store i8 46, i8* %127, align 1
  br label %129

129:                                              ; preds = %126, %118
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %11, align 4
  %132 = add nsw i32 %131, -1
  store i32 %132, i32* %11, align 4
  br label %115

133:                                              ; preds = %115
  %134 = load i8*, i8** %10, align 8
  store i8 0, i8* %134, align 1
  %135 = load %struct.real_format*, %struct.real_format** %7, align 8
  %136 = getelementptr inbounds %struct.real_format, %struct.real_format* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 %138
  %140 = load %struct.real_format*, %struct.real_format** %7, align 8
  %141 = getelementptr inbounds %struct.real_format, %struct.real_format* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i8*, i8** %5, align 8
  %144 = call i32 (i8*, i8*, ...) @sprintf(i8* %139, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %142, i8* %143)
  %145 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %146 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %147 = call i32 @builtin_define_with_value(i8* %145, i8* %146, i32 0)
  ret void
}

declare dso_local %struct.real_format* @REAL_MODE_FORMAT(i32) #1

declare dso_local i32 @TYPE_MODE(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @builtin_define_with_int_value(i8*, i32) #1

declare dso_local i32 @builtin_define_with_value(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
