; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_libelf_ar_util.c__libelf_ar_get_number.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_libelf_ar_util.c__libelf_ar_get_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_libelf_ar_get_number(i8* %0, i64 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %15 = load i32, i32* %8, align 4
  %16 = icmp ule i32 %15, 10
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i8*, i8** %6, align 8
  store i8* %19, i8** %14, align 8
  %20 = load i8*, i8** %14, align 8
  %21 = load i64, i64* %7, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  store i8* %22, i8** %13, align 8
  br label %23

23:                                               ; preds = %35, %4
  %24 = load i8*, i8** %14, align 8
  %25 = load i8*, i8** %13, align 8
  %26 = icmp ult i8* %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i8*, i8** %14, align 8
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  store i32 %30, i32* %11, align 4
  %31 = icmp eq i32 %30, 32
  br label %32

32:                                               ; preds = %27, %23
  %33 = phi i1 [ false, %23 ], [ %31, %27 ]
  br i1 %33, label %34, label %38

34:                                               ; preds = %32
  br label %35

35:                                               ; preds = %34
  %36 = load i8*, i8** %14, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %14, align 8
  br label %23

38:                                               ; preds = %32
  store i64 0, i64* %10, align 8
  br label %39

39:                                               ; preds = %72, %38
  %40 = load i8*, i8** %14, align 8
  %41 = load i8*, i8** %13, align 8
  %42 = icmp ult i8* %40, %41
  br i1 %42, label %43, label %75

43:                                               ; preds = %39
  %44 = load i8*, i8** %14, align 8
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  store i32 %46, i32* %11, align 4
  %47 = icmp eq i32 %46, 32
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %75

49:                                               ; preds = %43
  %50 = load i32, i32* %11, align 4
  %51 = icmp ult i32 %50, 48
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %11, align 4
  %54 = icmp ugt i32 %53, 57
  br i1 %54, label %55, label %56

55:                                               ; preds = %52, %49
  store i32 0, i32* %5, align 4
  br label %78

56:                                               ; preds = %52
  %57 = load i32, i32* %11, align 4
  %58 = sub i32 %57, 48
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp uge i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %75

63:                                               ; preds = %56
  %64 = load i32, i32* %8, align 4
  %65 = zext i32 %64 to i64
  %66 = load i64, i64* %10, align 8
  %67 = mul i64 %66, %65
  store i64 %67, i64* %10, align 8
  %68 = load i32, i32* %12, align 4
  %69 = zext i32 %68 to i64
  %70 = load i64, i64* %10, align 8
  %71 = add i64 %70, %69
  store i64 %71, i64* %10, align 8
  br label %72

72:                                               ; preds = %63
  %73 = load i8*, i8** %14, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %14, align 8
  br label %39

75:                                               ; preds = %62, %48, %39
  %76 = load i64, i64* %10, align 8
  %77 = load i64*, i64** %9, align 8
  store i64 %76, i64* %77, align 8
  store i32 1, i32* %5, align 4
  br label %78

78:                                               ; preds = %75, %55
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
