; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/slaves/extr_w1_ds2760.c_new_bat_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/slaves/extr_w1_ds2760.c_new_bat_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bat_idr = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bat_idr_lock = common dso_local global i32 0, align 4
@MAX_ID_MASK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @new_bat_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @new_bat_id() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  br label %4

4:                                                ; preds = %0, %27
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call i32 @idr_pre_get(i32* @bat_idr, i32 %5)
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %1, align 4
  br label %31

12:                                               ; preds = %4
  %13 = call i32 @mutex_lock(i32* @bat_idr_lock)
  %14 = call i32 @idr_get_new(i32* @bat_idr, i32* null, i32* %3)
  store i32 %14, i32* %2, align 4
  %15 = call i32 @mutex_unlock(i32* @bat_idr_lock)
  %16 = load i32, i32* %2, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @MAX_ID_MASK, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %2, align 4
  br label %29

22:                                               ; preds = %12
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @EAGAIN, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %4

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28, %18
  %30 = load i32, i32* %2, align 4
  store i32 %30, i32* %1, align 4
  br label %31

31:                                               ; preds = %29, %9
  %32 = load i32, i32* %1, align 4
  ret i32 %32
}

declare dso_local i32 @idr_pre_get(i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @idr_get_new(i32*, i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
