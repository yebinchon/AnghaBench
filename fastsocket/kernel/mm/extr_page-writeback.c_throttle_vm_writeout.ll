; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page-writeback.c_throttle_vm_writeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page-writeback.c_throttle_vm_writeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NR_UNSTABLE_NFS = common dso_local global i32 0, align 4
@NR_WRITEBACK = common dso_local global i32 0, align 4
@BLK_RW_ASYNC = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@__GFP_FS = common dso_local global i32 0, align 4
@__GFP_IO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @throttle_vm_writeout(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  br label %5

5:                                                ; preds = %34, %1
  %6 = call i32 @get_dirty_limits(i64* %3, i64* %4, i32* null, i32* null)
  %7 = load i64, i64* %4, align 8
  %8 = udiv i64 %7, 10
  %9 = load i64, i64* %4, align 8
  %10 = add i64 %9, %8
  store i64 %10, i64* %4, align 8
  %11 = load i32, i32* @NR_UNSTABLE_NFS, align 4
  %12 = call i64 @global_page_state(i32 %11)
  %13 = load i32, i32* @NR_WRITEBACK, align 4
  %14 = call i64 @global_page_state(i32 %13)
  %15 = add i64 %12, %14
  %16 = load i64, i64* %4, align 8
  %17 = icmp ule i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  br label %35

19:                                               ; preds = %5
  %20 = load i32, i32* @BLK_RW_ASYNC, align 4
  %21 = load i32, i32* @HZ, align 4
  %22 = sdiv i32 %21, 10
  %23 = call i32 @congestion_wait(i32 %20, i32 %22)
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @__GFP_FS, align 4
  %26 = load i32, i32* @__GFP_IO, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %24, %27
  %29 = load i32, i32* @__GFP_FS, align 4
  %30 = load i32, i32* @__GFP_IO, align 4
  %31 = or i32 %29, %30
  %32 = icmp ne i32 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %19
  br label %35

34:                                               ; preds = %19
  br label %5

35:                                               ; preds = %33, %18
  ret void
}

declare dso_local i32 @get_dirty_limits(i64*, i64*, i32*, i32*) #1

declare dso_local i64 @global_page_state(i32) #1

declare dso_local i32 @congestion_wait(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
