; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/lockstat/extr_lockstat.c_process_aggregate.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/lockstat/extr_lockstat.c_process_aggregate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i64, i64* }

@g_nrecs = common dso_local global i64 0, align 8
@DTRACE_AGGVARIDNONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"bad variable ID in aggregation record\00", align 1
@DTRACE_QUANTIZE_NBUCKETS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"bad quantize size in aggregation record\00", align 1
@DTRACE_QUANTIZE_ZEROBUCKET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"bad avg size in aggregation record\00", align 1
@g_recsize = common dso_local global i64 0, align 8
@LS_HIST = common dso_local global i64 0, align 8
@DTRACE_AGGWALK_NEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i8*)* @process_aggregate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_aggregate(%struct.TYPE_13__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %6, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %7, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %8, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %9, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @g_nrecs, align 8
  %30 = icmp slt i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @DTRACE_AGGVARIDNONE, align 8
  %37 = add nsw i64 %36, 1
  %38 = icmp sgt i64 %35, %37
  br i1 %38, label %39, label %98

39:                                               ; preds = %2
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i64 %47
  store %struct.TYPE_11__* %48, %struct.TYPE_11__** %10, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @DTRACE_AGGVARIDNONE, align 8
  %53 = add nsw i64 %52, 2
  %54 = icmp ne i64 %51, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %39
  %56 = call i32 @fail(i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %39
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = load i32, i32* @DTRACE_QUANTIZE_NBUCKETS, align 4
  %63 = sext i32 %62 to i64
  %64 = mul i64 %63, 8
  %65 = icmp ne i64 %61, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %57
  %67 = call i32 @fail(i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %57
  %69 = load i64, i64* %7, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %69, %72
  %74 = inttoptr i64 %73 to i64*
  store i64* %74, i64** %12, align 8
  %75 = load i32, i32* @DTRACE_QUANTIZE_ZEROBUCKET, align 4
  store i32 %75, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %76

76:                                               ; preds = %92, %68
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* @DTRACE_QUANTIZE_NBUCKETS, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %97

80:                                               ; preds = %76
  %81 = load i64*, i64** %12, align 8
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 2
  %88 = load i64*, i64** %87, align 8
  %89 = load i32, i32* %14, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  store i64 %85, i64* %91, align 8
  br label %92

92:                                               ; preds = %80
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %14, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %14, align 4
  br label %76

97:                                               ; preds = %76
  br label %149

98:                                               ; preds = %2
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 2
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i64 1
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = sub nsw i32 %106, 1
  %108 = load i64, i64* %7, align 8
  %109 = call i32 @lsrec_fill(%struct.TYPE_9__* %99, %struct.TYPE_11__* %103, i32 %107, i64 %108)
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %111, align 8
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = sub nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i64 %117
  store %struct.TYPE_11__* %118, %struct.TYPE_11__** %10, align 8
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = sext i32 %121 to i64
  %123 = icmp ne i64 %122, 16
  br i1 %123, label %124, label %126

124:                                              ; preds = %98
  %125 = call i32 @fail(i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %126

126:                                              ; preds = %124, %98
  %127 = load i64, i64* %7, align 8
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = add nsw i64 %127, %130
  %132 = inttoptr i64 %131 to i64*
  store i64* %132, i64** %11, align 8
  %133 = load i64*, i64** %11, align 8
  %134 = getelementptr inbounds i64, i64* %133, i64 0
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 1
  store i64 %135, i64* %137, align 8
  %138 = load i64*, i64** %11, align 8
  %139 = getelementptr inbounds i64, i64* %138, i64 1
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  store i64 %140, i64* %142, align 8
  %143 = load i64, i64* @g_recsize, align 8
  %144 = load i64, i64* @LS_HIST, align 8
  %145 = icmp sge i64 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %126
  %147 = load i32, i32* @DTRACE_AGGWALK_NEXT, align 4
  store i32 %147, i32* %3, align 4
  br label %162

148:                                              ; preds = %126
  br label %149

149:                                              ; preds = %148, %97
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %151 = ptrtoint %struct.TYPE_9__* %150 to i64
  %152 = load i64, i64* @g_recsize, align 8
  %153 = add i64 %151, %152
  %154 = inttoptr i64 %153 to %struct.TYPE_9__*
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 1
  store %struct.TYPE_9__* %154, %struct.TYPE_9__** %156, align 8
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = add nsw i64 %159, 1
  store i64 %160, i64* %158, align 8
  %161 = load i32, i32* @DTRACE_AGGWALK_NEXT, align 4
  store i32 %161, i32* %3, align 4
  br label %162

162:                                              ; preds = %149, %146
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fail(i32, i8*) #1

declare dso_local i32 @lsrec_fill(%struct.TYPE_9__*, %struct.TYPE_11__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
