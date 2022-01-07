; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_evlist.c_perf_evlist__mmap_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_evlist.c_perf_evlist__mmap_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.perf_evlist = type { i64, %union.perf_event, %struct.perf_mmap* }
%struct.perf_mmap = type { i32, i8*, i32 }

@page_size = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"WARNING: failed to keep up with mmap data.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %union.perf_event* @perf_evlist__mmap_read(%struct.perf_evlist* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_evlist*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_mmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %union.perf_event*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.perf_evlist* %0, %struct.perf_evlist** %3, align 8
  store i32 %1, i32* %4, align 4
  %16 = load %struct.perf_evlist*, %struct.perf_evlist** %3, align 8
  %17 = getelementptr inbounds %struct.perf_evlist, %struct.perf_evlist* %16, i32 0, i32 2
  %18 = load %struct.perf_mmap*, %struct.perf_mmap** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.perf_mmap, %struct.perf_mmap* %18, i64 %20
  store %struct.perf_mmap* %21, %struct.perf_mmap** %5, align 8
  %22 = load %struct.perf_mmap*, %struct.perf_mmap** %5, align 8
  %23 = call i32 @perf_mmap__read_head(%struct.perf_mmap* %22)
  store i32 %23, i32* %6, align 4
  %24 = load %struct.perf_mmap*, %struct.perf_mmap** %5, align 8
  %25 = getelementptr inbounds %struct.perf_mmap, %struct.perf_mmap* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %7, align 4
  %27 = load %struct.perf_mmap*, %struct.perf_mmap** %5, align 8
  %28 = getelementptr inbounds %struct.perf_mmap, %struct.perf_mmap* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = load i32, i32* @page_size, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  store i8* %32, i8** %8, align 8
  store %union.perf_event* null, %union.perf_event** %9, align 8
  %33 = load %struct.perf_evlist*, %struct.perf_evlist** %3, align 8
  %34 = getelementptr inbounds %struct.perf_evlist, %struct.perf_evlist* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %2
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = sub i32 %38, %39
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.perf_mmap*, %struct.perf_mmap** %5, align 8
  %43 = getelementptr inbounds %struct.perf_mmap, %struct.perf_mmap* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = sdiv i32 %44, 2
  %46 = icmp sgt i32 %41, %45
  br i1 %46, label %50, label %47

