; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/tools/extr_files.c_looks_like_DER.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/tools/extr_files.c_looks_like_DER.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @looks_like_DER(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = icmp ult i64 %8, 2
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %74

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %4, align 8
  %14 = load i8, i8* %12, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp ne i32 %15, 48
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %74

18:                                               ; preds = %11
  %19 = load i8*, i8** %4, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %4, align 8
  %21 = load i8, i8* %19, align 1
  %22 = zext i8 %21 to i32
  store i32 %22, i32* %6, align 4
  %23 = load i64, i64* %5, align 8
  %24 = sub i64 %23, 2
  store i64 %24, i64* %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 128
  br i1 %26, label %27, label %33

27:                                               ; preds = %18
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %5, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %3, align 4
  br label %74

33:                                               ; preds = %18
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 %34, 128
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %74

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = sub nsw i32 %38, 128
  store i32 %39, i32* %6, align 4
  %40 = load i64, i64* %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = add i64 %42, 2
  %44 = icmp ult i64 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %74

46:                                               ; preds = %37
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* %5, align 8
  %50 = sub i64 %49, %48
  store i64 %50, i64* %5, align 8
  store i64 0, i64* %7, align 8
  br label %51

51:                                               ; preds = %61, %46
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %6, align 4
  %54 = icmp sgt i32 %52, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %51
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* %5, align 8
  %58 = lshr i64 %57, 8
  %59 = icmp ugt i64 %56, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %74

61:                                               ; preds = %55
  %62 = load i64, i64* %7, align 8
  %63 = shl i64 %62, 8
  %64 = load i8*, i8** %4, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %4, align 8
  %66 = load i8, i8* %64, align 1
  %67 = zext i8 %66 to i64
  %68 = add i64 %63, %67
  store i64 %68, i64* %7, align 8
  br label %51

69:                                               ; preds = %51
  %70 = load i64, i64* %7, align 8
  %71 = load i64, i64* %5, align 8
  %72 = icmp eq i64 %70, %71
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %69, %60, %45, %36, %27, %17, %10
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
