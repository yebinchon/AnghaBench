; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-browser.c_TB_getline.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-browser.c_TB_getline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@MAX_CANON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8**, i64*, i32*)* @TB_getline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @TB_getline(i8** %0, i64* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i8**, i8*** %5, align 8
  %15 = icmp eq i8** %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i64*, i64** %6, align 8
  %18 = icmp eq i64* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16, %3
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* @errno, align 4
  store i64 -1, i64* %4, align 8
  br label %116

21:                                               ; preds = %16
  %22 = load i32*, i32** %7, align 8
  %23 = call i64 @ferror(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i64 -1, i64* %4, align 8
  br label %116

26:                                               ; preds = %21
  %27 = load i8**, i8*** %5, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i64*, i64** %6, align 8
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %32, 2
  br i1 %33, label %34, label %46

34:                                               ; preds = %30, %26
  %35 = load i8**, i8*** %5, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @xrealloc(i8* %36, i64 256)
  %38 = inttoptr i64 %37 to i8*
  store i8* %38, i8** %8, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i64 -1, i64* %4, align 8
  br label %116

42:                                               ; preds = %34
  %43 = load i8*, i8** %8, align 8
  %44 = load i8**, i8*** %5, align 8
  store i8* %43, i8** %44, align 8
  %45 = load i64*, i64** %6, align 8
  store i64 256, i64* %45, align 8
  br label %46

46:                                               ; preds = %42, %30
  %47 = load i8**, i8*** %5, align 8
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %8, align 8
  %49 = load i64*, i64** %6, align 8
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %10, align 8
  %51 = load i64, i64* %10, align 8
  store i64 %51, i64* %11, align 8
  %52 = load i8*, i8** %8, align 8
  store i8* %52, i8** %9, align 8
  br label %53

53:                                               ; preds = %46, %90
  br label %54

54:                                               ; preds = %74, %53
  %55 = load i64, i64* %11, align 8
  %56 = add nsw i64 %55, -1
  store i64 %56, i64* %11, align 8
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %54
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @getc(i32* %59)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* @EOF, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %101

65:                                               ; preds = %58
  %66 = load i32, i32* %13, align 4
  %67 = trunc i32 %66 to i8
  %68 = load i8*, i8** %9, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %9, align 8
  store i8 %67, i8* %68, align 1
  %70 = sext i8 %67 to i32
  %71 = icmp eq i32 %70, 10
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %108

73:                                               ; preds = %65
  br label %74

74:                                               ; preds = %73
  br label %54

75:                                               ; preds = %54
  %76 = load i8*, i8** %9, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = ptrtoint i8* %76 to i64
  %79 = ptrtoint i8* %77 to i64
  %80 = sub i64 %78, %79
  store i64 %80, i64* %12, align 8
  %81 = load i64, i64* %10, align 8
  %82 = mul nsw i64 %81, 2
  store i64 %82, i64* %10, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = load i64, i64* %10, align 8
  %85 = call i64 @xrealloc(i8* %83, i64 %84)
  %86 = inttoptr i64 %85 to i8*
  store i8* %86, i8** %8, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = icmp eq i8* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %75
  br label %101

90:                                               ; preds = %75
  %91 = load i8*, i8** %8, align 8
  %92 = load i8**, i8*** %5, align 8
  store i8* %91, i8** %92, align 8
  %93 = load i64, i64* %10, align 8
  %94 = load i64*, i64** %6, align 8
  store i64 %93, i64* %94, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = load i64, i64* %12, align 8
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  store i8* %97, i8** %9, align 8
  %98 = load i64, i64* %10, align 8
  %99 = load i64, i64* %12, align 8
  %100 = sub nsw i64 %98, %99
  store i64 %100, i64* %11, align 8
  br label %53

101:                                              ; preds = %89, %64
  %102 = load i8*, i8** %9, align 8
  %103 = load i8**, i8*** %5, align 8
  %104 = load i8*, i8** %103, align 8
  %105 = icmp eq i8* %102, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  store i64 -1, i64* %4, align 8
  br label %116

107:                                              ; preds = %101
  br label %108

108:                                              ; preds = %107, %72
  %109 = load i8*, i8** %9, align 8
  store i8 0, i8* %109, align 1
  %110 = load i8*, i8** %9, align 8
  %111 = load i8**, i8*** %5, align 8
  %112 = load i8*, i8** %111, align 8
  %113 = ptrtoint i8* %110 to i64
  %114 = ptrtoint i8* %112 to i64
  %115 = sub i64 %113, %114
  store i64 %115, i64* %4, align 8
  br label %116

116:                                              ; preds = %108, %106, %41, %25, %19
  %117 = load i64, i64* %4, align 8
  ret i64 %117
}

declare dso_local i64 @ferror(i32*) #1

declare dso_local i64 @xrealloc(i8*, i64) #1

declare dso_local i32 @getc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
