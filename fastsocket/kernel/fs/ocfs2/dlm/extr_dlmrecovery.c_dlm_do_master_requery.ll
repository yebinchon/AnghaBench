; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_do_master_requery.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_do_master_requery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32, i32 }
%struct.dlm_lock_resource = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.dlm_master_requery = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@DLM_LOCK_RES_OWNER_UNKNOWN = common dso_local global i32 0, align 4
@DLM_MASTER_REQUERY_MSG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"node %u responded to master requery with %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_do_master_requery(%struct.dlm_ctxt* %0, %struct.dlm_lock_resource* %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.dlm_ctxt*, align 8
  %6 = alloca %struct.dlm_lock_resource*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dlm_master_requery, align 4
  %11 = alloca i32, align 4
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %5, align 8
  store %struct.dlm_lock_resource* %1, %struct.dlm_lock_resource** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* @DLM_LOCK_RES_OWNER_UNKNOWN, align 4
  store i32 %14, i32* %11, align 4
  %15 = call i32 @memset(%struct.dlm_master_requery* %10, i32 0, i32 12)
  %16 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %17 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.dlm_master_requery, %struct.dlm_master_requery* %10, i32 0, i32 2
  store i32 %18, i32* %19, align 4
  %20 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %21 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.dlm_master_requery, %struct.dlm_master_requery* %10, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %struct.dlm_master_requery, %struct.dlm_master_requery* %10, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %28 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %32 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @memcpy(i32 %26, i32 %30, i32 %34)
  %36 = load i32, i32* @DLM_MASTER_REQUERY_MSG, align 4
  %37 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %38 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @o2net_send_message(i32 %36, i32 %39, %struct.dlm_master_requery* %10, i32 12, i64 %40, i32* %11)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @mlog_errno(i32 %45)
  br label %65

47:                                               ; preds = %4
  %48 = load i32, i32* %11, align 4
  %49 = icmp slt i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @BUG_ON(i32 %50)
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @DLM_LOCK_RES_OWNER_UNKNOWN, align 4
  %54 = icmp sgt i32 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @BUG_ON(i32 %55)
  %57 = load i32, i32* %11, align 4
  %58 = and i32 %57, 255
  %59 = sext i32 %58 to i64
  %60 = load i64*, i64** %8, align 8
  store i64 %59, i64* %60, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load i64*, i64** %8, align 8
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %61, i64 %63)
  store i32 0, i32* %9, align 4
  br label %65

65:                                               ; preds = %47, %44
  %66 = load i32, i32* %9, align 4
  ret i32 %66
}

declare dso_local i32 @memset(%struct.dlm_master_requery*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @o2net_send_message(i32, i32, %struct.dlm_master_requery*, i32, i64, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mlog(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
