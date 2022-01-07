; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/powerpc/extr_dt_isadep.c_dt_pid_create_offset_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/powerpc/extr_dt_isadep.c_dt_pid_create_offset_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps_prochandle = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, i64, i32, i32*, i32 }
%struct.TYPE_11__ = type { i64, i64 }

@DT_PROC_ALIGN = common dso_local global i32 0, align 4
@DTFTP_OFFSETS = common dso_local global i32 0, align 4
@FASTTRAPIOC_MAKEPROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"fasttrap probe creation ioctl failed: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dt_pid_create_offset_probe(%struct.ps_prochandle* %0, %struct.TYPE_10__* %1, %struct.TYPE_9__* %2, %struct.TYPE_11__* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ps_prochandle*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  store %struct.ps_prochandle* %0, %struct.ps_prochandle** %7, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, 3
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = load i32, i32* @DT_PROC_ALIGN, align 4
  store i32 %16, i32* %6, align 4
  br label %53

17:                                               ; preds = %5
  %18 = load i32, i32* @DTFTP_OFFSETS, align 4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 2
  store i32 1, i32* %32, align 8
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 %33, i32* %37, align 4
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @FASTTRAPIOC_MAKEPROBE, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %43 = call i64 @ioctl(i32 %40, i32 %41, %struct.TYPE_9__* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %17
  %46 = load i32, i32* @errno, align 4
  %47 = call i32 @strerror(i32 %46)
  %48 = call i32 @dt_dprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %50 = load i32, i32* @errno, align 4
  %51 = call i32 @dt_set_errno(%struct.TYPE_10__* %49, i32 %50)
  store i32 %51, i32* %6, align 4
  br label %53

52:                                               ; preds = %17
  store i32 1, i32* %6, align 4
  br label %53

53:                                               ; preds = %52, %45, %15
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i64 @ioctl(i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @dt_dprintf(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @dt_set_errno(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
