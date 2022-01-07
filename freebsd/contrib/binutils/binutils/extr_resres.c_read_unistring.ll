; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resres.c_read_unistring.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resres.c_read_unistring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i32*, i32*, i32, i32*)* @read_unistring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @read_unistring(i32* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca [2 x i32], align 4
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %14, align 4
  br label %18

18:                                               ; preds = %26, %4
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %22 = call i32 @read_res_data(i32* %19, i32* %14, i32 %20, i32* %21, i32 8)
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %25 = call i64 @windres_get_16(i32* %23, i32* %24, i32 2)
  store i64 %25, i64* %11, align 8
  br label %26

26:                                               ; preds = %18
  %27 = load i64, i64* %11, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %18, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %14, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %30, %33
  %35 = sext i32 %34 to i64
  %36 = udiv i64 %35, 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 8, %39
  %41 = trunc i64 %40 to i32
  %42 = call i64 @xmalloc(i32 %41)
  %43 = inttoptr i64 %42 to i64*
  store i64* %43, i64** %9, align 8
  store i64* %43, i64** %12, align 8
  br label %44

44:                                               ; preds = %56, %29
  %45 = load i32*, i32** %5, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %49 = call i32 @read_res_data(i32* %45, i32* %46, i32 %47, i32* %48, i32 8)
  %50 = load i32*, i32** %5, align 8
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %52 = call i64 @windres_get_16(i32* %50, i32* %51, i32 2)
  store i64 %52, i64* %11, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load i64*, i64** %12, align 8
  %55 = getelementptr inbounds i64, i64* %54, i32 1
  store i64* %55, i64** %12, align 8
  store i64 %53, i64* %54, align 8
  br label %56

56:                                               ; preds = %44
  %57 = load i64, i64* %11, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %44, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %13, align 4
  %61 = sub nsw i32 %60, 1
  %62 = load i32*, i32** %8, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i64*, i64** %9, align 8
  ret i64* %63
}

declare dso_local i32 @read_res_data(i32*, i32*, i32, i32*, i32) #1

declare dso_local i64 @windres_get_16(i32*, i32*, i32) #1

declare dso_local i64 @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
