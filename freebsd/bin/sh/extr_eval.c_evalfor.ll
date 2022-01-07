; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_eval.c_evalfor.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_eval.c_evalfor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.node = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %union.node* }
%struct.arglist = type { i32, i32* }
%struct.TYPE_3__ = type { %union.node* }

@exitstatus = common dso_local global i32 0, align 4
@oexitstatus = common dso_local global i32 0, align 4
@EXP_FULL = common dso_local global i32 0, align 4
@EXP_TILDE = common dso_local global i32 0, align 4
@loopnest = common dso_local global i32 0, align 4
@evalskip = common dso_local global i64 0, align 8
@SKIPCONT = common dso_local global i64 0, align 8
@skipcount = common dso_local global i64 0, align 8
@SKIPBREAK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.node*, i32)* @evalfor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evalfor(%union.node* %0, i32 %1) #0 {
  %3 = alloca %union.node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.arglist, align 8
  %6 = alloca %union.node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %union.node* %0, %union.node** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = call i32 @emptyarglist(%struct.arglist* %5)
  %10 = load %union.node*, %union.node** %3, align 8
  %11 = bitcast %union.node* %10 to %struct.TYPE_4__*
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %13 = load %union.node*, %union.node** %12, align 8
  store %union.node* %13, %union.node** %6, align 8
  br label %14

14:                                               ; preds = %24, %2
  %15 = load %union.node*, %union.node** %6, align 8
  %16 = icmp ne %union.node* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %14
  %18 = load i32, i32* @exitstatus, align 4
  store i32 %18, i32* @oexitstatus, align 4
  %19 = load %union.node*, %union.node** %6, align 8
  %20 = load i32, i32* @EXP_FULL, align 4
  %21 = load i32, i32* @EXP_TILDE, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @expandarg(%union.node* %19, %struct.arglist* %5, i32 %22)
  br label %24

24:                                               ; preds = %17
  %25 = load %union.node*, %union.node** %6, align 8
  %26 = bitcast %union.node* %25 to %struct.TYPE_3__*
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %union.node*, %union.node** %27, align 8
  store %union.node* %28, %union.node** %6, align 8
  br label %14

29:                                               ; preds = %14
  %30 = load i32, i32* @loopnest, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @loopnest, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %78, %29
  %33 = load i32, i32* %7, align 4
  %34 = getelementptr inbounds %struct.arglist, %struct.arglist* %5, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %81

37:                                               ; preds = %32
  %38 = load %union.node*, %union.node** %3, align 8
  %39 = bitcast %union.node* %38 to %struct.TYPE_4__*
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.arglist, %struct.arglist* %5, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @setvar(i32 %41, i32 %47, i32 0)
  %49 = load %union.node*, %union.node** %3, align 8
  %50 = bitcast %union.node* %49 to %struct.TYPE_4__*
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @evaltree(i32 %52, i32 %53)
  %55 = load i32, i32* @exitstatus, align 4
  store i32 %55, i32* %8, align 4
  %56 = load i64, i64* @evalskip, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %77

58:                                               ; preds = %37
  %59 = load i64, i64* @evalskip, align 8
  %60 = load i64, i64* @SKIPCONT, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load i64, i64* @skipcount, align 8
  %64 = add nsw i64 %63, -1
  store i64 %64, i64* @skipcount, align 8
  %65 = icmp sle i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i64 0, i64* @evalskip, align 8
  br label %78

67:                                               ; preds = %62, %58
  %68 = load i64, i64* @evalskip, align 8
  %69 = load i64, i64* @SKIPBREAK, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load i64, i64* @skipcount, align 8
  %73 = add nsw i64 %72, -1
  store i64 %73, i64* @skipcount, align 8
  %74 = icmp sle i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i64 0, i64* @evalskip, align 8
  br label %76

76:                                               ; preds = %75, %71, %67
  br label %81

77:                                               ; preds = %37
  br label %78

78:                                               ; preds = %77, %66
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %32

81:                                               ; preds = %76, %32
  %82 = load i32, i32* @loopnest, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* @loopnest, align 4
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* @exitstatus, align 4
  ret void
}

declare dso_local i32 @emptyarglist(%struct.arglist*) #1

declare dso_local i32 @expandarg(%union.node*, %struct.arglist*, i32) #1

declare dso_local i32 @setvar(i32, i32, i32) #1

declare dso_local i32 @evaltree(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
