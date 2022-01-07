; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/extr_reader.c_add_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/extr_reader.c_add_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64*, i32 }
%struct.TYPE_9__ = type { i32, i64* }

@lineno = common dso_local global i8* null, align 8
@cptr = common dso_local global i32* null, align 8
@rescan_lineno = common dso_local global i8* null, align 8
@last_was_action = common dso_local global i64 0, align 8
@nitems = common dso_local global i32 0, align 4
@maxitems = common dso_local global i32 0, align 4
@pitem = common dso_local global %struct.TYPE_8__** null, align 8
@L_PAREN = common dso_local global i32 0, align 4
@nrules = common dso_local global i64 0, align 8
@plhs = common dso_local global %struct.TYPE_9__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @add_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_symbol() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = load i8*, i8** @lineno, align 8
  %5 = ptrtoint i8* %4 to i32
  store i32 %5, i32* %3, align 4
  %6 = load i32*, i32** @cptr, align 8
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = icmp eq i32 %8, 39
  br i1 %9, label %13, label %10

10:                                               ; preds = %0
  %11 = load i32, i32* %1, align 4
  %12 = icmp eq i32 %11, 34
  br i1 %12, label %13, label %15

13:                                               ; preds = %10, %0
  %14 = call %struct.TYPE_8__* (...) @get_literal()
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %2, align 8
  br label %17

15:                                               ; preds = %10
  %16 = call %struct.TYPE_8__* (...) @get_name()
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %2, align 8
  br label %17

17:                                               ; preds = %15, %13
  %18 = call i32 (...) @nextc()
  store i32 %18, i32* %1, align 4
  %19 = load i8*, i8** @lineno, align 8
  store i8* %19, i8** @rescan_lineno, align 8
  %20 = load i32, i32* %1, align 4
  %21 = icmp eq i32 %20, 58
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = call i32 (...) @end_rule()
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @start_rule(%struct.TYPE_8__* %24, i32 %25)
  %27 = load i32*, i32** @cptr, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** @cptr, align 8
  br label %48

29:                                               ; preds = %17
  %30 = load i64, i64* @last_was_action, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = call i32 (...) @insert_empty_rule()
  br label %34

34:                                               ; preds = %32, %29
  store i64 0, i64* @last_was_action, align 8
  %35 = load i32, i32* @nitems, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* @nitems, align 4
  %37 = load i32, i32* @maxitems, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = call i32 (...) @expand_items()
  br label %41

41:                                               ; preds = %39, %34
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %43 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @pitem, align 8
  %44 = load i32, i32* @nitems, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %43, i64 %46
  store %struct.TYPE_8__* %42, %struct.TYPE_8__** %47, align 8
  br label %48

48:                                               ; preds = %41, %22
  ret void
}

declare dso_local %struct.TYPE_8__* @get_literal(...) #1

declare dso_local %struct.TYPE_8__* @get_name(...) #1

declare dso_local i32 @nextc(...) #1

declare dso_local i32 @end_rule(...) #1

declare dso_local i32 @start_rule(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @insert_empty_rule(...) #1

declare dso_local i32 @expand_items(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
