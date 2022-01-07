; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testdbm.c_test_dbm_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testdbm.c_test_dbm_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@NUM_TABLE_ROWS = common dso_local global i32 0, align 4
@APR_SUCCESS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_3__*)* @test_dbm_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_dbm_delete(i32* %0, i32* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %37, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @NUM_TABLE_ROWS, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %40

13:                                               ; preds = %9
  %14 = load i32, i32* %8, align 4
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %37

18:                                               ; preds = %13
  %19 = load i32*, i32** %5, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %21 = load i32, i32* %8, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @apr_dbm_delete(i32* %19, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* @APR_SUCCESS, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @ABTS_INT_EQUAL(i32* %27, i32 %28, i32 %29)
  %31 = load i32, i32* @TRUE, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %33 = load i32, i32* %8, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32 %31, i32* %36, align 4
  br label %37

37:                                               ; preds = %18, %17
  %38 = load i32, i32* %8, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %8, align 4
  br label %9

40:                                               ; preds = %9
  ret void
}

declare dso_local i32 @apr_dbm_delete(i32*, i32) #1

declare dso_local i32 @ABTS_INT_EQUAL(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
