; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_aggregate.c_dt_aggregate_usym.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_aggregate.c_dt_aggregate_usym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32* }
%struct.ps_prochandle = type { i32 }
%struct.TYPE_10__ = type { i32 }

@PGRAB_RDONLY = common dso_local global i32 0, align 4
@PGRAB_FORCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32*)* @dt_aggregate_usym to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_aggregate_usym(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ps_prochandle*, align 8
  %8 = alloca %struct.TYPE_10__, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  store i32* %13, i32** %6, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %48

19:                                               ; preds = %2
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @PGRAB_RDONLY, align 4
  %23 = load i32, i32* @PGRAB_FORCE, align 4
  %24 = or i32 %22, %23
  %25 = call %struct.ps_prochandle* @dt_proc_grab(%struct.TYPE_9__* %20, i32 %21, i32 %24, i32 0)
  store %struct.ps_prochandle* %25, %struct.ps_prochandle** %7, align 8
  %26 = icmp eq %struct.ps_prochandle* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %48

28:                                               ; preds = %19
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %30 = load %struct.ps_prochandle*, %struct.ps_prochandle** %7, align 8
  %31 = call i32 @dt_proc_lock(%struct.TYPE_9__* %29, %struct.ps_prochandle* %30)
  %32 = load %struct.ps_prochandle*, %struct.ps_prochandle** %7, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @Plookup_by_addr(%struct.ps_prochandle* %32, i32 %34, i32* null, i32 0, %struct.TYPE_10__* %8)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %6, align 8
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %37, %28
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %43 = load %struct.ps_prochandle*, %struct.ps_prochandle** %7, align 8
  %44 = call i32 @dt_proc_unlock(%struct.TYPE_9__* %42, %struct.ps_prochandle* %43)
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %46 = load %struct.ps_prochandle*, %struct.ps_prochandle** %7, align 8
  %47 = call i32 @dt_proc_release(%struct.TYPE_9__* %45, %struct.ps_prochandle* %46)
  br label %48

48:                                               ; preds = %41, %27, %18
  ret void
}

declare dso_local %struct.ps_prochandle* @dt_proc_grab(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @dt_proc_lock(%struct.TYPE_9__*, %struct.ps_prochandle*) #1

declare dso_local i64 @Plookup_by_addr(%struct.ps_prochandle*, i32, i32*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @dt_proc_unlock(%struct.TYPE_9__*, %struct.ps_prochandle*) #1

declare dso_local i32 @dt_proc_release(%struct.TYPE_9__*, %struct.ps_prochandle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
