; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/rsa/extr_rsa_i15_oaep_decrypt.c_br_rsa_i15_oaep_decrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/rsa/extr_rsa_i15_oaep_decrypt.c_br_rsa_i15_oaep_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_rsa_i15_oaep_decrypt(i32* %0, i8* %1, i64 %2, %struct.TYPE_4__* %3, i8* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %11, align 8
  store i8* %4, i8** %12, align 8
  store i64* %5, i64** %13, align 8
  %15 = load i64*, i64** %13, align 8
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 7
  %21 = ashr i32 %20, 3
  %22 = sext i32 %21 to i64
  %23 = icmp ne i64 %16, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %38

25:                                               ; preds = %6
  %26 = load i8*, i8** %12, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %28 = call i32 @br_rsa_i15_private(i8* %26, %struct.TYPE_4__* %27)
  store i32 %28, i32* %14, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = load i64*, i64** %13, align 8
  %34 = call i32 @br_rsa_oaep_unpad(i32* %29, i8* %30, i64 %31, i8* %32, i64* %33)
  %35 = load i32, i32* %14, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %25, %24
  %39 = load i32, i32* %7, align 4
  ret i32 %39
}

declare dso_local i32 @br_rsa_i15_private(i8*, %struct.TYPE_4__*) #1

declare dso_local i32 @br_rsa_oaep_unpad(i32*, i8*, i64, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
