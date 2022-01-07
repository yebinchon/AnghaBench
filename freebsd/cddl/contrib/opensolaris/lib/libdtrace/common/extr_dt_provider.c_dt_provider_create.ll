; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_provider.c_dt_provider_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_provider.c_dt_provider_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_16__, i32*, %struct.TYPE_17__*, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_17__ = type { i32, i32 }

@DTRACE_PROVNAMELEN = common dso_local global i32 0, align 4
@EDT_NOMEM = common dso_local global i32 0, align 4
@_dtrace_prvattr = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_18__* @dt_provider_create(%struct.TYPE_17__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %8 = call %struct.TYPE_18__* @dt_zalloc(%struct.TYPE_17__* %7, i32 72)
  store %struct.TYPE_18__* %8, %struct.TYPE_18__** %6, align 8
  %9 = icmp eq %struct.TYPE_18__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %3, align 8
  br label %80

11:                                               ; preds = %2
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* @DTRACE_PROVNAMELEN, align 4
  %18 = call i32 @strlcpy(i32 %15, i8* %16, i32 %17)
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32* @dt_idhash_create(i32 %22, i32* null, i32 0, i32 0)
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 1
  store i32* %23, i32** %25, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 2
  store %struct.TYPE_17__* %31, %struct.TYPE_17__** %33, align 8
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %11
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %41 = call i32 @dt_free(%struct.TYPE_17__* %39, %struct.TYPE_18__* %40)
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %43 = load i32, i32* @EDT_NOMEM, align 4
  %44 = call i32 @dt_set_errno(%struct.TYPE_17__* %42, i32 %43)
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %3, align 8
  br label %80

45:                                               ; preds = %11
  %46 = load i8*, i8** @_dtrace_prvattr, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 4
  store i8* %46, i8** %50, align 8
  %51 = load i8*, i8** @_dtrace_prvattr, align 8
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 3
  store i8* %51, i8** %55, align 8
  %56 = load i8*, i8** @_dtrace_prvattr, align 8
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 2
  store i8* %56, i8** %60, align 8
  %61 = load i8*, i8** @_dtrace_prvattr, align 8
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 1
  store i8* %61, i8** %65, align 8
  %66 = load i8*, i8** @_dtrace_prvattr, align 8
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  store i8* %66, i8** %70, align 8
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = call i32 @dt_strtab_hash(i8* %73, i32* null)
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = srem i32 %74, %77
  %79 = call %struct.TYPE_18__* @dt_provider_insert(%struct.TYPE_17__* %71, %struct.TYPE_18__* %72, i32 %78)
  store %struct.TYPE_18__* %79, %struct.TYPE_18__** %3, align 8
  br label %80

80:                                               ; preds = %45, %38, %10
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  ret %struct.TYPE_18__* %81
}

declare dso_local %struct.TYPE_18__* @dt_zalloc(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32* @dt_idhash_create(i32, i32*, i32, i32) #1

declare dso_local i32 @dt_free(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i32 @dt_set_errno(%struct.TYPE_17__*, i32) #1

declare dso_local %struct.TYPE_18__* @dt_provider_insert(%struct.TYPE_17__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @dt_strtab_hash(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
