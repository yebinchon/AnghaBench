; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_small_enc.c_br_aes_small_encrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_small_enc.c_br_aes_small_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_aes_small_encrypt(i32 %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [16 x i32], align 16
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  store i8* %10, i8** %7, align 8
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %24, %3
  %12 = load i32, i32* %9, align 4
  %13 = icmp ult i32 %12, 16
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = load i8*, i8** %7, align 8
  %16 = load i32, i32* %9, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = load i32, i32* %9, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 %22
  store i32 %20, i32* %23, align 4
  br label %24

24:                                               ; preds = %14
  %25 = load i32, i32* %9, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %9, align 4
  br label %11

27:                                               ; preds = %11
  %28 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @add_round_key(i32* %28, i32* %29)
  store i32 1, i32* %9, align 4
  br label %31

31:                                               ; preds = %49, %27
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %31
  %36 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %37 = call i32 @sub_bytes(i32* %36)
  %38 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %39 = call i32 @shift_rows(i32* %38)
  %40 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %41 = call i32 @mix_columns(i32* %40)
  %42 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %9, align 4
  %45 = shl i32 %44, 2
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = call i32 @add_round_key(i32* %42, i32* %47)
  br label %49

49:                                               ; preds = %35
  %50 = load i32, i32* %9, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %31

52:                                               ; preds = %31
  %53 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %54 = call i32 @sub_bytes(i32* %53)
  %55 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %56 = call i32 @shift_rows(i32* %55)
  %57 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %4, align 4
  %60 = shl i32 %59, 2
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = call i32 @add_round_key(i32* %57, i32* %62)
  store i32 0, i32* %9, align 4
  br label %64

64:                                               ; preds = %77, %52
  %65 = load i32, i32* %9, align 4
  %66 = icmp ult i32 %65, 16
  br i1 %66, label %67, label %80

67:                                               ; preds = %64
  %68 = load i32, i32* %9, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = trunc i32 %71 to i8
  %73 = load i8*, i8** %7, align 8
  %74 = load i32, i32* %9, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  store i8 %72, i8* %76, align 1
  br label %77

77:                                               ; preds = %67
  %78 = load i32, i32* %9, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %64

80:                                               ; preds = %64
  ret void
}

declare dso_local i32 @add_round_key(i32*, i32*) #1

declare dso_local i32 @sub_bytes(i32*) #1

declare dso_local i32 @shift_rows(i32*) #1

declare dso_local i32 @mix_columns(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
