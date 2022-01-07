; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_receive_cancel_reply.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_receive_cancel_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32 }
%struct.dlm_message = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.dlm_lkb = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"receive_cancel_reply from %d no lkb %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_ls*, %struct.dlm_message*)* @receive_cancel_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receive_cancel_reply(%struct.dlm_ls* %0, %struct.dlm_message* %1) #0 {
  %3 = alloca %struct.dlm_ls*, align 8
  %4 = alloca %struct.dlm_message*, align 8
  %5 = alloca %struct.dlm_lkb*, align 8
  %6 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %3, align 8
  store %struct.dlm_message* %1, %struct.dlm_message** %4, align 8
  %7 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %8 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %9 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @find_lkb(%struct.dlm_ls* %7, i32 %10, %struct.dlm_lkb** %5)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %16 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %17 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %21 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @log_debug(%struct.dlm_ls* %15, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22)
  br label %30

24:                                               ; preds = %2
  %25 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %26 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %27 = call i32 @_receive_cancel_reply(%struct.dlm_lkb* %25, %struct.dlm_message* %26)
  %28 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %29 = call i32 @dlm_put_lkb(%struct.dlm_lkb* %28)
  br label %30

30:                                               ; preds = %24, %14
  ret void
}

declare dso_local i32 @find_lkb(%struct.dlm_ls*, i32, %struct.dlm_lkb**) #1

declare dso_local i32 @log_debug(%struct.dlm_ls*, i8*, i32, i32) #1

declare dso_local i32 @_receive_cancel_reply(%struct.dlm_lkb*, %struct.dlm_message*) #1

declare dso_local i32 @dlm_put_lkb(%struct.dlm_lkb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
