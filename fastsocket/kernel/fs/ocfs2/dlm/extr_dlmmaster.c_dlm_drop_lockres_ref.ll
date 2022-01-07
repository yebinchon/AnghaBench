; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_drop_lockres_ref.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_drop_lockres_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32, i32, i32 }
%struct.dlm_lock_resource = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.dlm_deref_lockres = type { i32, i32, i32 }

@O2NM_MAX_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%s:%.*s: sending deref to %d\0A\00", align 1
@DLM_DEREF_LOCKRES_MSG = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"while dropping ref on %s:%.*s (master=%u) got %d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_drop_lockres_ref(%struct.dlm_ctxt* %0, %struct.dlm_lock_resource* %1) #0 {
  %3 = alloca %struct.dlm_ctxt*, align 8
  %4 = alloca %struct.dlm_lock_resource*, align 8
  %5 = alloca %struct.dlm_deref_lockres, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %3, align 8
  store %struct.dlm_lock_resource* %1, %struct.dlm_lock_resource** %4, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %11 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %8, align 8
  %14 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %15 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @O2NM_MAX_NAME_LEN, align 4
  %20 = icmp ugt i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %24 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i8*, i8** %8, align 8
  %28 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %29 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (i32, i8*, i32, i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26, i8* %27, i32 %30)
  %32 = call i32 @memset(%struct.dlm_deref_lockres* %5, i32 0, i32 12)
  %33 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %34 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.dlm_deref_lockres, %struct.dlm_deref_lockres* %5, i32 0, i32 2
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %9, align 4
  %38 = getelementptr inbounds %struct.dlm_deref_lockres, %struct.dlm_deref_lockres* %5, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds %struct.dlm_deref_lockres, %struct.dlm_deref_lockres* %5, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @memcpy(i32 %40, i8* %41, i32 %42)
  %44 = load i32, i32* @DLM_DEREF_LOCKRES_MSG, align 4
  %45 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %46 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %49 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @o2net_send_message(i32 %44, i32 %47, %struct.dlm_deref_lockres* %5, i32 12, i32 %50, i32* %7)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %2
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @mlog_errno(i32 %55)
  br label %76

57:                                               ; preds = %2
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %57
  %61 = load i32, i32* @ML_ERROR, align 4
  %62 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %63 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i8*, i8** %8, align 8
  %67 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %68 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 (i32, i8*, i32, i32, i8*, i32, ...) @mlog(i32 %61, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %65, i8* %66, i32 %69, i32 %70)
  %72 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %73 = call i32 @dlm_print_one_lock_resource(%struct.dlm_lock_resource* %72)
  %74 = call i32 (...) @BUG()
  br label %75

75:                                               ; preds = %60, %57
  br label %76

76:                                               ; preds = %75, %54
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @memset(%struct.dlm_deref_lockres*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @o2net_send_message(i32, i32, %struct.dlm_deref_lockres*, i32, i32, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @dlm_print_one_lock_resource(%struct.dlm_lock_resource*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
