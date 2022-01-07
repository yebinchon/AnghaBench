; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/reed_solomon/extr_reed_solomon.c_free_rs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/reed_solomon/extr_reed_solomon.c_free_rs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rs_control = type { %struct.rs_control*, %struct.rs_control*, %struct.rs_control*, i32, i32 }

@rslistlock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_rs(%struct.rs_control* %0) #0 {
  %2 = alloca %struct.rs_control*, align 8
  store %struct.rs_control* %0, %struct.rs_control** %2, align 8
  %3 = call i32 @mutex_lock(i32* @rslistlock)
  %4 = load %struct.rs_control*, %struct.rs_control** %2, align 8
  %5 = getelementptr inbounds %struct.rs_control, %struct.rs_control* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 4
  %7 = add nsw i32 %6, -1
  store i32 %7, i32* %5, align 4
  %8 = load %struct.rs_control*, %struct.rs_control** %2, align 8
  %9 = getelementptr inbounds %struct.rs_control, %struct.rs_control* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %30, label %12

12:                                               ; preds = %1
  %13 = load %struct.rs_control*, %struct.rs_control** %2, align 8
  %14 = getelementptr inbounds %struct.rs_control, %struct.rs_control* %13, i32 0, i32 3
  %15 = call i32 @list_del(i32* %14)
  %16 = load %struct.rs_control*, %struct.rs_control** %2, align 8
  %17 = getelementptr inbounds %struct.rs_control, %struct.rs_control* %16, i32 0, i32 2
  %18 = load %struct.rs_control*, %struct.rs_control** %17, align 8
  %19 = call i32 @kfree(%struct.rs_control* %18)
  %20 = load %struct.rs_control*, %struct.rs_control** %2, align 8
  %21 = getelementptr inbounds %struct.rs_control, %struct.rs_control* %20, i32 0, i32 1
  %22 = load %struct.rs_control*, %struct.rs_control** %21, align 8
  %23 = call i32 @kfree(%struct.rs_control* %22)
  %24 = load %struct.rs_control*, %struct.rs_control** %2, align 8
  %25 = getelementptr inbounds %struct.rs_control, %struct.rs_control* %24, i32 0, i32 0
  %26 = load %struct.rs_control*, %struct.rs_control** %25, align 8
  %27 = call i32 @kfree(%struct.rs_control* %26)
  %28 = load %struct.rs_control*, %struct.rs_control** %2, align 8
  %29 = call i32 @kfree(%struct.rs_control* %28)
  br label %30

30:                                               ; preds = %12, %1
  %31 = call i32 @mutex_unlock(i32* @rslistlock)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.rs_control*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
