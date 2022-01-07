; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dma/extr_base64.c_base64_encode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dma/extr_base64.c_base64_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@base64_chars = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @base64_encode(i8* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = mul nsw i32 %13, 4
  %15 = sdiv i32 %14, 3
  %16 = add nsw i32 %15, 4
  %17 = call i64 @malloc(i32 %16)
  %18 = inttoptr i64 %17 to i8*
  store i8* %18, i8** %8, align 8
  store i8* %18, i8** %9, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %129

22:                                               ; preds = %3
  %23 = load i8*, i8** %5, align 8
  store i8* %23, i8** %12, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %120, %22
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %123

28:                                               ; preds = %24
  %29 = load i8*, i8** %12, align 8
  %30 = load i32, i32* %10, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %10, align 4
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i8, i8* %29, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = mul nsw i32 %36, 256
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %28
  %42 = load i8*, i8** %12, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %41, %28
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = mul nsw i32 %53, 256
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %50
  %59 = load i8*, i8** %12, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %58, %50
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %10, align 4
  %70 = load i8*, i8** @base64_chars, align 8
  %71 = load i32, i32* %11, align 4
  %72 = and i32 %71, 16515072
  %73 = ashr i32 %72, 18
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %70, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = load i8*, i8** %9, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 0
  store i8 %76, i8* %78, align 1
  %79 = load i8*, i8** @base64_chars, align 8
  %80 = load i32, i32* %11, align 4
  %81 = and i32 %80, 258048
  %82 = ashr i32 %81, 12
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %79, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = load i8*, i8** %9, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 1
  store i8 %85, i8* %87, align 1
  %88 = load i8*, i8** @base64_chars, align 8
  %89 = load i32, i32* %11, align 4
  %90 = and i32 %89, 4032
  %91 = ashr i32 %90, 6
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %88, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = load i8*, i8** %9, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 2
  store i8 %94, i8* %96, align 1
  %97 = load i8*, i8** @base64_chars, align 8
  %98 = load i32, i32* %11, align 4
  %99 = and i32 %98, 63
  %100 = ashr i32 %99, 0
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %97, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = load i8*, i8** %9, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 3
  store i8 %103, i8* %105, align 1
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp sgt i32 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %67
  %110 = load i8*, i8** %9, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 3
  store i8 61, i8* %111, align 1
  br label %112

112:                                              ; preds = %109, %67
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* %6, align 4
  %115 = add nsw i32 %114, 1
  %116 = icmp sgt i32 %113, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %112
  %118 = load i8*, i8** %9, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 2
  store i8 61, i8* %119, align 1
  br label %120

120:                                              ; preds = %117, %112
  %121 = load i8*, i8** %9, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 4
  store i8* %122, i8** %9, align 8
  br label %24

123:                                              ; preds = %24
  %124 = load i8*, i8** %9, align 8
  store i8 0, i8* %124, align 1
  %125 = load i8*, i8** %8, align 8
  %126 = load i8**, i8*** %7, align 8
  store i8* %125, i8** %126, align 8
  %127 = load i8*, i8** %8, align 8
  %128 = call i32 @strlen(i8* %127)
  store i32 %128, i32* %4, align 4
  br label %129

129:                                              ; preds = %123, %21
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
