; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_receive_convert_args.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_receive_convert_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32 }
%struct.dlm_lkb = type { i64, i32, i32 }
%struct.dlm_message = type { i32, i32 }

@DLM_LKSTS_GRANTED = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ls*, %struct.dlm_lkb*, %struct.dlm_message*)* @receive_convert_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @receive_convert_args(%struct.dlm_ls* %0, %struct.dlm_lkb* %1, %struct.dlm_message* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dlm_ls*, align 8
  %6 = alloca %struct.dlm_lkb*, align 8
  %7 = alloca %struct.dlm_message*, align 8
  store %struct.dlm_ls* %0, %struct.dlm_ls** %5, align 8
  store %struct.dlm_lkb* %1, %struct.dlm_lkb** %6, align 8
  store %struct.dlm_message* %2, %struct.dlm_message** %7, align 8
  %8 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %9 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @DLM_LKSTS_GRANTED, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EBUSY, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %36

16:                                               ; preds = %3
  %17 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %18 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %19 = load %struct.dlm_message*, %struct.dlm_message** %7, align 8
  %20 = call i64 @receive_lvb(%struct.dlm_ls* %17, %struct.dlm_lkb* %18, %struct.dlm_message* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %36

25:                                               ; preds = %16
  %26 = load %struct.dlm_message*, %struct.dlm_message** %7, align 8
  %27 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %30 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.dlm_message*, %struct.dlm_message** %7, align 8
  %32 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %35 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %25, %22, %13
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i64 @receive_lvb(%struct.dlm_ls*, %struct.dlm_lkb*, %struct.dlm_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
