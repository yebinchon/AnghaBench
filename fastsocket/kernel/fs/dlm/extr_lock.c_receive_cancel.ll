; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_receive_cancel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_receive_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { %struct.dlm_lkb, %struct.dlm_rsb }
%struct.dlm_lkb = type { %struct.dlm_rsb* }
%struct.dlm_rsb = type { i32 }
%struct.dlm_message = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_ls*, %struct.dlm_message*)* @receive_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receive_cancel(%struct.dlm_ls* %0, %struct.dlm_message* %1) #0 {
  %3 = alloca %struct.dlm_ls*, align 8
  %4 = alloca %struct.dlm_message*, align 8
  %5 = alloca %struct.dlm_lkb*, align 8
  %6 = alloca %struct.dlm_rsb*, align 8
  %7 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %3, align 8
  store %struct.dlm_message* %1, %struct.dlm_message** %4, align 8
  %8 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %9 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %10 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @find_lkb(%struct.dlm_ls* %8, i32 %11, %struct.dlm_lkb** %5)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %48

16:                                               ; preds = %2
  %17 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %18 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %19 = call i32 @receive_flags(%struct.dlm_lkb* %17, %struct.dlm_message* %18)
  %20 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %21 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %20, i32 0, i32 0
  %22 = load %struct.dlm_rsb*, %struct.dlm_rsb** %21, align 8
  store %struct.dlm_rsb* %22, %struct.dlm_rsb** %6, align 8
  %23 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %24 = call i32 @hold_rsb(%struct.dlm_rsb* %23)
  %25 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %26 = call i32 @lock_rsb(%struct.dlm_rsb* %25)
  %27 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %28 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %29 = call i32 @validate_message(%struct.dlm_lkb* %27, %struct.dlm_message* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %16
  br label %41

33:                                               ; preds = %16
  %34 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %35 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %36 = call i32 @do_cancel(%struct.dlm_rsb* %34, %struct.dlm_lkb* %35)
  store i32 %36, i32* %7, align 4
  %37 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %38 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @send_cancel_reply(%struct.dlm_rsb* %37, %struct.dlm_lkb* %38, i32 %39)
  br label %41

41:                                               ; preds = %33, %32
  %42 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %43 = call i32 @unlock_rsb(%struct.dlm_rsb* %42)
  %44 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %45 = call i32 @put_rsb(%struct.dlm_rsb* %44)
  %46 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %47 = call i32 @dlm_put_lkb(%struct.dlm_lkb* %46)
  br label %58

48:                                               ; preds = %15
  %49 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %50 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %51 = call i32 @setup_stub_lkb(%struct.dlm_ls* %49, %struct.dlm_message* %50)
  %52 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %53 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %52, i32 0, i32 1
  %54 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %55 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %54, i32 0, i32 0
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @send_cancel_reply(%struct.dlm_rsb* %53, %struct.dlm_lkb* %55, i32 %56)
  br label %58

58:                                               ; preds = %48, %41
  ret void
}

declare dso_local i32 @find_lkb(%struct.dlm_ls*, i32, %struct.dlm_lkb**) #1

declare dso_local i32 @receive_flags(%struct.dlm_lkb*, %struct.dlm_message*) #1

declare dso_local i32 @hold_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @lock_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @validate_message(%struct.dlm_lkb*, %struct.dlm_message*) #1

declare dso_local i32 @do_cancel(%struct.dlm_rsb*, %struct.dlm_lkb*) #1

declare dso_local i32 @send_cancel_reply(%struct.dlm_rsb*, %struct.dlm_lkb*, i32) #1

declare dso_local i32 @unlock_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @put_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @dlm_put_lkb(%struct.dlm_lkb*) #1

declare dso_local i32 @setup_stub_lkb(%struct.dlm_ls*, %struct.dlm_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
