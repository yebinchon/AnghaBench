; ModuleID = '/home/carl/AnghaBench/freebsd/bin/test/extr_test.c_isunopoperand.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/test/extr_test.c_isunopoperand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nargc = common dso_local global i32 0, align 4
@t_wp = common dso_local global i8** null, align 8
@parenlevel = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c")\00", align 1
@BINOP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @isunopoperand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isunopoperand() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @nargc, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store i32 1, i32* %1, align 4
  br label %54

8:                                                ; preds = %0
  %9 = load i8**, i8*** @t_wp, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 1
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %2, align 8
  %12 = load i32, i32* @nargc, align 4
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %24

14:                                               ; preds = %8
  %15 = load i32, i32* @parenlevel, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i8*, i8** %2, align 8
  %19 = call i64 @strcmp(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br label %21

21:                                               ; preds = %17, %14
  %22 = phi i1 [ false, %14 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %1, align 4
  br label %54

24:                                               ; preds = %8
  %25 = load i8**, i8*** @t_wp, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 2
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %3, align 8
  %28 = load i8*, i8** %2, align 8
  %29 = call i32 @find_op(i8* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i64 @TOKEN_TYPE(i32 %30)
  %32 = load i64, i64* @BINOP, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %24
  %35 = load i32, i32* @parenlevel, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %34
  %38 = load i8*, i8** %3, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 41
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load i8*, i8** %3, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 0
  br label %49

49:                                               ; preds = %43, %37, %34
  %50 = phi i1 [ true, %37 ], [ true, %34 ], [ %48, %43 ]
  br label %51

51:                                               ; preds = %49, %24
  %52 = phi i1 [ false, %24 ], [ %50, %49 ]
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %1, align 4
  br label %54

54:                                               ; preds = %51, %21, %7
  %55 = load i32, i32* %1, align 4
  ret i32 %55
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @find_op(i8*) #1

declare dso_local i64 @TOKEN_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
