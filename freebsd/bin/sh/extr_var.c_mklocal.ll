; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_var.c_mklocal.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_var.c_mklocal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.localvar = type { i32, %struct.localvar*, %struct.var*, i32* }
%struct.var = type { i32, i64, i32* }

@INTOFF = common dso_local global i32 0, align 4
@optval = common dso_local global i32 0, align 4
@VSTRFIXED = common dso_local global i32 0, align 4
@VNOLOCAL = common dso_local global i32 0, align 4
@VUNSET = common dso_local global i32 0, align 4
@VTEXTFIXED = common dso_local global i32 0, align 4
@localvars = common dso_local global %struct.localvar* null, align 8
@INTON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mklocal(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.localvar*, align 8
  %4 = alloca %struct.var**, align 8
  %5 = alloca %struct.var*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i32, i32* @INTOFF, align 4
  %7 = call i8* @ckmalloc(i32 32)
  %8 = bitcast i8* %7 to %struct.localvar*
  store %struct.localvar* %8, %struct.localvar** %3, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 45
  br i1 %13, label %14, label %30

14:                                               ; preds = %1
  %15 = load i8*, i8** %2, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %14
  %21 = call i8* @ckmalloc(i32 4)
  %22 = bitcast i8* %21 to i32*
  %23 = load %struct.localvar*, %struct.localvar** %3, align 8
  %24 = getelementptr inbounds %struct.localvar, %struct.localvar* %23, i32 0, i32 3
  store i32* %22, i32** %24, align 8
  %25 = load %struct.localvar*, %struct.localvar** %3, align 8
  %26 = getelementptr inbounds %struct.localvar, %struct.localvar* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* @optval, align 4
  %29 = call i32 @memcpy(i32* %27, i32 %28, i32 4)
  store %struct.var* null, %struct.var** %5, align 8
  br label %93

30:                                               ; preds = %14, %1
  %31 = load i8*, i8** %2, align 8
  %32 = call %struct.var* @find_var(i8* %31, %struct.var*** %4, i32* null)
  store %struct.var* %32, %struct.var** %5, align 8
  %33 = load %struct.var*, %struct.var** %5, align 8
  %34 = icmp eq %struct.var* %33, null
  br i1 %34, label %35, label %60

35:                                               ; preds = %30
  %36 = load i8*, i8** %2, align 8
  %37 = call i64 @strchr(i8* %36, i8 signext 61)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = load i8*, i8** %2, align 8
  %41 = call i32 @savestr(i8* %40)
  %42 = load i32, i32* @VSTRFIXED, align 4
  %43 = load i32, i32* @VNOLOCAL, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @setvareq(i32 %41, i32 %44)
  br label %52

46:                                               ; preds = %35
  %47 = load i8*, i8** %2, align 8
  %48 = load i32, i32* @VSTRFIXED, align 4
  %49 = load i32, i32* @VNOLOCAL, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @setvar(i8* %47, i32* null, i32 %50)
  br label %52

52:                                               ; preds = %46, %39
  %53 = load %struct.var**, %struct.var*** %4, align 8
  %54 = load %struct.var*, %struct.var** %53, align 8
  store %struct.var* %54, %struct.var** %5, align 8
  %55 = load %struct.localvar*, %struct.localvar** %3, align 8
  %56 = getelementptr inbounds %struct.localvar, %struct.localvar* %55, i32 0, i32 3
  store i32* null, i32** %56, align 8
  %57 = load i32, i32* @VUNSET, align 4
  %58 = load %struct.localvar*, %struct.localvar** %3, align 8
  %59 = getelementptr inbounds %struct.localvar, %struct.localvar* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  br label %92

60:                                               ; preds = %30
  %61 = load %struct.var*, %struct.var** %5, align 8
  %62 = getelementptr inbounds %struct.var, %struct.var* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.localvar*, %struct.localvar** %3, align 8
  %65 = getelementptr inbounds %struct.localvar, %struct.localvar* %64, i32 0, i32 3
  store i32* %63, i32** %65, align 8
  %66 = load %struct.var*, %struct.var** %5, align 8
  %67 = getelementptr inbounds %struct.var, %struct.var* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.localvar*, %struct.localvar** %3, align 8
  %70 = getelementptr inbounds %struct.localvar, %struct.localvar* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* @VSTRFIXED, align 4
  %72 = load i32, i32* @VTEXTFIXED, align 4
  %73 = or i32 %71, %72
  %74 = load %struct.var*, %struct.var** %5, align 8
  %75 = getelementptr inbounds %struct.var, %struct.var* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  %78 = load i8*, i8** %2, align 8
  %79 = load %struct.var*, %struct.var** %5, align 8
  %80 = getelementptr inbounds %struct.var, %struct.var* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds i8, i8* %78, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 61
  br i1 %85, label %86, label %91

86:                                               ; preds = %60
  %87 = load i8*, i8** %2, align 8
  %88 = call i32 @savestr(i8* %87)
  %89 = load i32, i32* @VNOLOCAL, align 4
  %90 = call i32 @setvareq(i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %86, %60
  br label %92

92:                                               ; preds = %91, %52
  br label %93

93:                                               ; preds = %92, %20
  %94 = load %struct.var*, %struct.var** %5, align 8
  %95 = load %struct.localvar*, %struct.localvar** %3, align 8
  %96 = getelementptr inbounds %struct.localvar, %struct.localvar* %95, i32 0, i32 2
  store %struct.var* %94, %struct.var** %96, align 8
  %97 = load %struct.localvar*, %struct.localvar** @localvars, align 8
  %98 = load %struct.localvar*, %struct.localvar** %3, align 8
  %99 = getelementptr inbounds %struct.localvar, %struct.localvar* %98, i32 0, i32 1
  store %struct.localvar* %97, %struct.localvar** %99, align 8
  %100 = load %struct.localvar*, %struct.localvar** %3, align 8
  store %struct.localvar* %100, %struct.localvar** @localvars, align 8
  %101 = load i32, i32* @INTON, align 4
  ret void
}

declare dso_local i8* @ckmalloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local %struct.var* @find_var(i8*, %struct.var***, i32*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @setvareq(i32, i32) #1

declare dso_local i32 @savestr(i8*) #1

declare dso_local i32 @setvar(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
