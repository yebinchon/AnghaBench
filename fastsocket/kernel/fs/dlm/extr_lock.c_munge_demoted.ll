; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_munge_demoted.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_munge_demoted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_lkb = type { i64, i64, i32 }
%struct.dlm_message = type { i64 }

@DLM_MSG_CONVERT_REPLY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"munge_demoted %x invalid reply type %d\00", align 1
@DLM_LOCK_IV = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"munge_demoted %x invalid modes gr %d rq %d\00", align 1
@DLM_LOCK_NL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_lkb*, %struct.dlm_message*)* @munge_demoted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @munge_demoted(%struct.dlm_lkb* %0, %struct.dlm_message* %1) #0 {
  %3 = alloca %struct.dlm_lkb*, align 8
  %4 = alloca %struct.dlm_message*, align 8
  store %struct.dlm_lkb* %0, %struct.dlm_lkb** %3, align 8
  store %struct.dlm_message* %1, %struct.dlm_message** %4, align 8
  %5 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %6 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @DLM_MSG_CONVERT_REPLY, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load %struct.dlm_lkb*, %struct.dlm_lkb** %3, align 8
  %12 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %15 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 (i8*, i32, i64, ...) @log_print(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %13, i64 %16)
  br label %45

18:                                               ; preds = %2
  %19 = load %struct.dlm_lkb*, %struct.dlm_lkb** %3, align 8
  %20 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @DLM_LOCK_IV, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load %struct.dlm_lkb*, %struct.dlm_lkb** %3, align 8
  %26 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DLM_LOCK_IV, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %24, %18
  %31 = load %struct.dlm_lkb*, %struct.dlm_lkb** %3, align 8
  %32 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.dlm_lkb*, %struct.dlm_lkb** %3, align 8
  %35 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.dlm_lkb*, %struct.dlm_lkb** %3, align 8
  %38 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 (i8*, i32, i64, ...) @log_print(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %33, i64 %36, i64 %39)
  br label %45

41:                                               ; preds = %24
  %42 = load i64, i64* @DLM_LOCK_NL, align 8
  %43 = load %struct.dlm_lkb*, %struct.dlm_lkb** %3, align 8
  %44 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %41, %30, %10
  ret void
}

declare dso_local i32 @log_print(i8*, i32, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
