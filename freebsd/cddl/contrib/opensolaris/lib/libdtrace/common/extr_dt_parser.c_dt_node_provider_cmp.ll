; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_dt_node_provider_cmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_dt_node_provider_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { i64, i64, %struct.TYPE_13__*, i32, i32 }
%struct.TYPE_13__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@DT_PROVIDER_IMPL = common dso_local global i32 0, align 4
@D_PROV_INCOMPAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [127 x i8] c"provider interface mismatch: %s\0A\09 current: probe %s:%s has an output prototype\0A\09previous: probe %s:%s has no output prototype\0A\00", align 1
@yypcb = common dso_local global %struct.TYPE_18__* null, align 8
@DT_IDFLG_ORPHAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, i32*, %struct.TYPE_17__*, %struct.TYPE_17__*)* @dt_node_provider_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_node_provider_cmp(%struct.TYPE_16__* %0, i32* %1, %struct.TYPE_17__* %2, %struct.TYPE_17__* %3) #0 {
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %8, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @dt_node_provider_cmp_argv(%struct.TYPE_16__* %9, i32* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %13, i64 %16, i32 %19, i64 %22)
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %55

31:                                               ; preds = %4
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %34, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %31
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @dt_node_provider_cmp_argv(%struct.TYPE_16__* %40, i32* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %44, i64 %47, i32 %50, i64 %53)
  br label %55

55:                                               ; preds = %39, %31, %4
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %58, %61
  br i1 %62, label %63, label %135

63:                                               ; preds = %55
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %66, %69
  br i1 %70, label %71, label %135

71:                                               ; preds = %63
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @DT_PROVIDER_IMPL, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %104

78:                                               ; preds = %71
  %79 = load i32*, i32** %6, align 8
  %80 = load i32, i32* @D_PROV_INCOMPAT, align 4
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @dnerror(i32* %79, i32 %80, i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.2, i64 0, i64 0), i32 %84, i32 %88, i32 %93, i32 %97, i32 %102)
  br label %104

104:                                              ; preds = %78, %71
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** @yypcb, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %109, %114
  br i1 %115, label %116, label %124

116:                                              ; preds = %104
  %117 = load i32, i32* @DT_IDFLG_ORPHAN, align 4
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 2
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %122, %117
  store i32 %123, i32* %121, align 8
  br label %124

124:                                              ; preds = %116, %104
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 2
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %129, align 8
  %131 = call i32 @dt_idhash_delete(i32 %127, %struct.TYPE_13__* %130)
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %134 = call i32 @dt_probe_declare(%struct.TYPE_16__* %132, %struct.TYPE_17__* %133)
  br label %135

135:                                              ; preds = %124, %63, %55
  ret void
}

declare dso_local i32 @dt_node_provider_cmp_argv(%struct.TYPE_16__*, i32*, i8*, i32, i64, i32, i64) #1

declare dso_local i32 @dnerror(i32*, i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dt_idhash_delete(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @dt_probe_declare(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
