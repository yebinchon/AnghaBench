; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_poly1305_i15.c_poly1305_inner.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_poly1305_i15.c_poly1305_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@P1305 = common dso_local global i32 0, align 4
@P0I = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i8*, i64)* @poly1305_inner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @poly1305_inner(i32* %0, i32* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [16 x i8], align 16
  %11 = alloca [16 x i8], align 16
  %12 = alloca [10 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load i8*, i8** %7, align 8
  store i8* %15, i8** %9, align 8
  br label %16

16:                                               ; preds = %47, %4
  %17 = load i64, i64* %8, align 8
  %18 = icmp ugt i64 %17, 0
  br i1 %18, label %19, label %78

19:                                               ; preds = %16
  %20 = load i64, i64* %8, align 8
  %21 = icmp ult i64 %20, 16
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %24 = call i32 @memset(i8* %23, i32 0, i32 16)
  %25 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %26 = load i8*, i8** %9, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @memcpy(i8* %25, i8* %26, i64 %27)
  %29 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  store i8* %29, i8** %9, align 8
  store i64 16, i64* %8, align 8
  br label %30

30:                                               ; preds = %22, %19
  store i32 0, i32* %14, align 4
  br label %31

31:                                               ; preds = %44, %30
  %32 = load i32, i32* %14, align 4
  %33 = icmp slt i32 %32, 16
  br i1 %33, label %34, label %47

34:                                               ; preds = %31
  %35 = load i8*, i8** %9, align 8
  %36 = load i32, i32* %14, align 4
  %37 = sub nsw i32 15, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %35, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = load i32, i32* %14, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 %42
  store i8 %40, i8* %43, align 1
  br label %44

44:                                               ; preds = %34
  %45 = load i32, i32* %14, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %14, align 4
  br label %31

47:                                               ; preds = %31
  %48 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 0
  %49 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %50 = load i32, i32* @P1305, align 4
  %51 = call i32 @br_i15_decode_mod(i32* %48, i8* %49, i32 16, i32 %50)
  %52 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 9
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, 256
  store i32 %54, i32* %52, align 4
  %55 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 0
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @br_i15_add(i32* %55, i32* %56, i32 1)
  store i32 %57, i32* %13, align 4
  %58 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 0
  %59 = load i32, i32* @P1305, align 4
  %60 = call i32 @br_i15_sub(i32* %58, i32 %59, i32 0)
  %61 = call i32 @NOT(i32 %60)
  %62 = load i32, i32* %13, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %13, align 4
  %64 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 0
  %65 = load i32, i32* @P1305, align 4
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @br_i15_sub(i32* %64, i32 %65, i32 %66)
  %68 = load i32*, i32** %5, align 8
  %69 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 0
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* @P1305, align 4
  %72 = load i32, i32* @P0I, align 4
  %73 = call i32 @br_i15_montymul(i32* %68, i32* %69, i32* %70, i32 %71, i32 %72)
  %74 = load i8*, i8** %9, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 16
  store i8* %75, i8** %9, align 8
  %76 = load i64, i64* %8, align 8
  %77 = sub i64 %76, 16
  store i64 %77, i64* %8, align 8
  br label %16

78:                                               ; preds = %16
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @br_i15_decode_mod(i32*, i8*, i32, i32) #1

declare dso_local i32 @br_i15_add(i32*, i32*, i32) #1

declare dso_local i32 @NOT(i32) #1

declare dso_local i32 @br_i15_sub(i32*, i32, i32) #1

declare dso_local i32 @br_i15_montymul(i32*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
