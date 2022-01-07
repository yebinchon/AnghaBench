; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-finder.c_probe_point_inline_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-finder.c_probe_point_inline_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.probe_finder = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.perf_probe_point }
%struct.perf_probe_point = type { i64, i64 }

@.str = private unnamed_addr constant [36 x i8] c"Failed to get entry address of %s.\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"found inline addr: 0x%jx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @probe_point_inline_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @probe_point_inline_cb(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.probe_finder*, align 8
  %7 = alloca %struct.perf_probe_point*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.probe_finder*
  store %struct.probe_finder* %11, %struct.probe_finder** %6, align 8
  %12 = load %struct.probe_finder*, %struct.probe_finder** %6, align 8
  %13 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.perf_probe_point* %15, %struct.perf_probe_point** %7, align 8
  %16 = load %struct.perf_probe_point*, %struct.perf_probe_point** %7, align 8
  %17 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32*, i32** %4, align 8
  %22 = load %struct.probe_finder*, %struct.probe_finder** %6, align 8
  %23 = call i32 @find_probe_point_lazy(i32* %21, %struct.probe_finder* %22)
  store i32 %23, i32* %9, align 4
  br label %53

24:                                               ; preds = %2
  %25 = load i32*, i32** %4, align 8
  %26 = call i64 @dwarf_entrypc(i32* %25, i64* %8)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @dwarf_diename(i32* %29)
  %31 = call i32 @pr_warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @ENOENT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %55

34:                                               ; preds = %24
  %35 = load i64, i64* %8, align 8
  %36 = load %struct.probe_finder*, %struct.probe_finder** %6, align 8
  %37 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.perf_probe_point*, %struct.perf_probe_point** %7, align 8
  %39 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.probe_finder*, %struct.probe_finder** %6, align 8
  %42 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, %40
  store i64 %44, i64* %42, align 8
  %45 = load %struct.probe_finder*, %struct.probe_finder** %6, align 8
  %46 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32*, i32** %4, align 8
  %51 = load %struct.probe_finder*, %struct.probe_finder** %6, align 8
  %52 = call i32 @call_probe_finder(i32* %50, %struct.probe_finder* %51)
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %34, %20
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %53, %28
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @find_probe_point_lazy(i32*, %struct.probe_finder*) #1

declare dso_local i64 @dwarf_entrypc(i32*, i64*) #1

declare dso_local i32 @pr_warning(i8*, i32) #1

declare dso_local i32 @dwarf_diename(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @call_probe_finder(i32*, %struct.probe_finder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
