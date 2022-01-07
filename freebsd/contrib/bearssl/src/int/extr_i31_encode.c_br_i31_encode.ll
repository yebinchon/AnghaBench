; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/int/extr_i31_encode.c_br_i31_encode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/int/extr_i31_encode.c_br_i31_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_i31_encode(i8* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 31
  %18 = ashr i32 %17, 5
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %9, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load i8*, i8** %4, align 8
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @memset(i8* %23, i32 0, i64 %24)
  br label %95

26:                                               ; preds = %3
  %27 = load i8*, i8** %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  store i8* %29, i8** %7, align 8
  store i64 1, i64* %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %94, %26
  %31 = load i64, i64* %5, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %95

33:                                               ; preds = %30
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = icmp ule i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i32*, i32** %6, align 8
  %39 = load i64, i64* %8, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  br label %43

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42, %37
  %44 = phi i32 [ %41, %37 ], [ 0, %42 ]
  store i32 %44, i32* %12, align 4
  %45 = load i64, i64* %8, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %8, align 8
  %47 = load i32, i32* %11, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %10, align 4
  store i32 31, i32* %11, align 4
  br label %94

51:                                               ; preds = %43
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %11, align 4
  %55 = shl i32 %53, %54
  %56 = or i32 %52, %55
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %11, align 4
  %61 = sub nsw i32 31, %60
  %62 = ashr i32 %59, %61
  store i32 %62, i32* %10, align 4
  %63 = load i64, i64* %5, align 8
  %64 = icmp uge i64 %63, 4
  br i1 %64, label %65, label %73

65:                                               ; preds = %51
  %66 = load i8*, i8** %7, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 -4
  store i8* %67, i8** %7, align 8
  %68 = load i64, i64* %5, align 8
  %69 = sub i64 %68, 4
  store i64 %69, i64* %5, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @br_enc32be(i8* %70, i32 %71)
  br label %93

73:                                               ; preds = %51
  %74 = load i64, i64* %5, align 8
  switch i64 %74, label %92 [
    i64 3, label %75
    i64 2, label %81
    i64 1, label %87
  ]

75:                                               ; preds = %73
  %76 = load i32, i32* %13, align 4
  %77 = ashr i32 %76, 16
  %78 = trunc i32 %77 to i8
  %79 = load i8*, i8** %7, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 -3
  store i8 %78, i8* %80, align 1
  br label %81

81:                                               ; preds = %73, %75
  %82 = load i32, i32* %13, align 4
  %83 = ashr i32 %82, 8
  %84 = trunc i32 %83 to i8
  %85 = load i8*, i8** %7, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 -2
  store i8 %84, i8* %86, align 1
  br label %87

87:                                               ; preds = %73, %81
  %88 = load i32, i32* %13, align 4
  %89 = trunc i32 %88 to i8
  %90 = load i8*, i8** %7, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 -1
  store i8 %89, i8* %91, align 1
  br label %92

92:                                               ; preds = %73, %87
  br label %95

93:                                               ; preds = %65
  br label %94

94:                                               ; preds = %93, %49
  br label %30

95:                                               ; preds = %22, %92, %30
  ret void
}

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @br_enc32be(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
