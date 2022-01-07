; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_ascii.c_srec_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_ascii.c_srec_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64*, i64*, i64*)* @srec_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srec_read(i8* %0, i8* %1, i64* %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  store i32 0, i32* %16, align 4
  store i32 2, i32* %18, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = call i64 @read_num(i8* %19, i32* %18, i64* %12, i32 1, i32* %16)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %96

23:                                               ; preds = %5
  %24 = load i8*, i8** %7, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = load i8, i8* %25, align 1
  %27 = load i8*, i8** %8, align 8
  store i8 %26, i8* %27, align 1
  %28 = load i8*, i8** %8, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  switch i32 %30, label %34 [
    i32 48, label %31
    i32 49, label %31
    i32 53, label %31
    i32 57, label %31
    i32 50, label %32
    i32 56, label %32
    i32 51, label %33
    i32 55, label %33
  ]

31:                                               ; preds = %23, %23, %23, %23
  store i64 2, i64* %15, align 8
  br label %35

32:                                               ; preds = %23, %23
  store i64 3, i64* %15, align 8
  br label %35

33:                                               ; preds = %23, %23
  store i64 4, i64* %15, align 8
  br label %35

34:                                               ; preds = %23
  store i32 -1, i32* %6, align 4
  br label %96

35:                                               ; preds = %33, %32, %31
  %36 = load i8*, i8** %7, align 8
  %37 = load i64*, i64** %9, align 8
  %38 = load i64, i64* %15, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i64 @read_num(i8* %36, i32* %18, i64* %37, i32 %39, i32* %16)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 -1, i32* %6, align 4
  br label %96

43:                                               ; preds = %35
  %44 = load i64, i64* %15, align 8
  %45 = add i64 %44, 1
  %46 = load i64, i64* %12, align 8
  %47 = sub i64 %46, %45
  store i64 %47, i64* %12, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp sge i32 %50, 48
  br i1 %51, label %52, label %80

52:                                               ; preds = %43
  %53 = load i8*, i8** %8, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp sle i32 %55, 51
  br i1 %56, label %57, label %80

57:                                               ; preds = %52
  store i32 0, i32* %17, align 4
  br label %58

58:                                               ; preds = %74, %57
  %59 = load i32, i32* %17, align 4
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* %12, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %77

63:                                               ; preds = %58
  %64 = load i8*, i8** %7, align 8
  %65 = call i64 @read_num(i8* %64, i32* %18, i64* %14, i32 1, i32* %16)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i32 -1, i32* %6, align 4
  br label %96

68:                                               ; preds = %63
  %69 = load i64, i64* %14, align 8
  %70 = load i64*, i64** %10, align 8
  %71 = load i32, i32* %17, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  store i64 %69, i64* %73, align 8
  br label %74

74:                                               ; preds = %68
  %75 = load i32, i32* %17, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %17, align 4
  br label %58

77:                                               ; preds = %58
  %78 = load i64, i64* %12, align 8
  %79 = load i64*, i64** %11, align 8
  store i64 %78, i64* %79, align 8
  br label %82

80:                                               ; preds = %52, %43
  %81 = load i64*, i64** %11, align 8
  store i64 0, i64* %81, align 8
  br label %82

82:                                               ; preds = %80, %77
  %83 = load i8*, i8** %7, align 8
  %84 = call i64 @read_num(i8* %83, i32* %18, i64* %13, i32 1, i32* null)
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  store i32 -1, i32* %6, align 4
  br label %96

87:                                               ; preds = %82
  %88 = load i64, i64* %13, align 8
  %89 = trunc i64 %88 to i32
  %90 = load i32, i32* %16, align 4
  %91 = xor i32 %90, -1
  %92 = and i32 %91, 255
  %93 = icmp ne i32 %89, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  store i32 -1, i32* %6, align 4
  br label %96

95:                                               ; preds = %87
  store i32 0, i32* %6, align 4
  br label %96

96:                                               ; preds = %95, %94, %86, %67, %42, %34, %22
  %97 = load i32, i32* %6, align 4
  ret i32 %97
}

declare dso_local i64 @read_num(i8*, i32*, i64*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
