; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_send_one_join_assert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_send_one_join_assert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32, i32 }
%struct.dlm_assert_joined = type { i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Sending join assert to node %u\0A\00", align 1
@DLM_ASSERT_JOINED_MSG = common dso_local global i32 0, align 4
@DLM_MOD_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ctxt*, i32)* @dlm_send_one_join_assert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_send_one_join_assert(%struct.dlm_ctxt* %0, i32 %1) #0 {
  %3 = alloca %struct.dlm_ctxt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dlm_assert_joined, align 4
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = call i32 @memset(%struct.dlm_assert_joined* %6, i32 0, i32 12)
  %10 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %11 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.dlm_assert_joined, %struct.dlm_assert_joined* %6, i32 0, i32 2
  store i32 %12, i32* %13, align 4
  %14 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %15 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @strlen(i32 %16)
  %18 = getelementptr inbounds %struct.dlm_assert_joined, %struct.dlm_assert_joined* %6, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.dlm_assert_joined, %struct.dlm_assert_joined* %6, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %22 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.dlm_assert_joined, %struct.dlm_assert_joined* %6, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @memcpy(i32 %20, i32 %23, i32 %25)
  %27 = load i32, i32* @DLM_ASSERT_JOINED_MSG, align 4
  %28 = load i32, i32* @DLM_MOD_KEY, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @o2net_send_message(i32 %27, i32 %28, %struct.dlm_assert_joined* %6, i32 12, i32 %29, i32* null)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %2
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @mlog_errno(i32 %34)
  br label %36

36:                                               ; preds = %33, %2
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @mlog(i32, i8*, i32) #1

declare dso_local i32 @memset(%struct.dlm_assert_joined*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @o2net_send_message(i32, i32, %struct.dlm_assert_joined*, i32, i32, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
