; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_set_lvb_lock_pc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_set_lvb_lock_pc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_rsb = type { i32 }
%struct.dlm_lkb = type { i32, i32, i32, i32, i32 }
%struct.dlm_message = type { i32, i32 }

@DLM_LKF_VALBLK = common dso_local global i32 0, align 4
@dlm_lvb_operations = common dso_local global i32** null, align 8
@DLM_RESNAME_MAXLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_rsb*, %struct.dlm_lkb*, %struct.dlm_message*)* @set_lvb_lock_pc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_lvb_lock_pc(%struct.dlm_rsb* %0, %struct.dlm_lkb* %1, %struct.dlm_message* %2) #0 {
  %4 = alloca %struct.dlm_rsb*, align 8
  %5 = alloca %struct.dlm_lkb*, align 8
  %6 = alloca %struct.dlm_message*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dlm_rsb* %0, %struct.dlm_rsb** %4, align 8
  store %struct.dlm_lkb* %1, %struct.dlm_lkb** %5, align 8
  store %struct.dlm_message* %2, %struct.dlm_message** %6, align 8
  %9 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %10 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %62

14:                                               ; preds = %3
  %15 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %16 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @DLM_LKF_VALBLK, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  br label %62

22:                                               ; preds = %14
  %23 = load i32**, i32*** @dlm_lvb_operations, align 8
  %24 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %25 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32*, i32** %23, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %32 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %30, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %62

40:                                               ; preds = %22
  %41 = load %struct.dlm_message*, %struct.dlm_message** %6, align 8
  %42 = call i32 @receive_extralen(%struct.dlm_message* %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @DLM_RESNAME_MAXLEN, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* @DLM_RESNAME_MAXLEN, align 4
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %46, %40
  %49 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %50 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.dlm_message*, %struct.dlm_message** %6, align 8
  %53 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @memcpy(i32 %51, i32 %54, i32 %55)
  %57 = load %struct.dlm_message*, %struct.dlm_message** %6, align 8
  %58 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %61 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %13, %21, %48, %22
  ret void
}

declare dso_local i32 @receive_extralen(%struct.dlm_message*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
