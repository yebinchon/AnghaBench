; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_provider.c_dt_provider_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_provider.c_dt_provider_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_14__, %struct.TYPE_17__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_17__** }
%struct.TYPE_15__ = type { i32 }

@EDT_NOPROV = common dso_local global i64 0, align 8
@DTRACE_PROVNAMELEN = common dso_local global i32 0, align 4
@DTRACEIOC_PROVIDER = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i64 0, align 8
@DT_PROVIDER_IMPL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @dt_provider_lookup(%struct.TYPE_16__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_15__, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i64 @dt_strtab_hash(i8* %9, i32* null)
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = urem i64 %10, %13
  store i64 %14, i64* %6, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %17, i64 %18
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  store %struct.TYPE_17__* %20, %struct.TYPE_17__** %8, align 8
  br label %21

21:                                               ; preds = %35, %2
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %23 = icmp ne %struct.TYPE_17__* %22, null
  br i1 %23, label %24, label %39

24:                                               ; preds = %21
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = call i64 @strcmp(i32 %28, i8* %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_17__* %33, %struct.TYPE_17__** %3, align 8
  br label %92

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %37, align 8
  store %struct.TYPE_17__* %38, %struct.TYPE_17__** %8, align 8
  br label %21

39:                                               ; preds = %21
  %40 = load i8*, i8** %5, align 8
  %41 = call i64 @strisglob(i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %39
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %43, %39
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %51 = load i64, i64* @EDT_NOPROV, align 8
  %52 = call i32 @dt_set_errno(%struct.TYPE_16__* %50, i64 %51)
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %3, align 8
  br label %92

53:                                               ; preds = %43
  %54 = call i32 @bzero(%struct.TYPE_15__* %7, i32 4)
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %5, align 8
  %58 = load i32, i32* @DTRACE_PROVNAMELEN, align 4
  %59 = call i32 @strlcpy(i32 %56, i8* %57, i32 %58)
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %61 = load i32, i32* @DTRACEIOC_PROVIDER, align 4
  %62 = call i32 @dt_ioctl(%struct.TYPE_16__* %60, i32 %61, %struct.TYPE_15__* %7)
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %76

64:                                               ; preds = %53
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %66 = load i64, i64* @errno, align 8
  %67 = load i64, i64* @ESRCH, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i64, i64* @EDT_NOPROV, align 8
  br label %73

71:                                               ; preds = %64
  %72 = load i64, i64* @errno, align 8
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i64 [ %70, %69 ], [ %72, %71 ]
  %75 = call i32 @dt_set_errno(%struct.TYPE_16__* %65, i64 %74)
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %3, align 8
  br label %92

76:                                               ; preds = %53
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %78 = load i8*, i8** %5, align 8
  %79 = call %struct.TYPE_17__* @dt_provider_create(%struct.TYPE_16__* %77, i8* %78)
  store %struct.TYPE_17__* %79, %struct.TYPE_17__** %8, align 8
  %80 = icmp eq %struct.TYPE_17__* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %3, align 8
  br label %92

82:                                               ; preds = %76
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 1
  %85 = call i32 @bcopy(%struct.TYPE_15__* %7, %struct.TYPE_14__* %84, i32 4)
  %86 = load i32, i32* @DT_PROVIDER_IMPL, align 4
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 8
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_17__* %91, %struct.TYPE_17__** %3, align 8
  br label %92

92:                                               ; preds = %82, %81, %73, %49, %32
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  ret %struct.TYPE_17__* %93
}

declare dso_local i64 @dt_strtab_hash(i8*, i32*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i64 @strisglob(i8*) #1

declare dso_local i32 @dt_set_errno(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @bzero(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @dt_ioctl(%struct.TYPE_16__*, i32, %struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_17__* @dt_provider_create(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @bcopy(%struct.TYPE_15__*, %struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
