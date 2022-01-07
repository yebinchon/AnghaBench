; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/extr_reader.c_start_rule.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/extr_reader.c_start_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

@TERM = common dso_local global i64 0, align 8
@NONTERM = common dso_local global i64 0, align 8
@nrules = common dso_local global i64 0, align 8
@maxrules = common dso_local global i64 0, align 8
@plhs = common dso_local global %struct.TYPE_4__** null, align 8
@UNDEFINED = common dso_local global i32 0, align 4
@rprec = common dso_local global i32* null, align 8
@TOKEN = common dso_local global i32 0, align 4
@rassoc = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32)* @start_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_rule(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @TERM, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @terminal_lhs(i32 %11)
  br label %13

13:                                               ; preds = %10, %2
  %14 = load i64, i64* @NONTERM, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %13
  %22 = load i64, i64* @nrules, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  br label %25

25:                                               ; preds = %21, %13
  %26 = load i64, i64* @nrules, align 8
  %27 = load i64, i64* @maxrules, align 8
  %28 = icmp uge i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = call i32 (...) @expand_rules()
  br label %31

31:                                               ; preds = %29, %25
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %33 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @plhs, align 8
  %34 = load i64, i64* @nrules, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %33, i64 %34
  store %struct.TYPE_4__* %32, %struct.TYPE_4__** %35, align 8
  %36 = load i32, i32* @UNDEFINED, align 4
  %37 = load i32*, i32** @rprec, align 8
  %38 = load i64, i64* @nrules, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32 %36, i32* %39, align 4
  %40 = load i32, i32* @TOKEN, align 4
  %41 = load i32*, i32** @rassoc, align 8
  %42 = load i64, i64* @nrules, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  store i32 %40, i32* %43, align 4
  ret void
}

declare dso_local i32 @terminal_lhs(i32) #1

declare dso_local i32 @expand_rules(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
