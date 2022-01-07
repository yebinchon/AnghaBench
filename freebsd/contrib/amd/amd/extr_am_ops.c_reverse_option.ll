; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_am_ops.c_reverse_option.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_am_ops.c_reverse_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reverse_option.buf = internal global [80 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [3 x i8] c"ro\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rw\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"bg\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"fg\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"soft\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"hard\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @reverse_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @reverse_option(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %50

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8
  %9 = call i64 @STREQ(i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %50

12:                                               ; preds = %7
  %13 = load i8*, i8** %3, align 8
  %14 = call i64 @STREQ(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %50

17:                                               ; preds = %12
  %18 = load i8*, i8** %3, align 8
  %19 = call i64 @STREQ(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %50

22:                                               ; preds = %17
  %23 = load i8*, i8** %3, align 8
  %24 = call i64 @STREQ(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %50

27:                                               ; preds = %22
  %28 = load i8*, i8** %3, align 8
  %29 = call i64 @STREQ(i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %50

32:                                               ; preds = %27
  %33 = load i8*, i8** %3, align 8
  %34 = call i64 @STREQ(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %50

37:                                               ; preds = %32
  %38 = load i8*, i8** %3, align 8
  %39 = call i64 @NSTREQ(i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 2)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i8*, i8** %3, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 2
  %44 = call i32 @xstrlcpy(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @reverse_option.buf, i64 0, i64 0), i8* %43, i32 80)
  br label %49

45:                                               ; preds = %37
  %46 = call i32 @xstrlcpy(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @reverse_option.buf, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 80)
  %47 = load i8*, i8** %3, align 8
  %48 = call i32 @xstrlcat(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @reverse_option.buf, i64 0, i64 0), i8* %47, i32 80)
  br label %49

49:                                               ; preds = %45, %41
  store i8* getelementptr inbounds ([80 x i8], [80 x i8]* @reverse_option.buf, i64 0, i64 0), i8** %2, align 8
  br label %50

50:                                               ; preds = %49, %36, %31, %26, %21, %16, %11, %6
  %51 = load i8*, i8** %2, align 8
  ret i8* %51
}

declare dso_local i64 @STREQ(i8*, i8*) #1

declare dso_local i64 @NSTREQ(i8*, i8*, i32) #1

declare dso_local i32 @xstrlcpy(i8*, i8*, i32) #1

declare dso_local i32 @xstrlcat(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
