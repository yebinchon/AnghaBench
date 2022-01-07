; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_expand.c_strtodest.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_expand.c_strtodest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worddest = type { i32 }

@VSLENGTH = common dso_local global i32 0, align 4
@VSTRIMLEFT = common dso_local global i32 0, align 4
@VSTRIMLEFTMAX = common dso_local global i32 0, align 4
@VSTRIMRIGHT = common dso_local global i32 0, align 4
@VSTRIMRIGHTMAX = common dso_local global i32 0, align 4
@expdest = common dso_local global i32 0, align 4
@EXP_SPLIT = common dso_local global i32 0, align 4
@BASESYNTAX = common dso_local global i32 0, align 4
@EXP_GLOB = common dso_local global i32 0, align 4
@EXP_CASE = common dso_local global i32 0, align 4
@DQSYNTAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32, %struct.worddest*)* @strtodest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @strtodest(i8* %0, i32 %1, i32 %2, i32 %3, %struct.worddest* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.worddest*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.worddest* %4, %struct.worddest** %10, align 8
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @VSLENGTH, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %30, label %14

14:                                               ; preds = %5
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @VSTRIMLEFT, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %30, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @VSTRIMLEFTMAX, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @VSTRIMRIGHT, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @VSTRIMRIGHTMAX, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26, %22, %18, %14, %5
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* @expdest, align 4
  %33 = call i32 @STPUTS(i8* %31, i32 %32)
  br label %77

34:                                               ; preds = %26
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @EXP_SPLIT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %39
  %43 = load %struct.worddest*, %struct.worddest** %10, align 8
  %44 = icmp ne %struct.worddest* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load i8*, i8** %6, align 8
  %47 = load i32, i32* @BASESYNTAX, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @expdest, align 4
  %50 = load %struct.worddest*, %struct.worddest** %10, align 8
  %51 = call i32 @STPUTS_SPLIT(i8* %46, i32 %47, i32 %48, i32 %49, %struct.worddest* %50)
  br label %76

52:                                               ; preds = %42, %39, %34
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @EXP_GLOB, align 4
  %55 = load i32, i32* @EXP_CASE, align 4
  %56 = or i32 %54, %55
  %57 = and i32 %53, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %52
  %60 = load i8*, i8** %6, align 8
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* @DQSYNTAX, align 4
  br label %67

65:                                               ; preds = %59
  %66 = load i32, i32* @BASESYNTAX, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  %69 = load i32, i32* @expdest, align 4
  %70 = call i32 @STPUTS_QUOTES(i8* %60, i32 %68, i32 %69)
  br label %75

71:                                               ; preds = %52
  %72 = load i8*, i8** %6, align 8
  %73 = load i32, i32* @expdest, align 4
  %74 = call i32 @STPUTS(i8* %72, i32 %73)
  br label %75

75:                                               ; preds = %71, %67
  br label %76

76:                                               ; preds = %75, %45
  br label %77

77:                                               ; preds = %76, %30
  ret void
}

declare dso_local i32 @STPUTS(i8*, i32) #1

declare dso_local i32 @STPUTS_SPLIT(i8*, i32, i32, i32, %struct.worddest*) #1

declare dso_local i32 @STPUTS_QUOTES(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
