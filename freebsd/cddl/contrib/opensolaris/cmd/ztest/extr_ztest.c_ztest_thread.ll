; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_ztest_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_ztest_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i32 }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i64 }

@ztest_shared = common dso_local global %struct.TYPE_9__* null, align 8
@ZTEST_FUNCS = common dso_local global i32 0, align 4
@ztest_info = common dso_local global %struct.TYPE_11__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @ztest_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ztest_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = ptrtoint i8* %10 to i64
  store i64 %11, i64* %4, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ztest_shared, align 8
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %5, align 8
  br label %13

13:                                               ; preds = %72, %1
  %14 = call i64 (...) @gethrtime()
  store i64 %14, i64* %7, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %14, %17
  br i1 %18, label %19, label %73

19:                                               ; preds = %13
  %20 = load i64, i64* %7, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %20, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = call i32 @ztest_kill(%struct.TYPE_9__* %26)
  br label %28

28:                                               ; preds = %25, %19
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp sgt i32 %31, 10
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %73

34:                                               ; preds = %28
  %35 = load i32, i32* @ZTEST_FUNCS, align 4
  %36 = call i64 @ztest_random(i32 %35)
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %3, align 4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ztest_info, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i64 %40
  store %struct.TYPE_11__* %41, %struct.TYPE_11__** %8, align 8
  %42 = load i32, i32* %3, align 4
  %43 = call %struct.TYPE_10__* @ZTEST_GET_SHARED_CALLSTATE(i32 %42)
  store %struct.TYPE_10__* %43, %struct.TYPE_10__** %9, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %6, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* %6, align 8
  %49 = icmp sge i64 %47, %48
  br i1 %49, label %50, label %72

50:                                               ; preds = %34
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 2, %59
  %61 = add nsw i32 %60, 1
  %62 = call i64 @ztest_random(i32 %61)
  %63 = add nsw i64 %54, %62
  %64 = call i64 @atomic_cas_64(i64* %52, i64 %53, i64 %63)
  %65 = load i64, i64* %6, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %50
  %68 = load i32, i32* %3, align 4
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %70 = load i64, i64* %4, align 8
  %71 = call i32 @ztest_execute(i32 %68, %struct.TYPE_11__* %69, i64 %70)
  br label %72

72:                                               ; preds = %67, %50, %34
  br label %13

73:                                               ; preds = %33, %13
  ret i8* null
}

declare dso_local i64 @gethrtime(...) #1

declare dso_local i32 @ztest_kill(%struct.TYPE_9__*) #1

declare dso_local i64 @ztest_random(i32) #1

declare dso_local %struct.TYPE_10__* @ZTEST_GET_SHARED_CALLSTATE(i32) #1

declare dso_local i64 @atomic_cas_64(i64*, i64, i64) #1

declare dso_local i32 @ztest_execute(i32, %struct.TYPE_11__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
