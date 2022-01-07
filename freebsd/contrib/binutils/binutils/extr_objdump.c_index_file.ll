; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objdump.c_index_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objdump.c_index_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@line_map_decrease = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (i8*, i64, i32*)* @index_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @index_file(i8* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 45, i32* %10, align 4
  store i8** null, i8*** %12, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %11, align 4
  %15 = load i8*, i8** %4, align 8
  store i8* %15, i8** %8, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  store i8* %18, i8** %9, align 8
  %19 = load i8*, i8** %4, align 8
  store i8* %19, i8** %7, align 8
  br label %20

20:                                               ; preds = %114, %3
  %21 = load i8*, i8** %7, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = icmp ult i8* %21, %22
  br i1 %23, label %24, label %117

24:                                               ; preds = %20
  %25 = load i8*, i8** %7, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 10
  br i1 %28, label %29, label %44

29:                                               ; preds = %24
  %30 = load i8*, i8** %7, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8*, i8** %9, align 8
  %33 = icmp ult i8* %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load i8*, i8** %7, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 13
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i8*, i8** %7, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %7, align 8
  br label %43

43:                                               ; preds = %40, %34, %29
  br label %66

44:                                               ; preds = %24
  %45 = load i8*, i8** %7, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 13
  br i1 %48, label %49, label %64

49:                                               ; preds = %44
  %50 = load i8*, i8** %7, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  %52 = load i8*, i8** %9, align 8
  %53 = icmp ult i8* %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load i8*, i8** %7, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 10
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i8*, i8** %7, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %7, align 8
  br label %63

63:                                               ; preds = %60, %54, %49
  br label %65

64:                                               ; preds = %44
  br label %114

65:                                               ; preds = %63
  br label %66

66:                                               ; preds = %65, %43
  %67 = load i8**, i8*** %12, align 8
  %68 = icmp eq i8** %67, null
  br i1 %68, label %75, label %69

69:                                               ; preds = %66
  %70 = load i64, i64* %13, align 8
  %71 = load i32, i32* %11, align 4
  %72 = add i32 %71, 1
  %73 = zext i32 %72 to i64
  %74 = icmp ult i64 %70, %73
  br i1 %74, label %75, label %105

75:                                               ; preds = %69, %66
  %76 = load i64, i64* @line_map_decrease, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = sub nsw i64 %78, %76
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp sle i32 %81, 1
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  store i32 1, i32* %10, align 4
  br label %84

84:                                               ; preds = %83, %75
  %85 = load i64, i64* %5, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = udiv i64 %85, %87
  %89 = add i64 %88, 1
  store i64 %89, i64* %13, align 8
  %90 = load i64, i64* %13, align 8
  %91 = load i32, i32* %11, align 4
  %92 = add i32 %91, 1
  %93 = zext i32 %92 to i64
  %94 = icmp ult i64 %90, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %84
  %96 = load i32, i32* %11, align 4
  %97 = add i32 %96, 1
  %98 = zext i32 %97 to i64
  store i64 %98, i64* %13, align 8
  br label %99

99:                                               ; preds = %95, %84
  %100 = load i64, i64* %13, align 8
  %101 = mul i64 %100, 8
  store i64 %101, i64* %14, align 8
  %102 = load i8**, i8*** %12, align 8
  %103 = load i64, i64* %14, align 8
  %104 = call i8** @xrealloc(i8** %102, i64 %103)
  store i8** %104, i8*** %12, align 8
  br label %105

105:                                              ; preds = %99, %69
  %106 = load i8*, i8** %8, align 8
  %107 = load i8**, i8*** %12, align 8
  %108 = load i32, i32* %11, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %11, align 4
  %110 = zext i32 %108 to i64
  %111 = getelementptr inbounds i8*, i8** %107, i64 %110
  store i8* %106, i8** %111, align 8
  %112 = load i8*, i8** %7, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 1
  store i8* %113, i8** %8, align 8
  br label %114

114:                                              ; preds = %105, %64
  %115 = load i8*, i8** %7, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %7, align 8
  br label %20

117:                                              ; preds = %20
  %118 = load i32, i32* %11, align 4
  %119 = load i32*, i32** %6, align 8
  store i32 %118, i32* %119, align 4
  %120 = load i8**, i8*** %12, align 8
  ret i8** %120
}

declare dso_local i8** @xrealloc(i8**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
