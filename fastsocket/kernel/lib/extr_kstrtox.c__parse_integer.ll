; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_kstrtox.c__parse_integer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_kstrtox.c__parse_integer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ULLONG_MAX = common dso_local global i64 0, align 8
@KSTRTOX_OVERFLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_parse_integer(i8* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %72, %3
  %12 = load i8*, i8** %4, align 8
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %15, label %84

15:                                               ; preds = %11
  %16 = load i8*, i8** %4, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp sle i32 48, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = load i8*, i8** %4, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp sle i32 %23, 57
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i8*, i8** %4, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = sub nsw i32 %28, 48
  store i32 %29, i32* %10, align 4
  br label %51

30:                                               ; preds = %20, %15
  %31 = load i8*, i8** %4, align 8
  %32 = load i8, i8* %31, align 1
  %33 = call signext i8 @_tolower(i8 signext %32)
  %34 = sext i8 %33 to i32
  %35 = icmp sle i32 97, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %30
  %37 = load i8*, i8** %4, align 8
  %38 = load i8, i8* %37, align 1
  %39 = call signext i8 @_tolower(i8 signext %38)
  %40 = sext i8 %39 to i32
  %41 = icmp sle i32 %40, 102
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load i8*, i8** %4, align 8
  %44 = load i8, i8* %43, align 1
  %45 = call signext i8 @_tolower(i8 signext %44)
  %46 = sext i8 %45 to i32
  %47 = sub nsw i32 %46, 97
  %48 = add nsw i32 %47, 10
  store i32 %48, i32* %10, align 4
  br label %50

49:                                               ; preds = %36, %30
  br label %84

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50, %25
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp uge i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %84

56:                                               ; preds = %51
  %57 = load i64, i64* %7, align 8
  %58 = and i64 %57, -1152921504606846976
  %59 = call i64 @unlikely(i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %56
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* @ULLONG_MAX, align 8
  %64 = load i32, i32* %10, align 4
  %65 = zext i32 %64 to i64
  %66 = sub nsw i64 %63, %65
  %67 = load i32, i32* %5, align 4
  %68 = call i64 @div_u64(i64 %66, i32 %67)
  %69 = icmp ugt i64 %62, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  store i32 1, i32* %9, align 4
  br label %71

71:                                               ; preds = %70, %61
  br label %72

72:                                               ; preds = %71, %56
  %73 = load i64, i64* %7, align 8
  %74 = load i32, i32* %5, align 4
  %75 = zext i32 %74 to i64
  %76 = mul i64 %73, %75
  %77 = load i32, i32* %10, align 4
  %78 = zext i32 %77 to i64
  %79 = add i64 %76, %78
  store i64 %79, i64* %7, align 8
  %80 = load i32, i32* %8, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %8, align 4
  %82 = load i8*, i8** %4, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %4, align 8
  br label %11

84:                                               ; preds = %55, %49, %11
  %85 = load i64, i64* %7, align 8
  %86 = load i64*, i64** %6, align 8
  store i64 %85, i64* %86, align 8
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load i32, i32* @KSTRTOX_OVERFLOW, align 4
  %91 = load i32, i32* %8, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %8, align 4
  br label %93

93:                                               ; preds = %89, %84
  %94 = load i32, i32* %8, align 4
  ret i32 %94
}

declare dso_local signext i8 @_tolower(i8 signext) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i64 @div_u64(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
