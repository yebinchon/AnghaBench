; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_unwind.c_find_proc_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_unwind.c_find_proc_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unwind_info = type { i32 }
%struct.map = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"unwind: find_proc_info dso %s\0A\00", align 1
@UNW_INFO_FORMAT_REMOTE_TABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32, i8*)* @find_proc_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_proc_info(i32 %0, i32 %1, i32* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.unwind_info*, align 8
  %13 = alloca %struct.map*, align 8
  %14 = alloca %struct.TYPE_9__, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = bitcast i8* %18 to %struct.unwind_info*
  store %struct.unwind_info* %19, %struct.unwind_info** %12, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.unwind_info*, %struct.unwind_info** %12, align 8
  %22 = call %struct.map* @find_map(i32 %20, %struct.unwind_info* %21)
  store %struct.map* %22, %struct.map** %13, align 8
  %23 = load %struct.map*, %struct.map** %13, align 8
  %24 = icmp ne %struct.map* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %5
  %26 = load %struct.map*, %struct.map** %13, align 8
  %27 = getelementptr inbounds %struct.map, %struct.map* %26, i32 0, i32 2
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = icmp ne %struct.TYPE_10__* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25, %5
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %93

33:                                               ; preds = %25
  %34 = load %struct.map*, %struct.map** %13, align 8
  %35 = getelementptr inbounds %struct.map, %struct.map* %34, i32 0, i32 2
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load %struct.map*, %struct.map** %13, align 8
  %41 = getelementptr inbounds %struct.map, %struct.map* %40, i32 0, i32 2
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = load %struct.unwind_info*, %struct.unwind_info** %12, align 8
  %44 = getelementptr inbounds %struct.unwind_info, %struct.unwind_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @read_unwind_spec(%struct.TYPE_10__* %42, i32 %45, i32* %15, i32* %16, i32* %17)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %33
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %93

51:                                               ; preds = %33
  %52 = call i32 @memset(%struct.TYPE_9__* %14, i32 0, i32 24)
  %53 = load i32, i32* @UNW_INFO_FORMAT_REMOTE_TABLE, align 4
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 3
  store i32 %53, i32* %54, align 4
  %55 = load %struct.map*, %struct.map** %13, align 8
  %56 = getelementptr inbounds %struct.map, %struct.map* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  store i32 %57, i32* %58, align 4
  %59 = load %struct.map*, %struct.map** %13, align 8
  %60 = getelementptr inbounds %struct.map, %struct.map* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 2
  store i32 %61, i32* %62, align 4
  %63 = load %struct.map*, %struct.map** %13, align 8
  %64 = getelementptr inbounds %struct.map, %struct.map* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %16, align 4
  %67 = add nsw i32 %65, %66
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 4
  %71 = load %struct.map*, %struct.map** %13, align 8
  %72 = getelementptr inbounds %struct.map, %struct.map* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %15, align 4
  %75 = add nsw i32 %73, %74
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  store i32 %75, i32* %78, align 4
  %79 = load i32, i32* %17, align 4
  %80 = sext i32 %79 to i64
  %81 = mul i64 %80, 4
  %82 = udiv i64 %81, 4
  %83 = trunc i64 %82 to i32
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 2
  store i32 %83, i32* %86, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %8, align 4
  %89 = load i32*, i32** %9, align 8
  %90 = load i32, i32* %10, align 4
  %91 = load i8*, i8** %11, align 8
  %92 = call i32 @dwarf_search_unwind_table(i32 %87, i32 %88, %struct.TYPE_9__* %14, i32* %89, i32 %90, i8* %91)
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %51, %48, %30
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local %struct.map* @find_map(i32, %struct.unwind_info*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i64 @read_unwind_spec(%struct.TYPE_10__*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @dwarf_search_unwind_table(i32, i32, %struct.TYPE_9__*, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
