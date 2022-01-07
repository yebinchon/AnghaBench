; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctdaio.c_dao_rsc_reinit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctdaio.c_dao_rsc_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dao = type { %struct.TYPE_2__, %struct.daio_mgr* }
%struct.TYPE_2__ = type { i32 }
%struct.daio_mgr = type { i32 }
%struct.dao_desc = type { i32, i32 }
%struct.daio_desc = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dao*, %struct.dao_desc*)* @dao_rsc_reinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dao_rsc_reinit(%struct.dao* %0, %struct.dao_desc* %1) #0 {
  %3 = alloca %struct.dao*, align 8
  %4 = alloca %struct.dao_desc*, align 8
  %5 = alloca %struct.daio_mgr*, align 8
  %6 = alloca %struct.daio_desc, align 4
  store %struct.dao* %0, %struct.dao** %3, align 8
  store %struct.dao_desc* %1, %struct.dao_desc** %4, align 8
  %7 = load %struct.dao*, %struct.dao** %3, align 8
  %8 = getelementptr inbounds %struct.dao, %struct.dao* %7, i32 0, i32 1
  %9 = load %struct.daio_mgr*, %struct.daio_mgr** %8, align 8
  store %struct.daio_mgr* %9, %struct.daio_mgr** %5, align 8
  %10 = bitcast %struct.daio_desc* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 16, i1 false)
  %11 = load %struct.dao*, %struct.dao** %3, align 8
  %12 = getelementptr inbounds %struct.dao, %struct.dao* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = getelementptr inbounds %struct.daio_desc, %struct.daio_desc* %6, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %16 = load %struct.dao_desc*, %struct.dao_desc** %4, align 8
  %17 = getelementptr inbounds %struct.dao_desc, %struct.dao_desc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.daio_desc, %struct.daio_desc* %6, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = load %struct.dao_desc*, %struct.dao_desc** %4, align 8
  %21 = getelementptr inbounds %struct.dao_desc, %struct.dao_desc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.daio_desc, %struct.daio_desc* %6, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load %struct.dao*, %struct.dao** %3, align 8
  %25 = call i32 @dao_rsc_uninit(%struct.dao* %24)
  %26 = load %struct.dao*, %struct.dao** %3, align 8
  %27 = load %struct.daio_mgr*, %struct.daio_mgr** %5, align 8
  %28 = call i32 @dao_rsc_init(%struct.dao* %26, %struct.daio_desc* %6, %struct.daio_mgr* %27)
  ret i32 %28
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dao_rsc_uninit(%struct.dao*) #2

declare dso_local i32 @dao_rsc_init(%struct.dao*, %struct.daio_desc*, %struct.daio_mgr*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
