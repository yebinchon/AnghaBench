; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_side.c_print_sdiff_common_lines.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_side.c_print_sdiff_common_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@next0 = common dso_local global i64 0, align 8
@next1 = common dso_local global i64 0, align 8
@suppress_common_lines = common dso_local global i32 0, align 4
@sdiff_merge_assist = common dso_local global i64 0, align 8
@outfile = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"i%ld,%ld\0A\00", align 1
@left_column = common dso_local global i32 0, align 4
@files = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @print_sdiff_common_lines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_sdiff_common_lines(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* @next0, align 8
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* @next1, align 8
  store i64 %10, i64* %6, align 8
  %11 = load i32, i32* @suppress_common_lines, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %95, label %13

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* %3, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %95

21:                                               ; preds = %17, %13
  %22 = load i64, i64* @sdiff_merge_assist, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* %5, align 8
  %27 = sub nsw i64 %25, %26
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* %6, align 8
  %30 = sub nsw i64 %28, %29
  store i64 %30, i64* %8, align 8
  %31 = load i32, i32* @outfile, align 4
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @fprintf(i32 %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %32, i64 %33)
  br label %35

35:                                               ; preds = %24, %21
  %36 = load i32, i32* @left_column, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %80, label %38

38:                                               ; preds = %35
  br label %39

39:                                               ; preds = %49, %38
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* %3, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* %4, align 8
  %46 = icmp ne i64 %44, %45
  br label %47

47:                                               ; preds = %43, %39
  %48 = phi i1 [ false, %39 ], [ %46, %43 ]
  br i1 %48, label %49, label %65

49:                                               ; preds = %47
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @files, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* %5, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %5, align 8
  %56 = getelementptr inbounds i32, i32* %53, i64 %54
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @files, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* %6, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %6, align 8
  %63 = getelementptr inbounds i32, i32* %60, i64 %61
  %64 = call i32 @print_1sdiff_line(i32* %56, i8 signext 32, i32* %63)
  br label %39

65:                                               ; preds = %47
  br label %66

66:                                               ; preds = %70, %65
  %67 = load i64, i64* %6, align 8
  %68 = load i64, i64* %4, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %66
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @files, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* %6, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %6, align 8
  %77 = getelementptr inbounds i32, i32* %74, i64 %75
  %78 = call i32 @print_1sdiff_line(i32* null, i8 signext 41, i32* %77)
  br label %66

79:                                               ; preds = %66
  br label %80

80:                                               ; preds = %79, %35
  br label %81

81:                                               ; preds = %85, %80
  %82 = load i64, i64* %5, align 8
  %83 = load i64, i64* %3, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %81
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** @files, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* %5, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %5, align 8
  %92 = getelementptr inbounds i32, i32* %89, i64 %90
  %93 = call i32 @print_1sdiff_line(i32* %92, i8 signext 40, i32* null)
  br label %81

94:                                               ; preds = %81
  br label %95

95:                                               ; preds = %94, %17, %2
  %96 = load i64, i64* %3, align 8
  store i64 %96, i64* @next0, align 8
  %97 = load i64, i64* %4, align 8
  store i64 %97, i64* @next1, align 8
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i64, i64) #1

declare dso_local i32 @print_1sdiff_line(i32*, i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
