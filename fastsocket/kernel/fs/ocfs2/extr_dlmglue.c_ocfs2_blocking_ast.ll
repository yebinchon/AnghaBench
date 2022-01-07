; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_blocking_ast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_blocking_ast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_lock_res = type { i32, i32, i32, i32, i32, i32 }
%struct.ocfs2_super = type { i32 }

@DLM_LOCK_NL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"BAST fired for lockres %s, blocking %d, level %d type %s\0A\00", align 1
@OCFS2_LOCK_NOCACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @ocfs2_blocking_ast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_blocking_ast(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ocfs2_lock_res*, align 8
  %6 = alloca %struct.ocfs2_super*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.ocfs2_lock_res*
  store %struct.ocfs2_lock_res* %10, %struct.ocfs2_lock_res** %5, align 8
  %11 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %12 = call %struct.ocfs2_super* @ocfs2_get_lockres_osb(%struct.ocfs2_lock_res* %11)
  store %struct.ocfs2_super* %12, %struct.ocfs2_super** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @DLM_LOCK_NL, align 4
  %15 = icmp sle i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %19 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %23 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %26 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ocfs2_lock_type_string(i32 %27)
  %29 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21, i32 %24, i32 %28)
  %30 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %31 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @OCFS2_LOCK_NOCACHE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %2
  br label %61

37:                                               ; preds = %2
  %38 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %39 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %38, i32 0, i32 2
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @spin_lock_irqsave(i32* %39, i64 %40)
  %42 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @ocfs2_generic_handle_bast(%struct.ocfs2_lock_res* %42, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %37
  %48 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %49 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %50 = call i32 @ocfs2_schedule_blocked_lock(%struct.ocfs2_super* %48, %struct.ocfs2_lock_res* %49)
  br label %51

51:                                               ; preds = %47, %37
  %52 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %53 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %52, i32 0, i32 2
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  %56 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %57 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %56, i32 0, i32 1
  %58 = call i32 @wake_up(i32* %57)
  %59 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %60 = call i32 @ocfs2_wake_downconvert_thread(%struct.ocfs2_super* %59)
  br label %61

61:                                               ; preds = %51, %36
  ret void
}

declare dso_local %struct.ocfs2_super* @ocfs2_get_lockres_osb(%struct.ocfs2_lock_res*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ocfs2_lock_type_string(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ocfs2_generic_handle_bast(%struct.ocfs2_lock_res*, i32) #1

declare dso_local i32 @ocfs2_schedule_blocked_lock(%struct.ocfs2_super*, %struct.ocfs2_lock_res*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @ocfs2_wake_downconvert_thread(%struct.ocfs2_super*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
