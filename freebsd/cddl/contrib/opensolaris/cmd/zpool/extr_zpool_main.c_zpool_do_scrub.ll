; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_zpool_do_scrub.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_zpool_do_scrub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i8** }

@POOL_SCAN_SCRUB = common dso_local global i64 0, align 8
@POOL_SCRUB_NORMAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"sp\00", align 1
@POOL_SCAN_NONE = common dso_local global i64 0, align 8
@POOL_SCRUB_PAUSE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid option '%c'\0A\00", align 1
@optopt = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"invalid option combination: -s and -p are mutually exclusive\0A\00", align 1
@optind = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"missing pool name argument\0A\00", align 1
@B_TRUE = common dso_local global i32 0, align 4
@scrub_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_do_scrub(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %7 = load i64, i64* @POOL_SCAN_SCRUB, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i64 %7, i64* %8, align 8
  %9 = load i64, i64* @POOL_SCRUB_NORMAL, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  store i64 %9, i64* %10, align 8
  br label %11

11:                                               ; preds = %31, %2
  %12 = load i32, i32* %3, align 4
  %13 = load i8**, i8*** %4, align 8
  %14 = call i32 @getopt(i32 %12, i8** %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %5, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %32

16:                                               ; preds = %11
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %31 [
    i32 115, label %18
    i32 112, label %21
    i32 63, label %24
  ]

18:                                               ; preds = %16
  %19 = load i64, i64* @POOL_SCAN_NONE, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i64 %19, i64* %20, align 8
  br label %31

21:                                               ; preds = %16
  %22 = load i64, i64* @POOL_SCRUB_PAUSE, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  store i64 %22, i64* %23, align 8
  br label %31

24:                                               ; preds = %16
  %25 = load i32, i32* @stderr, align 4
  %26 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @optopt, align 4
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %25, i8* %26, i32 %27)
  %29 = load i32, i32* @B_FALSE, align 4
  %30 = call i32 @usage(i32 %29)
  br label %31

31:                                               ; preds = %24, %16, %21, %18
  br label %11

32:                                               ; preds = %11
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @POOL_SCAN_NONE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @POOL_SCRUB_PAUSE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i32, i32* @stderr, align 4
  %44 = call i8* @gettext(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  %45 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* %44)
  %46 = load i32, i32* @B_FALSE, align 4
  %47 = call i32 @usage(i32 %46)
  br label %48

48:                                               ; preds = %42, %37, %32
  %49 = load i32, i32* %3, align 4
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  store i32 %49, i32* %50, align 8
  %51 = load i8**, i8*** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  store i8** %51, i8*** %52, align 8
  %53 = load i64, i64* @optind, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = sub nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %3, align 4
  %58 = load i64, i64* @optind, align 8
  %59 = load i8**, i8*** %4, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 %58
  store i8** %60, i8*** %4, align 8
  %61 = load i32, i32* %3, align 4
  %62 = icmp slt i32 %61, 1
  br i1 %62, label %63, label %69

63:                                               ; preds = %48
  %64 = load i32, i32* @stderr, align 4
  %65 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %66 = call i32 (i32, i8*, ...) @fprintf(i32 %64, i8* %65)
  %67 = load i32, i32* @B_FALSE, align 4
  %68 = call i32 @usage(i32 %67)
  br label %69

69:                                               ; preds = %63, %48
  %70 = load i32, i32* %3, align 4
  %71 = load i8**, i8*** %4, align 8
  %72 = load i32, i32* @B_TRUE, align 4
  %73 = load i32, i32* @scrub_callback, align 4
  %74 = call i32 @for_each_pool(i32 %70, i8** %71, i32 %72, i32* null, i32 %73, %struct.TYPE_3__* %6)
  ret i32 %74
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @for_each_pool(i32, i8**, i32, i32*, i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
