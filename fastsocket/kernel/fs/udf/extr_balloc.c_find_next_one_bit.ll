; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_balloc.c_find_next_one_bit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_balloc.c_find_next_one_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BITS_PER_LONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @find_next_one_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_next_one_bit(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to i32*
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @BITS_PER_LONG, align 4
  %15 = sdiv i32 %13, %14
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %12, i64 %16
  store i32* %17, i32** %8, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @BITS_PER_LONG, align 4
  %20 = sub nsw i32 %19, 1
  %21 = xor i32 %20, -1
  %22 = and i32 %18, %21
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %4, align 4
  br label %106

28:                                               ; preds = %3
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %6, align 4
  %31 = sub nsw i32 %30, %29
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* @BITS_PER_LONG, align 4
  %33 = sub nsw i32 %32, 1
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %62

38:                                               ; preds = %28
  %39 = load i32*, i32** %8, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %8, align 8
  %41 = call i64 @leBPL_to_cpup(i32* %39)
  store i64 %41, i64* %10, align 8
  %42 = load i32, i32* %7, align 4
  %43 = zext i32 %42 to i64
  %44 = shl i64 -1, %43
  %45 = load i64, i64* %10, align 8
  %46 = and i64 %45, %44
  store i64 %46, i64* %10, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @BITS_PER_LONG, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %38
  br label %92

51:                                               ; preds = %38
  %52 = load i64, i64* %10, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %100

55:                                               ; preds = %51
  %56 = load i32, i32* @BITS_PER_LONG, align 4
  %57 = load i32, i32* %6, align 4
  %58 = sub nsw i32 %57, %56
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* @BITS_PER_LONG, align 4
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %55, %28
  br label %63

63:                                               ; preds = %77, %62
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @BITS_PER_LONG, align 4
  %66 = sub nsw i32 %65, 1
  %67 = xor i32 %66, -1
  %68 = and i32 %64, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %63
  %71 = load i32*, i32** %8, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %8, align 8
  %73 = call i64 @leBPL_to_cpup(i32* %71)
  store i64 %73, i64* %10, align 8
  %74 = load i64, i64* %10, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %100

77:                                               ; preds = %70
  %78 = load i32, i32* @BITS_PER_LONG, align 4
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* @BITS_PER_LONG, align 4
  %82 = load i32, i32* %6, align 4
  %83 = sub nsw i32 %82, %81
  store i32 %83, i32* %6, align 4
  br label %63

84:                                               ; preds = %63
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %9, align 4
  store i32 %88, i32* %4, align 4
  br label %106

89:                                               ; preds = %84
  %90 = load i32*, i32** %8, align 8
  %91 = call i64 @leBPL_to_cpup(i32* %90)
  store i64 %91, i64* %10, align 8
  br label %92

92:                                               ; preds = %89, %50
  %93 = load i32, i32* @BITS_PER_LONG, align 4
  %94 = load i32, i32* %6, align 4
  %95 = sub nsw i32 %93, %94
  %96 = zext i32 %95 to i64
  %97 = lshr i64 -1, %96
  %98 = load i64, i64* %10, align 8
  %99 = and i64 %98, %97
  store i64 %99, i64* %10, align 8
  br label %100

100:                                              ; preds = %92, %76, %54
  %101 = load i32, i32* %9, align 4
  %102 = load i64, i64* %10, align 8
  %103 = xor i64 %102, -1
  %104 = call i32 @ffz(i64 %103)
  %105 = add nsw i32 %101, %104
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %100, %87, %26
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i64 @leBPL_to_cpup(i32*) #1

declare dso_local i32 @ffz(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
