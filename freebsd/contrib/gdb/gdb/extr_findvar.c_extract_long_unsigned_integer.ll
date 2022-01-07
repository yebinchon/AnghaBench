; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_findvar.c_extract_long_unsigned_integer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_findvar.c_extract_long_unsigned_integer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_BYTE_ORDER = common dso_local global i64 0, align 8
@BFD_ENDIAN_BIG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @extract_long_unsigned_integer(i8* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* %10, align 4
  %12 = load i64, i64* @TARGET_BYTE_ORDER, align 8
  %13 = load i64, i64* @BFD_ENDIAN_BIG, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %44

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  store i8* %16, i8** %8, align 8
  br label %17

17:                                               ; preds = %39, %15
  %18 = load i32, i32* %10, align 4
  %19 = icmp sgt i32 %18, 8
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load i8*, i8** %8, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = icmp ult i8* %21, %25
  br label %27

27:                                               ; preds = %20, %17
  %28 = phi i1 [ false, %17 ], [ %26, %20 ]
  br i1 %28, label %29, label %42

29:                                               ; preds = %27
  %30 = load i8*, i8** %8, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %10, align 4
  br label %38

37:                                               ; preds = %29
  br label %42

38:                                               ; preds = %34
  br label %39

39:                                               ; preds = %38
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %8, align 8
  br label %17

42:                                               ; preds = %37, %27
  %43 = load i8*, i8** %8, align 8
  store i8* %43, i8** %9, align 8
  br label %74

44:                                               ; preds = %3
  %45 = load i8*, i8** %5, align 8
  store i8* %45, i8** %9, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = getelementptr inbounds i8, i8* %49, i64 -1
  store i8* %50, i8** %8, align 8
  br label %51

51:                                               ; preds = %70, %44
  %52 = load i32, i32* %10, align 4
  %53 = icmp sgt i32 %52, 8
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i8*, i8** %8, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = icmp uge i8* %55, %56
  br label %58

58:                                               ; preds = %54, %51
  %59 = phi i1 [ false, %51 ], [ %57, %54 ]
  br i1 %59, label %60, label %73

60:                                               ; preds = %58
  %61 = load i8*, i8** %8, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %10, align 4
  br label %69

68:                                               ; preds = %60
  br label %73

69:                                               ; preds = %65
  br label %70

70:                                               ; preds = %69
  %71 = load i8*, i8** %8, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 -1
  store i8* %72, i8** %8, align 8
  br label %51

73:                                               ; preds = %68, %58
  br label %74

74:                                               ; preds = %73, %42
  %75 = load i32, i32* %10, align 4
  %76 = icmp sle i32 %75, 8
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = load i8*, i8** %9, align 8
  %79 = call i32 @extract_unsigned_integer(i8* %78, i32 8)
  %80 = sext i32 %79 to i64
  %81 = load i64*, i64** %7, align 8
  store i64 %80, i64* %81, align 8
  store i32 1, i32* %4, align 4
  br label %83

82:                                               ; preds = %74
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %82, %77
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @extract_unsigned_integer(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
