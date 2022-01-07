; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-zone.c_init_ggc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-zone.c_init_ggc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, %struct.small_page_entry* }
%struct.small_page_entry = type { %struct.TYPE_5__, %struct.small_page_entry* }
%struct.TYPE_5__ = type { i8*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i64, i32, i32, %struct.TYPE_6__* }

@FREE_BIN_DELTA = common dso_local global i64 0, align 8
@MAX_ALIGNMENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"Main zone\00", align 1
@main_zone = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@G = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@rtl_zone = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"RTL zone\00", align 1
@tree_zone = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"Tree zone\00", align 1
@tree_id_zone = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Tree identifier zone\00", align 1
@GGC_PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_OVERHEAD = common dso_local global i64 0, align 8
@BYTES_PER_ALLOC_BIT = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_ggc() #0 {
  %1 = load i64, i64* @FREE_BIN_DELTA, align 8
  %2 = load i64, i64* @MAX_ALIGNMENT, align 8
  %3 = icmp eq i64 %1, %2
  %4 = zext i1 %3 to i32
  %5 = call i32 @gcc_assert(i32 %4)
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @main_zone, i32 0, i32 0), align 8
  store %struct.TYPE_6__* @main_zone, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @G, i32 0, i32 7), align 8
  %6 = call i32 @new_ggc_zone_1(i32* @rtl_zone, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %7 = call i32 @new_ggc_zone_1(i32* @tree_zone, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %8 = call i32 @new_ggc_zone_1(i32* @tree_id_zone, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %9 = call i32 (...) @getpagesize()
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @G, i32 0, i32 0), align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @G, i32 0, i32 0), align 8
  %11 = call i32 @exact_log2(i32 %10)
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @G, i32 0, i32 6), align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @G, i32 0, i32 0), align 8
  %13 = sub nsw i32 %12, 1
  %14 = xor i32 %13, -1
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @G, i32 0, i32 1), align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @G, i32 0, i32 0), align 8
  %16 = load i32, i32* @GGC_PAGE_SIZE, align 4
  %17 = sub nsw i32 %16, 1
  %18 = and i32 %15, %17
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @gcc_assert(i32 %20)
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @G, i32 0, i32 0), align 8
  %23 = mul nsw i32 16, %22
  %24 = load i32, i32* @GGC_PAGE_SIZE, align 4
  %25 = sdiv i32 %23, %24
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @G, i32 0, i32 2), align 8
  %26 = load i64, i64* @PAGE_OVERHEAD, align 8
  %27 = load i32, i32* @GGC_PAGE_SIZE, align 4
  %28 = load i32, i32* @BYTES_PER_ALLOC_BIT, align 4
  %29 = sdiv i32 %27, %28
  %30 = sdiv i32 %29, 8
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %26, %31
  store i64 %32, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @G, i32 0, i32 4), align 8
  %33 = load i32, i32* @stdout, align 4
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @G, i32 0, i32 5), align 8
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @new_ggc_zone_1(i32*, i8*) #1

declare dso_local i32 @getpagesize(...) #1

declare dso_local i32 @exact_log2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
