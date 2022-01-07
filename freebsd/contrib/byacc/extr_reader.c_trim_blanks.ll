; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/extr_reader.c_trim_blanks.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/extr_reader.c_trim_blanks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @trim_blanks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trim_blanks(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %72

9:                                                ; preds = %1
  %10 = load i8*, i8** %2, align 8
  store i8* %10, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i8* @after_blanks(i8* %11)
  store i8* %12, i8** %4, align 8
  br label %13

13:                                               ; preds = %21, %9
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %4, align 8
  %16 = load i8, i8* %14, align 1
  %17 = load i8*, i8** %3, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %3, align 8
  store i8 %16, i8* %17, align 1
  %19 = sext i8 %16 to i32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %13

22:                                               ; preds = %13
  %23 = load i8*, i8** %3, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 -1
  store i8* %24, i8** %3, align 8
  br label %25

25:                                               ; preds = %38, %22
  %26 = load i8*, i8** %3, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 -1
  store i8* %27, i8** %3, align 8
  %28 = load i8*, i8** %2, align 8
  %29 = icmp ne i8* %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load i8*, i8** %3, align 8
  %32 = load i8, i8* %31, align 1
  %33 = call i32 @UCH(i8 signext %32)
  %34 = call i64 @isspace(i32 %33)
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %30, %25
  %37 = phi i1 [ false, %25 ], [ %35, %30 ]
  br i1 %37, label %38, label %40

38:                                               ; preds = %36
  %39 = load i8*, i8** %3, align 8
  store i8 0, i8* %39, align 1
  br label %25

40:                                               ; preds = %36
  %41 = load i8*, i8** %2, align 8
  store i8* %41, i8** %3, align 8
  store i8* %41, i8** %4, align 8
  br label %42

42:                                               ; preds = %70, %40
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %4, align 8
  %45 = load i8, i8* %43, align 1
  %46 = load i8*, i8** %3, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %3, align 8
  store i8 %45, i8* %46, align 1
  %48 = sext i8 %45 to i32
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %71

50:                                               ; preds = %42
  %51 = load i8*, i8** %4, align 8
  %52 = load i8, i8* %51, align 1
  %53 = call i32 @UCH(i8 signext %52)
  %54 = call i64 @isspace(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %50
  %57 = load i8*, i8** %4, align 8
  store i8 32, i8* %57, align 1
  br label %58

58:                                               ; preds = %64, %56
  %59 = load i8*, i8** %4, align 8
  %60 = load i8, i8* %59, align 1
  %61 = call i32 @UCH(i8 signext %60)
  %62 = call i64 @isspace(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load i8*, i8** %4, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %4, align 8
  store i8 32, i8* %65, align 1
  br label %58

67:                                               ; preds = %58
  %68 = load i8*, i8** %4, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 -1
  store i8* %69, i8** %4, align 8
  br label %70

70:                                               ; preds = %67, %50
  br label %42

71:                                               ; preds = %42
  br label %72

72:                                               ; preds = %71, %1
  %73 = load i8*, i8** %2, align 8
  %74 = call i64 @strlen(i8* %73)
  %75 = trunc i64 %74 to i32
  %76 = sub nsw i32 %75, 1
  ret i32 %76
}

declare dso_local i8* @after_blanks(i8*) #1

declare dso_local i64 @isspace(i32) #1

declare dso_local i32 @UCH(i8 signext) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
