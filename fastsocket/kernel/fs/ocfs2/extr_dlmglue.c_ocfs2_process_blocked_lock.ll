; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_process_blocked_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_process_blocked_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.ocfs2_lock_res = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.ocfs2_super*, %struct.ocfs2_lock_res*)* }
%struct.ocfs2_unblock_ctl = type { i64, i64, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"lockres %s blocked.\0A\00", align 1
@OCFS2_LOCK_FREEING = common dso_local global i32 0, align 4
@OCFS2_LOCK_QUEUED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"lockres %s, requeue = %s.\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@UNBLOCK_CONTINUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_super*, %struct.ocfs2_lock_res*)* @ocfs2_process_blocked_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_process_blocked_lock(%struct.ocfs2_super* %0, %struct.ocfs2_lock_res* %1) #0 {
  %3 = alloca %struct.ocfs2_super*, align 8
  %4 = alloca %struct.ocfs2_lock_res*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocfs2_unblock_ctl, align 8
  %7 = alloca i64, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %3, align 8
  store %struct.ocfs2_lock_res* %1, %struct.ocfs2_lock_res** %4, align 8
  %8 = bitcast %struct.ocfs2_unblock_ctl* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 24, i1 false)
  %9 = call i32 (...) @mlog_entry_void()
  %10 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %11 = icmp ne %struct.ocfs2_lock_res* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %16 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %23 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %27 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %26, i32 0, i32 2
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %31 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @OCFS2_LOCK_FREEING, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %2
  br label %55

37:                                               ; preds = %2
  %38 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %39 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %38, i32 0, i32 2
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %43 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %44 = call i32 @ocfs2_unblock_lock(%struct.ocfs2_super* %42, %struct.ocfs2_lock_res* %43, %struct.ocfs2_unblock_ctl* %6)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %37
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @mlog_errno(i32 %48)
  br label %50

50:                                               ; preds = %47, %37
  %51 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %52 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %51, i32 0, i32 2
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @spin_lock_irqsave(i32* %52, i64 %53)
  br label %55

55:                                               ; preds = %50, %36
  %56 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %57 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @OCFS2_LOCK_FREEING, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.ocfs2_unblock_ctl, %struct.ocfs2_unblock_ctl* %6, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %62, %55
  %67 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %68 = load i32, i32* @OCFS2_LOCK_QUEUED, align 4
  %69 = call i32 @lockres_clear_flags(%struct.ocfs2_lock_res* %67, i32 %68)
  br label %74

70:                                               ; preds = %62
  %71 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %72 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %73 = call i32 @ocfs2_schedule_blocked_lock(%struct.ocfs2_super* %71, %struct.ocfs2_lock_res* %72)
  br label %74

74:                                               ; preds = %70, %66
  %75 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %76 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.ocfs2_unblock_ctl, %struct.ocfs2_unblock_ctl* %6, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %83 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %77, i8* %82)
  %84 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %85 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %84, i32 0, i32 2
  %86 = load i64, i64* %7, align 8
  %87 = call i32 @spin_unlock_irqrestore(i32* %85, i64 %86)
  %88 = getelementptr inbounds %struct.ocfs2_unblock_ctl, %struct.ocfs2_unblock_ctl* %6, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @UNBLOCK_CONTINUE, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %108

92:                                               ; preds = %74
  %93 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %94 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %93, i32 0, i32 1
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32 (%struct.ocfs2_super*, %struct.ocfs2_lock_res*)*, i32 (%struct.ocfs2_super*, %struct.ocfs2_lock_res*)** %96, align 8
  %98 = icmp ne i32 (%struct.ocfs2_super*, %struct.ocfs2_lock_res*)* %97, null
  br i1 %98, label %99, label %108

99:                                               ; preds = %92
  %100 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %101 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %100, i32 0, i32 1
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32 (%struct.ocfs2_super*, %struct.ocfs2_lock_res*)*, i32 (%struct.ocfs2_super*, %struct.ocfs2_lock_res*)** %103, align 8
  %105 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %106 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %107 = call i32 %104(%struct.ocfs2_super* %105, %struct.ocfs2_lock_res* %106)
  br label %108

108:                                              ; preds = %99, %92, %74
  %109 = call i32 (...) @mlog_exit_void()
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mlog_entry_void(...) #2

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i32 @mlog(i32, i8*, i32, ...) #2

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #2

declare dso_local i32 @ocfs2_unblock_lock(%struct.ocfs2_super*, %struct.ocfs2_lock_res*, %struct.ocfs2_unblock_ctl*) #2

declare dso_local i32 @mlog_errno(i32) #2

declare dso_local i32 @lockres_clear_flags(%struct.ocfs2_lock_res*, i32) #2

declare dso_local i32 @ocfs2_schedule_blocked_lock(%struct.ocfs2_super*, %struct.ocfs2_lock_res*) #2

declare dso_local i32 @mlog_exit_void(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
