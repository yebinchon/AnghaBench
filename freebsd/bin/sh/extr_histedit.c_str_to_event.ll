; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_histedit.c_str_to_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_histedit.c_str_to_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@hist = common dso_local global i32 0, align 4
@H_FIRST = common dso_local global i32 0, align 4
@H_NEXT = common dso_local global i32 0, align 4
@H_LAST = common dso_local global i32 0, align 4
@H_NEXT_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"history number %s not found (internal error)\00", align 1
@H_PREV_STR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"history pattern not found: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @str_to_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_to_event(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i8*, i8** %3, align 8
  store i8* %10, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* @hist, align 4
  %12 = load i32, i32* @H_FIRST, align 4
  %13 = call i32 (i32, %struct.TYPE_3__*, i32, ...) @history(i32 %11, %struct.TYPE_3__* %5, i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  switch i32 %16, label %21 [
    i32 45, label %17
    i32 43, label %18
  ]

17:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %18

18:                                               ; preds = %2, %17
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %6, align 8
  br label %21

21:                                               ; preds = %18, %2
  %22 = load i8*, i8** %6, align 8
  %23 = call i64 @is_number(i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %78

25:                                               ; preds = %21
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @atoi(i8* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %52

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %40, %30
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, -1
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %8, align 4
  %37 = icmp ne i32 %35, 0
  br label %38

38:                                               ; preds = %34, %31
  %39 = phi i1 [ false, %31 ], [ %37, %34 ]
  br i1 %39, label %40, label %44

40:                                               ; preds = %38
  %41 = load i32, i32* @hist, align 4
  %42 = load i32, i32* @H_NEXT, align 4
  %43 = call i32 (i32, %struct.TYPE_3__*, i32, ...) @history(i32 %41, %struct.TYPE_3__* %5, i32 %42)
  store i32 %43, i32* %9, align 4
  br label %31

44:                                               ; preds = %38
  %45 = load i32, i32* %9, align 4
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i32, i32* @hist, align 4
  %49 = load i32, i32* @H_LAST, align 4
  %50 = call i32 (i32, %struct.TYPE_3__*, i32, ...) @history(i32 %48, %struct.TYPE_3__* %5, i32 %49)
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %47, %44
  br label %71

52:                                               ; preds = %25
  %53 = load i32, i32* @hist, align 4
  %54 = load i32, i32* @H_NEXT_EVENT, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 (i32, %struct.TYPE_3__*, i32, ...) @history(i32 %53, %struct.TYPE_3__* %5, i32 %54, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %70

59:                                               ; preds = %52
  %60 = load i32, i32* @hist, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* @H_FIRST, align 4
  br label %67

65:                                               ; preds = %59
  %66 = load i32, i32* @H_LAST, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  %69 = call i32 (i32, %struct.TYPE_3__*, i32, ...) @history(i32 %60, %struct.TYPE_3__* %5, i32 %68)
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %67, %52
  br label %71

71:                                               ; preds = %70, %51
  %72 = load i32, i32* %9, align 4
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i8*, i8** %3, align 8
  %76 = call i32 @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %75)
  br label %77

77:                                               ; preds = %74, %71
  br label %89

78:                                               ; preds = %21
  %79 = load i32, i32* @hist, align 4
  %80 = load i32, i32* @H_PREV_STR, align 4
  %81 = load i8*, i8** %3, align 8
  %82 = call i32 (i32, %struct.TYPE_3__*, i32, ...) @history(i32 %79, %struct.TYPE_3__* %5, i32 %80, i8* %81)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load i8*, i8** %3, align 8
  %87 = call i32 @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %86)
  br label %88

88:                                               ; preds = %85, %78
  br label %89

89:                                               ; preds = %88, %77
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  ret i32 %91
}

declare dso_local i32 @history(i32, %struct.TYPE_3__*, i32, ...) #1

declare dso_local i64 @is_number(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @error(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
