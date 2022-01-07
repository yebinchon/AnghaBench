; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_send_lookup_reply.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_send_lookup_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { %struct.dlm_rsb }
%struct.dlm_rsb = type { i32 }
%struct.dlm_message = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.dlm_mhandle = type { i32 }

@DLM_MSG_LOOKUP_REPLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ls*, %struct.dlm_message*, i32, i32)* @send_lookup_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_lookup_reply(%struct.dlm_ls* %0, %struct.dlm_message* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dlm_ls*, align 8
  %6 = alloca %struct.dlm_message*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dlm_rsb*, align 8
  %10 = alloca %struct.dlm_message*, align 8
  %11 = alloca %struct.dlm_mhandle*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %5, align 8
  store %struct.dlm_message* %1, %struct.dlm_message** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %15 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %14, i32 0, i32 0
  store %struct.dlm_rsb* %15, %struct.dlm_rsb** %9, align 8
  %16 = load %struct.dlm_message*, %struct.dlm_message** %6, align 8
  %17 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %13, align 4
  %20 = load %struct.dlm_rsb*, %struct.dlm_rsb** %9, align 8
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* @DLM_MSG_LOOKUP_REPLY, align 4
  %23 = call i32 @create_message(%struct.dlm_rsb* %20, i32* null, i32 %21, i32 %22, %struct.dlm_message** %10, %struct.dlm_mhandle** %11)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  br label %42

27:                                               ; preds = %4
  %28 = load %struct.dlm_message*, %struct.dlm_message** %6, align 8
  %29 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.dlm_message*, %struct.dlm_message** %10, align 8
  %32 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.dlm_message*, %struct.dlm_message** %10, align 8
  %35 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.dlm_message*, %struct.dlm_message** %10, align 8
  %38 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.dlm_mhandle*, %struct.dlm_mhandle** %11, align 8
  %40 = load %struct.dlm_message*, %struct.dlm_message** %10, align 8
  %41 = call i32 @send_message(%struct.dlm_mhandle* %39, %struct.dlm_message* %40)
  store i32 %41, i32* %12, align 4
  br label %42

42:                                               ; preds = %27, %26
  %43 = load i32, i32* %12, align 4
  ret i32 %43
}

declare dso_local i32 @create_message(%struct.dlm_rsb*, i32*, i32, i32, %struct.dlm_message**, %struct.dlm_mhandle**) #1

declare dso_local i32 @send_message(%struct.dlm_mhandle*, %struct.dlm_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
