; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/extr_reader.c_declare_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/extr_reader.c_declare_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@EOF = common dso_local global i32 0, align 4
@lineno = common dso_local global i32 0, align 4
@line = common dso_local global i32 0, align 4
@cptr = common dso_local global i32 0, align 4
@TERM = common dso_local global i64 0, align 8
@goal = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @declare_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @declare_start() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = call i32 (...) @nextc()
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @EOF, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 (...) @unexpected_EOF()
  br label %9

9:                                                ; preds = %7, %0
  %10 = load i32, i32* %1, align 4
  %11 = call i32 @isalpha(i32 %10) #3
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* %1, align 4
  %15 = icmp ne i32 %14, 95
  br i1 %15, label %16, label %27

16:                                               ; preds = %13
  %17 = load i32, i32* %1, align 4
  %18 = icmp ne i32 %17, 46
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = load i32, i32* %1, align 4
  %21 = icmp ne i32 %20, 36
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i32, i32* @lineno, align 4
  %24 = load i32, i32* @line, align 4
  %25 = load i32, i32* @cptr, align 4
  %26 = call i32 @syntax_error(i32 %23, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %22, %19, %16, %13, %9
  %28 = call %struct.TYPE_4__* (...) @get_name()
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** %2, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @TERM, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @terminal_start(i32 %37)
  br label %39

39:                                               ; preds = %34, %27
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @goal, align 8
  %41 = icmp ne %struct.TYPE_4__* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @goal, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %45 = icmp ne %struct.TYPE_4__* %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = call i32 (...) @restarted_warning()
  br label %48

48:                                               ; preds = %46, %42, %39
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  store %struct.TYPE_4__* %49, %struct.TYPE_4__** @goal, align 8
  ret void
}

declare dso_local i32 @nextc(...) #1

declare dso_local i32 @unexpected_EOF(...) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isalpha(i32) #2

declare dso_local i32 @syntax_error(i32, i32, i32) #1

declare dso_local %struct.TYPE_4__* @get_name(...) #1

declare dso_local i32 @terminal_start(i32) #1

declare dso_local i32 @restarted_warning(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
