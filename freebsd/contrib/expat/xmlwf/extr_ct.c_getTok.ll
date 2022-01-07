; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/expat/xmlwf/extr_ct.c_getTok.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/expat/xmlwf/extr_ct.c_getTok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8**)* @getTok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @getTok(i8** %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  store i32 2, i32* %4, align 4
  store i8* null, i8** %5, align 8
  br label %6

6:                                                ; preds = %86, %1
  %7 = load i8**, i8*** %3, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  switch i32 %10, label %79 [
    i32 0, label %11
    i32 32, label %12
    i32 13, label %12
    i32 9, label %12
    i32 10, label %12
    i32 40, label %18
    i32 41, label %30
    i32 59, label %42
    i32 47, label %42
    i32 61, label %42
    i32 92, label %55
    i32 34, label %66
  ]

11:                                               ; preds = %6
  store i8* null, i8** %2, align 8
  br label %90

12:                                               ; preds = %6, %6, %6, %6
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i8*, i8** %5, align 8
  store i8* %16, i8** %2, align 8
  br label %90

17:                                               ; preds = %12
  br label %86

18:                                               ; preds = %6
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i8*, i8** %5, align 8
  store i8* %22, i8** %2, align 8
  br label %90

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 1
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %26, %23
  br label %86

30:                                               ; preds = %6
  %31 = load i32, i32* %4, align 4
  %32 = icmp sgt i32 %31, 2
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %4, align 4
  br label %41

36:                                               ; preds = %30
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 1
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i8* null, i8** %2, align 8
  br label %90

40:                                               ; preds = %36
  br label %41

41:                                               ; preds = %40, %33
  br label %86

42:                                               ; preds = %6, %6, %6
  %43 = load i32, i32* %4, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i8*, i8** %5, align 8
  store i8* %46, i8** %2, align 8
  br label %90

47:                                               ; preds = %42
  %48 = load i32, i32* %4, align 4
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i8**, i8*** %3, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %51, align 8
  store i8* %52, i8** %2, align 8
  br label %90

54:                                               ; preds = %47
  br label %86

55:                                               ; preds = %6
  %56 = load i8**, i8*** %3, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %56, align 8
  %59 = load i8**, i8*** %3, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  store i8* null, i8** %2, align 8
  br label %90

65:                                               ; preds = %55
  br label %86

66:                                               ; preds = %6
  %67 = load i32, i32* %4, align 4
  switch i32 %67, label %78 [
    i32 1, label %68
    i32 0, label %73
    i32 2, label %75
  ]

68:                                               ; preds = %66
  %69 = load i8**, i8*** %3, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %69, align 8
  %72 = load i8*, i8** %5, align 8
  store i8* %72, i8** %2, align 8
  br label %90

73:                                               ; preds = %66
  %74 = load i8*, i8** %5, align 8
  store i8* %74, i8** %2, align 8
  br label %90

75:                                               ; preds = %66
  %76 = load i8**, i8*** %3, align 8
  %77 = load i8*, i8** %76, align 8
  store i8* %77, i8** %5, align 8
  store i32 1, i32* %4, align 4
  br label %78

78:                                               ; preds = %66, %75
  br label %86

79:                                               ; preds = %6
  %80 = load i32, i32* %4, align 4
  %81 = icmp eq i32 %80, 2
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i8**, i8*** %3, align 8
  %84 = load i8*, i8** %83, align 8
  store i8* %84, i8** %5, align 8
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %82, %79
  br label %86

86:                                               ; preds = %85, %78, %65, %54, %41, %29, %17
  %87 = load i8**, i8*** %3, align 8
  %88 = load i8*, i8** %87, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %87, align 8
  br label %6

90:                                               ; preds = %73, %68, %64, %50, %45, %39, %21, %15, %11
  %91 = load i8*, i8** %2, align 8
  ret i8* %91
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
