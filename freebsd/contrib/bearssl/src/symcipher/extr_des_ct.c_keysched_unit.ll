; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_des_ct.c_keysched_unit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_des_ct.c_keysched_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@QL0 = common dso_local global i32* null, align 8
@QR0 = common dso_local global i32* null, align 8
@QL1 = common dso_local global i32* null, align 8
@QR1 = common dso_local global i32* null, align 8
@kl = common dso_local global i32 0, align 4
@kr = common dso_local global i32 0, align 4
@sk0 = common dso_local global i32 0, align 4
@sk1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @keysched_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @keysched_unit(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @br_des_keysched_unit(i32* %11, i8* %12)
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %100, %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 16
  br i1 %16, label %17, label %103

17:                                               ; preds = %14
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = shl i32 %19, 1
  %21 = add nsw i32 %20, 0
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %18, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %6, align 4
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* %5, align 4
  %27 = shl i32 %26, 1
  %28 = add nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %25, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %32

32:                                               ; preds = %82, %17
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %33, 16
  br i1 %34, label %35, label %85

35:                                               ; preds = %32
  %36 = load i32, i32* %8, align 4
  %37 = shl i32 %36, 1
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = shl i32 %38, 1
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32*, i32** @QL0, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = ashr i32 %40, %45
  %47 = and i32 %46, 1
  %48 = shl i32 %47, 16
  %49 = load i32, i32* %8, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32*, i32** @QR0, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = ashr i32 %51, %56
  %58 = and i32 %57, 1
  %59 = load i32, i32* %8, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32*, i32** @QL1, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = ashr i32 %61, %66
  %68 = and i32 %67, 1
  %69 = shl i32 %68, 16
  %70 = load i32, i32* %9, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32*, i32** @QR1, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = ashr i32 %72, %77
  %79 = and i32 %78, 1
  %80 = load i32, i32* %9, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %35
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %32

85:                                               ; preds = %32
  %86 = load i32, i32* %8, align 4
  %87 = load i32*, i32** %3, align 8
  %88 = load i32, i32* %5, align 4
  %89 = shl i32 %88, 1
  %90 = add nsw i32 %89, 0
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %87, i64 %91
  store i32 %86, i32* %92, align 4
  %93 = load i32, i32* %9, align 4
  %94 = load i32*, i32** %3, align 8
  %95 = load i32, i32* %5, align 4
  %96 = shl i32 %95, 1
  %97 = add nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %94, i64 %98
  store i32 %93, i32* %99, align 4
  br label %100

100:                                              ; preds = %85
  %101 = load i32, i32* %5, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %5, align 4
  br label %14

103:                                              ; preds = %14
  ret void
}

declare dso_local i32 @br_des_keysched_unit(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
