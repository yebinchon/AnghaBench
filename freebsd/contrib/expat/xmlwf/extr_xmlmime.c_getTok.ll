; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/expat/xmlwf/extr_xmlmime.c_getTok.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/expat/xmlwf/extr_xmlmime.c_getTok.c"
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

6:                                                ; preds = %91, %1
  %7 = load i8**, i8*** %3, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  switch i32 %10, label %84 [
    i32 0, label %11
    i32 32, label %17
    i32 13, label %17
    i32 9, label %17
    i32 10, label %17
    i32 40, label %23
    i32 41, label %35
    i32 59, label %47
    i32 47, label %47
    i32 61, label %47
    i32 92, label %60
    i32 34, label %71
  ]

11:                                               ; preds = %6
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load i8*, i8** %5, align 8
  store i8* %15, i8** %2, align 8
  br label %95

16:                                               ; preds = %11
  store i8* null, i8** %2, align 8
  br label %95

17:                                               ; preds = %6, %6, %6, %6
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i8*, i8** %5, align 8
  store i8* %21, i8** %2, align 8
  br label %95

22:                                               ; preds = %17
  br label %91

23:                                               ; preds = %6
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i8*, i8** %5, align 8
  store i8* %27, i8** %2, align 8
  br label %95

28:                                               ; preds = %23
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %31, %28
  br label %91

35:                                               ; preds = %6
  %36 = load i32, i32* %4, align 4
  %37 = icmp sgt i32 %36, 2
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %4, align 4
  br label %46

41:                                               ; preds = %35
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 1
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i8* null, i8** %2, align 8
  br label %95

45:                                               ; preds = %41
  br label %46

46:                                               ; preds = %45, %38
  br label %91

47:                                               ; preds = %6, %6, %6
  %48 = load i32, i32* %4, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i8*, i8** %5, align 8
  store i8* %51, i8** %2, align 8
  br label %95

52:                                               ; preds = %47
  %53 = load i32, i32* %4, align 4
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i8**, i8*** %3, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %56, align 8
  store i8* %57, i8** %2, align 8
  br label %95

59:                                               ; preds = %52
  br label %91

60:                                               ; preds = %6
  %61 = load i8**, i8*** %3, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %61, align 8
  %64 = load i8**, i8*** %3, align 8
  %65 = load i8*, i8** %64, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  store i8* null, i8** %2, align 8
  br label %95

70:                                               ; preds = %60
  br label %91

71:                                               ; preds = %6
  %72 = load i32, i32* %4, align 4
  switch i32 %72, label %83 [
    i32 1, label %73
    i32 0, label %78
    i32 2, label %80
  ]

73:                                               ; preds = %71
  %74 = load i8**, i8*** %3, align 8
  %75 = load i8*, i8** %74, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %74, align 8
  %77 = load i8*, i8** %5, align 8
  store i8* %77, i8** %2, align 8
  br label %95

78:                                               ; preds = %71
  %79 = load i8*, i8** %5, align 8
  store i8* %79, i8** %2, align 8
  br label %95

80:                                               ; preds = %71
  %81 = load i8**, i8*** %3, align 8
  %82 = load i8*, i8** %81, align 8
  store i8* %82, i8** %5, align 8
  store i32 1, i32* %4, align 4
  br label %83

83:                                               ; preds = %71, %80
  br label %91

84:                                               ; preds = %6
  %85 = load i32, i32* %4, align 4
  %86 = icmp eq i32 %85, 2
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i8**, i8*** %3, align 8
  %89 = load i8*, i8** %88, align 8
  store i8* %89, i8** %5, align 8
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %87, %84
  br label %91

91:                                               ; preds = %90, %83, %70, %59, %46, %34, %22
  %92 = load i8**, i8*** %3, align 8
  %93 = load i8*, i8** %92, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %92, align 8
  br label %6

95:                                               ; preds = %78, %73, %69, %55, %50, %44, %26, %20, %16, %14
  %96 = load i8*, i8** %2, align 8
  ret i8* %96
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
