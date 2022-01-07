; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_side.c_print_1sdiff_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_side.c_print_1sdiff_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@outfile = common dso_local global i32* null, align 8
@sdiff_half_width = common dso_local global i64 0, align 8
@sdiff_column2_offset = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i8, i8**)* @print_1sdiff_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_1sdiff_line(i8** %0, i8 signext %1, i8** %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8** %2, i8*** %6, align 8
  %12 = load i32*, i32** @outfile, align 8
  store i32* %12, i32** %7, align 8
  %13 = load i64, i64* @sdiff_half_width, align 8
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* @sdiff_column2_offset, align 8
  store i64 %14, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %15 = load i8**, i8*** %4, align 8
  %16 = icmp ne i8** %15, null
  br i1 %16, label %17, label %31

17:                                               ; preds = %3
  %18 = load i8**, i8*** %4, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 -1
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 10
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* %11, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %11, align 4
  %28 = load i8**, i8*** %4, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i64 @print_half_line(i8** %28, i64 0, i64 %29)
  store i64 %30, i64* %10, align 8
  br label %31

31:                                               ; preds = %17, %3
  %32 = load i8, i8* %5, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 32
  br i1 %34, label %35, label %69

35:                                               ; preds = %31
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = add i64 %37, %38
  %40 = sub i64 %39, 1
  %41 = udiv i64 %40, 2
  %42 = call i32 @tab_from_to(i64 %36, i64 %41)
  %43 = add nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %10, align 8
  %45 = load i8, i8* %5, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 124
  br i1 %47, label %48, label %65

48:                                               ; preds = %35
  %49 = load i32, i32* %11, align 4
  %50 = load i8**, i8*** %6, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 1
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 -1
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 10
  %57 = zext i1 %56 to i32
  %58 = icmp ne i32 %49, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %48
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 47, i32 92
  %64 = trunc i32 %63 to i8
  store i8 %64, i8* %5, align 1
  br label %65

65:                                               ; preds = %59, %48, %35
  %66 = load i8, i8* %5, align 1
  %67 = load i32*, i32** %7, align 8
  %68 = call i32 @putc(i8 signext %66, i32* %67)
  br label %69

69:                                               ; preds = %65, %31
  %70 = load i8**, i8*** %6, align 8
  %71 = icmp ne i8** %70, null
  br i1 %71, label %72, label %98

72:                                               ; preds = %69
  %73 = load i8**, i8*** %6, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 1
  %75 = load i8*, i8** %74, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 -1
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 10
  %80 = zext i1 %79 to i32
  %81 = load i32, i32* %11, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %11, align 4
  %83 = load i8**, i8*** %6, align 8
  %84 = load i8*, i8** %83, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 10
  br i1 %87, label %88, label %97

88:                                               ; preds = %72
  %89 = load i64, i64* %10, align 8
  %90 = load i64, i64* %9, align 8
  %91 = call i32 @tab_from_to(i64 %89, i64 %90)
  %92 = sext i32 %91 to i64
  store i64 %92, i64* %10, align 8
  %93 = load i8**, i8*** %6, align 8
  %94 = load i64, i64* %10, align 8
  %95 = load i64, i64* %8, align 8
  %96 = call i64 @print_half_line(i8** %93, i64 %94, i64 %95)
  br label %97

97:                                               ; preds = %88, %72
  br label %98

98:                                               ; preds = %97, %69
  %99 = load i32, i32* %11, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32*, i32** %7, align 8
  %103 = call i32 @putc(i8 signext 10, i32* %102)
  br label %104

104:                                              ; preds = %101, %98
  ret void
}

declare dso_local i64 @print_half_line(i8**, i64, i64) #1

declare dso_local i32 @tab_from_to(i64, i64) #1

declare dso_local i32 @putc(i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
