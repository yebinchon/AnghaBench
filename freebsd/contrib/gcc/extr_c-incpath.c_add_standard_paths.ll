; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-incpath.c_add_standard_paths.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-incpath.c_add_standard_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.default_include = type { i32, i64, i32, i64, i64, i32 }

@cpp_GCC_INCLUDE_DIR_len = common dso_local global i64 0, align 8
@cpp_include_defaults = common dso_local global %struct.default_include* null, align 8
@cpp_GCC_INCLUDE_DIR = common dso_local global i32 0, align 4
@dir_separator_str = common dso_local global i32 0, align 4
@SYSTEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i32)* @add_standard_paths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_standard_paths(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.default_include*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %84

15:                                               ; preds = %4
  %16 = load i64, i64* @cpp_GCC_INCLUDE_DIR_len, align 8
  store i64 %16, i64* %10, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %84

18:                                               ; preds = %15
  %19 = load %struct.default_include*, %struct.default_include** @cpp_include_defaults, align 8
  store %struct.default_include* %19, %struct.default_include** %9, align 8
  br label %20

20:                                               ; preds = %80, %18
  %21 = load %struct.default_include*, %struct.default_include** %9, align 8
  %22 = getelementptr inbounds %struct.default_include, %struct.default_include* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %83

25:                                               ; preds = %20
  %26 = load %struct.default_include*, %struct.default_include** %9, align 8
  %27 = getelementptr inbounds %struct.default_include, %struct.default_include* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %79

33:                                               ; preds = %30, %25
  %34 = load i8*, i8** %5, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load %struct.default_include*, %struct.default_include** %9, align 8
  %38 = getelementptr inbounds %struct.default_include, %struct.default_include* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %80

42:                                               ; preds = %36, %33
  %43 = load %struct.default_include*, %struct.default_include** %9, align 8
  %44 = getelementptr inbounds %struct.default_include, %struct.default_include* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* @cpp_GCC_INCLUDE_DIR, align 4
  %47 = load i64, i64* %10, align 8
  %48 = call i32 @strncmp(i64 %45, i32 %46, i64 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %78, label %50

50:                                               ; preds = %42
  %51 = load i8*, i8** %6, align 8
  %52 = load %struct.default_include*, %struct.default_include** %9, align 8
  %53 = getelementptr inbounds %struct.default_include, %struct.default_include* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %10, align 8
  %56 = add i64 %54, %55
  %57 = trunc i64 %56 to i32
  %58 = call i8* (i8*, i32, i8*, ...) @concat(i8* %51, i32 %57, i8* null)
  store i8* %58, i8** %11, align 8
  %59 = load %struct.default_include*, %struct.default_include** %9, align 8
  %60 = getelementptr inbounds %struct.default_include, %struct.default_include* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %50
  %64 = load i8*, i8** %7, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load i8*, i8** %11, align 8
  %68 = load i32, i32* @dir_separator_str, align 4
  %69 = load i8*, i8** %7, align 8
  %70 = call i8* (i8*, i32, i8*, ...) @concat(i8* %67, i32 %68, i8* %69, i8* null)
  store i8* %70, i8** %11, align 8
  br label %71

71:                                               ; preds = %66, %63, %50
  %72 = load i8*, i8** %11, align 8
  %73 = load i32, i32* @SYSTEM, align 4
  %74 = load %struct.default_include*, %struct.default_include** %9, align 8
  %75 = getelementptr inbounds %struct.default_include, %struct.default_include* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @add_path(i8* %72, i32 %73, i32 %76, i32 0)
  br label %78

78:                                               ; preds = %71, %42
  br label %79

79:                                               ; preds = %78, %30
  br label %80

80:                                               ; preds = %79, %41
  %81 = load %struct.default_include*, %struct.default_include** %9, align 8
  %82 = getelementptr inbounds %struct.default_include, %struct.default_include* %81, i32 1
  store %struct.default_include* %82, %struct.default_include** %9, align 8
  br label %20

83:                                               ; preds = %20
  br label %84

84:                                               ; preds = %83, %15, %4
  %85 = load %struct.default_include*, %struct.default_include** @cpp_include_defaults, align 8
  store %struct.default_include* %85, %struct.default_include** %9, align 8
  br label %86

86:                                               ; preds = %143, %84
  %87 = load %struct.default_include*, %struct.default_include** %9, align 8
  %88 = getelementptr inbounds %struct.default_include, %struct.default_include* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %146

91:                                               ; preds = %86
  %92 = load %struct.default_include*, %struct.default_include** %9, align 8
  %93 = getelementptr inbounds %struct.default_include, %struct.default_include* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %142

99:                                               ; preds = %96, %91
  %100 = load i8*, i8** %5, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %114

102:                                              ; preds = %99
  %103 = load %struct.default_include*, %struct.default_include** %9, align 8
  %104 = getelementptr inbounds %struct.default_include, %struct.default_include* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %102
  %108 = load i8*, i8** %5, align 8
  %109 = load %struct.default_include*, %struct.default_include** %9, align 8
  %110 = getelementptr inbounds %struct.default_include, %struct.default_include* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = trunc i64 %111 to i32
  %113 = call i8* (i8*, i32, i8*, ...) @concat(i8* %108, i32 %112, i8* null)
  store i8* %113, i8** %12, align 8
  br label %122

114:                                              ; preds = %102, %99
  %115 = load %struct.default_include*, %struct.default_include** %9, align 8
  %116 = getelementptr inbounds %struct.default_include, %struct.default_include* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.default_include*, %struct.default_include** %9, align 8
  %119 = getelementptr inbounds %struct.default_include, %struct.default_include* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i8* @update_path(i64 %117, i32 %120)
  store i8* %121, i8** %12, align 8
  br label %122

122:                                              ; preds = %114, %107
  %123 = load %struct.default_include*, %struct.default_include** %9, align 8
  %124 = getelementptr inbounds %struct.default_include, %struct.default_include* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %122
  %128 = load i8*, i8** %7, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %135

130:                                              ; preds = %127
  %131 = load i8*, i8** %12, align 8
  %132 = load i32, i32* @dir_separator_str, align 4
  %133 = load i8*, i8** %7, align 8
  %134 = call i8* (i8*, i32, i8*, ...) @concat(i8* %131, i32 %132, i8* %133, i8* null)
  store i8* %134, i8** %12, align 8
  br label %135

135:                                              ; preds = %130, %127, %122
  %136 = load i8*, i8** %12, align 8
  %137 = load i32, i32* @SYSTEM, align 4
  %138 = load %struct.default_include*, %struct.default_include** %9, align 8
  %139 = getelementptr inbounds %struct.default_include, %struct.default_include* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @add_path(i8* %136, i32 %137, i32 %140, i32 0)
  br label %142

142:                                              ; preds = %135, %96
  br label %143

143:                                              ; preds = %142
  %144 = load %struct.default_include*, %struct.default_include** %9, align 8
  %145 = getelementptr inbounds %struct.default_include, %struct.default_include* %144, i32 1
  store %struct.default_include* %145, %struct.default_include** %9, align 8
  br label %86

146:                                              ; preds = %86
  ret void
}

declare dso_local i32 @strncmp(i64, i32, i64) #1

declare dso_local i8* @concat(i8*, i32, i8*, ...) #1

declare dso_local i32 @add_path(i8*, i32, i32, i32) #1

declare dso_local i8* @update_path(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
