; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_exec.c_padvance.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_exec.c_padvance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @padvance(i8** %0, i8** %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8** %0, i8*** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8**, i8*** %5, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %152

17:                                               ; preds = %3
  %18 = load i8**, i8*** %5, align 8
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %9, align 8
  %20 = load i8**, i8*** %6, align 8
  %21 = icmp ne i8** %20, null
  br i1 %21, label %22, label %46

22:                                               ; preds = %17
  %23 = load i8*, i8** %9, align 8
  store i8* %23, i8** %8, align 8
  br label %24

24:                                               ; preds = %42, %22
  %25 = load i8*, i8** %8, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load i8*, i8** %8, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 58
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i8*, i8** %8, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 37
  br label %39

39:                                               ; preds = %34, %29, %24
  %40 = phi i1 [ false, %29 ], [ false, %24 ], [ %38, %34 ]
  br i1 %40, label %41, label %45

41:                                               ; preds = %39
  br label %42

42:                                               ; preds = %41
  %43 = load i8*, i8** %8, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %8, align 8
  br label %24

45:                                               ; preds = %39
  br label %65

46:                                               ; preds = %17
  %47 = load i8*, i8** %9, align 8
  store i8* %47, i8** %8, align 8
  br label %48

48:                                               ; preds = %61, %46
  %49 = load i8*, i8** %8, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load i8*, i8** %8, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 58
  br label %58

58:                                               ; preds = %53, %48
  %59 = phi i1 [ false, %48 ], [ %57, %53 ]
  br i1 %59, label %60, label %64

60:                                               ; preds = %58
  br label %61

61:                                               ; preds = %60
  %62 = load i8*, i8** %8, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %8, align 8
  br label %48

64:                                               ; preds = %58
  br label %65

65:                                               ; preds = %64, %45
  %66 = load i8*, i8** %7, align 8
  %67 = call i64 @strlen(i8* %66)
  store i64 %67, i64* %12, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = ptrtoint i8* %68 to i64
  %71 = ptrtoint i8* %69 to i64
  %72 = sub i64 %70, %71
  %73 = load i64, i64* %12, align 8
  %74 = add i64 %72, %73
  %75 = add i64 %74, 2
  store i64 %75, i64* %11, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = call i32 @STARTSTACKSTR(i8* %76)
  %78 = load i64, i64* %11, align 8
  %79 = load i8*, i8** %10, align 8
  %80 = call i32 @CHECKSTRSPACE(i64 %78, i8* %79)
  %81 = load i8*, i8** %8, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = icmp ne i8* %81, %82
  br i1 %83, label %84, label %102

84:                                               ; preds = %65
  %85 = load i8*, i8** %10, align 8
  %86 = load i8*, i8** %9, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = load i8*, i8** %9, align 8
  %89 = ptrtoint i8* %87 to i64
  %90 = ptrtoint i8* %88 to i64
  %91 = sub i64 %89, %90
  %92 = call i32 @memcpy(i8* %85, i8* %86, i64 %91)
  %93 = load i8*, i8** %8, align 8
  %94 = load i8*, i8** %9, align 8
  %95 = ptrtoint i8* %93 to i64
  %96 = ptrtoint i8* %94 to i64
  %97 = sub i64 %95, %96
  %98 = load i8*, i8** %10, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 %97
  store i8* %99, i8** %10, align 8
  %100 = load i8*, i8** %10, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %10, align 8
  store i8 47, i8* %100, align 1
  br label %102

102:                                              ; preds = %84, %65
  %103 = load i8*, i8** %10, align 8
  %104 = load i8*, i8** %7, align 8
  %105 = load i64, i64* %12, align 8
  %106 = add i64 %105, 1
  %107 = call i32 @memcpy(i8* %103, i8* %104, i64 %106)
  %108 = load i8**, i8*** %6, align 8
  %109 = icmp ne i8** %108, null
  br i1 %109, label %110, label %138

110:                                              ; preds = %102
  %111 = load i8*, i8** %8, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 37
  br i1 %114, label %115, label %135

115:                                              ; preds = %110
  %116 = load i8*, i8** %8, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %8, align 8
  %118 = load i8**, i8*** %6, align 8
  store i8* %117, i8** %118, align 8
  br label %119

119:                                              ; preds = %131, %115
  %120 = load i8*, i8** %8, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  %125 = load i8*, i8** %8, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp ne i32 %127, 58
  br label %129

129:                                              ; preds = %124, %119
  %130 = phi i1 [ false, %119 ], [ %128, %124 ]
  br i1 %130, label %131, label %134

131:                                              ; preds = %129
  %132 = load i8*, i8** %8, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %8, align 8
  br label %119

134:                                              ; preds = %129
  br label %137

135:                                              ; preds = %110
  %136 = load i8**, i8*** %6, align 8
  store i8* null, i8** %136, align 8
  br label %137

137:                                              ; preds = %135, %134
  br label %138

138:                                              ; preds = %137, %102
  %139 = load i8*, i8** %8, align 8
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 58
  br i1 %142, label %143, label %147

143:                                              ; preds = %138
  %144 = load i8*, i8** %8, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 1
  %146 = load i8**, i8*** %5, align 8
  store i8* %145, i8** %146, align 8
  br label %149

147:                                              ; preds = %138
  %148 = load i8**, i8*** %5, align 8
  store i8* null, i8** %148, align 8
  br label %149

149:                                              ; preds = %147, %143
  %150 = load i64, i64* %11, align 8
  %151 = call i8* @stalloc(i64 %150)
  store i8* %151, i8** %4, align 8
  br label %152

152:                                              ; preds = %149, %16
  %153 = load i8*, i8** %4, align 8
  ret i8* %153
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @STARTSTACKSTR(i8*) #1

declare dso_local i32 @CHECKSTRSPACE(i64, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i8* @stalloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
