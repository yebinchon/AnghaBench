; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_dt_node_pdesc_by_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_dt_node_pdesc_by_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32* }
%struct.TYPE_5__ = type { i32* }

@dt_node_pdesc_by_id.names = internal constant [3 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [10 x i8] c"providers\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"modules\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"functions\00", align 1
@yypcb = common dso_local global %struct.TYPE_6__* null, align 8
@DT_NODE_PDESC = common dso_local global i32 0, align 4
@EDT_NOMEM = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i64 0, align 8
@D_PDESC_INVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"identifier %llu exceeds maximum probe id\0A\00", align 1
@DTRACE_PROBESPEC_NAME = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [56 x i8] c"probe identifier %llu not permitted when specifying %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"invalid probe identifier %llu: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @dt_node_pdesc_by_id(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** @yypcb, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 2
  %7 = load i32*, i32** %6, align 8
  store i32* %7, i32** %3, align 8
  %8 = load i32, i32* @DT_NODE_PDESC, align 4
  %9 = call %struct.TYPE_5__* @dt_node_alloc(i32 %8)
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %4, align 8
  %10 = call i32* @malloc(i32 4)
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i32* %10, i32** %12, align 8
  %13 = icmp eq i32* %10, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @yypcb, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @EDT_NOMEM, align 4
  %19 = call i32 @longjmp(i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %14, %1
  %21 = load i64, i64* %2, align 8
  %22 = load i64, i64* @UINT_MAX, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i32, i32* @D_PDESC_INVAL, align 4
  %26 = load i64, i64* %2, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 (i32, i8*, i32, ...) @xyerror(i32 %25, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %24, %20
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @yypcb, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DTRACE_PROBESPEC_NAME, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %29
  %36 = load i32, i32* @D_PDESC_INVAL, align 4
  %37 = load i64, i64* %2, align 8
  %38 = trunc i64 %37 to i32
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @yypcb, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds [3 x i8*], [3 x i8*]* @dt_node_pdesc_by_id.names, i64 0, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 (i32, i8*, i32, ...) @xyerror(i32 %36, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i32 %38, i8* %43)
  br label %45

45:                                               ; preds = %35, %29
  %46 = load i32*, i32** %3, align 8
  %47 = load i64, i64* %2, align 8
  %48 = trunc i64 %47 to i32
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = call i64 @dtrace_id2desc(i32* %46, i32 %48, i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %45
  %55 = load i32, i32* @D_PDESC_INVAL, align 4
  %56 = load i64, i64* %2, align 8
  %57 = trunc i64 %56 to i32
  %58 = load i32*, i32** %3, align 8
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 @dtrace_errno(i32* %59)
  %61 = call i8* @dtrace_errmsg(i32* %58, i32 %60)
  %62 = call i32 (i32, i8*, i32, ...) @xyerror(i32 %55, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %57, i8* %61)
  br label %63

63:                                               ; preds = %54, %45
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  ret %struct.TYPE_5__* %64
}

declare dso_local %struct.TYPE_5__* @dt_node_alloc(i32) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @longjmp(i32, i32) #1

declare dso_local i32 @xyerror(i32, i8*, i32, ...) #1

declare dso_local i64 @dtrace_id2desc(i32*, i32, i32*) #1

declare dso_local i8* @dtrace_errmsg(i32*, i32) #1

declare dso_local i32 @dtrace_errno(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
