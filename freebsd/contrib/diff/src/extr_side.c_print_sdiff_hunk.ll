; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_side.c_print_sdiff_hunk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_side.c_print_sdiff_hunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.change = type { i32 }

@sdiff_merge_assist = common dso_local global i64 0, align 8
@outfile = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"c%ld,%ld\0A\00", align 1
@CHANGED = common dso_local global i32 0, align 4
@files = common dso_local global %struct.TYPE_2__* null, align 8
@OLD = common dso_local global i32 0, align 4
@NEW = common dso_local global i32 0, align 4
@next0 = common dso_local global i32 0, align 4
@next1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.change*)* @print_sdiff_hunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_sdiff_hunk(%struct.change* %0) #0 {
  %2 = alloca %struct.change*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.change* %0, %struct.change** %2, align 8
  %12 = load %struct.change*, %struct.change** %2, align 8
  %13 = call i32 @analyze_hunk(%struct.change* %12, i32* %3, i32* %4, i32* %5, i32* %6)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %146

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @print_sdiff_common_lines(i32 %18, i32 %19)
  %21 = load i64, i64* @sdiff_merge_assist, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %17
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %3, align 4
  %26 = sub nsw i32 %24, %25
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %10, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %5, align 4
  %31 = sub nsw i32 %29, %30
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %11, align 8
  %34 = load i32, i32* @outfile, align 4
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* %11, align 8
  %37 = call i32 @fprintf(i32 %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %35, i64 %36)
  br label %38

38:                                               ; preds = %23, %17
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @CHANGED, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %96

42:                                               ; preds = %38
  %43 = load i32, i32* %3, align 4
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %71, %42
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp sle i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp sle i32 %50, %51
  br label %53

53:                                               ; preds = %49, %45
  %54 = phi i1 [ false, %45 ], [ %52, %49 ]
  br i1 %54, label %55, label %76

55:                                               ; preds = %53
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @files, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @files, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = call i32 @print_1sdiff_line(i32* %62, i8 signext 124, i32* %69)
  br label %71

71:                                               ; preds = %55
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %45

76:                                               ; preds = %53
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp sle i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i32, i32* @OLD, align 4
  br label %83

82:                                               ; preds = %76
  br label %83

83:                                               ; preds = %82, %80
  %84 = phi i32 [ %81, %80 ], [ 0, %82 ]
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp sle i32 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = load i32, i32* @NEW, align 4
  br label %91

90:                                               ; preds = %83
  br label %91

91:                                               ; preds = %90, %88
  %92 = phi i32 [ %89, %88 ], [ 0, %90 ]
  %93 = add nsw i32 %84, %92
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %7, align 4
  store i32 %94, i32* %3, align 4
  store i32 %94, i32* @next0, align 4
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %5, align 4
  store i32 %95, i32* @next1, align 4
  br label %96

96:                                               ; preds = %91, %38
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @NEW, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %121

101:                                              ; preds = %96
  %102 = load i32, i32* %5, align 4
  store i32 %102, i32* %8, align 4
  br label %103

103:                                              ; preds = %116, %101
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* %6, align 4
  %106 = icmp sle i32 %104, %105
  br i1 %106, label %107, label %119

107:                                              ; preds = %103
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** @files, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i64 1
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = call i32 @print_1sdiff_line(i32* null, i8 signext 62, i32* %114)
  br label %116

116:                                              ; preds = %107
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %8, align 4
  br label %103

119:                                              ; preds = %103
  %120 = load i32, i32* %8, align 4
  store i32 %120, i32* @next1, align 4
  br label %121

121:                                              ; preds = %119, %96
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* @OLD, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %146

126:                                              ; preds = %121
  %127 = load i32, i32* %3, align 4
  store i32 %127, i32* %7, align 4
  br label %128

128:                                              ; preds = %141, %126
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* %4, align 4
  %131 = icmp sle i32 %129, %130
  br i1 %131, label %132, label %144

132:                                              ; preds = %128
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** @files, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i64 0
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = call i32 @print_1sdiff_line(i32* %139, i8 signext 60, i32* null)
  br label %141

141:                                              ; preds = %132
  %142 = load i32, i32* %7, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %7, align 4
  br label %128

144:                                              ; preds = %128
  %145 = load i32, i32* %7, align 4
  store i32 %145, i32* @next0, align 4
  br label %146

146:                                              ; preds = %16, %144, %121
  ret void
}

declare dso_local i32 @analyze_hunk(%struct.change*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @print_sdiff_common_lines(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i64, i64) #1

declare dso_local i32 @print_1sdiff_line(i32*, i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
