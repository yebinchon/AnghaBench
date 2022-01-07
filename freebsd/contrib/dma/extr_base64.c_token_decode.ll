; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dma/extr_base64.c_token_decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dma/extr_base64.c_token_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DECODE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @token_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @token_decode(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @strlen(i8* %7)
  %9 = icmp slt i32 %8, 4
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @DECODE_ERROR, align 4
  store i32 %11, i32* %2, align 4
  br label %60

12:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %47, %12
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 4
  br i1 %15, label %16, label %50

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = mul i32 %17, 64
  store i32 %18, i32* %5, align 4
  %19 = load i8*, i8** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 61
  br i1 %25, label %26, label %29

26:                                               ; preds = %16
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %46

29:                                               ; preds = %16
  %30 = load i32, i32* %6, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, i32* @DECODE_ERROR, align 4
  store i32 %33, i32* %2, align 4
  br label %60

34:                                               ; preds = %29
  %35 = load i8*, i8** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = call i64 @pos(i8 signext %39)
  %41 = load i32, i32* %5, align 4
  %42 = zext i32 %41 to i64
  %43 = add nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %34
  br label %46

46:                                               ; preds = %45, %26
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %13

50:                                               ; preds = %13
  %51 = load i32, i32* %6, align 4
  %52 = icmp sgt i32 %51, 2
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i32, i32* @DECODE_ERROR, align 4
  store i32 %54, i32* %2, align 4
  br label %60

55:                                               ; preds = %50
  %56 = load i32, i32* %6, align 4
  %57 = shl i32 %56, 24
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %57, %58
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %55, %53, %32, %10
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @pos(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
