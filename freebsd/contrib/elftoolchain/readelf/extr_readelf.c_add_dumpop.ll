; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_add_dumpop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_add_dumpop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.readelf = type { i32 }
%struct.dumpop = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i8* }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"calloc failed\00", align 1
@DUMP_BY_INDEX = common dso_local global i32 0, align 4
@dumpop_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.readelf*, i64, i8*, i32, i32)* @add_dumpop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_dumpop(%struct.readelf* %0, i64 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.readelf*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dumpop*, align 8
  store %struct.readelf* %0, %struct.readelf** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.readelf*, %struct.readelf** %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load i32, i32* %10, align 4
  %16 = call %struct.dumpop* @find_dumpop(%struct.readelf* %12, i64 %13, i8* %14, i32 -1, i32 %15)
  store %struct.dumpop* %16, %struct.dumpop** %11, align 8
  %17 = icmp eq %struct.dumpop* %16, null
  br i1 %17, label %18, label %50

18:                                               ; preds = %5
  %19 = call %struct.dumpop* @calloc(i32 1, i32 24)
  store %struct.dumpop* %19, %struct.dumpop** %11, align 8
  %20 = icmp eq %struct.dumpop* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* @EXIT_FAILURE, align 4
  %23 = call i32 @err(i32 %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @DUMP_BY_INDEX, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.dumpop*, %struct.dumpop** %11, align 8
  %31 = getelementptr inbounds %struct.dumpop, %struct.dumpop* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i64 %29, i64* %32, align 8
  br label %38

33:                                               ; preds = %24
  %34 = load i8*, i8** %8, align 8
  %35 = load %struct.dumpop*, %struct.dumpop** %11, align 8
  %36 = getelementptr inbounds %struct.dumpop, %struct.dumpop* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i8* %34, i8** %37, align 8
  br label %38

38:                                               ; preds = %33, %28
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.dumpop*, %struct.dumpop** %11, align 8
  %41 = getelementptr inbounds %struct.dumpop, %struct.dumpop* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.dumpop*, %struct.dumpop** %11, align 8
  %44 = getelementptr inbounds %struct.dumpop, %struct.dumpop* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.readelf*, %struct.readelf** %6, align 8
  %46 = getelementptr inbounds %struct.readelf, %struct.readelf* %45, i32 0, i32 0
  %47 = load %struct.dumpop*, %struct.dumpop** %11, align 8
  %48 = load i32, i32* @dumpop_list, align 4
  %49 = call i32 @STAILQ_INSERT_TAIL(i32* %46, %struct.dumpop* %47, i32 %48)
  br label %56

50:                                               ; preds = %5
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.dumpop*, %struct.dumpop** %11, align 8
  %53 = getelementptr inbounds %struct.dumpop, %struct.dumpop* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %50, %38
  ret void
}

declare dso_local %struct.dumpop* @find_dumpop(%struct.readelf*, i64, i8*, i32, i32) #1

declare dso_local %struct.dumpop* @calloc(i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.dumpop*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
