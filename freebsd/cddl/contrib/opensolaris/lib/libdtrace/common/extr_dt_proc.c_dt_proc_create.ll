; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_proc.c_dt_proc_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_proc.c_dt_proc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps_prochandle = type { i32 }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_15__** }
%struct.TYPE_15__ = type { i32, %struct.ps_prochandle*, i32, %struct.TYPE_15__*, %struct.TYPE_14__*, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"failed to execute %s: %s\0A\00", align 1
@PR_RLC = common dso_local global i32 0, align 4
@PR_KLC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"created pid %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ps_prochandle* @dt_proc_create(%struct.TYPE_14__* %0, i8* %1, i8** %2, i32* %3, i8* %4) #0 {
  %6 = alloca %struct.ps_prochandle*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  store %struct.TYPE_16__* %17, %struct.TYPE_16__** %12, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %19 = call %struct.TYPE_15__* @dt_zalloc(%struct.TYPE_14__* %18, i32 48)
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %13, align 8
  %20 = icmp eq %struct.TYPE_15__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  store %struct.ps_prochandle* null, %struct.ps_prochandle** %6, align 8
  br label %121

22:                                               ; preds = %5
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 6
  %25 = call i32 @pthread_mutex_init(i32* %24, i32* null)
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 5
  %28 = call i32 @pthread_cond_init(i32* %27, i32* null)
  %29 = load i8*, i8** %8, align 8
  %30 = load i8**, i8*** %9, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %10, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 1
  %38 = call i32 @proc_create(i8* %29, i8** %30, i32 %33, i32* %34, i8* %35, %struct.ps_prochandle** %37)
  store i32 %38, i32* %14, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %22
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = load i32, i32* %14, align 4
  %45 = call i32 @Pcreate_error(i32 %44)
  %46 = call %struct.ps_prochandle* @dt_proc_error(%struct.TYPE_14__* %41, %struct.TYPE_15__* %42, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %43, i32 %45)
  store %struct.ps_prochandle* %46, %struct.ps_prochandle** %6, align 8
  br label %121

47:                                               ; preds = %22
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 4
  store %struct.TYPE_14__* %48, %struct.TYPE_14__** %50, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 1
  %53 = load %struct.ps_prochandle*, %struct.ps_prochandle** %52, align 8
  %54 = call i32 @proc_getpid(%struct.ps_prochandle* %53)
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 1
  %59 = load %struct.ps_prochandle*, %struct.ps_prochandle** %58, align 8
  %60 = load i32, i32* @PR_RLC, align 4
  %61 = call i32 @Punsetflags(%struct.ps_prochandle* %59, i32 %60)
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 1
  %64 = load %struct.ps_prochandle*, %struct.ps_prochandle** %63, align 8
  %65 = load i32, i32* @PR_KLC, align 4
  %66 = call i32 @Psetflags(%struct.ps_prochandle* %64, i32 %65)
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @dt_proc_create_thread(%struct.TYPE_14__* %67, %struct.TYPE_15__* %68, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %47
  store %struct.ps_prochandle* null, %struct.ps_prochandle** %6, align 8
  br label %121

75:                                               ; preds = %47
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %77, align 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sub nsw i32 %84, 1
  %86 = and i32 %81, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %78, i64 %87
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %88, align 8
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 3
  store %struct.TYPE_15__* %89, %struct.TYPE_15__** %91, align 8
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %94, align 8
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sub nsw i32 %101, 1
  %103 = and i32 %98, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %95, i64 %104
  store %struct.TYPE_15__* %92, %struct.TYPE_15__** %105, align 8
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %109 = call i32 @dt_list_prepend(i32* %107, %struct.TYPE_15__* %108)
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @dt_dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %112)
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 8
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 1
  %120 = load %struct.ps_prochandle*, %struct.ps_prochandle** %119, align 8
  store %struct.ps_prochandle* %120, %struct.ps_prochandle** %6, align 8
  br label %121

121:                                              ; preds = %75, %74, %40, %21
  %122 = load %struct.ps_prochandle*, %struct.ps_prochandle** %6, align 8
  ret %struct.ps_prochandle* %122
}

declare dso_local %struct.TYPE_15__* @dt_zalloc(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @pthread_cond_init(i32*, i32*) #1

declare dso_local i32 @proc_create(i8*, i8**, i32, i32*, i8*, %struct.ps_prochandle**) #1

declare dso_local %struct.ps_prochandle* @dt_proc_error(%struct.TYPE_14__*, %struct.TYPE_15__*, i8*, i8*, i32) #1

declare dso_local i32 @Pcreate_error(i32) #1

declare dso_local i32 @proc_getpid(%struct.ps_prochandle*) #1

declare dso_local i32 @Punsetflags(%struct.ps_prochandle*, i32) #1

declare dso_local i32 @Psetflags(%struct.ps_prochandle*, i32) #1

declare dso_local i64 @dt_proc_create_thread(%struct.TYPE_14__*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @dt_list_prepend(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @dt_dprintf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
