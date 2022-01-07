; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_eval.c_evalloop.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_eval.c_evalloop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.node = type { i64 }
%struct.TYPE_2__ = type { i32, i32 }

@loopnest = common dso_local global i32 0, align 4
@evalskip = common dso_local global i64 0, align 8
@EV_TESTED = common dso_local global i32 0, align 4
@SKIPCONT = common dso_local global i64 0, align 8
@skipcount = common dso_local global i64 0, align 8
@SKIPBREAK = common dso_local global i64 0, align 8
@SKIPRETURN = common dso_local global i64 0, align 8
@exitstatus = common dso_local global i32 0, align 4
@NWHILE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.node*, i32)* @evalloop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evalloop(%union.node* %0, i32 %1) #0 {
  %3 = alloca %union.node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %union.node* %0, %union.node** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @loopnest, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* @loopnest, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %62, %29, %2
  %9 = load i64, i64* @evalskip, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %8
  %12 = load %union.node*, %union.node** %3, align 8
  %13 = bitcast %union.node* %12 to %struct.TYPE_2__*
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @EV_TESTED, align 4
  %17 = call i32 @evaltree(i32 %15, i32 %16)
  br label %18

18:                                               ; preds = %11, %8
  %19 = load i64, i64* @evalskip, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %46

21:                                               ; preds = %18
  %22 = load i64, i64* @evalskip, align 8
  %23 = load i64, i64* @SKIPCONT, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load i64, i64* @skipcount, align 8
  %27 = add nsw i64 %26, -1
  store i64 %27, i64* @skipcount, align 8
  %28 = icmp sle i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i64 0, i64* @evalskip, align 8
  br label %8

30:                                               ; preds = %25, %21
  %31 = load i64, i64* @evalskip, align 8
  %32 = load i64, i64* @SKIPBREAK, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i64, i64* @skipcount, align 8
  %36 = add nsw i64 %35, -1
  store i64 %36, i64* @skipcount, align 8
  %37 = icmp sle i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i64 0, i64* @evalskip, align 8
  br label %39

39:                                               ; preds = %38, %34, %30
  %40 = load i64, i64* @evalskip, align 8
  %41 = load i64, i64* @SKIPRETURN, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @exitstatus, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %43, %39
  br label %70

46:                                               ; preds = %18
  %47 = load %union.node*, %union.node** %3, align 8
  %48 = bitcast %union.node* %47 to i64*
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @NWHILE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load i32, i32* @exitstatus, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %70

56:                                               ; preds = %52
  br label %62

57:                                               ; preds = %46
  %58 = load i32, i32* @exitstatus, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %70

61:                                               ; preds = %57
  br label %62

62:                                               ; preds = %61, %56
  %63 = load %union.node*, %union.node** %3, align 8
  %64 = bitcast %union.node* %63 to %struct.TYPE_2__*
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @evaltree(i32 %66, i32 %67)
  %69 = load i32, i32* @exitstatus, align 4
  store i32 %69, i32* %5, align 4
  br label %8

70:                                               ; preds = %60, %55, %45
  %71 = load i32, i32* @loopnest, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* @loopnest, align 4
  %73 = load i32, i32* %5, align 4
  store i32 %73, i32* @exitstatus, align 4
  ret void
}

declare dso_local i32 @evaltree(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
