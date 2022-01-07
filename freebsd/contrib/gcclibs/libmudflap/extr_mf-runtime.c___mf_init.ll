; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libmudflap/extr_mf-runtime.c___mf_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libmudflap/extr_mf-runtime.c___mf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@__mf_starting_p = common dso_local global i64 0, align 8
@active = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"MUDFLAP_OPTIONS\00", align 1
@__mf_lookup_cache = common dso_local global %struct.TYPE_5__* null, align 8
@__MF_TYPE_NOACCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"__mf_lookup_cache\00", align 1
@__mf_lc_mask = common dso_local global %struct.TYPE_5__* null, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"__mf_lc_mask\00", align 1
@__mf_lc_shift = common dso_local global %struct.TYPE_5__* null, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"__mf_lc_shift\00", align 1
@MINPTR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__mf_init() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  store i8* null, i8** %1, align 8
  %3 = load i64, i64* @__mf_starting_p, align 8
  %4 = icmp eq i64 %3, 0
  %5 = zext i1 %4 to i32
  %6 = call i64 @LIKELY(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  br label %39

9:                                                ; preds = %0
  store i64 0, i64* @__mf_starting_p, align 8
  %10 = load i32, i32* @active, align 4
  %11 = call i32 @__mf_set_state(i32 %10)
  %12 = call i32 (...) @__mf_set_default_options()
  %13 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i8* %13, i8** %1, align 8
  %14 = load i8*, i8** %1, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %9
  %17 = load i8*, i8** %1, align 8
  %18 = call i32 @__mfu_set_options(i8* %17)
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = call i32 (...) @__mf_usage()
  %23 = call i32 @exit(i32 1) #3
  unreachable

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24, %9
  %26 = call i32 @__mf_describe_object(i32* null)
  %27 = load i32, i32* @__MF_TYPE_NOACCESS, align 4
  %28 = call i32 @__mf_register(i32 ptrtoint (%struct.TYPE_5__** @__mf_lookup_cache to i32), i32 8, i32 %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @__MF_TYPE_NOACCESS, align 4
  %30 = call i32 @__mf_register(i32 ptrtoint (%struct.TYPE_5__** @__mf_lc_mask to i32), i32 8, i32 %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i32, i32* @__MF_TYPE_NOACCESS, align 4
  %32 = call i32 @__mf_register(i32 ptrtoint (%struct.TYPE_5__** @__mf_lc_shift to i32), i32 8, i32 %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %33 = load i32, i32* @MINPTR, align 4
  %34 = load i32, i32* @__MF_TYPE_NOACCESS, align 4
  %35 = call i32 @__mf_register(i32 %33, i32 1, i32 %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__mf_lookup_cache, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i64 -1, i64* %38, align 8
  br label %39

39:                                               ; preds = %25, %8
  ret void
}

declare dso_local i64 @LIKELY(i32) #1

declare dso_local i32 @__mf_set_state(i32) #1

declare dso_local i32 @__mf_set_default_options(...) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @__mfu_set_options(i8*) #1

declare dso_local i32 @__mf_usage(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @__mf_describe_object(i32*) #1

declare dso_local i32 @__mf_register(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
