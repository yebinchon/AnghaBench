; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resrc.c_get_long.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resrc.c_get_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i8*)* @get_long to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_long(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @getc(i32* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @getc(i32* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @getc(i32* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @getc(i32* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = call i64 @feof(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @unexpected_eof(i8* %21)
  br label %23

23:                                               ; preds = %20, %2
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %24, 255
  %26 = shl i32 %25, 8
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, 255
  %29 = or i32 %26, %28
  %30 = shl i32 %29, 8
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, 255
  %33 = or i32 %30, %32
  %34 = shl i32 %33, 8
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, 255
  %37 = or i32 %34, %36
  %38 = sext i32 %37 to i64
  ret i64 %38
}

declare dso_local i32 @getc(i32*) #1

declare dso_local i64 @feof(i32*) #1

declare dso_local i32 @unexpected_eof(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
