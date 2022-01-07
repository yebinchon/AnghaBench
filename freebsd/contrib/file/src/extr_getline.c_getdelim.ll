; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/file/src/extr_getline.c_getdelim.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/file/src/extr_getline.c_getdelim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFSIZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getdelim(i8** %0, i64* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %17 = load i8**, i8*** %6, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %4
  %21 = load i64*, i64** %7, align 8
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %20, %4
  %25 = load i64, i64* @BUFSIZ, align 8
  %26 = load i64*, i64** %7, align 8
  store i64 %25, i64* %26, align 8
  %27 = load i64*, i64** %7, align 8
  %28 = load i64, i64* %27, align 8
  %29 = call i8* @malloc(i64 %28)
  %30 = load i8**, i8*** %6, align 8
  store i8* %29, i8** %30, align 8
  %31 = icmp eq i8* %29, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i32 -1, i32* %5, align 4
  br label %118

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %33, %20
  %35 = load i8**, i8*** %6, align 8
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %10, align 8
  %37 = load i8**, i8*** %6, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = load i64*, i64** %7, align 8
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  store i8* %41, i8** %11, align 8
  br label %42

42:                                               ; preds = %117, %34
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 @fgetc(i32* %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %66

47:                                               ; preds = %42
  %48 = load i32*, i32** %9, align 8
  %49 = call i64 @feof(i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %47
  %52 = load i8*, i8** %10, align 8
  %53 = load i8**, i8*** %6, align 8
  %54 = load i8*, i8** %53, align 8
  %55 = ptrtoint i8* %52 to i64
  %56 = ptrtoint i8* %54 to i64
  %57 = sub i64 %55, %56
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %51
  %62 = load i8*, i8** %10, align 8
  store i8 0, i8* %62, align 1
  %63 = load i32, i32* %13, align 4
  store i32 %63, i32* %5, align 4
  br label %118

64:                                               ; preds = %51
  br label %65

65:                                               ; preds = %64, %47
  store i32 -1, i32* %5, align 4
  br label %118

66:                                               ; preds = %42
  %67 = load i32, i32* %12, align 4
  %68 = trunc i32 %67 to i8
  %69 = load i8*, i8** %10, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %10, align 8
  store i8 %68, i8* %69, align 1
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %66
  %75 = load i8*, i8** %10, align 8
  store i8 0, i8* %75, align 1
  %76 = load i8*, i8** %10, align 8
  %77 = load i8**, i8*** %6, align 8
  %78 = load i8*, i8** %77, align 8
  %79 = ptrtoint i8* %76 to i64
  %80 = ptrtoint i8* %78 to i64
  %81 = sub i64 %79, %80
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %5, align 4
  br label %118

83:                                               ; preds = %66
  %84 = load i8*, i8** %10, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 2
  %86 = load i8*, i8** %11, align 8
  %87 = icmp uge i8* %85, %86
  br i1 %87, label %88, label %117

88:                                               ; preds = %83
  %89 = load i64*, i64** %7, align 8
  %90 = load i64, i64* %89, align 8
  %91 = mul i64 %90, 2
  store i64 %91, i64* %15, align 8
  %92 = load i8*, i8** %10, align 8
  %93 = load i8**, i8*** %6, align 8
  %94 = load i8*, i8** %93, align 8
  %95 = ptrtoint i8* %92 to i64
  %96 = ptrtoint i8* %94 to i64
  %97 = sub i64 %95, %96
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %16, align 4
  %99 = load i8**, i8*** %6, align 8
  %100 = load i8*, i8** %99, align 8
  %101 = load i64, i64* %15, align 8
  %102 = call i8* @realloc(i8* %100, i64 %101)
  store i8* %102, i8** %14, align 8
  %103 = icmp eq i8* %102, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %88
  store i32 -1, i32* %5, align 4
  br label %118

105:                                              ; preds = %88
  %106 = load i8*, i8** %14, align 8
  %107 = load i8**, i8*** %6, align 8
  store i8* %106, i8** %107, align 8
  %108 = load i64, i64* %15, align 8
  %109 = load i64*, i64** %7, align 8
  store i64 %108, i64* %109, align 8
  %110 = load i8*, i8** %14, align 8
  %111 = load i64, i64* %15, align 8
  %112 = getelementptr inbounds i8, i8* %110, i64 %111
  store i8* %112, i8** %11, align 8
  %113 = load i8*, i8** %14, align 8
  %114 = load i32, i32* %16, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  store i8* %116, i8** %10, align 8
  br label %117

117:                                              ; preds = %105, %83
  br label %42

118:                                              ; preds = %104, %74, %65, %61, %32
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @fgetc(i32*) #1

declare dso_local i64 @feof(i32*) #1

declare dso_local i8* @realloc(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
