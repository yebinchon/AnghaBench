; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_ztest_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_ztest_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i8*, i8*, i8* }

@B_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i8*, i8*)* @ztest_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ztest_write(i32* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = getelementptr i8, i8* %13, i64 40
  %15 = call %struct.TYPE_6__* @ztest_lr_alloc(i8* %14, i32* null)
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %11, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 4
  store i8* %16, i8** %18, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 3
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = call i32 @BP_ZERO(i32* %28)
  %30 = load i8*, i8** %10, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 1
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @bcopy(i8* %30, %struct.TYPE_6__* %32, i8* %33)
  %35 = load i32*, i32** %6, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %37 = load i32, i32* @B_FALSE, align 4
  %38 = call i32 @ztest_replay_write(i32* %35, %struct.TYPE_6__* %36, i32 %37)
  store i32 %38, i32* %12, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = getelementptr i8, i8* %40, i64 40
  %42 = call i32 @ztest_lr_free(%struct.TYPE_6__* %39, i8* %41, i32* null)
  %43 = load i32, i32* %12, align 4
  ret i32 %43
}

declare dso_local %struct.TYPE_6__* @ztest_lr_alloc(i8*, i32*) #1

declare dso_local i32 @BP_ZERO(i32*) #1

declare dso_local i32 @bcopy(i8*, %struct.TYPE_6__*, i8*) #1

declare dso_local i32 @ztest_replay_write(i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @ztest_lr_free(%struct.TYPE_6__*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
