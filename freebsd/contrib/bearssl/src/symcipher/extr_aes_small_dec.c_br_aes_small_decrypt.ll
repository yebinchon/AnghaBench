; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_small_dec.c_br_aes_small_decrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_small_dec.c_br_aes_small_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_aes_small_decrypt(i32 %0, i32* %1, i8* %2) #0 {
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
  %30 = load i32, i32* %4, align 4
  %31 = shl i32 %30, 2
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = call i32 @add_round_key(i32* %28, i32* %33)
  %35 = load i32, i32* %4, align 4
  %36 = sub i32 %35, 1
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %54, %27
  %38 = load i32, i32* %9, align 4
  %39 = icmp ugt i32 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %37
  %41 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %42 = call i32 @inv_shift_rows(i32* %41)
  %43 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %44 = call i32 @inv_sub_bytes(i32* %43)
  %45 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %9, align 4
  %48 = shl i32 %47, 2
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = call i32 @add_round_key(i32* %45, i32* %50)
  %52 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %53 = call i32 @inv_mix_columns(i32* %52)
  br label %54

54:                                               ; preds = %40
  %55 = load i32, i32* %9, align 4
  %56 = add i32 %55, -1
  store i32 %56, i32* %9, align 4
  br label %37

57:                                               ; preds = %37
  %58 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %59 = call i32 @inv_shift_rows(i32* %58)
  %60 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %61 = call i32 @inv_sub_bytes(i32* %60)
  %62 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @add_round_key(i32* %62, i32* %63)
  store i32 0, i32* %9, align 4
  br label %65

65:                                               ; preds = %78, %57
  %66 = load i32, i32* %9, align 4
  %67 = icmp ult i32 %66, 16
  br i1 %67, label %68, label %81

68:                                               ; preds = %65
  %69 = load i32, i32* %9, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = trunc i32 %72 to i8
  %74 = load i8*, i8** %7, align 8
  %75 = load i32, i32* %9, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  store i8 %73, i8* %77, align 1
  br label %78

78:                                               ; preds = %68
  %79 = load i32, i32* %9, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %9, align 4
  br label %65

81:                                               ; preds = %65
  ret void
}

declare dso_local i32 @add_round_key(i32*, i32*) #1

declare dso_local i32 @inv_shift_rows(i32*) #1

declare dso_local i32 @inv_sub_bytes(i32*) #1

declare dso_local i32 @inv_mix_columns(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
