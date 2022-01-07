; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_eval.c_exphere.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_eval.c_exphere.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.localvar = type { i32 }
%struct.TYPE_4__ = type { i8 }
%struct.jmploc = type { i32 }
%union.node = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i32 }
%struct.arglist = type { i8** }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@localvars = common dso_local global %struct.localvar* null, align 8
@shellparam = common dso_local global %struct.TYPE_4__ zeroinitializer, align 1
@forcelocal = common dso_local global i32 0, align 4
@handler = common dso_local global %struct.jmploc* null, align 8
@exception = common dso_local global i64 0, align 8
@EXERROR = common dso_local global i64 0, align 8
@INTOFF = common dso_local global i32 0, align 4
@INTON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.node*, %struct.arglist*)* @exphere to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exphere(%union.node* %0, %struct.arglist* %1) #0 {
  %3 = alloca %union.node*, align 8
  %4 = alloca %struct.arglist*, align 8
  %5 = alloca %struct.jmploc, align 4
  %6 = alloca %struct.jmploc*, align 8
  %7 = alloca %struct.localvar*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store %union.node* %0, %union.node** %3, align 8
  store %struct.arglist* %1, %struct.arglist** %4, align 8
  store i32 0, i32* %8, align 4
  %10 = load %union.node*, %union.node** %3, align 8
  %11 = bitcast %union.node* %10 to %struct.TYPE_3__*
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %13 = load %struct.localvar*, %struct.localvar** @localvars, align 8
  store %struct.localvar* %13, %struct.localvar** %7, align 8
  store %struct.localvar* null, %struct.localvar** @localvars, align 8
  %14 = load i8, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shellparam, i32 0, i32 0), align 1
  store i8 %14, i8* %9, align 1
  %15 = load i32, i32* @forcelocal, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @forcelocal, align 4
  %17 = load %struct.jmploc*, %struct.jmploc** @handler, align 8
  store %struct.jmploc* %17, %struct.jmploc** %6, align 8
  %18 = getelementptr inbounds %struct.jmploc, %struct.jmploc* %5, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @setjmp(i32 %19) #3
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load i64, i64* @exception, align 8
  %24 = load i64, i64* @EXERROR, align 8
  %25 = icmp ne i64 %23, %24
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %8, align 4
  br label %43

27:                                               ; preds = %2
  store %struct.jmploc* %5, %struct.jmploc** @handler, align 8
  %28 = load %union.node*, %union.node** %3, align 8
  %29 = bitcast %union.node* %28 to %struct.TYPE_3__*
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.arglist*, %struct.arglist** %4, align 8
  %33 = call i32 @expandarg(i32 %31, %struct.arglist* %32, i32 0)
  %34 = load %struct.arglist*, %struct.arglist** %4, align 8
  %35 = getelementptr inbounds %struct.arglist, %struct.arglist* %34, i32 0, i32 0
  %36 = load i8**, i8*** %35, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 0
  %38 = load i8*, i8** %37, align 8
  %39 = load %union.node*, %union.node** %3, align 8
  %40 = bitcast %union.node* %39 to %struct.TYPE_3__*
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i8* %38, i8** %41, align 8
  %42 = load i32, i32* @INTOFF, align 4
  br label %43

43:                                               ; preds = %27, %22
  %44 = load %struct.jmploc*, %struct.jmploc** %6, align 8
  store %struct.jmploc* %44, %struct.jmploc** @handler, align 8
  %45 = load i32, i32* @forcelocal, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* @forcelocal, align 4
  %47 = call i32 (...) @poplocalvars()
  %48 = load %struct.localvar*, %struct.localvar** %7, align 8
  store %struct.localvar* %48, %struct.localvar** @localvars, align 8
  %49 = load i8, i8* %9, align 1
  store i8 %49, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shellparam, i32 0, i32 0), align 1
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %43
  %53 = load %struct.jmploc*, %struct.jmploc** @handler, align 8
  %54 = getelementptr inbounds %struct.jmploc, %struct.jmploc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @longjmp(i32 %55, i32 1)
  br label %57

57:                                               ; preds = %52, %43
  %58 = load i32, i32* @INTON, align 4
  ret void
}

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #1

declare dso_local i32 @expandarg(i32, %struct.arglist*, i32) #2

declare dso_local i32 @poplocalvars(...) #2

declare dso_local i32 @longjmp(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
