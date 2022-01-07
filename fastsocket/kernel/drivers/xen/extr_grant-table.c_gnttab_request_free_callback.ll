; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/extr_grant-table.c_gnttab_request_free_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/extr_grant-table.c_gnttab_request_free_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gnttab_free_callback = type { void (i8*)*, %struct.gnttab_free_callback*, i32, i8* }

@gnttab_list_lock = common dso_local global i32 0, align 4
@gnttab_free_callback_list = common dso_local global %struct.gnttab_free_callback* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gnttab_request_free_callback(%struct.gnttab_free_callback* %0, void (i8*)* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.gnttab_free_callback*, align 8
  %6 = alloca void (i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.gnttab_free_callback* %0, %struct.gnttab_free_callback** %5, align 8
  store void (i8*)* %1, void (i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @spin_lock_irqsave(i32* @gnttab_list_lock, i64 %10)
  %12 = load %struct.gnttab_free_callback*, %struct.gnttab_free_callback** %5, align 8
  %13 = getelementptr inbounds %struct.gnttab_free_callback, %struct.gnttab_free_callback* %12, i32 0, i32 1
  %14 = load %struct.gnttab_free_callback*, %struct.gnttab_free_callback** %13, align 8
  %15 = icmp ne %struct.gnttab_free_callback* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %32

17:                                               ; preds = %4
  %18 = load void (i8*)*, void (i8*)** %6, align 8
  %19 = load %struct.gnttab_free_callback*, %struct.gnttab_free_callback** %5, align 8
  %20 = getelementptr inbounds %struct.gnttab_free_callback, %struct.gnttab_free_callback* %19, i32 0, i32 0
  store void (i8*)* %18, void (i8*)** %20, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load %struct.gnttab_free_callback*, %struct.gnttab_free_callback** %5, align 8
  %23 = getelementptr inbounds %struct.gnttab_free_callback, %struct.gnttab_free_callback* %22, i32 0, i32 3
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.gnttab_free_callback*, %struct.gnttab_free_callback** %5, align 8
  %26 = getelementptr inbounds %struct.gnttab_free_callback, %struct.gnttab_free_callback* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.gnttab_free_callback*, %struct.gnttab_free_callback** @gnttab_free_callback_list, align 8
  %28 = load %struct.gnttab_free_callback*, %struct.gnttab_free_callback** %5, align 8
  %29 = getelementptr inbounds %struct.gnttab_free_callback, %struct.gnttab_free_callback* %28, i32 0, i32 1
  store %struct.gnttab_free_callback* %27, %struct.gnttab_free_callback** %29, align 8
  %30 = load %struct.gnttab_free_callback*, %struct.gnttab_free_callback** %5, align 8
  store %struct.gnttab_free_callback* %30, %struct.gnttab_free_callback** @gnttab_free_callback_list, align 8
  %31 = call i32 (...) @check_free_callbacks()
  br label %32

32:                                               ; preds = %17, %16
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* @gnttab_list_lock, i64 %33)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @check_free_callbacks(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
