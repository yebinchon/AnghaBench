; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_pat_rep.c_fn_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_pat_rep.c_fn_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dflag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8**)* @fn_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fn_match(i8* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %10 = load i8**, i8*** %7, align 8
  store i8* null, i8** %10, align 8
  br label %11

11:                                               ; preds = %99, %3
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %5, align 8
  %14 = load i8, i8* %12, align 1
  store i8 %14, i8* %8, align 1
  %15 = sext i8 %14 to i32
  switch i32 %15, label %89 [
    i32 0, label %16
    i32 63, label %34
    i32 42, label %42
    i32 91, label %75
    i32 92, label %88
  ]

16:                                               ; preds = %11
  %17 = load i8*, i8** %6, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %100

22:                                               ; preds = %16
  %23 = load i32, i32* @dflag, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = load i8*, i8** %6, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 47
  br i1 %29, label %30, label %31

30:                                               ; preds = %25, %22
  store i32 -1, i32* %4, align 4
  br label %100

31:                                               ; preds = %25
  %32 = load i8*, i8** %6, align 8
  %33 = load i8**, i8*** %7, align 8
  store i8* %32, i8** %33, align 8
  store i32 0, i32* %4, align 4
  br label %100

34:                                               ; preds = %11
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %6, align 8
  %37 = load i8, i8* %35, align 1
  store i8 %37, i8* %9, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 -1, i32* %4, align 4
  br label %100

41:                                               ; preds = %34
  br label %99

42:                                               ; preds = %11
  %43 = load i8*, i8** %5, align 8
  %44 = load i8, i8* %43, align 1
  store i8 %44, i8* %8, align 1
  br label %45

45:                                               ; preds = %49, %42
  %46 = load i8, i8* %8, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 42
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %5, align 8
  %52 = load i8, i8* %51, align 1
  store i8 %52, i8* %8, align 1
  br label %45

53:                                               ; preds = %45
  %54 = load i8, i8* %8, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %100

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %71, %58
  %60 = load i8*, i8** %6, align 8
  %61 = load i8, i8* %60, align 1
  store i8 %61, i8* %9, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %59
  %65 = load i8*, i8** %5, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = load i8**, i8*** %7, align 8
  %68 = call i32 @fn_match(i8* %65, i8* %66, i8** %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %64
  store i32 0, i32* %4, align 4
  br label %100

71:                                               ; preds = %64
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %6, align 8
  br label %59

74:                                               ; preds = %59
  store i32 -1, i32* %4, align 4
  br label %100

75:                                               ; preds = %11
  %76 = load i8*, i8** %6, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %6, align 8
  %78 = load i8, i8* %76, align 1
  store i8 %78, i8* %9, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %75
  %82 = load i8*, i8** %5, align 8
  %83 = load i8, i8* %9, align 1
  %84 = call i8* @range_match(i8* %82, i8 signext %83)
  store i8* %84, i8** %5, align 8
  %85 = icmp eq i8* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %81, %75
  store i32 -1, i32* %4, align 4
  br label %100

87:                                               ; preds = %81
  br label %99

88:                                               ; preds = %11
  br label %89

89:                                               ; preds = %11, %88
  %90 = load i8, i8* %8, align 1
  %91 = sext i8 %90 to i32
  %92 = load i8*, i8** %6, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %6, align 8
  %94 = load i8, i8* %92, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp ne i32 %91, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  store i32 -1, i32* %4, align 4
  br label %100

98:                                               ; preds = %89
  br label %99

99:                                               ; preds = %98, %87, %41
  br label %11

100:                                              ; preds = %97, %86, %74, %70, %57, %40, %31, %30, %21
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i8* @range_match(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
