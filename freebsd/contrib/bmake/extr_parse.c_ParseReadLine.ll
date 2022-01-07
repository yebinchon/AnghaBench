; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_parse.c_ParseReadLine.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_parse.c_ParseReadLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@PARSE_SKIP = common dso_local global i32 0, align 4
@curFile = common dso_local global %struct.TYPE_2__* null, align 8
@PARSE_RAW = common dso_local global i32 0, align 4
@PARSE_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Unexpected end of file in for loop.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @ParseReadLine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ParseReadLine() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  br label %6

6:                                                ; preds = %68, %50, %40, %39, %0
  %7 = call i8* @ParseGetLine(i32 0, i32* %3)
  store i8* %7, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  store i8* null, i8** %1, align 8
  br label %73

11:                                               ; preds = %6
  %12 = load i8*, i8** %2, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 46
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i8*, i8** %2, align 8
  store i8* %18, i8** %1, align 8
  br label %73

19:                                               ; preds = %11
  %20 = load i8*, i8** %2, align 8
  %21 = call i32 @Cond_Eval(i8* %20)
  switch i32 %21, label %71 [
    i32 128, label %22
    i32 129, label %40
    i32 130, label %41
  ]

22:                                               ; preds = %19
  br label %23

23:                                               ; preds = %33, %22
  %24 = load i32, i32* @PARSE_SKIP, align 4
  %25 = call i8* @ParseGetLine(i32 %24, i32* %3)
  store i8* %25, i8** %2, align 8
  br label %26

26:                                               ; preds = %23
  %27 = load i8*, i8** %2, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i8*, i8** %2, align 8
  %31 = call i32 @Cond_Eval(i8* %30)
  %32 = icmp ne i32 %31, 129
  br label %33

33:                                               ; preds = %29, %26
  %34 = phi i1 [ false, %26 ], [ %32, %29 ]
  br i1 %34, label %23, label %35

35:                                               ; preds = %33
  %36 = load i8*, i8** %2, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %71

39:                                               ; preds = %35
  br label %6

40:                                               ; preds = %19
  br label %6

41:                                               ; preds = %19
  %42 = load i8*, i8** %2, align 8
  %43 = call i32 @For_Eval(i8* %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %71

47:                                               ; preds = %41
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  br label %6

51:                                               ; preds = %47
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curFile, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %64, %51
  %56 = load i32, i32* @PARSE_RAW, align 4
  %57 = call i8* @ParseGetLine(i32 %56, i32* %3)
  store i8* %57, i8** %2, align 8
  %58 = load i8*, i8** %2, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* @PARSE_FATAL, align 4
  %62 = call i32 @Parse_Error(i32 %61, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %68

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %63
  %65 = load i8*, i8** %2, align 8
  %66 = call i32 @For_Accum(i8* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %55, label %68

68:                                               ; preds = %64, %60
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @For_Run(i32 %69)
  br label %6

71:                                               ; preds = %19, %46, %38
  %72 = load i8*, i8** %2, align 8
  store i8* %72, i8** %1, align 8
  br label %73

73:                                               ; preds = %71, %17, %10
  %74 = load i8*, i8** %1, align 8
  ret i8* %74
}

declare dso_local i8* @ParseGetLine(i32, i32*) #1

declare dso_local i32 @Cond_Eval(i8*) #1

declare dso_local i32 @For_Eval(i8*) #1

declare dso_local i32 @Parse_Error(i32, i8*) #1

declare dso_local i32 @For_Accum(i8*) #1

declare dso_local i32 @For_Run(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
