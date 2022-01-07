; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_read_optional_number.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_read_optional_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee_info = type { i32* }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ieee_number_end_enum = common dso_local global i64 0, align 8
@ieee_number_repeat_start_enum = common dso_local global i64 0, align 8
@ieee_number_repeat_end_enum = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"invalid number\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee_info*, i32**, i32*, i32*)* @ieee_read_optional_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee_read_optional_number(%struct.ieee_info* %0, i32** %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee_info*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ieee_info* %0, %struct.ieee_info** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i32**, i32*** %7, align 8
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.ieee_info*, %struct.ieee_info** %6, align 8
  %15 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp uge i32* %13, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %4
  %19 = load i32*, i32** %9, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, i32* @FALSE, align 4
  %23 = load i32*, i32** %9, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @TRUE, align 4
  store i32 %24, i32* %5, align 4
  br label %126

25:                                               ; preds = %18
  %26 = load %struct.ieee_info*, %struct.ieee_info** %6, align 8
  %27 = call i32 @ieee_eof(%struct.ieee_info* %26)
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %5, align 4
  br label %126

29:                                               ; preds = %4
  %30 = load i32**, i32*** %7, align 8
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %10, align 8
  %34 = load i32**, i32*** %7, align 8
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %34, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* @ieee_number_end_enum, align 8
  %39 = icmp sle i64 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %29
  %41 = load i64, i64* %10, align 8
  %42 = trunc i64 %41 to i32
  %43 = load i32*, i32** %8, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32*, i32** %9, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @TRUE, align 4
  %48 = load i32*, i32** %9, align 8
  store i32 %47, i32* %48, align 4
  br label %49

49:                                               ; preds = %46, %40
  %50 = load i32, i32* @TRUE, align 4
  store i32 %50, i32* %5, align 4
  br label %126

51:                                               ; preds = %29
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* @ieee_number_repeat_start_enum, align 8
  %54 = icmp sge i64 %52, %53
  br i1 %54, label %55, label %108

55:                                               ; preds = %51
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* @ieee_number_repeat_end_enum, align 8
  %58 = icmp sle i64 %56, %57
  br i1 %58, label %59, label %108

59:                                               ; preds = %55
  %60 = load i64, i64* %10, align 8
  %61 = trunc i64 %60 to i32
  %62 = load i64, i64* @ieee_number_repeat_start_enum, align 8
  %63 = trunc i64 %62 to i32
  %64 = sub nsw i32 %61, %63
  store i32 %64, i32* %11, align 4
  %65 = load i32**, i32*** %7, align 8
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = getelementptr inbounds i32, i32* %69, i64 -1
  %71 = load %struct.ieee_info*, %struct.ieee_info** %6, align 8
  %72 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = icmp uge i32* %70, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %59
  %76 = load %struct.ieee_info*, %struct.ieee_info** %6, align 8
  %77 = call i32 @ieee_eof(%struct.ieee_info* %76)
  %78 = load i32, i32* @FALSE, align 4
  store i32 %78, i32* %5, align 4
  br label %126

79:                                               ; preds = %59
  %80 = load i32*, i32** %8, align 8
  store i32 0, i32* %80, align 4
  br label %81

81:                                               ; preds = %97, %79
  %82 = load i32, i32* %11, align 4
  %83 = icmp ugt i32 %82, 0
  br i1 %83, label %84, label %100

84:                                               ; preds = %81
  %85 = load i32*, i32** %8, align 8
  %86 = load i32, i32* %85, align 4
  %87 = shl i32 %86, 8
  store i32 %87, i32* %85, align 4
  %88 = load i32**, i32*** %7, align 8
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %8, align 8
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, %90
  store i32 %93, i32* %91, align 4
  %94 = load i32**, i32*** %7, align 8
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i32 1
  store i32* %96, i32** %94, align 8
  br label %97

97:                                               ; preds = %84
  %98 = load i32, i32* %11, align 4
  %99 = add i32 %98, -1
  store i32 %99, i32* %11, align 4
  br label %81

100:                                              ; preds = %81
  %101 = load i32*, i32** %9, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i32, i32* @TRUE, align 4
  %105 = load i32*, i32** %9, align 8
  store i32 %104, i32* %105, align 4
  br label %106

106:                                              ; preds = %103, %100
  %107 = load i32, i32* @TRUE, align 4
  store i32 %107, i32* %5, align 4
  br label %126

108:                                              ; preds = %55, %51
  %109 = load i32*, i32** %9, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %118

111:                                              ; preds = %108
  %112 = load i32**, i32*** %7, align 8
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i32 -1
  store i32* %114, i32** %112, align 8
  %115 = load i32, i32* @FALSE, align 4
  %116 = load i32*, i32** %9, align 8
  store i32 %115, i32* %116, align 4
  %117 = load i32, i32* @TRUE, align 4
  store i32 %117, i32* %5, align 4
  br label %126

118:                                              ; preds = %108
  %119 = load %struct.ieee_info*, %struct.ieee_info** %6, align 8
  %120 = load i32**, i32*** %7, align 8
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 -1
  %123 = call i32 @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %124 = call i32 @ieee_error(%struct.ieee_info* %119, i32* %122, i32 %123)
  %125 = load i32, i32* @FALSE, align 4
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %118, %111, %106, %75, %49, %25, %21
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local i32 @ieee_eof(%struct.ieee_info*) #1

declare dso_local i32 @ieee_error(%struct.ieee_info*, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
