; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_proc.c_dt_proc_bpenable.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_proc.c_dt_proc_bpenable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64, i32, i32 }

@B_TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"breakpoints enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @dt_proc_bpenable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_proc_bpenable(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  %6 = call i32 @DT_MUTEX_HELD(i32* %5)
  %7 = call i32 @assert(i32 %6)
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = call %struct.TYPE_7__* @dt_list_next(%struct.TYPE_7__* %9)
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %3, align 8
  br label %11

11:                                               ; preds = %35, %1
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = icmp ne %struct.TYPE_7__* %12, null
  br i1 %13, label %14, label %38

14:                                               ; preds = %11
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %34, label %19

19:                                               ; preds = %14
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = call i64 @Psetbkpt(i32 %22, i32 %25, i32* %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %19
  %31 = load i64, i64* @B_TRUE, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  br label %34

34:                                               ; preds = %30, %19, %14
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = call %struct.TYPE_7__* @dt_list_next(%struct.TYPE_7__* %36)
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %3, align 8
  br label %11

38:                                               ; preds = %11
  %39 = call i32 @dt_dprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @DT_MUTEX_HELD(i32*) #1

declare dso_local %struct.TYPE_7__* @dt_list_next(%struct.TYPE_7__*) #1

declare dso_local i64 @Psetbkpt(i32, i32, i32*) #1

declare dso_local i32 @dt_dprintf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
