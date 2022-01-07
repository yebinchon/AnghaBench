; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dma/extr_base64.c_base64_decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dma/extr_base64.c_base64_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@base64_chars = common dso_local global i32 0, align 4
@DECODE_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @base64_decode(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %7, align 8
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %6, align 8
  br label %12

12:                                               ; preds = %68, %2
  %13 = load i8*, i8** %6, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %12
  %18 = load i8*, i8** %6, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 61
  br i1 %21, label %28, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @base64_chars, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = load i8, i8* %24, align 1
  %26 = call i64 @strchr(i32 %23, i8 signext %25)
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %22, %17
  %29 = phi i1 [ true, %17 ], [ %27, %22 ]
  br label %30

30:                                               ; preds = %28, %12
  %31 = phi i1 [ false, %12 ], [ %29, %28 ]
  br i1 %31, label %32, label %71

32:                                               ; preds = %30
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @token_decode(i8* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = lshr i32 %35, 24
  %37 = and i32 %36, 255
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @DECODE_ERROR, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  store i32 -1, i32* %3, align 4
  br label %78

42:                                               ; preds = %32
  %43 = load i32, i32* %8, align 4
  %44 = lshr i32 %43, 16
  %45 = and i32 %44, 255
  %46 = trunc i32 %45 to i8
  %47 = load i8*, i8** %7, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %7, align 8
  store i8 %46, i8* %47, align 1
  %49 = load i32, i32* %9, align 4
  %50 = icmp ult i32 %49, 2
  br i1 %50, label %51, label %58

51:                                               ; preds = %42
  %52 = load i32, i32* %8, align 4
  %53 = lshr i32 %52, 8
  %54 = and i32 %53, 255
  %55 = trunc i32 %54 to i8
  %56 = load i8*, i8** %7, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %7, align 8
  store i8 %55, i8* %56, align 1
  br label %58

58:                                               ; preds = %51, %42
  %59 = load i32, i32* %9, align 4
  %60 = icmp ult i32 %59, 1
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load i32, i32* %8, align 4
  %63 = and i32 %62, 255
  %64 = trunc i32 %63 to i8
  %65 = load i8*, i8** %7, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %7, align 8
  store i8 %64, i8* %65, align 1
  br label %67

67:                                               ; preds = %61, %58
  br label %68

68:                                               ; preds = %67
  %69 = load i8*, i8** %6, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 4
  store i8* %70, i8** %6, align 8
  br label %12

71:                                               ; preds = %30
  %72 = load i8*, i8** %7, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = ptrtoint i8* %72 to i64
  %75 = ptrtoint i8* %73 to i64
  %76 = sub i64 %74, %75
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %71, %41
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i64 @strchr(i32, i8 signext) #1

declare dso_local i32 @token_decode(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
