; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_xfrm4_state.c___xfrm4_init_tempsel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_xfrm4_state.c___xfrm4_init_tempsel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_17__, %struct.TYPE_15__, %struct.TYPE_13__ }
%struct.TYPE_17__ = type { i8*, i32, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i8*, i8*, i32, i8*, i32, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.flowi = type { i32, i32, i32, i32 }
%struct.xfrm_tmpl = type { i32, i32, %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_18__ = type { i64 }

@AF_INET = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfrm_state*, %struct.flowi*, %struct.xfrm_tmpl*, %struct.TYPE_18__*, %struct.TYPE_18__*)* @__xfrm4_init_tempsel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__xfrm4_init_tempsel(%struct.xfrm_state* %0, %struct.flowi* %1, %struct.xfrm_tmpl* %2, %struct.TYPE_18__* %3, %struct.TYPE_18__* %4) #0 {
  %6 = alloca %struct.xfrm_state*, align 8
  %7 = alloca %struct.flowi*, align 8
  %8 = alloca %struct.xfrm_tmpl*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %6, align 8
  store %struct.flowi* %1, %struct.flowi** %7, align 8
  store %struct.xfrm_tmpl* %2, %struct.xfrm_tmpl** %8, align 8
  store %struct.TYPE_18__* %3, %struct.TYPE_18__** %9, align 8
  store %struct.TYPE_18__* %4, %struct.TYPE_18__** %10, align 8
  %11 = load %struct.flowi*, %struct.flowi** %7, align 8
  %12 = getelementptr inbounds %struct.flowi, %struct.flowi* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %15 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 10
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  store i32 %13, i32* %17, align 8
  %18 = load %struct.flowi*, %struct.flowi** %7, align 8
  %19 = getelementptr inbounds %struct.flowi, %struct.flowi* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %22 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 9
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  store i32 %20, i32* %24, align 4
  %25 = load %struct.flowi*, %struct.flowi** %7, align 8
  %26 = call i32 @xfrm_flowi_dport(%struct.flowi* %25)
  %27 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %28 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 8
  store i32 %26, i32* %29, align 8
  %30 = call i8* @htons(i32 65535)
  %31 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %32 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 7
  store i8* %30, i8** %33, align 8
  %34 = load %struct.flowi*, %struct.flowi** %7, align 8
  %35 = call i32 @xfrm_flowi_sport(%struct.flowi* %34)
  %36 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %37 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 6
  store i32 %35, i32* %38, align 8
  %39 = call i8* @htons(i32 65535)
  %40 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %41 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 5
  store i8* %39, i8** %42, align 8
  %43 = load i8*, i8** @AF_INET, align 8
  %44 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %45 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 4
  store i8* %43, i8** %46, align 8
  %47 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %48 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  store i32 32, i32* %49, align 8
  %50 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %51 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  store i32 32, i32* %52, align 4
  %53 = load %struct.flowi*, %struct.flowi** %7, align 8
  %54 = getelementptr inbounds %struct.flowi, %struct.flowi* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %57 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 3
  store i32 %55, i32* %58, align 4
  %59 = load %struct.flowi*, %struct.flowi** %7, align 8
  %60 = getelementptr inbounds %struct.flowi, %struct.flowi* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %63 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 2
  store i32 %61, i32* %64, align 8
  %65 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %66 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %65, i32 0, i32 1
  %67 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %8, align 8
  %68 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %67, i32 0, i32 3
  %69 = bitcast %struct.TYPE_15__* %66 to i8*
  %70 = bitcast %struct.TYPE_15__* %68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %69, i8* align 8 %70, i64 8, i1 false)
  %71 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %72 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %5
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %82 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  store i64 %80, i64* %84, align 8
  br label %85

85:                                               ; preds = %77, %5
  %86 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %87 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 3
  %89 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %8, align 8
  %90 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %89, i32 0, i32 2
  %91 = bitcast %struct.TYPE_16__* %88 to i8*
  %92 = bitcast %struct.TYPE_16__* %90 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %91, i8* align 8 %92, i64 8, i1 false)
  %93 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %94 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %85
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %104 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 0
  store i64 %102, i64* %106, align 8
  br label %107

107:                                              ; preds = %99, %85
  %108 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %8, align 8
  %109 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %112 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 2
  store i32 %110, i32* %113, align 4
  %114 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %8, align 8
  %115 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %118 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 1
  store i32 %116, i32* %119, align 8
  %120 = load i8*, i8** @AF_INET, align 8
  %121 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %122 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 0
  store i8* %120, i8** %123, align 8
  ret void
}

declare dso_local i32 @xfrm_flowi_dport(%struct.flowi*) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @xfrm_flowi_sport(%struct.flowi*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
