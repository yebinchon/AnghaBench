; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/test/yacc/extr_grammar.tab.c_haveAnsiParam.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/test/yacc/extr_grammar.tab.c_haveAnsiParam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i64 }

@func_params = common dso_local global %struct.TYPE_6__* null, align 8
@FUNC_ANSI = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @haveAnsiParam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @haveAnsiParam() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = load %struct.TYPE_6__*, %struct.TYPE_6__** @func_params, align 8
  %4 = icmp ne %struct.TYPE_6__* %3, null
  br i1 %4, label %5, label %28

5:                                                ; preds = %0
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** @func_params, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %2, align 8
  br label %9

9:                                                ; preds = %23, %5
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %11 = icmp ne %struct.TYPE_5__* %10, null
  br i1 %11, label %12, label %27

12:                                               ; preds = %9
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @FUNC_ANSI, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = load i32, i32* @TRUE, align 4
  store i32 %21, i32* %1, align 4
  br label %30

22:                                               ; preds = %12
  br label %23

23:                                               ; preds = %22
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %2, align 8
  br label %9

27:                                               ; preds = %9
  br label %28

28:                                               ; preds = %27, %0
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %1, align 4
  br label %30

30:                                               ; preds = %28, %20
  %31 = load i32, i32* %1, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
