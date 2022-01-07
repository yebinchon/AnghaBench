; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ia64-tdep.c_extract_bit_field.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ia64-tdep.c_extract_bit_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32, i32)* @extract_bit_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @extract_bit_field(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %5, align 4
  %19 = sdiv i32 %18, 8
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %8, align 4
  %21 = sdiv i32 %20, 8
  store i32 %21, i32* %10, align 4
  %22 = load i8*, i8** %4, align 8
  store i8* %22, i8** %11, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i8, i8* %26, align 1
  store i8 %27, i8* %12, align 1
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %3
  %32 = load i8, i8* %12, align 1
  %33 = zext i8 %32 to i32
  %34 = load i32, i32* %8, align 4
  %35 = srem i32 %34, 8
  %36 = sub nsw i32 8, %35
  %37 = shl i32 %33, %36
  %38 = trunc i32 %37 to i8
  %39 = zext i8 %38 to i32
  %40 = load i32, i32* %8, align 4
  %41 = srem i32 %40, 8
  %42 = sub nsw i32 8, %41
  %43 = ashr i32 %39, %42
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %12, align 1
  br label %45

45:                                               ; preds = %31, %3
  %46 = load i8, i8* %12, align 1
  %47 = zext i8 %46 to i32
  %48 = load i32, i32* %5, align 4
  %49 = srem i32 %48, 8
  %50 = ashr i32 %47, %49
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %7, align 8
  %52 = load i32, i32* %5, align 4
  %53 = srem i32 %52, 8
  %54 = sub nsw i32 8, %53
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %14, align 4
  br label %57

57:                                               ; preds = %75, %45
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %78

61:                                               ; preds = %57
  %62 = load i8*, i8** %11, align 8
  %63 = load i32, i32* %14, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i64
  %68 = load i32, i32* %13, align 4
  %69 = zext i32 %68 to i64
  %70 = shl i64 %67, %69
  %71 = load i64, i64* %7, align 8
  %72 = or i64 %71, %70
  store i64 %72, i64* %7, align 8
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %73, 8
  store i32 %74, i32* %13, align 4
  br label %75

75:                                               ; preds = %61
  %76 = load i32, i32* %14, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %14, align 4
  br label %57

78:                                               ; preds = %57
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %112

82:                                               ; preds = %78
  %83 = load i32, i32* %8, align 4
  %84 = srem i32 %83, 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %112

86:                                               ; preds = %82
  %87 = load i8*, i8** %11, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = load i8, i8* %90, align 1
  store i8 %91, i8* %12, align 1
  %92 = load i8, i8* %12, align 1
  %93 = zext i8 %92 to i32
  %94 = load i32, i32* %8, align 4
  %95 = srem i32 %94, 8
  %96 = sub nsw i32 8, %95
  %97 = shl i32 %93, %96
  %98 = trunc i32 %97 to i8
  %99 = zext i8 %98 to i32
  %100 = load i32, i32* %8, align 4
  %101 = srem i32 %100, 8
  %102 = sub nsw i32 8, %101
  %103 = ashr i32 %99, %102
  %104 = trunc i32 %103 to i8
  store i8 %104, i8* %12, align 1
  %105 = load i8, i8* %12, align 1
  %106 = zext i8 %105 to i64
  %107 = load i32, i32* %13, align 4
  %108 = zext i32 %107 to i64
  %109 = shl i64 %106, %108
  %110 = load i64, i64* %7, align 8
  %111 = or i64 %110, %109
  store i64 %111, i64* %7, align 8
  br label %112

112:                                              ; preds = %86, %82, %78
  %113 = load i64, i64* %7, align 8
  ret i64 %113
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
