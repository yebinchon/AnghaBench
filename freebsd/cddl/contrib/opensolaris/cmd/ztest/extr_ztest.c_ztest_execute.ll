; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_ztest_execute.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_ztest_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_9__ = type { i32, i32 (i32*, i64)* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { i8* }

@ztest_ds = common dso_local global i32* null, align 8
@ztest_opts = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str = private unnamed_addr constant [17 x i8] c"%6.2f sec in %s\0A\00", align 1
@NANOSEC = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_9__*, i64)* @ztest_execute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ztest_execute(i32 %0, %struct.TYPE_9__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i32*, i32** @ztest_ds, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ztest_opts, i32 0, i32 0), align 8
  %15 = urem i64 %13, %14
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  store i32* %16, i32** %7, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call %struct.TYPE_8__* @ZTEST_GET_SHARED_CALLSTATE(i32 %17)
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %8, align 8
  %19 = call i32 (...) @gethrtime()
  store i32 %19, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %33, %3
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %20
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load i32 (i32*, i64)*, i32 (i32*, i64)** %28, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i32 %29(i32* %30, i64 %31)
  br label %33

33:                                               ; preds = %26
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %10, align 4
  br label %20

36:                                               ; preds = %20
  %37 = call i32 (...) @gethrtime()
  %38 = load i32, i32* %9, align 4
  %39 = sub nsw i32 %37, %38
  store i32 %39, i32* %9, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = call i32 @atomic_add_64(i32* %41, i32 1)
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @atomic_add_64(i32* %44, i32 %45)
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ztest_opts, i32 0, i32 1), align 8
  %48 = icmp sge i32 %47, 4
  br i1 %48, label %49, label %62

49:                                               ; preds = %36
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i32 (i32*, i64)*, i32 (i32*, i64)** %51, align 8
  %53 = bitcast i32 (i32*, i64)* %52 to i8*
  %54 = call i32 @dladdr(i8* %53, %struct.TYPE_10__* %11)
  %55 = load i32, i32* %9, align 4
  %56 = sitofp i32 %55 to double
  %57 = load double, double* @NANOSEC, align 8
  %58 = fdiv double %56, %57
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), double %58, i8* %60)
  br label %62

62:                                               ; preds = %49, %36
  ret void
}

declare dso_local %struct.TYPE_8__* @ZTEST_GET_SHARED_CALLSTATE(i32) #1

declare dso_local i32 @gethrtime(...) #1

declare dso_local i32 @atomic_add_64(i32*, i32) #1

declare dso_local i32 @dladdr(i8*, %struct.TYPE_10__*) #1

declare dso_local i32 @printf(i8*, double, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
