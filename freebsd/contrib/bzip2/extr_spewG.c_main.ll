; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bzip2/extr_spewG.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bzip2/extr_spewG.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32 0, align 4
@buf = common dso_local global i32 0, align 4
@N_BUF = common dso_local global i32 0, align 4
@MEGABYTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"ccccccccccccccccccccccccccccccccccccc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = call i32 @srandom(i32 1)
  %10 = load i32, i32* @stdout, align 4
  %11 = load i32, i32* @buf, align 4
  %12 = load i32, i32* @N_BUF, align 4
  %13 = call i32 @setbuffer(i32 %10, i32 %11, i32 %12)
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %55, %2
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @MEGABYTES, align 4
  %17 = mul nsw i32 %16, 515
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %58

19:                                               ; preds = %14
  %20 = call i32 (...) @random()
  %21 = srem i32 %20, 50
  %22 = add nsw i32 25, %21
  store i32 %22, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %29, %19
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %23

32:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %40, %32
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %8, align 4
  %36 = sub nsw i32 %35, 1
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %33

43:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %51, %43
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  %48 = icmp slt i32 %45, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %44

54:                                               ; preds = %44
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 3
  store i32 %57, i32* %7, align 4
  br label %14

58:                                               ; preds = %14
  %59 = load i32, i32* @stdout, align 4
  %60 = call i32 @fflush(i32 %59)
  ret i32 0
}

declare dso_local i32 @srandom(i32) #1

declare dso_local i32 @setbuffer(i32, i32, i32) #1

declare dso_local i32 @random(...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
