; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb.c_dump_metaslab_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb.c_dump_metaslab_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@NN_NUMBUF_SZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"\09 %25s %10lu   %7s  %6s   %4s %4d%%\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"segments\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"maxsize\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"freepct\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"\09In-memory histogram:\0A\00", align 1
@RANGE_TREE_HISTOGRAM_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @dump_metaslab_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_metaslab_stats(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca [32 x i8], align 16
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %4, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  store i32* %11, i32** %5, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = call i32 @range_tree_space(%struct.TYPE_6__* %12)
  %14 = mul nsw i32 %13, 100
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sdiv i32 %14, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @NN_NUMBUF_SZ, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp uge i64 32, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @CTASSERT(i32 %22)
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %25 = call i32 @metaslab_block_maxsize(%struct.TYPE_7__* %24)
  %26 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %27 = call i32 @zdb_nicenum(i32 %25, i8* %26, i32 32)
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @avl_numnodes(i32* %28)
  %30 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %31 = load i32, i32* %6, align 4
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %31)
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @RANGE_TREE_HISTOGRAM_SIZE, align 4
  %38 = call i32 @dump_histogram(i32 %36, i32 %37, i32 0)
  ret void
}

declare dso_local i32 @range_tree_space(%struct.TYPE_6__*) #1

declare dso_local i32 @CTASSERT(i32) #1

declare dso_local i32 @zdb_nicenum(i32, i8*, i32) #1

declare dso_local i32 @metaslab_block_maxsize(%struct.TYPE_7__*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @avl_numnodes(i32*) #1

declare dso_local i32 @dump_histogram(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
