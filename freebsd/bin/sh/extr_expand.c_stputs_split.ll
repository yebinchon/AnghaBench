; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_expand.c_stputs_split.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_expand.c_stputs_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worddest = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@EXP_GLOB = common dso_local global i32 0, align 4
@CCTL = common dso_local global i8 0, align 1
@CTLESC = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i32, i8*, %struct.worddest*)* @stputs_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @stputs_split(i8* %0, i8* %1, i32 %2, i8* %3, %struct.worddest* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.worddest*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store %struct.worddest* %4, %struct.worddest** %10, align 8
  %13 = call i64 (...) @ifsset()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = call i8* (...) @ifsval()
  br label %18

17:                                               ; preds = %5
  br label %18

18:                                               ; preds = %17, %15
  %19 = phi i8* [ %16, %15 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %17 ]
  store i8* %19, i8** %11, align 8
  br label %20

20:                                               ; preds = %60, %34, %18
  %21 = load i8*, i8** %6, align 8
  %22 = load i8, i8* %21, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %24, label %64

24:                                               ; preds = %20
  %25 = load i8*, i8** %9, align 8
  %26 = call i32 @CHECKSTRSPACE(i32 2, i8* %25)
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %6, align 8
  %29 = load i8, i8* %27, align 1
  store i8 %29, i8* %12, align 1
  %30 = load i8*, i8** %11, align 8
  %31 = load i8, i8* %12, align 1
  %32 = call i32* @strchr(i8* %30, i8 signext %31)
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %24
  %35 = load i8, i8* %12, align 1
  %36 = load i32, i32* %8, align 4
  %37 = load i8*, i8** %9, align 8
  %38 = load %struct.worddest*, %struct.worddest** %10, align 8
  %39 = call i32 @NEXTWORD(i8 signext %35, i32 %36, i8* %37, %struct.worddest* %38)
  br label %20

40:                                               ; preds = %24
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @EXP_GLOB, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %40
  %46 = load i8*, i8** %7, align 8
  %47 = load i8, i8* %12, align 1
  %48 = sext i8 %47 to i32
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %46, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = load i8, i8* @CCTL, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %45
  %57 = load i8, i8* @CTLESC, align 1
  %58 = load i8*, i8** %9, align 8
  %59 = call i32 @USTPUTC(i8 signext %57, i8* %58)
  br label %60

60:                                               ; preds = %56, %45, %40
  %61 = load i8, i8* %12, align 1
  %62 = load i8*, i8** %9, align 8
  %63 = call i32 @USTPUTC(i8 signext %61, i8* %62)
  br label %20

64:                                               ; preds = %20
  %65 = load i8*, i8** %9, align 8
  ret i8* %65
}

declare dso_local i64 @ifsset(...) #1

declare dso_local i8* @ifsval(...) #1

declare dso_local i32 @CHECKSTRSPACE(i32, i8*) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @NEXTWORD(i8 signext, i32, i8*, %struct.worddest*) #1

declare dso_local i32 @USTPUTC(i8 signext, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
