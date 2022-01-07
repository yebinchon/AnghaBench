; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_dialog.c_howmany_tags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_dialog.c_howmany_tags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"Expected %d arguments, found only %d\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Expected %d arguments, found extra %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32)* @howmany_tags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @howmany_tags(i8** %0, i32 %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [80 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %53, %2
  %11 = load i8**, i8*** %3, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 0
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %63

15:                                               ; preds = %10
  %16 = load i8**, i8*** %3, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i64 @isOption(i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %63

22:                                               ; preds = %15
  %23 = load i8**, i8*** %3, align 8
  %24 = call i32 @arg_rest(i8** %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = call i8* @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i8* %28, i8** %8, align 8
  %29 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @sprintf(i8* %29, i8* %30, i32 %31, i32 %32)
  %34 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %35 = call i32 @Usage(i8* %34)
  br label %53

36:                                               ; preds = %22
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %4, align 4
  %39 = srem i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %36
  %42 = call i8* @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store i8* %42, i8** %9, align 8
  %43 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %44 = load i8*, i8** %9, align 8
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %4, align 4
  %48 = srem i32 %46, %47
  %49 = call i32 @sprintf(i8* %43, i8* %44, i32 %45, i32 %48)
  %50 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %51 = call i32 @Usage(i8* %50)
  br label %52

52:                                               ; preds = %41, %36
  br label %53

53:                                               ; preds = %52, %27
  %54 = load i32, i32* %6, align 4
  %55 = load i8**, i8*** %3, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i8*, i8** %55, i64 %56
  store i8** %57, i8*** %3, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %4, align 4
  %60 = sdiv i32 %58, %59
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %5, align 4
  br label %10

63:                                               ; preds = %21, %10
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i64 @isOption(i8*) #1

declare dso_local i32 @arg_rest(i8**) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32) #1

declare dso_local i32 @Usage(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
