; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/blacklist/bin/extr_conf.c_getmask.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/blacklist/bin/extr_conf.c_getmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FSTAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32, i8**, i32*)* @getmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getmask(i8* %0, i64 %1, i32 %2, i8** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i8**, i8*** %10, align 8
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %13, align 8
  %16 = load i8*, i8** %13, align 8
  %17 = call i8* @strchr(i8* %16, i8 signext 58)
  store i8* %17, i8** %12, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %5
  %20 = load i8*, i8** %12, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %12, align 8
  store i8 0, i8* %20, align 1
  %22 = load i8*, i8** %12, align 8
  %23 = load i8**, i8*** %10, align 8
  store i8* %22, i8** %23, align 8
  br label %24

24:                                               ; preds = %19, %5
  %25 = load i8*, i8** %13, align 8
  %26 = call i8* @strchr(i8* %25, i8 signext 47)
  store i8* %26, i8** %12, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* @FSTAR, align 4
  %30 = load i32*, i32** %11, align 8
  store i32 %29, i32* %30, align 4
  store i32 0, i32* %6, align 4
  br label %40

31:                                               ; preds = %24
  %32 = load i8*, i8** %12, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %12, align 8
  store i8 0, i8* %32, align 1
  %34 = load i8*, i8** %7, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32*, i32** %11, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = call i32 @getnum(i8* %34, i64 %35, i32 %36, i32* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %38)
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %31, %28
  %41 = load i32, i32* %6, align 4
  ret i32 %41
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @getnum(i8*, i64, i32, i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
