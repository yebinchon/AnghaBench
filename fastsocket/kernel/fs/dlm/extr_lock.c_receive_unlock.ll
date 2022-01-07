; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_receive_unlock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_receive_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { %struct.dlm_lkb, %struct.dlm_rsb }
%struct.dlm_lkb = type { %struct.dlm_rsb* }
%struct.dlm_rsb = type { i32 }
%struct.dlm_message = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_ls*, %struct.dlm_message*)* @receive_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receive_unlock(%struct.dlm_ls* %0, %struct.dlm_message* %1) #0 {
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
  br label %57

16:                                               ; preds = %2
  %17 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %18 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %17, i32 0, i32 0
  %19 = load %struct.dlm_rsb*, %struct.dlm_rsb** %18, align 8
  store %struct.dlm_rsb* %19, %struct.dlm_rsb** %6, align 8
  %20 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %21 = call i32 @hold_rsb(%struct.dlm_rsb* %20)
  %22 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %23 = call i32 @lock_rsb(%struct.dlm_rsb* %22)
  %24 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %25 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %26 = call i32 @validate_message(%struct.dlm_lkb* %24, %struct.dlm_message* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %16
  br label %50

30:                                               ; preds = %16
  %31 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %32 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %33 = call i32 @receive_flags(%struct.dlm_lkb* %31, %struct.dlm_message* %32)
  %34 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %35 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %36 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %37 = call i32 @receive_unlock_args(%struct.dlm_ls* %34, %struct.dlm_lkb* %35, %struct.dlm_message* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  br label %45

41:                                               ; preds = %30
  %42 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %43 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %44 = call i32 @do_unlock(%struct.dlm_rsb* %42, %struct.dlm_lkb* %43)
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %41, %40
  %46 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %47 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @send_unlock_reply(%struct.dlm_rsb* %46, %struct.dlm_lkb* %47, i32 %48)
  br label %50

50:                                               ; preds = %45, %29
  %51 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %52 = call i32 @unlock_rsb(%struct.dlm_rsb* %51)
  %53 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %54 = call i32 @put_rsb(%struct.dlm_rsb* %53)
  %55 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %56 = call i32 @dlm_put_lkb(%struct.dlm_lkb* %55)
  br label %67

57:                                               ; preds = %15
  %58 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %59 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %60 = call i32 @setup_stub_lkb(%struct.dlm_ls* %58, %struct.dlm_message* %59)
  %61 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %62 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %61, i32 0, i32 1
  %63 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %64 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %63, i32 0, i32 0
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @send_unlock_reply(%struct.dlm_rsb* %62, %struct.dlm_lkb* %64, i32 %65)
  br label %67

67:                                               ; preds = %57, %50
  ret void
}

declare dso_local i32 @find_lkb(%struct.dlm_ls*, i32, %struct.dlm_lkb**) #1

declare dso_local i32 @hold_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @lock_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @validate_message(%struct.dlm_lkb*, %struct.dlm_message*) #1

declare dso_local i32 @receive_flags(%struct.dlm_lkb*, %struct.dlm_message*) #1

declare dso_local i32 @receive_unlock_args(%struct.dlm_ls*, %struct.dlm_lkb*, %struct.dlm_message*) #1

declare dso_local i32 @do_unlock(%struct.dlm_rsb*, %struct.dlm_lkb*) #1

declare dso_local i32 @send_unlock_reply(%struct.dlm_rsb*, %struct.dlm_lkb*, i32) #1

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
