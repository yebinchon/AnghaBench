; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gensupport.c_hash_c_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gensupport.c_hash_c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c_test = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @hash_c_test(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.c_test*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.c_test*
  store %struct.c_test* %10, %struct.c_test** %3, align 8
  %11 = load %struct.c_test*, %struct.c_test** %3, align 8
  %12 = getelementptr inbounds %struct.c_test, %struct.c_test* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  store i8* %15, i8** %4, align 8
  store i8 0, i8* %6, align 1
  br label %16

16:                                               ; preds = %22, %1
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %5, align 8
  %19 = load i8, i8* %17, align 1
  store i8 %19, i8* %7, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %16
  %23 = load i8, i8* %7, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* %7, align 1
  %26 = zext i8 %25 to i32
  %27 = shl i32 %26, 17
  %28 = add nsw i32 %24, %27
  %29 = load i8, i8* %6, align 1
  %30 = zext i8 %29 to i32
  %31 = add nsw i32 %30, %28
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %6, align 1
  %33 = load i8, i8* %6, align 1
  %34 = zext i8 %33 to i32
  %35 = ashr i32 %34, 2
  %36 = load i8, i8* %6, align 1
  %37 = zext i8 %36 to i32
  %38 = xor i32 %37, %35
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %6, align 1
  br label %16

40:                                               ; preds = %16
  %41 = load i8*, i8** %5, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = ptrtoint i8* %41 to i64
  %44 = ptrtoint i8* %42 to i64
  %45 = sub i64 %43, %44
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = shl i32 %48, 17
  %50 = add i32 %47, %49
  %51 = load i8, i8* %6, align 1
  %52 = zext i8 %51 to i32
  %53 = add i32 %52, %50
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %6, align 1
  %55 = load i8, i8* %6, align 1
  %56 = zext i8 %55 to i32
  %57 = ashr i32 %56, 2
  %58 = load i8, i8* %6, align 1
  %59 = zext i8 %58 to i32
  %60 = xor i32 %59, %57
  %61 = trunc i32 %60 to i8
  store i8 %61, i8* %6, align 1
  %62 = load i8, i8* %6, align 1
  ret i8 %62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
