; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_dialog.c_optionValue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_dialog.c_optionValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [39 x i8] c"Expected a numeric-parameter for %.20s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32*)* @optionValue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @optionValue(i8** %0, i32* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [80 x i8], align 16
  store i8** %0, i8*** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %5, align 4
  %13 = load i8**, i8*** %3, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8*, i8** %13, i64 %15
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %33

20:                                               ; preds = %2
  %21 = load i8*, i8** %6, align 8
  %22 = call i64 @strtol(i8* %21, i8** %7, i32 0)
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %8, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %20
  %27 = load i8*, i8** %7, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26, %20
  store i8* null, i8** %6, align 8
  br label %32

32:                                               ; preds = %31, %26
  br label %33

33:                                               ; preds = %32, %2
  %34 = load i8*, i8** %6, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %38 = load i8**, i8*** %3, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %38, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @sprintf(i8* %37, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %43)
  %45 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %46 = call i32 @Usage(i8* %45)
  br label %47

47:                                               ; preds = %36, %33
  %48 = load i32, i32* %5, align 4
  %49 = load i32*, i32** %4, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* %8, align 4
  ret i32 %50
}

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @Usage(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
