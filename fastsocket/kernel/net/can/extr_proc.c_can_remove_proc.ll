; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/can/extr_proc.c_can_remove_proc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/can/extr_proc.c_can_remove_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pde_version = common dso_local global i64 0, align 8
@CAN_PROC_VERSION = common dso_local global i32 0, align 4
@pde_stats = common dso_local global i64 0, align 8
@CAN_PROC_STATS = common dso_local global i32 0, align 4
@pde_reset_stats = common dso_local global i64 0, align 8
@CAN_PROC_RESET_STATS = common dso_local global i32 0, align 4
@pde_rcvlist_err = common dso_local global i64 0, align 8
@CAN_PROC_RCVLIST_ERR = common dso_local global i32 0, align 4
@pde_rcvlist_all = common dso_local global i64 0, align 8
@CAN_PROC_RCVLIST_ALL = common dso_local global i32 0, align 4
@pde_rcvlist_fil = common dso_local global i64 0, align 8
@CAN_PROC_RCVLIST_FIL = common dso_local global i32 0, align 4
@pde_rcvlist_inv = common dso_local global i64 0, align 8
@CAN_PROC_RCVLIST_INV = common dso_local global i32 0, align 4
@pde_rcvlist_eff = common dso_local global i64 0, align 8
@CAN_PROC_RCVLIST_EFF = common dso_local global i32 0, align 4
@pde_rcvlist_sff = common dso_local global i64 0, align 8
@CAN_PROC_RCVLIST_SFF = common dso_local global i32 0, align 4
@can_dir = common dso_local global i64 0, align 8
@init_net = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"can\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @can_remove_proc() #0 {
  %1 = load i64, i64* @pde_version, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i32, i32* @CAN_PROC_VERSION, align 4
  %5 = call i32 @can_remove_proc_readentry(i32 %4)
  br label %6

6:                                                ; preds = %3, %0
  %7 = load i64, i64* @pde_stats, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load i32, i32* @CAN_PROC_STATS, align 4
  %11 = call i32 @can_remove_proc_readentry(i32 %10)
  br label %12

12:                                               ; preds = %9, %6
  %13 = load i64, i64* @pde_reset_stats, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* @CAN_PROC_RESET_STATS, align 4
  %17 = call i32 @can_remove_proc_readentry(i32 %16)
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i64, i64* @pde_rcvlist_err, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* @CAN_PROC_RCVLIST_ERR, align 4
  %23 = call i32 @can_remove_proc_readentry(i32 %22)
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i64, i64* @pde_rcvlist_all, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @CAN_PROC_RCVLIST_ALL, align 4
  %29 = call i32 @can_remove_proc_readentry(i32 %28)
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i64, i64* @pde_rcvlist_fil, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* @CAN_PROC_RCVLIST_FIL, align 4
  %35 = call i32 @can_remove_proc_readentry(i32 %34)
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i64, i64* @pde_rcvlist_inv, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* @CAN_PROC_RCVLIST_INV, align 4
  %41 = call i32 @can_remove_proc_readentry(i32 %40)
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i64, i64* @pde_rcvlist_eff, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* @CAN_PROC_RCVLIST_EFF, align 4
  %47 = call i32 @can_remove_proc_readentry(i32 %46)
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i64, i64* @pde_rcvlist_sff, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* @CAN_PROC_RCVLIST_SFF, align 4
  %53 = call i32 @can_remove_proc_readentry(i32 %52)
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i64, i64* @can_dir, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = call i32 @proc_net_remove(i32* @init_net, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %54
  ret void
}

declare dso_local i32 @can_remove_proc_readentry(i32) #1

declare dso_local i32 @proc_net_remove(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
