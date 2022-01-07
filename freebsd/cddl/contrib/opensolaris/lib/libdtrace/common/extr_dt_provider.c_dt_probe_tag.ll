; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_provider.c_dt_probe_tag.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_provider.c_dt_probe_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i8*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i32* }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"__dtrace_%s___%s_arg%u\00", align 1
@DTRACE_OBJ_DDEFS = common dso_local global i32 0, align 4
@CTF_ADD_ROOT = common dso_local global i32 0, align 4
@CTF_ERR = common dso_local global i64 0, align 8
@D_UNKNOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"cannot define type %s: %s\0A\00", align 1
@DT_NODE_TYPE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@_dtrace_defattr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @dt_probe_tag(%struct.TYPE_16__* %0, i32 %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_15__, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %6, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %7, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @snprintf(i8* null, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %24, i32 %25)
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %9, align 8
  %28 = add i64 %27, 1
  %29 = call i8* @alloca(i64 %28)
  store i8* %29, i8** %10, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = load i64, i64* %9, align 8
  %32 = add i64 %31, 1
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i64 @snprintf(i8* %30, i64 %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %38, i8* %41, i32 %42)
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* @DTRACE_OBJ_DDEFS, align 4
  %46 = load i8*, i8** %10, align 8
  %47 = call i64 @dtrace_lookup_by_type(i32* %44, i32 %45, i8* %46, %struct.TYPE_15__* %8)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %82

49:                                               ; preds = %3
  %50 = load i32, i32* @DTRACE_OBJ_DDEFS, align 4
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 2
  store i32 %50, i32* %51, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @DT_DYN_CTFP(i32* %52)
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  store i32 %53, i32* %54, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @DT_DYN_CTFP(i32* %55)
  %57 = load i32, i32* @CTF_ADD_ROOT, align 4
  %58 = load i8*, i8** %10, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @DT_DYN_TYPE(i32* %59)
  %61 = call i64 @ctf_add_typedef(i32 %56, i32 %57, i8* %58, i32 %60)
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  store i64 %61, i64* %62, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @CTF_ERR, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %73, label %67

67:                                               ; preds = %49
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @ctf_update(i32 %69)
  %71 = load i64, i64* @CTF_ERR, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %67, %49
  %74 = load i32, i32* @D_UNKNOWN, align 4
  %75 = load i8*, i8** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @ctf_errno(i32 %77)
  %79 = call i32 @ctf_errmsg(i32 %78)
  %80 = call i32 @xyerror(i32 %74, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %75, i32 %79)
  br label %81

81:                                               ; preds = %73, %67
  br label %82

82:                                               ; preds = %81, %3
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %84 = call i32 @bzero(%struct.TYPE_17__* %83, i32 4)
  %85 = load i32, i32* @DT_NODE_TYPE, align 4
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* @B_FALSE, align 4
  %94 = call i32 @dt_node_type_assign(%struct.TYPE_17__* %88, i32 %90, i64 %92, i32 %93)
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %96 = load i32, i32* @_dtrace_defattr, align 4
  %97 = call i32 @dt_node_attr_assign(%struct.TYPE_17__* %95, i32 %96)
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  ret %struct.TYPE_17__* %98
}

declare dso_local i64 @snprintf(i8*, i64, i8*, i8*, i8*, i32) #1

declare dso_local i8* @alloca(i64) #1

declare dso_local i64 @dtrace_lookup_by_type(i32*, i32, i8*, %struct.TYPE_15__*) #1

declare dso_local i32 @DT_DYN_CTFP(i32*) #1

declare dso_local i64 @ctf_add_typedef(i32, i32, i8*, i32) #1

declare dso_local i32 @DT_DYN_TYPE(i32*) #1

declare dso_local i64 @ctf_update(i32) #1

declare dso_local i32 @xyerror(i32, i8*, i8*, i32) #1

declare dso_local i32 @ctf_errmsg(i32) #1

declare dso_local i32 @ctf_errno(i32) #1

declare dso_local i32 @bzero(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @dt_node_type_assign(%struct.TYPE_17__*, i32, i64, i32) #1

declare dso_local i32 @dt_node_attr_assign(%struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
