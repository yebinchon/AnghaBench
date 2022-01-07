; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_srconv.c_writeINT.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_srconv.c_writeINT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@addrsize = common dso_local global i32 0, align 4
@code = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32*, i32, i32*)* @writeINT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @writeINT(i32 %0, i8* %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = load i32, i32* %12, align 4
  %14 = sdiv i32 %13, 8
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp eq i32 %15, -2
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = load i32, i32* @addrsize, align 4
  store i32 %18, i32* %9, align 4
  br label %24

19:                                               ; preds = %5
  %20 = load i32, i32* %9, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %22, %19
  br label %24

24:                                               ; preds = %23, %17
  %25 = load i32, i32* %11, align 4
  %26 = icmp sgt i32 %25, 240
  br i1 %26, label %27, label %39

27:                                               ; preds = %24
  %28 = load i32*, i32** %10, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @code, align 4
  %33 = or i32 %32, 4096
  %34 = call i32 @checksum(i32* %28, i8* %29, i32 %31, i32 %33)
  %35 = load i32*, i32** %8, align 8
  store i32 16, i32* %35, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* %36, align 4
  %38 = sdiv i32 %37, 8
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %27, %24
  %40 = load i32, i32* %9, align 4
  switch i32 %40, label %98 [
    i32 0, label %41
    i32 1, label %42
    i32 2, label %49
    i32 4, label %65
  ]

41:                                               ; preds = %39
  br label %100

42:                                               ; preds = %39
  %43 = load i32, i32* %6, align 4
  %44 = trunc i32 %43 to i8
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  store i8 %44, i8* %48, align 1
  br label %100

49:                                               ; preds = %39
  %50 = load i32, i32* %6, align 4
  %51 = ashr i32 %50, 8
  %52 = trunc i32 %51 to i8
  %53 = load i8*, i8** %7, align 8
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %54, 0
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %53, i64 %56
  store i8 %52, i8* %57, align 1
  %58 = load i32, i32* %6, align 4
  %59 = trunc i32 %58 to i8
  %60 = load i8*, i8** %7, align 8
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %60, i64 %63
  store i8 %59, i8* %64, align 1
  br label %100

65:                                               ; preds = %39
  %66 = load i32, i32* %6, align 4
  %67 = ashr i32 %66, 24
  %68 = trunc i32 %67 to i8
  %69 = load i8*, i8** %7, align 8
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, 0
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %69, i64 %72
  store i8 %68, i8* %73, align 1
  %74 = load i32, i32* %6, align 4
  %75 = ashr i32 %74, 16
  %76 = trunc i32 %75 to i8
  %77 = load i8*, i8** %7, align 8
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %77, i64 %80
  store i8 %76, i8* %81, align 1
  %82 = load i32, i32* %6, align 4
  %83 = ashr i32 %82, 8
  %84 = trunc i32 %83 to i8
  %85 = load i8*, i8** %7, align 8
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, 2
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %85, i64 %88
  store i8 %84, i8* %89, align 1
  %90 = load i32, i32* %6, align 4
  %91 = ashr i32 %90, 0
  %92 = trunc i32 %91 to i8
  %93 = load i8*, i8** %7, align 8
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %94, 3
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %93, i64 %96
  store i8 %92, i8* %97, align 1
  br label %100

98:                                               ; preds = %39
  %99 = call i32 (...) @abort() #3
  unreachable

100:                                              ; preds = %65, %49, %42, %41
  %101 = load i32, i32* %9, align 4
  %102 = mul nsw i32 %101, 8
  %103 = load i32*, i32** %8, align 8
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, %102
  store i32 %105, i32* %103, align 4
  ret void
}

declare dso_local i32 @checksum(i32*, i8*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
