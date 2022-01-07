; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_eval.c_evalstring.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_eval.c_evalstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.node = type { i32 }
%struct.stackmark = type { i32 }

@EV_EXIT = common dso_local global i32 0, align 4
@NEOF = common dso_local global %union.node* null, align 8
@nflag = common dso_local global i32 0, align 4
@evalskip = common dso_local global i64 0, align 8
@exitstatus = common dso_local global i64 0, align 8
@EXEXIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evalstring(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.node*, align 8
  %6 = alloca %struct.stackmark, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @EV_EXIT, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* @EV_EXIT, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %4, align 4
  store i32 0, i32* %8, align 4
  %16 = call i32 @setstackmark(%struct.stackmark* %6)
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @setinputstring(i8* %17, i32 1)
  br label %19

19:                                               ; preds = %50, %2
  %20 = call %union.node* @parsecmd(i32 0)
  store %union.node* %20, %union.node** %5, align 8
  %21 = load %union.node*, %union.node** @NEOF, align 8
  %22 = icmp ne %union.node* %20, %21
  br i1 %22, label %23, label %53

23:                                               ; preds = %19
  %24 = load %union.node*, %union.node** %5, align 8
  %25 = icmp ne %union.node* %24, null
  br i1 %25, label %26, label %50

26:                                               ; preds = %23
  %27 = load i32, i32* @nflag, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %50, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %29
  %33 = call i64 (...) @preadateof()
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load %union.node*, %union.node** %5, align 8
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @EV_EXIT, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @evaltree(%union.node* %36, i32 %39)
  br label %45

41:                                               ; preds = %32, %29
  %42 = load %union.node*, %union.node** %5, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @evaltree(%union.node* %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %35
  store i32 1, i32* %8, align 4
  %46 = load i64, i64* @evalskip, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  br label %53

49:                                               ; preds = %45
  br label %50

50:                                               ; preds = %49, %26, %23
  %51 = call i32 @popstackmark(%struct.stackmark* %6)
  %52 = call i32 @setstackmark(%struct.stackmark* %6)
  br label %19

53:                                               ; preds = %48, %19
  %54 = call i32 (...) @popfile()
  %55 = call i32 @popstackmark(%struct.stackmark* %6)
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  store i64 0, i64* @exitstatus, align 8
  br label %59

59:                                               ; preds = %58, %53
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* @EXEXIT, align 4
  %64 = call i32 @exraise(i32 %63)
  br label %65

65:                                               ; preds = %62, %59
  ret void
}

declare dso_local i32 @setstackmark(%struct.stackmark*) #1

declare dso_local i32 @setinputstring(i8*, i32) #1

declare dso_local %union.node* @parsecmd(i32) #1

declare dso_local i64 @preadateof(...) #1

declare dso_local i32 @evaltree(%union.node*, i32) #1

declare dso_local i32 @popstackmark(%struct.stackmark*) #1

declare dso_local i32 @popfile(...) #1

declare dso_local i32 @exraise(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
