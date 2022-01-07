; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_proc.c_dt_proc_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_proc.c_dt_proc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, i32*, i32 }
%struct.TYPE_14__ = type { i64 }

@B_FALSE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@RD_OK = common dso_local global i32 0, align 4
@RD_POSTINIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"RD_POSTINIT\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"pid %d: failed to enable rtld events: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"rtld_db agent initialization failed\00", align 1
@LM_ID_BASE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"a.out\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@dt_proc_bpmain = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"a.out`main\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"pid %d: failed to find a.out`main: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@RD_DLACTIVITY = common dso_local global i32 0, align 4
@RD_PREINIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i32)* @dt_proc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_proc_attach(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 3
  %9 = call i32 @DT_MUTEX_HELD(i32* %8)
  %10 = call i32 @assert(i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %15 = load i32, i32* @B_FALSE, align 4
  %16 = call i32 @dt_proc_bpdestroy(%struct.TYPE_13__* %14, i32 %15)
  br label %17

17:                                               ; preds = %13, %2
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32* @Prd_agent(i32 %20)
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 2
  store i32* %21, i32** %23, align 8
  %24 = icmp ne i32* %21, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %17
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* @B_TRUE, align 4
  %30 = call i32 @rd_event_enable(i32* %28, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* @RD_OK, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %35 = load i32, i32* @RD_POSTINIT, align 4
  %36 = call i32 @dt_proc_rdwatch(%struct.TYPE_13__* %34, i32 %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %53

37:                                               ; preds = %25, %17
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = load i32, i32* %5, align 4
  %48 = call i8* @rd_errstr(i32 %47)
  br label %50

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %49, %46
  %51 = phi i8* [ %48, %46 ], [ getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), %49 ]
  %52 = call i32 @dt_dprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %41, i8* %51)
  br label %53

53:                                               ; preds = %50, %33
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @Pupdate_maps(i32 %56)
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @LM_ID_BASE, align 4
  %62 = call i64 @Pxlookup_by_name(i32 %60, i32 %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_14__* %6, i32* null)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %53
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @dt_proc_bpmain, align 8
  %69 = inttoptr i64 %68 to i32*
  %70 = call i32 @dt_proc_bpcreate(%struct.TYPE_13__* %65, i64 %67, i32* %69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  br label %79

71:                                               ; preds = %53
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = trunc i64 %74 to i32
  %76 = load i32, i32* @errno, align 4
  %77 = call i8* @strerror(i32 %76)
  %78 = call i32 @dt_dprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %75, i8* %77)
  br label %79

79:                                               ; preds = %71, %64
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @DT_MUTEX_HELD(i32*) #1

declare dso_local i32 @dt_proc_bpdestroy(%struct.TYPE_13__*, i32) #1

declare dso_local i32* @Prd_agent(i32) #1

declare dso_local i32 @rd_event_enable(i32*, i32) #1

declare dso_local i32 @dt_proc_rdwatch(%struct.TYPE_13__*, i32, i8*) #1

declare dso_local i32 @dt_dprintf(i8*, i32, i8*) #1

declare dso_local i8* @rd_errstr(i32) #1

declare dso_local i32 @Pupdate_maps(i32) #1

declare dso_local i64 @Pxlookup_by_name(i32, i32, i8*, i8*, %struct.TYPE_14__*, i32*) #1

declare dso_local i32 @dt_proc_bpcreate(%struct.TYPE_13__*, i64, i32*, i8*) #1

declare dso_local i8* @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