47:                                               ; preds = %37
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47, %37
  %51 = load i32, i32* @stderr, align 4
  %52 = call i32 @fprintf(i32 %51, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %50, %47
  br label %55

55:                                               ; preds = %54, %2
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %145

59:                                               ; preds = %55
  %60 = load i8*, i8** %8, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.perf_mmap*, %struct.perf_mmap** %5, align 8
  %63 = getelementptr inbounds %struct.perf_mmap, %struct.perf_mmap* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %61, %64
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %60, i64 %66
  %68 = bitcast i8* %67 to %union.perf_event*
  store %union.perf_event* %68, %union.perf_event** %9, align 8
  %69 = load %union.perf_event*, %union.perf_event** %9, align 8
  %70 = bitcast %union.perf_event* %69 to %struct.TYPE_2__*
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %11, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.perf_mmap*, %struct.perf_mmap** %5, align 8
  %75 = getelementptr inbounds %struct.perf_mmap, %struct.perf_mmap* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %73, %76
  %78 = zext i32 %77 to i64
  %79 = load i64, i64* %11, align 8
  %80 = add i64 %78, %79
  %81 = load i32, i32* %7, align 4
  %82 = zext i32 %81 to i64
  %83 = load i64, i64* %11, align 8
  %84 = add i64 %82, %83
  %85 = load %struct.perf_mmap*, %struct.perf_mmap** %5, align 8
  %86 = getelementptr inbounds %struct.perf_mmap, %struct.perf_mmap* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = and i64 %84, %88
  %90 = icmp ne i64 %80, %89
  br i1 %90, label %91, label %139

91:                                               ; preds = %59
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %12, align 4
  %93 = load i64, i64* %11, align 8
  %94 = trunc i64 %93 to i32
  %95 = call i32 @min(i32 8, i32 %94)
  store i32 %95, i32* %13, align 4
  %96 = load %struct.perf_evlist*, %struct.perf_evlist** %3, align 8
  %97 = getelementptr inbounds %struct.perf_evlist, %struct.perf_evlist* %96, i32 0, i32 1
  %98 = bitcast %union.perf_event* %97 to i8*
  store i8* %98, i8** %15, align 8
  br label %99

99:                                               ; preds = %133, %91
  %100 = load %struct.perf_mmap*, %struct.perf_mmap** %5, align 8
  %101 = getelementptr inbounds %struct.perf_mmap, %struct.perf_mmap* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, 1
  %104 = load i32, i32* %12, align 4
  %105 = load %struct.perf_mmap*, %struct.perf_mmap** %5, align 8
  %106 = getelementptr inbounds %struct.perf_mmap, %struct.perf_mmap* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = and i32 %104, %107
  %109 = sub i32 %103, %108
  %110 = load i32, i32* %13, align 4
  %111 = call i32 @min(i32 %109, i32 %110)
  store i32 %111, i32* %14, align 4
  %112 = load i8*, i8** %15, align 8
  %113 = load i8*, i8** %8, align 8
  %114 = load i32, i32* %12, align 4
  %115 = load %struct.perf_mmap*, %struct.perf_mmap** %5, align 8
  %116 = getelementptr inbounds %struct.perf_mmap, %struct.perf_mmap* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = and i32 %114, %117
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %113, i64 %119
  %121 = load i32, i32* %14, align 4
  %122 = call i32 @memcpy(i8* %112, i8* %120, i32 %121)
  %123 = load i32, i32* %14, align 4
  %124 = load i32, i32* %12, align 4
  %125 = add i32 %124, %123
  store i32 %125, i32* %12, align 4
  %126 = load i32, i32* %14, align 4
  %127 = load i8*, i8** %15, align 8
  %128 = zext i32 %126 to i64
  %129 = getelementptr i8, i8* %127, i64 %128
  store i8* %129, i8** %15, align 8
  %130 = load i32, i32* %14, align 4
  %131 = load i32, i32* %13, align 4
  %132 = sub i32 %131, %130
  store i32 %132, i32* %13, align 4
  br label %133

133:                                              ; preds = %99
  %134 = load i32, i32* %13, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %99, label %136

136:                                              ; preds = %133
  %137 = load %struct.perf_evlist*, %struct.perf_evlist** %3, align 8
  %138 = getelementptr inbounds %struct.perf_evlist, %struct.perf_evlist* %137, i32 0, i32 1
  store %union.perf_event* %138, %union.perf_event** %9, align 8
  br label %139

139:                                              ; preds = %136, %59
  %140 = load i64, i64* %11, align 8
  %141 = load i32, i32* %7, align 4
  %142 = zext i32 %141 to i64
  %143 = add i64 %142, %140
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %7, align 4
  br label %145

145:                                              ; preds = %139, %55
  %146 = load i32, i32* %7, align 4
  %147 = load %struct.perf_mmap*, %struct.perf_mmap** %5, align 8
  %148 = getelementptr inbounds %struct.perf_mmap, %struct.perf_mmap* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 8
  %149 = load %struct.perf_evlist*, %struct.perf_evlist** %3, align 8
  %150 = getelementptr inbounds %struct.perf_evlist, %struct.perf_evlist* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %157, label %153

153:                                              ; preds = %145
  %154 = load %struct.perf_mmap*, %struct.perf_mmap** %5, align 8
  %155 = load i32, i32* %7, align 4
  %156 = call i32 @perf_mmap__write_tail(%struct.perf_mmap* %154, i32 %155)
  br label %157

157:                                              ; preds = %153, %145
  %158 = load %union.perf_event*, %union.perf_event** %9, align 8
  ret %union.perf_event* %158
}

declare dso_local i32 @perf_mmap__read_head(%struct.perf_mmap*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @perf_mmap__write_tail(%struct.perf_mmap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
