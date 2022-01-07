; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_floatformat.c_put_field.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_floatformat.c_put_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@floatformat_little = common dso_local global i32 0, align 4
@FLOATFORMAT_CHAR_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32, i32, i64)* @put_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_field(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @floatformat_little, align 4
  %22 = icmp eq i32 %20, %21
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 1, i32 -1
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = add i32 %26, %27
  %29 = sub i32 %25, %28
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @floatformat_little, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %6
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @FLOATFORMAT_CHAR_BIT, align 4
  %36 = udiv i32 %34, %35
  store i32 %36, i32* %13, align 4
  br label %44

37:                                               ; preds = %6
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = sub i32 %38, %39
  %41 = sub i32 %40, 1
  %42 = load i32, i32* @FLOATFORMAT_CHAR_BIT, align 4
  %43 = udiv i32 %41, %42
  store i32 %43, i32* %13, align 4
  br label %44

44:                                               ; preds = %37, %33
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @FLOATFORMAT_CHAR_BIT, align 4
  %47 = urem i32 %45, %46
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* %11, align 4
  %50 = add i32 %48, %49
  %51 = load i32, i32* @FLOATFORMAT_CHAR_BIT, align 4
  %52 = call i32 @min(i32 %50, i32 %51)
  store i32 %52, i32* %15, align 4
  br label %53

53:                                               ; preds = %96, %44
  %54 = load i8*, i8** %7, align 8
  %55 = load i32, i32* %13, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  store i8* %57, i8** %17, align 8
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* %14, align 4
  %60 = sub nsw i32 %58, %59
  store i32 %60, i32* %18, align 4
  %61 = load i32, i32* %18, align 4
  %62 = shl i32 1, %61
  %63 = sub nsw i32 %62, 1
  %64 = load i32, i32* %14, align 4
  %65 = shl i32 %63, %64
  store i32 %65, i32* %19, align 4
  %66 = load i8*, i8** %17, align 8
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = load i32, i32* %19, align 4
  %70 = xor i32 %69, -1
  %71 = and i32 %68, %70
  %72 = zext i32 %71 to i64
  %73 = load i64, i64* %12, align 8
  %74 = load i32, i32* %14, align 4
  %75 = zext i32 %74 to i64
  %76 = shl i64 %73, %75
  %77 = load i32, i32* %19, align 4
  %78 = zext i32 %77 to i64
  %79 = and i64 %76, %78
  %80 = or i64 %72, %79
  %81 = trunc i64 %80 to i8
  %82 = load i8*, i8** %17, align 8
  store i8 %81, i8* %82, align 1
  %83 = load i32, i32* %18, align 4
  %84 = load i64, i64* %12, align 8
  %85 = zext i32 %83 to i64
  %86 = lshr i64 %84, %85
  store i64 %86, i64* %12, align 8
  %87 = load i32, i32* %18, align 4
  %88 = load i32, i32* %11, align 4
  %89 = sub i32 %88, %87
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %16, align 4
  %91 = load i32, i32* %13, align 4
  %92 = add i32 %91, %90
  store i32 %92, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* @FLOATFORMAT_CHAR_BIT, align 4
  %95 = call i32 @min(i32 %93, i32 %94)
  store i32 %95, i32* %15, align 4
  br label %96

96:                                               ; preds = %53
  %97 = load i32, i32* %11, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %53, label %99

99:                                               ; preds = %96
  ret void
}

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
