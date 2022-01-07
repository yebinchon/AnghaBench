; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_x_tables.c_xt_register_target.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_x_tables.c_xt_register_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.xt_target = type { i64, i32 }

@xt = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xt_register_target(%struct.xt_target* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_target*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.xt_target* %0, %struct.xt_target** %3, align 8
  %6 = load %struct.xt_target*, %struct.xt_target** %3, align 8
  %7 = getelementptr inbounds %struct.xt_target, %struct.xt_target* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %4, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xt, align 8
  %10 = load i64, i64* %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock_interruptible(i32* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %32

18:                                               ; preds = %1
  %19 = load %struct.xt_target*, %struct.xt_target** %3, align 8
  %20 = getelementptr inbounds %struct.xt_target, %struct.xt_target* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xt, align 8
  %22 = load i64, i64* %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = call i32 @list_add(i32* %20, i32* %24)
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xt, align 8
  %27 = load i64, i64* %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @mutex_unlock(i32* %29)
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %18, %16
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
