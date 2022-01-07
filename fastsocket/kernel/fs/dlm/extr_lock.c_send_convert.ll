; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_send_convert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_send_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_rsb = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i32 }
%struct.dlm_lkb = type { i32 }

@DLM_MSG_CONVERT = common dso_local global i32 0, align 4
@DLM_MSG_CONVERT_REPLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_rsb*, %struct.dlm_lkb*)* @send_convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_convert(%struct.dlm_rsb* %0, %struct.dlm_lkb* %1) #0 {
  %3 = alloca %struct.dlm_rsb*, align 8
  %4 = alloca %struct.dlm_lkb*, align 8
  %5 = alloca i32, align 4
  store %struct.dlm_rsb* %0, %struct.dlm_rsb** %3, align 8
  store %struct.dlm_lkb* %1, %struct.dlm_lkb** %4, align 8
  %6 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %7 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %8 = load i32, i32* @DLM_MSG_CONVERT, align 4
  %9 = call i32 @send_common(%struct.dlm_rsb* %6, %struct.dlm_lkb* %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %46, label %12

12:                                               ; preds = %2
  %13 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %14 = call i64 @down_conversion(%struct.dlm_lkb* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %46

16:                                               ; preds = %12
  %17 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %18 = load i32, i32* @DLM_MSG_CONVERT_REPLY, align 4
  %19 = call i32 @remove_from_waiters(%struct.dlm_lkb* %17, i32 %18)
  %20 = load i32, i32* @DLM_MSG_CONVERT_REPLY, align 4
  %21 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %22 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  store i32 %20, i32* %25, align 8
  %26 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %27 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %32 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %35 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32 %33, i32* %38, align 8
  %39 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %40 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %41 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %42 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = call i32 @__receive_convert_reply(%struct.dlm_rsb* %39, %struct.dlm_lkb* %40, %struct.TYPE_4__* %44)
  br label %46

46:                                               ; preds = %16, %12, %2
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @send_common(%struct.dlm_rsb*, %struct.dlm_lkb*, i32) #1

declare dso_local i64 @down_conversion(%struct.dlm_lkb*) #1

declare dso_local i32 @remove_from_waiters(%struct.dlm_lkb*, i32) #1

declare dso_local i32 @__receive_convert_reply(%struct.dlm_rsb*, %struct.dlm_lkb*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
