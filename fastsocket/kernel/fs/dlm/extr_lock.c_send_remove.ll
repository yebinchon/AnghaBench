; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_send_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_send_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_rsb = type { i32, i32, i32 }
%struct.dlm_message = type { i32, i32 }
%struct.dlm_mhandle = type { i32 }

@DLM_MSG_REMOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_rsb*)* @send_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_remove(%struct.dlm_rsb* %0) #0 {
  %2 = alloca %struct.dlm_rsb*, align 8
  %3 = alloca %struct.dlm_message*, align 8
  %4 = alloca %struct.dlm_mhandle*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dlm_rsb* %0, %struct.dlm_rsb** %2, align 8
  %7 = load %struct.dlm_rsb*, %struct.dlm_rsb** %2, align 8
  %8 = call i32 @dlm_dir_nodeid(%struct.dlm_rsb* %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.dlm_rsb*, %struct.dlm_rsb** %2, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @DLM_MSG_REMOVE, align 4
  %12 = call i32 @create_message(%struct.dlm_rsb* %9, i32* null, i32 %10, i32 %11, %struct.dlm_message** %3, %struct.dlm_mhandle** %4)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %35

16:                                               ; preds = %1
  %17 = load %struct.dlm_message*, %struct.dlm_message** %3, align 8
  %18 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.dlm_rsb*, %struct.dlm_rsb** %2, align 8
  %21 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.dlm_rsb*, %struct.dlm_rsb** %2, align 8
  %24 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @memcpy(i32 %19, i32 %22, i32 %25)
  %27 = load %struct.dlm_rsb*, %struct.dlm_rsb** %2, align 8
  %28 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.dlm_message*, %struct.dlm_message** %3, align 8
  %31 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.dlm_mhandle*, %struct.dlm_mhandle** %4, align 8
  %33 = load %struct.dlm_message*, %struct.dlm_message** %3, align 8
  %34 = call i32 @send_message(%struct.dlm_mhandle* %32, %struct.dlm_message* %33)
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %16, %15
  %36 = load i32, i32* %6, align 4
  ret i32 %36
}

declare dso_local i32 @dlm_dir_nodeid(%struct.dlm_rsb*) #1

declare dso_local i32 @create_message(%struct.dlm_rsb*, i32*, i32, i32, %struct.dlm_message**, %struct.dlm_mhandle**) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @send_message(%struct.dlm_mhandle*, %struct.dlm_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
