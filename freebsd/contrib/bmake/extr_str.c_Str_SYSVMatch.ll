; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_str.c_Str_SYSVMatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_str.c_Str_SYSVMatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @Str_SYSVMatch(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i8*, i8** %6, align 8
  store i8* %11, i8** %8, align 8
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %9, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load i8*, i8** %9, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = load i32*, i32** %7, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i8*, i8** %9, align 8
  %22 = call i8* @UNCONST(i8* %21)
  store i8* %22, i8** %4, align 8
  br label %96

23:                                               ; preds = %3
  %24 = load i8*, i8** %8, align 8
  %25 = call i8* @strchr(i8* %24, i8 signext 37)
  store i8* %25, i8** %10, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %71

27:                                               ; preds = %23
  br label %28

28:                                               ; preds = %48, %27
  %29 = load i8*, i8** %8, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = icmp ne i8* %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load i8*, i8** %9, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = load i8*, i8** %8, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %40, %43
  br label %45

45:                                               ; preds = %37, %32, %28
  %46 = phi i1 [ false, %32 ], [ false, %28 ], [ %44, %37 ]
  br i1 %46, label %47, label %53

47:                                               ; preds = %45
  br label %48

48:                                               ; preds = %47
  %49 = load i8*, i8** %9, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %9, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %8, align 8
  br label %28

53:                                               ; preds = %45
  %54 = load i8*, i8** %8, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = icmp ne i8* %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i8* null, i8** %4, align 8
  br label %96

58:                                               ; preds = %53
  %59 = load i8*, i8** %8, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %8, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load i8*, i8** %9, align 8
  %66 = call i32 @strlen(i8* %65)
  %67 = load i32*, i32** %7, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i8*, i8** %9, align 8
  %69 = call i8* @UNCONST(i8* %68)
  store i8* %69, i8** %4, align 8
  br label %96

70:                                               ; preds = %58
  br label %71

71:                                               ; preds = %70, %23
  %72 = load i8*, i8** %9, align 8
  store i8* %72, i8** %10, align 8
  br label %73

73:                                               ; preds = %89, %71
  %74 = load i8*, i8** %8, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = call i64 @strcmp(i8* %74, i8* %75)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %73
  %79 = load i8*, i8** %9, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = ptrtoint i8* %79 to i64
  %82 = ptrtoint i8* %80 to i64
  %83 = sub i64 %81, %82
  %84 = trunc i64 %83 to i32
  %85 = load i32*, i32** %7, align 8
  store i32 %84, i32* %85, align 4
  %86 = load i8*, i8** %10, align 8
  %87 = call i8* @UNCONST(i8* %86)
  store i8* %87, i8** %4, align 8
  br label %96

88:                                               ; preds = %73
  br label %89

89:                                               ; preds = %88
  %90 = load i8*, i8** %9, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %9, align 8
  %92 = load i8, i8* %90, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %73, label %95

95:                                               ; preds = %89
  store i8* null, i8** %4, align 8
  br label %96

96:                                               ; preds = %95, %78, %64, %57, %17
  %97 = load i8*, i8** %4, align 8
  ret i8* %97
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @UNCONST(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
