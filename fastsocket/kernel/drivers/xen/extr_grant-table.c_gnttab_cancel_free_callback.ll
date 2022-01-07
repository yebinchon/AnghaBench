; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/extr_grant-table.c_gnttab_cancel_free_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/extr_grant-table.c_gnttab_cancel_free_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gnttab_free_callback = type { %struct.gnttab_free_callback* }

@gnttab_list_lock = common dso_local global i32 0, align 4
@gnttab_free_callback_list = common dso_local global %struct.gnttab_free_callback* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gnttab_cancel_free_callback(%struct.gnttab_free_callback* %0) #0 {
  %2 = alloca %struct.gnttab_free_callback*, align 8
  %3 = alloca %struct.gnttab_free_callback**, align 8
  %4 = alloca i64, align 8
  store %struct.gnttab_free_callback* %0, %struct.gnttab_free_callback** %2, align 8
  %5 = load i64, i64* %4, align 8
  %6 = call i32 @spin_lock_irqsave(i32* @gnttab_list_lock, i64 %5)
  store %struct.gnttab_free_callback** @gnttab_free_callback_list, %struct.gnttab_free_callback*** %3, align 8
  br label %7

7:                                                ; preds = %22, %1
  %8 = load %struct.gnttab_free_callback**, %struct.gnttab_free_callback*** %3, align 8
  %9 = load %struct.gnttab_free_callback*, %struct.gnttab_free_callback** %8, align 8
  %10 = icmp ne %struct.gnttab_free_callback* %9, null
  br i1 %10, label %11, label %26

11:                                               ; preds = %7
  %12 = load %struct.gnttab_free_callback**, %struct.gnttab_free_callback*** %3, align 8
  %13 = load %struct.gnttab_free_callback*, %struct.gnttab_free_callback** %12, align 8
  %14 = load %struct.gnttab_free_callback*, %struct.gnttab_free_callback** %2, align 8
  %15 = icmp eq %struct.gnttab_free_callback* %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load %struct.gnttab_free_callback*, %struct.gnttab_free_callback** %2, align 8
  %18 = getelementptr inbounds %struct.gnttab_free_callback, %struct.gnttab_free_callback* %17, i32 0, i32 0
  %19 = load %struct.gnttab_free_callback*, %struct.gnttab_free_callback** %18, align 8
  %20 = load %struct.gnttab_free_callback**, %struct.gnttab_free_callback*** %3, align 8
  store %struct.gnttab_free_callback* %19, %struct.gnttab_free_callback** %20, align 8
  br label %26

21:                                               ; preds = %11
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.gnttab_free_callback**, %struct.gnttab_free_callback*** %3, align 8
  %24 = load %struct.gnttab_free_callback*, %struct.gnttab_free_callback** %23, align 8
  %25 = getelementptr inbounds %struct.gnttab_free_callback, %struct.gnttab_free_callback* %24, i32 0, i32 0
  store %struct.gnttab_free_callback** %25, %struct.gnttab_free_callback*** %3, align 8
  br label %7

26:                                               ; preds = %16, %7
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* @gnttab_list_lock, i64 %27)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
