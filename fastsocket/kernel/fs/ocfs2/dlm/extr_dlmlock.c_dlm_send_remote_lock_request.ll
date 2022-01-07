; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmlock.c_dlm_send_remote_lock_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmlock.c_dlm_send_remote_lock_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32, i32, i32 }
%struct.dlm_lock_resource = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.dlm_lock = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.dlm_create_lock = type { i32, i32, i32, i32, i32, i32 }

@DLM_CREATE_LOCK_MSG = common dso_local global i32 0, align 4
@DLM_REJECTED = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [103 x i8] c"%s:%.*s: BUG.  this is a stale lockres no longer owned by %u.  that node is coming back up currently.\0A\00", align 1
@DLM_RECOVERING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"node %u died so returning DLM_RECOVERING from lock message!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ctxt*, %struct.dlm_lock_resource*, %struct.dlm_lock*, i32)* @dlm_send_remote_lock_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_send_remote_lock_request(%struct.dlm_ctxt* %0, %struct.dlm_lock_resource* %1, %struct.dlm_lock* %2, i32 %3) #0 {
  %5 = alloca %struct.dlm_ctxt*, align 8
  %6 = alloca %struct.dlm_lock_resource*, align 8
  %7 = alloca %struct.dlm_lock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dlm_create_lock, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %5, align 8
  store %struct.dlm_lock_resource* %1, %struct.dlm_lock_resource** %6, align 8
  store %struct.dlm_lock* %2, %struct.dlm_lock** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %13 = call i32 (...) @mlog_entry_void()
  %14 = call i32 @memset(%struct.dlm_create_lock* %9, i32 0, i32 24)
  %15 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %16 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.dlm_create_lock, %struct.dlm_create_lock* %9, i32 0, i32 5
  store i32 %17, i32* %18, align 4
  %19 = load %struct.dlm_lock*, %struct.dlm_lock** %7, align 8
  %20 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.dlm_create_lock, %struct.dlm_create_lock* %9, i32 0, i32 4
  store i32 %22, i32* %23, align 4
  %24 = load %struct.dlm_lock*, %struct.dlm_lock** %7, align 8
  %25 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.dlm_create_lock, %struct.dlm_create_lock* %9, i32 0, i32 3
  store i32 %27, i32* %28, align 4
  %29 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %30 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.dlm_create_lock, %struct.dlm_create_lock* %9, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @cpu_to_be32(i32 %34)
  %36 = getelementptr inbounds %struct.dlm_create_lock, %struct.dlm_create_lock* %9, i32 0, i32 2
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds %struct.dlm_create_lock, %struct.dlm_create_lock* %9, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %40 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.dlm_create_lock, %struct.dlm_create_lock* %9, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @memcpy(i32 %38, i32 %42, i32 %44)
  %46 = load i32, i32* @DLM_CREATE_LOCK_MSG, align 4
  %47 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %48 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %51 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @o2net_send_message(i32 %46, i32 %49, %struct.dlm_create_lock* %9, i32 24, i32 %52, i32* %11)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %78

56:                                               ; preds = %4
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* @DLM_REJECTED, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %77

61:                                               ; preds = %56
  %62 = load i32, i32* @ML_ERROR, align 4
  %63 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %64 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.dlm_create_lock, %struct.dlm_create_lock* %9, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.dlm_create_lock, %struct.dlm_create_lock* %9, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %71 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i32, i8*, i32, ...) @mlog(i32 %62, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %67, i32 %69, i32 %72)
  %74 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %75 = call i32 @dlm_print_one_lock_resource(%struct.dlm_lock_resource* %74)
  %76 = call i32 (...) @BUG()
  br label %77

77:                                               ; preds = %61, %56
  br label %94

78:                                               ; preds = %4
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @mlog_errno(i32 %79)
  %81 = load i32, i32* %10, align 4
  %82 = call i64 @dlm_is_host_down(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %78
  %85 = load i32, i32* @DLM_RECOVERING, align 4
  store i32 %85, i32* %12, align 4
  %86 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %87 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  br label %93

90:                                               ; preds = %78
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @dlm_err_to_dlm_status(i32 %91)
  store i32 %92, i32* %12, align 4
  br label %93

93:                                               ; preds = %90, %84
  br label %94

94:                                               ; preds = %93, %77
  %95 = load i32, i32* %12, align 4
  ret i32 %95
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @memset(%struct.dlm_create_lock*, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @o2net_send_message(i32, i32, %struct.dlm_create_lock*, i32, i32, i32*) #1

declare dso_local i32 @mlog(i32, i8*, i32, ...) #1

declare dso_local i32 @dlm_print_one_lock_resource(%struct.dlm_lock_resource*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @dlm_is_host_down(i32) #1

declare dso_local i32 @dlm_err_to_dlm_status(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
