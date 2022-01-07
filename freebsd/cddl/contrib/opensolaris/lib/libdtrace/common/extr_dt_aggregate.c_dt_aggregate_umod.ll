; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_aggregate.c_dt_aggregate_umod.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_aggregate.c_dt_aggregate_umod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32* }
%struct.ps_prochandle = type { i32 }
%struct.TYPE_9__ = type { i32 }

@PGRAB_RDONLY = common dso_local global i32 0, align 4
@PGRAB_FORCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32*)* @dt_aggregate_umod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_aggregate_umod(%struct.TYPE_10__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ps_prochandle*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  store i32* %13, i32** %6, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %49

19:                                               ; preds = %2
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @PGRAB_RDONLY, align 4
  %23 = load i32, i32* @PGRAB_FORCE, align 4
  %24 = or i32 %22, %23
  %25 = call %struct.ps_prochandle* @dt_proc_grab(%struct.TYPE_10__* %20, i32 %21, i32 %24, i32 0)
  store %struct.ps_prochandle* %25, %struct.ps_prochandle** %7, align 8
  %26 = icmp eq %struct.ps_prochandle* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %49

28:                                               ; preds = %19
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %30 = load %struct.ps_prochandle*, %struct.ps_prochandle** %7, align 8
  %31 = call i32 @dt_proc_lock(%struct.TYPE_10__* %29, %struct.ps_prochandle* %30)
  %32 = load %struct.ps_prochandle*, %struct.ps_prochandle** %7, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.TYPE_9__* @Paddr_to_map(%struct.ps_prochandle* %32, i32 %34)
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %8, align 8
  %36 = icmp ne %struct.TYPE_9__* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %28
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %6, align 8
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %37, %28
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %44 = load %struct.ps_prochandle*, %struct.ps_prochandle** %7, align 8
  %45 = call i32 @dt_proc_unlock(%struct.TYPE_10__* %43, %struct.ps_prochandle* %44)
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %47 = load %struct.ps_prochandle*, %struct.ps_prochandle** %7, align 8
  %48 = call i32 @dt_proc_release(%struct.TYPE_10__* %46, %struct.ps_prochandle* %47)
  br label %49

49:                                               ; preds = %42, %27, %18
  ret void
}

declare dso_local %struct.ps_prochandle* @dt_proc_grab(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @dt_proc_lock(%struct.TYPE_10__*, %struct.ps_prochandle*) #1

declare dso_local %struct.TYPE_9__* @Paddr_to_map(%struct.ps_prochandle*, i32) #1

declare dso_local i32 @dt_proc_unlock(%struct.TYPE_10__*, %struct.ps_prochandle*) #1

declare dso_local i32 @dt_proc_release(%struct.TYPE_10__*, %struct.ps_prochandle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
