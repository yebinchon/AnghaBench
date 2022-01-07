; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cc.c_dt_action_stack_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cc.c_dt_action_stack_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64* }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_11__ = type { i64, i32* }

@DTRACEACT_STACK = common dso_local global i32 0, align 4
@DTRACEOPT_STACKFRAMES = common dso_local global i64 0, align 8
@DTRACEOPT_UNSET = common dso_local global i64 0, align 8
@D_STACK_PROTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"stack( ) prototype mismatch: too many arguments\0A\00", align 1
@D_STACK_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [72 x i8] c"stack( ) size must be a non-zero positive integral constant expression\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_10__*, %struct.TYPE_11__*)* @dt_action_stack_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_action_stack_args(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %6, align 8
  %7 = load i32, i32* @DTRACEACT_STACK, align 4
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = load i64, i64* @DTRACEOPT_STACKFRAMES, align 8
  %14 = getelementptr inbounds i64, i64* %12, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @DTRACEOPT_UNSET, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* @DTRACEOPT_STACKFRAMES, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  br label %30

27:                                               ; preds = %3
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  br label %30

30:                                               ; preds = %27, %18
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %32 = icmp ne %struct.TYPE_11__* %31, null
  br i1 %32, label %33, label %56

33:                                               ; preds = %30
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %40 = load i32, i32* @D_STACK_PROTO, align 4
  %41 = call i32 @dnerror(%struct.TYPE_11__* %39, i32 %40, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %38, %33
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %44 = call i64 @dt_node_is_posconst(%struct.TYPE_11__* %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %48 = load i32, i32* @D_STACK_SIZE, align 4
  %49 = call i32 @dnerror(%struct.TYPE_11__* %47, i32 %48, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %46, %42
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %50, %30
  ret void
}

declare dso_local i32 @dnerror(%struct.TYPE_11__*, i32, i8*) #1

declare dso_local i64 @dt_node_is_posconst(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
