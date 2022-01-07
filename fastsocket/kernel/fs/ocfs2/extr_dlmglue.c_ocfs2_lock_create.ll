; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_lock_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_lock_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.ocfs2_lock_res = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"lock %s, level = %d, flags = %u\0A\00", align 1
@OCFS2_LOCK_ATTACHED = common dso_local global i32 0, align 4
@OCFS2_LOCK_BUSY = common dso_local global i32 0, align 4
@OCFS2_AST_ATTACH = common dso_local global i32 0, align 4
@OCFS2_LOCK_ID_MAX_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"ocfs2_dlm_lock\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"lock %s, return from ocfs2_dlm_lock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, %struct.ocfs2_lock_res*, i32, i32)* @ocfs2_lock_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_lock_create(%struct.ocfs2_super* %0, %struct.ocfs2_lock_res* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ocfs2_super*, align 8
  %6 = alloca %struct.ocfs2_lock_res*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %5, align 8
  store %struct.ocfs2_lock_res* %1, %struct.ocfs2_lock_res** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = call i32 (...) @mlog_entry_void()
  %13 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %14 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16, i32 %17)
  %19 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %20 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %19, i32 0, i32 4
  %21 = load i64, i64* %10, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %24 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @OCFS2_LOCK_ATTACHED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %4
  %30 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %31 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @OCFS2_LOCK_BUSY, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %29, %4
  %37 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %38 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %37, i32 0, i32 4
  %39 = load i64, i64* %10, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  br label %88

41:                                               ; preds = %29
  %42 = load i32, i32* @OCFS2_AST_ATTACH, align 4
  %43 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %44 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %47 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %49 = load i32, i32* @OCFS2_LOCK_BUSY, align 4
  %50 = call i32 @lockres_or_flags(%struct.ocfs2_lock_res* %48, i32 %49)
  %51 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %52 = call i32 @lockres_set_pending(%struct.ocfs2_lock_res* %51)
  store i32 %52, i32* %11, align 4
  %53 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %54 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %53, i32 0, i32 4
  %55 = load i64, i64* %10, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  %57 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %58 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %62 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %61, i32 0, i32 3
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %65 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i64, i64* @OCFS2_LOCK_ID_MAX_LEN, align 8
  %68 = sub nsw i64 %67, 1
  %69 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %70 = call i32 @ocfs2_dlm_lock(i32 %59, i32 %60, i32* %62, i32 %63, i32 %66, i64 %68, %struct.ocfs2_lock_res* %69)
  store i32 %70, i32* %9, align 4
  %71 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %74 = call i32 @lockres_clear_pending(%struct.ocfs2_lock_res* %71, i32 %72, %struct.ocfs2_super* %73)
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %41
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %80 = call i32 @ocfs2_log_dlm_error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %78, %struct.ocfs2_lock_res* %79)
  %81 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %82 = call i32 @ocfs2_recover_from_dlm_error(%struct.ocfs2_lock_res* %81, i32 1)
  br label %83

83:                                               ; preds = %77, %41
  %84 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %85 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %83, %36
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @mlog_exit(i32 %89)
  %91 = load i32, i32* %9, align 4
  ret i32 %91
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @mlog(i32, i8*, i32, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @lockres_or_flags(%struct.ocfs2_lock_res*, i32) #1

declare dso_local i32 @lockres_set_pending(%struct.ocfs2_lock_res*) #1

declare dso_local i32 @ocfs2_dlm_lock(i32, i32, i32*, i32, i32, i64, %struct.ocfs2_lock_res*) #1

declare dso_local i32 @lockres_clear_pending(%struct.ocfs2_lock_res*, i32, %struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_log_dlm_error(i8*, i32, %struct.ocfs2_lock_res*) #1

declare dso_local i32 @ocfs2_recover_from_dlm_error(%struct.ocfs2_lock_res*, i32) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
