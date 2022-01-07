; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_examine_argument.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_examine_argument.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_CLASSES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*, i32*)* @examine_argument to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @examine_argument(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load i32, i32* @MAX_CLASSES, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @classify_argument(i32 %20, i32 %21, i32* %19, i32 0)
  store i32 %22, i32* %14, align 4
  %23 = load i32*, i32** %10, align 8
  store i32 0, i32* %23, align 4
  %24 = load i32*, i32** %11, align 8
  store i32 0, i32* %24, align 4
  %25 = load i32, i32* %14, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %65

28:                                               ; preds = %5
  %29 = load i32, i32* %14, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %14, align 4
  br label %31

31:                                               ; preds = %61, %28
  %32 = load i32, i32* %14, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %64

34:                                               ; preds = %31
  %35 = load i32, i32* %14, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %19, i64 %36
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %60 [
    i32 136, label %39
    i32 137, label %39
    i32 130, label %43
    i32 132, label %43
    i32 133, label %43
    i32 134, label %47
    i32 131, label %47
    i32 128, label %48
    i32 129, label %48
    i32 138, label %53
    i32 135, label %58
  ]

39:                                               ; preds = %34, %34
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  br label %60

43:                                               ; preds = %34, %34, %34
  %44 = load i32*, i32** %11, align 8
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  br label %60

47:                                               ; preds = %34, %34
  br label %60

48:                                               ; preds = %34, %34
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  store i32 0, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %65

52:                                               ; preds = %48
  br label %60

53:                                               ; preds = %34
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 2, i32 0
  store i32 %57, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %65

58:                                               ; preds = %34
  %59 = call i32 (...) @gcc_unreachable()
  br label %60

60:                                               ; preds = %58, %34, %52, %47, %43, %39
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %14, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %14, align 4
  br label %31

64:                                               ; preds = %31
  store i32 1, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %65

65:                                               ; preds = %64, %53, %51, %27
  %66 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %66)
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @classify_argument(i32, i32, i32*, i32) #2

declare dso_local i32 @gcc_unreachable(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
