; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_tc.c_atf_tc_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_tc.c_atf_tc_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_13__*)* }

@Current = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@.str = private unnamed_addr constant [46 x i8] c"%d checks failed; see output for more details\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"%d checks failed as expected; see output for more details\00", align 1
@UNREACHABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atf_tc_run(%struct.TYPE_13__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @context_init(%struct.TYPE_14__* @Current, %struct.TYPE_13__* %7, i8* %8)
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %13, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %16 = call i32 %14(%struct.TYPE_13__* %15)
  %17 = call i32 @validate_expect(%struct.TYPE_14__* @Current)
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @Current, i32 0, i32 0), align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @Current, i32 0, i32 0), align 8
  %22 = call i32 @format_reason_fmt(i32* %5, i32* null, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = call i32 @fail_requirement(%struct.TYPE_14__* @Current, i32* %5)
  br label %34

24:                                               ; preds = %2
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @Current, i32 0, i32 1), align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @Current, i32 0, i32 1), align 8
  %29 = call i32 @format_reason_fmt(i32* %6, i32* null, i32 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i64 %28)
  %30 = call i32 @expected_failure(%struct.TYPE_14__* @Current, i32* %6)
  br label %33

31:                                               ; preds = %24
  %32 = call i32 @pass(%struct.TYPE_14__* @Current)
  br label %33

33:                                               ; preds = %31, %27
  br label %34

34:                                               ; preds = %33, %20
  %35 = load i32, i32* @UNREACHABLE, align 4
  %36 = call i32 (...) @atf_no_error()
  ret i32 %36
}

declare dso_local i32 @context_init(%struct.TYPE_14__*, %struct.TYPE_13__*, i8*) #1

declare dso_local i32 @validate_expect(%struct.TYPE_14__*) #1

declare dso_local i32 @format_reason_fmt(i32*, i32*, i32, i8*, i64) #1

declare dso_local i32 @fail_requirement(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @expected_failure(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @pass(%struct.TYPE_14__*) #1

declare dso_local i32 @atf_no_error(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
