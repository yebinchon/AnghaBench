; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_strings.c_integer_arg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_strings.c_integer_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"invalid integer argument %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @integer_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @integer_arg(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 10, i32* %4, align 4
  %7 = load i8*, i8** %2, align 8
  store i8* %7, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 48
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 10, i32* %4, align 4
  br label %24

13:                                               ; preds = %1
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %5, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 120
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  store i32 16, i32* %4, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %5, align 8
  br label %23

22:                                               ; preds = %13
  store i32 8, i32* %4, align 4
  br label %23

23:                                               ; preds = %22, %19
  br label %24

24:                                               ; preds = %23, %12
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %69, %24
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %5, align 8
  %28 = load i8, i8* %26, align 1
  %29 = sext i8 %28 to i32
  store i32 %29, i32* %6, align 4
  %30 = icmp sge i32 %29, 48
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* %6, align 4
  %33 = icmp sle i32 %32, 57
  br i1 %33, label %47, label %34

34:                                               ; preds = %31, %25
  %35 = load i32, i32* %4, align 4
  %36 = icmp eq i32 %35, 16
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, -41
  %40 = icmp sge i32 %39, 65
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i32, i32* %6, align 4
  %43 = and i32 %42, -41
  %44 = icmp sle i32 %43, 90
  br label %45

45:                                               ; preds = %41, %37, %34
  %46 = phi i1 [ false, %37 ], [ false, %34 ], [ %44, %41 ]
  br label %47

47:                                               ; preds = %45, %31
  %48 = phi i1 [ true, %31 ], [ %46, %45 ]
  br i1 %48, label %49, label %70

49:                                               ; preds = %47
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %3, align 4
  %52 = mul nsw i32 %51, %50
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp sge i32 %53, 48
  br i1 %54, label %55, label %63

55:                                               ; preds = %49
  %56 = load i32, i32* %6, align 4
  %57 = icmp sle i32 %56, 57
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load i32, i32* %6, align 4
  %60 = sub nsw i32 %59, 48
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %3, align 4
  br label %69

63:                                               ; preds = %55, %49
  %64 = load i32, i32* %6, align 4
  %65 = and i32 %64, -41
  %66 = sub nsw i32 %65, 65
  %67 = load i32, i32* %3, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %63, %58
  br label %25

70:                                               ; preds = %47
  %71 = load i32, i32* %6, align 4
  %72 = icmp eq i32 %71, 98
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32, i32* %3, align 4
  %75 = mul nsw i32 %74, 512
  store i32 %75, i32* %3, align 4
  br label %86

76:                                               ; preds = %70
  %77 = load i32, i32* %6, align 4
  %78 = icmp eq i32 %77, 66
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, i32* %3, align 4
  %81 = mul nsw i32 %80, 1024
  store i32 %81, i32* %3, align 4
  br label %85

82:                                               ; preds = %76
  %83 = load i8*, i8** %5, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 -1
  store i8* %84, i8** %5, align 8
  br label %85

85:                                               ; preds = %82, %79
  br label %86

86:                                               ; preds = %85, %73
  %87 = load i8*, i8** %5, align 8
  %88 = load i8, i8* %87, align 1
  %89 = icmp ne i8 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %92 = load i8*, i8** %2, align 8
  %93 = call i32 @fatal(i32 %91, i8* %92)
  br label %94

94:                                               ; preds = %90, %86
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @fatal(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
