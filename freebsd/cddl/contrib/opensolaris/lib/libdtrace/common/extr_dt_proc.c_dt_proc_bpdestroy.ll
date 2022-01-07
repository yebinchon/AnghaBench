; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_proc.c_dt_proc_bpdestroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_proc.c_dt_proc_bpdestroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i64 }

@PS_LOST = common dso_local global i32 0, align 4
@PS_UNDEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32)* @dt_proc_bpdestroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_proc_bpdestroy(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @Pstate(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 3
  %14 = call i32 @DT_MUTEX_HELD(i32* %13)
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = call %struct.TYPE_10__* @dt_list_next(%struct.TYPE_10__* %17)
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %6, align 8
  br label %19

19:                                               ; preds = %61, %2
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %21 = icmp ne %struct.TYPE_10__* %20, null
  br i1 %21, label %22, label %63

22:                                               ; preds = %19
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %49

25:                                               ; preds = %22
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %25
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @PS_LOST, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @PS_UNDEAD, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %34
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @Pdelbkpt(i32 %41, i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %38, %34, %30, %25, %22
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %51 = call %struct.TYPE_10__* @dt_list_next(%struct.TYPE_10__* %50)
  store %struct.TYPE_10__* %51, %struct.TYPE_10__** %7, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %55 = call i32 @dt_list_delete(%struct.TYPE_10__* %53, %struct.TYPE_10__* %54)
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %60 = call i32 @dt_free(i32 %58, %struct.TYPE_10__* %59)
  br label %61

61:                                               ; preds = %49
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* %62, %struct.TYPE_10__** %6, align 8
  br label %19

63:                                               ; preds = %19
  ret void
}

declare dso_local i32 @Pstate(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @DT_MUTEX_HELD(i32*) #1

declare dso_local %struct.TYPE_10__* @dt_list_next(%struct.TYPE_10__*) #1

declare dso_local i32 @Pdelbkpt(i32, i32, i32) #1

declare dso_local i32 @dt_list_delete(%struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i32 @dt_free(i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
