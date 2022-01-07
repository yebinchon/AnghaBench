; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/tools/extr_vector.c_vector_expand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/tools/extr_vector.c_vector_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vector_expand(i8* %0, i64 %1, i64* %2, i64* %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i64*, i64** %10, align 8
  %15 = load i64, i64* %14, align 8
  %16 = load i64*, i64** %9, align 8
  %17 = load i64, i64* %16, align 8
  %18 = sub i64 %15, %17
  %19 = load i64, i64* %11, align 8
  %20 = icmp uge i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i8*, i8** %7, align 8
  store i8* %22, i8** %6, align 8
  br label %63

23:                                               ; preds = %5
  %24 = load i64*, i64** %10, align 8
  %25 = load i64, i64* %24, align 8
  %26 = shl i64 %25, 1
  store i64 %26, i64* %12, align 8
  %27 = load i64, i64* %12, align 8
  %28 = load i64*, i64** %9, align 8
  %29 = load i64, i64* %28, align 8
  %30 = sub i64 %27, %29
  %31 = load i64, i64* %11, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %23
  %34 = load i64, i64* %11, align 8
  %35 = load i64*, i64** %9, align 8
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %34, %36
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %12, align 8
  %39 = icmp ult i64 %38, 8
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i64 8, i64* %12, align 8
  br label %41

41:                                               ; preds = %40, %33
  br label %42

42:                                               ; preds = %41, %23
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* %8, align 8
  %45 = mul i64 %43, %44
  %46 = call i8* @xmalloc(i64 %45)
  store i8* %46, i8** %13, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %59

49:                                               ; preds = %42
  %50 = load i8*, i8** %13, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = load i64*, i64** %10, align 8
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %8, align 8
  %55 = mul i64 %53, %54
  %56 = call i32 @memcpy(i8* %50, i8* %51, i64 %55)
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @xfree(i8* %57)
  br label %59

59:                                               ; preds = %49, %42
  %60 = load i64, i64* %12, align 8
  %61 = load i64*, i64** %10, align 8
  store i64 %60, i64* %61, align 8
  %62 = load i8*, i8** %13, align 8
  store i8* %62, i8** %6, align 8
  br label %63

63:                                               ; preds = %59, %21
  %64 = load i8*, i8** %6, align 8
  ret i8* %64
}

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @xfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
