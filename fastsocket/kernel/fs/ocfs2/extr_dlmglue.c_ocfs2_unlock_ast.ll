; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_unlock_ast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_unlock_ast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_lock_res = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"UNLOCK AST called on lock %s, action = %d\0A\00", align 1
@ML_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Dlm passes error %d for lock %s, unlock_action %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Cancel convert success for %s\0A\00", align 1
@OCFS2_AST_INVALID = common dso_local global i32 0, align 4
@OCFS2_LOCK_BLOCKED = common dso_local global i32 0, align 4
@DLM_LOCK_IV = common dso_local global i32 0, align 4
@OCFS2_LOCK_BUSY = common dso_local global i32 0, align 4
@OCFS2_UNLOCK_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @ocfs2_unlock_ast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_unlock_ast(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ocfs2_lock_res*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.ocfs2_lock_res*
  store %struct.ocfs2_lock_res* %8, %struct.ocfs2_lock_res** %5, align 8
  %9 = call i32 (...) @mlog_entry_void()
  %10 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %11 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %14 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15)
  %17 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %18 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %17, i32 0, i32 2
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %2
  %24 = load i32, i32* @ML_ERROR, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %27 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %30 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i32, i8*, i32, ...) @mlog(i32 %24, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %28, i32 %31)
  %33 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %34 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %33, i32 0, i32 2
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  %37 = call i32 (...) @mlog_exit_void()
  br label %82

38:                                               ; preds = %2
  %39 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %40 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %65 [
    i32 129, label %42
    i32 128, label %61
  ]

42:                                               ; preds = %38
  %43 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %44 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @OCFS2_AST_INVALID, align 4
  %48 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %49 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 4
  %50 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %51 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @OCFS2_LOCK_BLOCKED, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %42
  %57 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %58 = call i32 @ocfs2_get_lockres_osb(%struct.ocfs2_lock_res* %57)
  %59 = call i32 @ocfs2_wake_downconvert_thread(i32 %58)
  br label %60

60:                                               ; preds = %56, %42
  br label %67

61:                                               ; preds = %38
  %62 = load i32, i32* @DLM_LOCK_IV, align 4
  %63 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %64 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 4
  br label %67

65:                                               ; preds = %38
  %66 = call i32 (...) @BUG()
  br label %67

67:                                               ; preds = %65, %61, %60
  %68 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %69 = load i32, i32* @OCFS2_LOCK_BUSY, align 4
  %70 = call i32 @lockres_clear_flags(%struct.ocfs2_lock_res* %68, i32 %69)
  %71 = load i32, i32* @OCFS2_UNLOCK_INVALID, align 4
  %72 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %73 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %75 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %74, i32 0, i32 3
  %76 = call i32 @wake_up(i32* %75)
  %77 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %78 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %77, i32 0, i32 2
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @spin_unlock_irqrestore(i32* %78, i64 %79)
  %81 = call i32 (...) @mlog_exit_void()
  br label %82

82:                                               ; preds = %67, %23
  ret void
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @mlog(i32, i8*, i32, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mlog_exit_void(...) #1

declare dso_local i32 @ocfs2_wake_downconvert_thread(i32) #1

declare dso_local i32 @ocfs2_get_lockres_osb(%struct.ocfs2_lock_res*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @lockres_clear_flags(%struct.ocfs2_lock_res*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
