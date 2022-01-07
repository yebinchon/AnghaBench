; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmthread.c___dlm_lockres_calc_usage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmthread.c___dlm_lockres_calc_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32, i32, i32 }
%struct.dlm_lock_resource = type { i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"%.*s\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"putting lockres %.*s:%p onto purge list\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"removing lockres %.*s:%p from purge list, owner=%u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__dlm_lockres_calc_usage(%struct.dlm_ctxt* %0, %struct.dlm_lock_resource* %1) #0 {
  %3 = alloca %struct.dlm_ctxt*, align 8
  %4 = alloca %struct.dlm_lock_resource*, align 8
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %3, align 8
  store %struct.dlm_lock_resource* %1, %struct.dlm_lock_resource** %4, align 8
  %5 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %6 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %10 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @mlog_entry(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %12)
  %14 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %15 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %14, i32 0, i32 2
  %16 = call i32 @assert_spin_locked(i32* %15)
  %17 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %18 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %17, i32 0, i32 4
  %19 = call i32 @assert_spin_locked(i32* %18)
  %20 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %21 = call i64 @__dlm_lockres_unused(%struct.dlm_lock_resource* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %54

23:                                               ; preds = %2
  %24 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %25 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %24, i32 0, i32 0
  %26 = call i64 @list_empty(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %53

28:                                               ; preds = %23
  %29 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %30 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %34 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %38 = call i32 (i32, i8*, i32, i32, %struct.dlm_lock_resource*, ...) @mlog(i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %36, %struct.dlm_lock_resource* %37)
  %39 = load i32, i32* @jiffies, align 4
  %40 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %41 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %43 = call i32 @dlm_lockres_get(%struct.dlm_lock_resource* %42)
  %44 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %45 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %44, i32 0, i32 0
  %46 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %47 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %46, i32 0, i32 1
  %48 = call i32 @list_add_tail(i32* %45, i32* %47)
  %49 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %50 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %28, %23
  br label %83

54:                                               ; preds = %2
  %55 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %56 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %55, i32 0, i32 0
  %57 = call i64 @list_empty(i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %82, label %59

59:                                               ; preds = %54
  %60 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %61 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %65 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %69 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %70 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i32, i8*, i32, i32, %struct.dlm_lock_resource*, ...) @mlog(i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %63, i32 %67, %struct.dlm_lock_resource* %68, i32 %71)
  %73 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %74 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %73, i32 0, i32 0
  %75 = call i32 @list_del_init(i32* %74)
  %76 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %77 = call i32 @dlm_lockres_put(%struct.dlm_lock_resource* %76)
  %78 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %79 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %59, %54
  br label %83

83:                                               ; preds = %82, %53
  ret void
}

declare dso_local i32 @mlog_entry(i8*, i32, i32) #1

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i64 @__dlm_lockres_unused(%struct.dlm_lock_resource*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32, %struct.dlm_lock_resource*, ...) #1

declare dso_local i32 @dlm_lockres_get(%struct.dlm_lock_resource*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @dlm_lockres_put(%struct.dlm_lock_resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
