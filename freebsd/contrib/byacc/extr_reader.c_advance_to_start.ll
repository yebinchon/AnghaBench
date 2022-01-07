; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/extr_reader.c_advance_to_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/extr_reader.c_advance_to_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }

@cptr = common dso_local global i8* null, align 8
@lineno = common dso_local global i8* null, align 8
@line = common dso_local global i32 0, align 4
@goal = common dso_local global %struct.TYPE_6__* null, align 8
@TERM = common dso_local global i64 0, align 8
@EOF = common dso_local global i32 0, align 4
@rescan_lineno = common dso_local global i8* null, align 8
@L_PAREN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @advance_to_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @advance_to_start() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  br label %5

5:                                                ; preds = %24, %0
  %6 = call i32 (...) @nextc()
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = icmp ne i32 %7, 37
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  br label %25

10:                                               ; preds = %5
  %11 = load i8*, i8** @cptr, align 8
  store i8* %11, i8** %3, align 8
  %12 = call i32 (...) @keyword()
  switch i32 %12, label %19 [
    i32 130, label %13
    i32 128, label %15
    i32 129, label %17
  ]

13:                                               ; preds = %10
  %14 = call i32 (...) @no_grammar()
  br label %15

15:                                               ; preds = %10, %13
  %16 = call i32 (...) @copy_text()
  br label %24

17:                                               ; preds = %10
  %18 = call i32 (...) @declare_start()
  br label %24

19:                                               ; preds = %10
  %20 = load i8*, i8** @lineno, align 8
  %21 = load i32, i32* @line, align 4
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @syntax_error(i8* %20, i32 %21, i8* %22)
  br label %24

24:                                               ; preds = %19, %17, %15
  br label %5

25:                                               ; preds = %9
  %26 = call i32 (...) @nextc()
  store i32 %26, i32* %1, align 4
  %27 = load i32, i32* %1, align 4
  %28 = call i32 @isalpha(i32 %27) #3
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %44, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %1, align 4
  %32 = icmp ne i32 %31, 95
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = load i32, i32* %1, align 4
  %35 = icmp ne i32 %34, 46
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load i32, i32* %1, align 4
  %38 = icmp ne i32 %37, 95
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i8*, i8** @lineno, align 8
  %41 = load i32, i32* @line, align 4
  %42 = load i8*, i8** @cptr, align 8
  %43 = call i32 @syntax_error(i8* %40, i32 %41, i8* %42)
  br label %44

44:                                               ; preds = %39, %36, %33, %30, %25
  %45 = call %struct.TYPE_6__* (...) @get_name()
  store %struct.TYPE_6__* %45, %struct.TYPE_6__** %2, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** @goal, align 8
  %47 = icmp eq %struct.TYPE_6__* %46, null
  br i1 %47, label %48, label %61

48:                                               ; preds = %44
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @TERM, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @terminal_start(i32 %57)
  br label %59

59:                                               ; preds = %54, %48
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  store %struct.TYPE_6__* %60, %struct.TYPE_6__** @goal, align 8
  br label %61

61:                                               ; preds = %59, %44
  %62 = load i8*, i8** @lineno, align 8
  %63 = ptrtoint i8* %62 to i32
  store i32 %63, i32* %4, align 4
  %64 = call i32 (...) @nextc()
  store i32 %64, i32* %1, align 4
  %65 = load i32, i32* %1, align 4
  %66 = load i32, i32* @EOF, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = call i32 (...) @unexpected_EOF()
  br label %70

70:                                               ; preds = %68, %61
  %71 = load i8*, i8** @lineno, align 8
  store i8* %71, i8** @rescan_lineno, align 8
  %72 = load i32, i32* %1, align 4
  %73 = icmp ne i32 %72, 58
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = load i8*, i8** @lineno, align 8
  %76 = load i32, i32* @line, align 4
  %77 = load i8*, i8** @cptr, align 8
  %78 = call i32 @syntax_error(i8* %75, i32 %76, i8* %77)
  br label %79

79:                                               ; preds = %74, %70
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @start_rule(%struct.TYPE_6__* %80, i32 %81)
  %83 = load i8*, i8** @cptr, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** @cptr, align 8
  ret void
}

declare dso_local i32 @nextc(...) #1

declare dso_local i32 @keyword(...) #1

declare dso_local i32 @no_grammar(...) #1

declare dso_local i32 @copy_text(...) #1

declare dso_local i32 @declare_start(...) #1

declare dso_local i32 @syntax_error(i8*, i32, i8*) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isalpha(i32) #2

declare dso_local %struct.TYPE_6__* @get_name(...) #1

declare dso_local i32 @terminal_start(i32) #1

declare dso_local i32 @unexpected_EOF(...) #1

declare dso_local i32 @start_rule(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
