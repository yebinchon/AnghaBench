; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_eval.c_evalredir.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_eval.c_evalredir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jmploc = type { i32 }
%union.node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@exitstatus = common dso_local global i32 0, align 4
@oexitstatus = common dso_local global i32 0, align 4
@handler = common dso_local global %struct.jmploc* null, align 8
@exception = common dso_local global i32 0, align 4
@EXERROR = common dso_local global i32 0, align 4
@FORCEINTON = common dso_local global i32 0, align 4
@INTOFF = common dso_local global i32 0, align 4
@REDIR_PUSH = common dso_local global i32 0, align 4
@INTON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.node*, i32)* @evalredir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evalredir(%union.node* %0, i32 %1) #0 {
  %3 = alloca %union.node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.jmploc, align 4
  %6 = alloca %struct.jmploc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %union.node* %0, %union.node** %3, align 8
  store i32 %1, i32* %4, align 4
  store volatile i32 1, i32* %7, align 4
  %9 = load i32, i32* @exitstatus, align 4
  store i32 %9, i32* @oexitstatus, align 4
  %10 = load %union.node*, %union.node** %3, align 8
  %11 = bitcast %union.node* %10 to %struct.TYPE_2__*
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @expredir(i32 %13)
  %15 = load %struct.jmploc*, %struct.jmploc** @handler, align 8
  store %struct.jmploc* %15, %struct.jmploc** %6, align 8
  %16 = getelementptr inbounds %struct.jmploc, %struct.jmploc* %5, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @setjmp(i32 %17) #3
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %2
  %21 = load %struct.jmploc*, %struct.jmploc** %6, align 8
  store %struct.jmploc* %21, %struct.jmploc** @handler, align 8
  %22 = load i32, i32* @exception, align 4
  store i32 %22, i32* %8, align 4
  %23 = call i32 (...) @popredir()
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @EXERROR, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load volatile i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* @FORCEINTON, align 4
  br label %57

32:                                               ; preds = %27, %20
  %33 = load %struct.jmploc*, %struct.jmploc** @handler, align 8
  %34 = getelementptr inbounds %struct.jmploc, %struct.jmploc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @longjmp(i32 %35, i32 1)
  br label %52

37:                                               ; preds = %2
  %38 = load i32, i32* @INTOFF, align 4
  store %struct.jmploc* %5, %struct.jmploc** @handler, align 8
  %39 = load %union.node*, %union.node** %3, align 8
  %40 = bitcast %union.node* %39 to %struct.TYPE_2__*
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @REDIR_PUSH, align 4
  %44 = call i32 @redirect(i32 %42, i32 %43)
  store volatile i32 0, i32* %7, align 4
  %45 = load i32, i32* @INTON, align 4
  %46 = load %union.node*, %union.node** %3, align 8
  %47 = bitcast %union.node* %46 to %struct.TYPE_2__*
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @evaltree(i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %37, %32
  %53 = load i32, i32* @INTOFF, align 4
  %54 = load %struct.jmploc*, %struct.jmploc** %6, align 8
  store %struct.jmploc* %54, %struct.jmploc** @handler, align 8
  %55 = call i32 (...) @popredir()
  %56 = load i32, i32* @INTON, align 4
  br label %57

57:                                               ; preds = %52, %30
  ret void
}

declare dso_local i32 @expredir(i32) #1

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #2

declare dso_local i32 @popredir(...) #1

declare dso_local i32 @longjmp(i32, i32) #1

declare dso_local i32 @redirect(i32, i32) #1

declare dso_local i32 @evaltree(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
