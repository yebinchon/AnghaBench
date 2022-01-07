; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_provider.c_dt_probe_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_provider.c_dt_probe_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_7__ = type { i32* }

@DTRACE_PROBESPEC_NAME = common dso_local global i32 0, align 4
@DTRACEIOC_PROBEMATCH = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i64 0, align 8
@EBADF = common dso_local global i64 0, align 8
@EDT_NOPROBE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @dt_probe_lookup(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* @DTRACE_PROBESPEC_NAME, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = call i64 @dtrace_str2desc(i32* %14, i32 %15, i8* %16, i32* %7)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %60

20:                                               ; preds = %2
  %21 = call i64 @dt_probe_keylen(i32* %7)
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @alloca(i64 %22)
  %24 = call i8* @dt_probe_key(i32* %7, i32 %23)
  store i8* %24, i8** %10, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = call %struct.TYPE_7__* @dt_idhash_lookup(i32 %27, i8* %28)
  store %struct.TYPE_7__* %29, %struct.TYPE_7__** %8, align 8
  %30 = icmp ne %struct.TYPE_7__* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %20
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %3, align 8
  br label %60

35:                                               ; preds = %20
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* @DTRACEIOC_PROBEMATCH, align 4
  %38 = call i64 @dt_ioctl(i32* %36, i32 %37, i32* %7)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %42 = call i32* @dt_probe_discover(%struct.TYPE_6__* %41, i32* %7)
  store i32* %42, i32** %3, align 8
  br label %60

43:                                               ; preds = %35
  %44 = load i64, i64* @errno, align 8
  %45 = load i64, i64* @ESRCH, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i64, i64* @errno, align 8
  %49 = load i64, i64* @EBADF, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47, %43
  %52 = load i32*, i32** %6, align 8
  %53 = load i64, i64* @EDT_NOPROBE, align 8
  %54 = call i32 @dt_set_errno(i32* %52, i64 %53)
  br label %59

55:                                               ; preds = %47
  %56 = load i32*, i32** %6, align 8
  %57 = load i64, i64* @errno, align 8
  %58 = call i32 @dt_set_errno(i32* %56, i64 %57)
  br label %59

59:                                               ; preds = %55, %51
  store i32* null, i32** %3, align 8
  br label %60

60:                                               ; preds = %59, %40, %31, %19
  %61 = load i32*, i32** %3, align 8
  ret i32* %61
}

declare dso_local i64 @dtrace_str2desc(i32*, i32, i8*, i32*) #1

declare dso_local i64 @dt_probe_keylen(i32*) #1

declare dso_local i8* @dt_probe_key(i32*, i32) #1

declare dso_local i32 @alloca(i64) #1

declare dso_local %struct.TYPE_7__* @dt_idhash_lookup(i32, i8*) #1

declare dso_local i64 @dt_ioctl(i32*, i32, i32*) #1

declare dso_local i32* @dt_probe_discover(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @dt_set_errno(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
