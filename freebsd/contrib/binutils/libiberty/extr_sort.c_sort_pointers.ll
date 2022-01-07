; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_sort.c_sort_pointers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_sort.c_sort_pointers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UCHAR_MAX = common dso_local global i32 0, align 4
@DIGIT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sort_pointers(i64 %0, i8** %1, i8** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8**, align 8
  store i64 %0, i64* %4, align 8
  store i8** %1, i8*** %5, align 8
  store i8** %2, i8*** %6, align 8
  %17 = load i32, i32* @UCHAR_MAX, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %7, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %8, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %22

22:                                               ; preds = %34, %3
  %23 = load i64, i64* %10, align 8
  %24 = icmp ult i64 %23, 8
  br i1 %24, label %25, label %37

25:                                               ; preds = %22
  %26 = load i32, i32* @UCHAR_MAX, align 4
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* %11, align 8
  %30 = mul i64 %29, %28
  store i64 %30, i64* %11, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* %11, align 8
  %33 = add i64 %32, %31
  store i64 %33, i64* %11, align 8
  br label %34

34:                                               ; preds = %25
  %35 = load i64, i64* %10, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %10, align 8
  br label %22

37:                                               ; preds = %22
  %38 = bitcast i64* %11 to i8*
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 8
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 0
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %9, align 4
  store i64 0, i64* %10, align 8
  br label %44

44:                                               ; preds = %137, %37
  %45 = load i64, i64* %10, align 8
  %46 = icmp ult i64 %45, 8
  br i1 %46, label %47, label %140

47:                                               ; preds = %44
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i64, i64* %10, align 8
  %52 = sub i64 8, %51
  store i64 %52, i64* %11, align 8
  br label %55

53:                                               ; preds = %47
  %54 = load i64, i64* %10, align 8
  store i64 %54, i64* %11, align 8
  br label %55

55:                                               ; preds = %53, %50
  %56 = load i32, i32* @UCHAR_MAX, align 4
  %57 = add nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 4
  %60 = trunc i64 %59 to i32
  %61 = call i32 @memset(i32* %21, i32 0, i32 %60)
  %62 = load i8**, i8*** %5, align 8
  %63 = bitcast i8** %62 to i8*
  %64 = load i64, i64* %11, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  store i8* %65, i8** %13, align 8
  %66 = load i8**, i8*** %5, align 8
  %67 = load i64, i64* %4, align 8
  %68 = getelementptr inbounds i8*, i8** %66, i64 %67
  %69 = bitcast i8** %68 to i8*
  %70 = load i64, i64* %11, align 8
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  store i8* %71, i8** %14, align 8
  %72 = load i8*, i8** %13, align 8
  store i8* %72, i8** %12, align 8
  br label %73

73:                                               ; preds = %84, %55
  %74 = load i8*, i8** %12, align 8
  %75 = load i8*, i8** %14, align 8
  %76 = icmp ult i8* %74, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %73
  %78 = load i8*, i8** %12, align 8
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i64
  %81 = getelementptr inbounds i32, i32* %21, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %77
  %85 = load i8*, i8** %12, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 8
  store i8* %86, i8** %12, align 8
  br label %73

87:                                               ; preds = %73
  %88 = getelementptr inbounds i32, i32* %21, i64 1
  store i32* %88, i32** %15, align 8
  br label %89

89:                                               ; preds = %103, %87
  %90 = load i32*, i32** %15, align 8
  %91 = load i32, i32* @UCHAR_MAX, align 4
  %92 = add nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %21, i64 %93
  %95 = icmp ult i32* %90, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %89
  %97 = load i32*, i32** %15, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 -1
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %15, align 8
  %101 = load i32, i32* %100, align 4
  %102 = add i32 %101, %99
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %96
  %104 = load i32*, i32** %15, align 8
  %105 = getelementptr inbounds i32, i32* %104, i32 1
  store i32* %105, i32** %15, align 8
  br label %89

106:                                              ; preds = %89
  %107 = load i8**, i8*** %5, align 8
  %108 = load i64, i64* %4, align 8
  %109 = getelementptr inbounds i8*, i8** %107, i64 %108
  %110 = getelementptr inbounds i8*, i8** %109, i64 -1
  store i8** %110, i8*** %16, align 8
  br label %111

111:                                              ; preds = %130, %106
  %112 = load i8**, i8*** %16, align 8
  %113 = load i8**, i8*** %5, align 8
  %114 = icmp uge i8** %112, %113
  br i1 %114, label %115, label %133

115:                                              ; preds = %111
  %116 = load i8**, i8*** %16, align 8
  %117 = load i8*, i8** %116, align 8
  %118 = load i8**, i8*** %6, align 8
  %119 = load i8**, i8*** %16, align 8
  %120 = bitcast i8** %119 to i8*
  %121 = load i64, i64* %11, align 8
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i64
  %125 = getelementptr inbounds i32, i32* %21, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = add i32 %126, -1
  store i32 %127, i32* %125, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %118, i64 %128
  store i8* %117, i8** %129, align 8
  br label %130

130:                                              ; preds = %115
  %131 = load i8**, i8*** %16, align 8
  %132 = getelementptr inbounds i8*, i8** %131, i32 -1
  store i8** %132, i8*** %16, align 8
  br label %111

133:                                              ; preds = %111
  %134 = load i8**, i8*** %5, align 8
  store i8** %134, i8*** %16, align 8
  %135 = load i8**, i8*** %6, align 8
  store i8** %135, i8*** %5, align 8
  %136 = load i8**, i8*** %16, align 8
  store i8** %136, i8*** %6, align 8
  br label %137

137:                                              ; preds = %133
  %138 = load i64, i64* %10, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %10, align 8
  br label %44

140:                                              ; preds = %44
  %141 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %141)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
