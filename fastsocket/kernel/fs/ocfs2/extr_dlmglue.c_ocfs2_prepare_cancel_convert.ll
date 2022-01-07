; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_prepare_cancel_convert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_prepare_cancel_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.ocfs2_lock_res = type { i64, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"lock %s\0A\00", align 1
@OCFS2_UNLOCK_CANCEL_CONVERT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Lockres %s, skip convert\0A\00", align 1
@OCFS2_AST_CONVERT = common dso_local global i64 0, align 8
@OCFS2_AST_DOWNCONVERT = common dso_local global i64 0, align 8
@OCFS2_LOCK_BUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"lock %s, invalid flags: 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, %struct.ocfs2_lock_res*)* @ocfs2_prepare_cancel_convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_prepare_cancel_convert(%struct.ocfs2_super* %0, %struct.ocfs2_lock_res* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocfs2_super*, align 8
  %5 = alloca %struct.ocfs2_lock_res*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %4, align 8
  store %struct.ocfs2_lock_res* %1, %struct.ocfs2_lock_res** %5, align 8
  %6 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %7 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %6, i32 0, i32 4
  %8 = call i32 @assert_spin_locked(i32* %7)
  %9 = call i32 (...) @mlog_entry_void()
  %10 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %11 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %15 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @OCFS2_UNLOCK_CANCEL_CONVERT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %21 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  store i32 0, i32* %3, align 4
  br label %58

24:                                               ; preds = %2
  %25 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %26 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @OCFS2_AST_CONVERT, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %32 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @OCFS2_AST_DOWNCONVERT, align 8
  %35 = icmp ne i64 %33, %34
  br label %36

36:                                               ; preds = %30, %24
  %37 = phi i1 [ false, %24 ], [ %35, %30 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @BUG_ON(i32 %38)
  %40 = load i64, i64* @OCFS2_UNLOCK_CANCEL_CONVERT, align 8
  %41 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %42 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %44 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @OCFS2_LOCK_BUSY, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %52 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %55 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @mlog_bug_on_msg(i32 %50, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %53, i32 %56)
  store i32 1, i32* %3, align 4
  br label %58

58:                                               ; preds = %36, %19
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @mlog(i32, i8*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mlog_bug_on_msg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
