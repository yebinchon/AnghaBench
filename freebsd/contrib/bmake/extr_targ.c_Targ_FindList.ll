; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_targ.c_Targ_FindList.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_targ.c_Targ_FindList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i64 0, align 8
@TARG_NOCREATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"\22%s\22 -- target unknown.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Targ_FindList(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @FALSE, align 4
  %11 = call i32 @Lst_Init(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @Lst_Open(i32 %12)
  %14 = load i64, i64* @FAILURE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %49

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %44, %18
  %20 = load i32, i32* %4, align 4
  %21 = call i32* @Lst_Next(i32 %20)
  store i32* %21, i32** %7, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %45

23:                                               ; preds = %19
  %24 = load i32*, i32** %7, align 8
  %25 = call i64 @Lst_Datum(i32* %24)
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** %9, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32* @Targ_FindNode(i8* %27, i32 %28)
  store i32* %29, i32** %8, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %23
  %33 = load i32, i32* %6, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @Lst_AtEnd(i32 %33, i32* %34)
  br label %44

36:                                               ; preds = %23
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @TARG_NOCREATE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 @Error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %40, %36
  br label %44

44:                                               ; preds = %43, %32
  br label %19

45:                                               ; preds = %19
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @Lst_Close(i32 %46)
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %45, %16
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @Lst_Init(i32) #1

declare dso_local i64 @Lst_Open(i32) #1

declare dso_local i32* @Lst_Next(i32) #1

declare dso_local i64 @Lst_Datum(i32*) #1

declare dso_local i32* @Targ_FindNode(i8*, i32) #1

declare dso_local i32 @Lst_AtEnd(i32, i32*) #1

declare dso_local i32 @Error(i8*, i8*) #1

declare dso_local i32 @Lst_Close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
