; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_xfrm6_state.c___xfrm6_init_tempsel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_xfrm6_state.c___xfrm6_init_tempsel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i8*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i8*, i8*, i32, i8*, i32, i32, i32 }
%struct.flowi = type { i32, i32, i32, i32 }
%struct.xfrm_tmpl = type { i32, i32, i32, %struct.TYPE_5__ }
%struct.in6_addr = type { i32 }

@AF_INET6 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfrm_state*, %struct.flowi*, %struct.xfrm_tmpl*, i32*, i32*)* @__xfrm6_init_tempsel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__xfrm6_init_tempsel(%struct.xfrm_state* %0, %struct.flowi* %1, %struct.xfrm_tmpl* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.xfrm_state*, align 8
  %7 = alloca %struct.flowi*, align 8
  %8 = alloca %struct.xfrm_tmpl*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %6, align 8
  store %struct.flowi* %1, %struct.flowi** %7, align 8
  store %struct.xfrm_tmpl* %2, %struct.xfrm_tmpl** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %12 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 10
  %14 = bitcast i32* %13 to %struct.in6_addr*
  %15 = load %struct.flowi*, %struct.flowi** %7, align 8
  %16 = getelementptr inbounds %struct.flowi, %struct.flowi* %15, i32 0, i32 3
  %17 = call i32 @ipv6_addr_copy(%struct.in6_addr* %14, i32* %16)
  %18 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %19 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 9
  %21 = bitcast i32* %20 to %struct.in6_addr*
  %22 = load %struct.flowi*, %struct.flowi** %7, align 8
  %23 = getelementptr inbounds %struct.flowi, %struct.flowi* %22, i32 0, i32 2
  %24 = call i32 @ipv6_addr_copy(%struct.in6_addr* %21, i32* %23)
  %25 = load %struct.flowi*, %struct.flowi** %7, align 8
  %26 = call i32 @xfrm_flowi_dport(%struct.flowi* %25)
  %27 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %28 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 8
  store i32 %26, i32* %29, align 8
  %30 = call i8* @htons(i32 65535)
  %31 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %32 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 7
  store i8* %30, i8** %33, align 8
  %34 = load %struct.flowi*, %struct.flowi** %7, align 8
  %35 = call i32 @xfrm_flowi_sport(%struct.flowi* %34)
  %36 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %37 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 6
  store i32 %35, i32* %38, align 8
  %39 = call i8* @htons(i32 65535)
  %40 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %41 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 5
  store i8* %39, i8** %42, align 8
  %43 = load i8*, i8** @AF_INET6, align 8
  %44 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %45 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 4
  store i8* %43, i8** %46, align 8
  %47 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %48 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 128, i32* %49, align 8
  %50 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %51 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  store i32 128, i32* %52, align 4
  %53 = load %struct.flowi*, %struct.flowi** %7, align 8
  %54 = getelementptr inbounds %struct.flowi, %struct.flowi* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %57 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 3
  store i32 %55, i32* %58, align 4
  %59 = load %struct.flowi*, %struct.flowi** %7, align 8
  %60 = getelementptr inbounds %struct.flowi, %struct.flowi* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %63 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  store i32 %61, i32* %64, align 8
  %65 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %66 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %65, i32 0, i32 1
  %67 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %8, align 8
  %68 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %67, i32 0, i32 3
  %69 = bitcast %struct.TYPE_5__* %66 to i8*
  %70 = bitcast %struct.TYPE_5__* %68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %69, i8* align 4 %70, i64 4, i1 false)
  %71 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %72 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = bitcast i32* %73 to %struct.in6_addr*
  %75 = call i64 @ipv6_addr_any(%struct.in6_addr* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %5
  %78 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %79 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32*, i32** %9, align 8
  %82 = call i32 @memcpy(i32* %80, i32* %81, i32 4)
  br label %83

83:                                               ; preds = %77, %5
  %84 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %85 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 3
  %87 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %8, align 8
  %88 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %87, i32 0, i32 2
  %89 = call i32 @memcpy(i32* %86, i32* %88, i32 4)
  %90 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %91 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 3
  %93 = bitcast i32* %92 to %struct.in6_addr*
  %94 = call i64 @ipv6_addr_any(%struct.in6_addr* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %83
  %97 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %98 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 3
  %100 = load i32*, i32** %10, align 8
  %101 = call i32 @memcpy(i32* %99, i32* %100, i32 4)
  br label %102

102:                                              ; preds = %96, %83
  %103 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %8, align 8
  %104 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %107 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 2
  store i32 %105, i32* %108, align 4
  %109 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %8, align 8
  %110 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %113 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  store i32 %111, i32* %114, align 8
  %115 = load i8*, i8** @AF_INET6, align 8
  %116 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %117 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  store i8* %115, i8** %118, align 8
  ret void
}

declare dso_local i32 @ipv6_addr_copy(%struct.in6_addr*, i32*) #1

declare dso_local i32 @xfrm_flowi_dport(%struct.flowi*) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @xfrm_flowi_sport(%struct.flowi*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ipv6_addr_any(%struct.in6_addr*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
