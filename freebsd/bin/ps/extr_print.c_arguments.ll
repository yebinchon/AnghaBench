; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ps/extr_print.c_arguments.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ps/extr_print.c_arguments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@VIS_TAB = common dso_local global i32 0, align 4
@VIS_NL = common dso_local global i32 0, align 4
@VIS_NOSLASH = common dso_local global i32 0, align 4
@next_ve = common dso_local global i32 0, align 4
@ARGUMENTS_WIDTH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @arguments(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = call i64 @strlen(i8* %8)
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 1
  %12 = trunc i64 %11 to i32
  %13 = call i8* @malloc(i32 %12)
  store i8* %13, i8** %5, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = call i32 @xo_errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %2
  %18 = load i8*, i8** %5, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i32, i32* @VIS_TAB, align 4
  %23 = load i32, i32* @VIS_NL, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @VIS_NOSLASH, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @strvis(i8* %18, i8* %21, i32 %26)
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* @next_ve, align 4
  %30 = call i32* @STAILQ_NEXT(i32* %28, i32 %29)
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %17
  %33 = load i8*, i8** %5, align 8
  %34 = call i64 @strlen(i8* %33)
  %35 = load i64, i64* @ARGUMENTS_WIDTH, align 8
  %36 = icmp ugt i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i8*, i8** %5, align 8
  %39 = load i64, i64* @ARGUMENTS_WIDTH, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  store i8 0, i8* %40, align 1
  br label %41

41:                                               ; preds = %37, %32, %17
  %42 = load i8*, i8** %5, align 8
  ret i8* %42
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @xo_errx(i32, i8*) #1

declare dso_local i32 @strvis(i8*, i8*, i32) #1

declare dso_local i32* @STAILQ_NEXT(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
