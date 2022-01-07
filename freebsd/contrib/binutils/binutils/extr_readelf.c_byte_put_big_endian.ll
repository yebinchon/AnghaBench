; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_byte_put_big_endian.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_byte_put_big_endian.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"Unhandled data length: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @byte_put_big_endian to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @byte_put_big_endian(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %64 [
    i32 8, label %8
    i32 4, label %36
    i32 2, label %50
    i32 1, label %58
  ]

8:                                                ; preds = %3
  %9 = load i32, i32* %5, align 4
  %10 = and i32 %9, 255
  %11 = trunc i32 %10 to i8
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 7
  store i8 %11, i8* %13, align 1
  %14 = load i32, i32* %5, align 4
  %15 = ashr i32 %14, 8
  %16 = and i32 %15, 255
  %17 = trunc i32 %16 to i8
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 6
  store i8 %17, i8* %19, align 1
  %20 = load i32, i32* %5, align 4
  %21 = ashr i32 %20, 16
  %22 = and i32 %21, 255
  %23 = trunc i32 %22 to i8
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 5
  store i8 %23, i8* %25, align 1
  %26 = load i32, i32* %5, align 4
  %27 = ashr i32 %26, 24
  %28 = and i32 %27, 255
  %29 = trunc i32 %28 to i8
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 4
  store i8 %29, i8* %31, align 1
  %32 = load i32, i32* %5, align 4
  %33 = ashr i32 %32, 16
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = ashr i32 %34, 16
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %3, %8
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, 255
  %39 = trunc i32 %38 to i8
  %40 = load i8*, i8** %4, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 3
  store i8 %39, i8* %41, align 1
  %42 = load i32, i32* %5, align 4
  %43 = ashr i32 %42, 8
  %44 = and i32 %43, 255
  %45 = trunc i32 %44 to i8
  %46 = load i8*, i8** %4, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 2
  store i8 %45, i8* %47, align 1
  %48 = load i32, i32* %5, align 4
  %49 = ashr i32 %48, 16
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %3, %36
  %51 = load i32, i32* %5, align 4
  %52 = and i32 %51, 255
  %53 = trunc i32 %52 to i8
  %54 = load i8*, i8** %4, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  store i8 %53, i8* %55, align 1
  %56 = load i32, i32* %5, align 4
  %57 = ashr i32 %56, 8
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %3, %50
  %59 = load i32, i32* %5, align 4
  %60 = and i32 %59, 255
  %61 = trunc i32 %60 to i8
  %62 = load i8*, i8** %4, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  store i8 %61, i8* %63, align 1
  br label %69

64:                                               ; preds = %3
  %65 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @error(i32 %65, i32 %66)
  %68 = call i32 (...) @abort() #3
  unreachable

69:                                               ; preds = %58
  ret void
}

declare dso_local i32 @error(i32, i32) #1

declare dso_local i32 @_(i8*) #1

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
