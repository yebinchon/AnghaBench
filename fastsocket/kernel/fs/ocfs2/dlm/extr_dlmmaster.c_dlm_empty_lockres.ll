; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_empty_lockres.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_empty_lockres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i64, i32, i32 }
%struct.dlm_lock_resource = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"%s:%.*s: this node is not master, trying to free this but locks remain\0A\00", align 1
@O2NM_MAX_NODES = common dso_local global i32 0, align 4
@ENOTEMPTY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"lockres %.*s still has local locks!\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"lockres %.*s: migrate failed, retrying\0A\00", align 1
@DLM_MIGRATION_RETRY_MS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_empty_lockres(%struct.dlm_ctxt* %0, %struct.dlm_lock_resource* %1) #0 {
  %3 = alloca %struct.dlm_ctxt*, align 8
  %4 = alloca %struct.dlm_lock_resource*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %3, align 8
  store %struct.dlm_lock_resource* %1, %struct.dlm_lock_resource** %4, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %9 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %8, i32 0, i32 2
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %12 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %15 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %13, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %2
  %19 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %20 = call i32 @__dlm_lockres_unused(%struct.dlm_lock_resource* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %36, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @ML_ERROR, align 4
  %24 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %25 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %28 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %32 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i32, i8*, i32, i32, ...) @mlog(i32 %23, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %30, i32 %34)
  br label %36

36:                                               ; preds = %22, %18
  %37 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %38 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %37, i32 0, i32 2
  %39 = call i32 @spin_unlock(i32* %38)
  br label %101

40:                                               ; preds = %2
  %41 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %42 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %43 = call i32 @dlm_is_lockres_migrateable(%struct.dlm_ctxt* %41, %struct.dlm_lock_resource* %42, i32* %7)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %51 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %50, i32 0, i32 2
  %52 = call i32 @spin_unlock(i32* %51)
  br label %101

53:                                               ; preds = %46, %40
  %54 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %55 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %54, i32 0, i32 2
  %56 = call i32 @spin_unlock(i32* %55)
  %57 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %58 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %57, i32 0, i32 1
  %59 = call i32 @spin_unlock(i32* %58)
  store i32 1, i32* %6, align 4
  br label %60

60:                                               ; preds = %53, %85
  %61 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %62 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %63 = load i32, i32* @O2NM_MAX_NODES, align 4
  %64 = call i32 @dlm_migrate_lockres(%struct.dlm_ctxt* %61, %struct.dlm_lock_resource* %62, i32 %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp sge i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %97

68:                                               ; preds = %60
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @ENOTEMPTY, align 4
  %71 = sub nsw i32 0, %70
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %68
  %74 = load i32, i32* @ML_ERROR, align 4
  %75 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %76 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %80 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 (i32, i8*, i32, i32, ...) @mlog(i32 %74, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %78, i32 %82)
  %84 = call i32 (...) @BUG()
  br label %85

85:                                               ; preds = %73, %68
  %86 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %87 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %91 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 (i32, i8*, i32, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %89, i32 %93)
  %95 = load i32, i32* @DLM_MIGRATION_RETRY_MS, align 4
  %96 = call i32 @msleep(i32 %95)
  br label %60

97:                                               ; preds = %67
  %98 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %99 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %98, i32 0, i32 1
  %100 = call i32 @spin_lock(i32* %99)
  br label %101

101:                                              ; preds = %97, %49, %36
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__dlm_lockres_unused(%struct.dlm_lock_resource*) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dlm_is_lockres_migrateable(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, i32*) #1

declare dso_local i32 @dlm_migrate_lockres(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
