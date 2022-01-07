; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_sysdump.c_fillup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_sysdump.c_fillup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@file = common dso_local global i32 0, align 4
@code = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"SUM IS %x\0A\00", align 1
@dump = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @fillup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fillup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i32, i32* @file, align 4
  %7 = call i32 @getc(i32 %6)
  %8 = sub nsw i32 %7, 2
  store i32 %8, i32* %3, align 4
  %9 = load i8*, i8** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @file, align 4
  %12 = call i32 @fread(i8* %9, i32 1, i32 %10, i32 %11)
  %13 = load i32, i32* @code, align 4
  %14 = load i32, i32* %3, align 4
  %15 = add nsw i32 %13, %14
  %16 = add nsw i32 %15, 2
  store i32 %16, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %30, %1
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  %22 = load i8*, i8** %2, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %21
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %17

33:                                               ; preds = %17
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %34, 255
  %36 = icmp ne i32 %35, 255
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %37, %33
  %41 = load i64, i64* @dump, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i8*, i8** %2, align 8
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @dh(i8* %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %40
  %48 = load i32, i32* %3, align 4
  %49 = sub nsw i32 %48, 1
  ret i32 %49
}

declare dso_local i32 @getc(i32) #1

declare dso_local i32 @fread(i8*, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @dh(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
