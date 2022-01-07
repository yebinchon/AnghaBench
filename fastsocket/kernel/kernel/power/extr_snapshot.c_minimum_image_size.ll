; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/power/extr_snapshot.c_minimum_image_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/power/extr_snapshot.c_minimum_image_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NR_SLAB_RECLAIMABLE = common dso_local global i32 0, align 4
@NR_ACTIVE_ANON = common dso_local global i32 0, align 4
@NR_INACTIVE_ANON = common dso_local global i32 0, align 4
@NR_ACTIVE_FILE = common dso_local global i32 0, align 4
@NR_INACTIVE_FILE = common dso_local global i32 0, align 4
@NR_FILE_MAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @minimum_image_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @minimum_image_size(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i32, i32* @NR_SLAB_RECLAIMABLE, align 4
  %5 = call i64 @global_page_state(i32 %4)
  %6 = load i32, i32* @NR_ACTIVE_ANON, align 4
  %7 = call i64 @global_page_state(i32 %6)
  %8 = add i64 %5, %7
  %9 = load i32, i32* @NR_INACTIVE_ANON, align 4
  %10 = call i64 @global_page_state(i32 %9)
  %11 = add i64 %8, %10
  %12 = load i32, i32* @NR_ACTIVE_FILE, align 4
  %13 = call i64 @global_page_state(i32 %12)
  %14 = add i64 %11, %13
  %15 = load i32, i32* @NR_INACTIVE_FILE, align 4
  %16 = call i64 @global_page_state(i32 %15)
  %17 = add i64 %14, %16
  %18 = load i32, i32* @NR_FILE_MAPPED, align 4
  %19 = call i64 @global_page_state(i32 %18)
  %20 = sub i64 %17, %19
  store i64 %20, i64* %3, align 8
  %21 = load i64, i64* %2, align 8
  %22 = load i64, i64* %3, align 8
  %23 = icmp ule i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %29

25:                                               ; preds = %1
  %26 = load i64, i64* %2, align 8
  %27 = load i64, i64* %3, align 8
  %28 = sub i64 %26, %27
  br label %29

29:                                               ; preds = %25, %24
  %30 = phi i64 [ 0, %24 ], [ %28, %25 ]
  ret i64 %30
}

declare dso_local i64 @global_page_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
