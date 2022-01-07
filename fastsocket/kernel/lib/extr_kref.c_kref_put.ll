; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_kref.c_kref_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_kref.c_kref_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kref = type { i32 }

@kfree = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kref_put(%struct.kref* %0, void (%struct.kref*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kref*, align 8
  %5 = alloca void (%struct.kref*)*, align 8
  store %struct.kref* %0, %struct.kref** %4, align 8
  store void (%struct.kref*)* %1, void (%struct.kref*)** %5, align 8
  %6 = load void (%struct.kref*)*, void (%struct.kref*)** %5, align 8
  %7 = icmp eq void (%struct.kref*)* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @WARN_ON(i32 %8)
  %10 = load void (%struct.kref*)*, void (%struct.kref*)** %5, align 8
  %11 = load i64, i64* @kfree, align 8
  %12 = inttoptr i64 %11 to void (%struct.kref*)*
  %13 = icmp eq void (%struct.kref*)* %10, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @WARN_ON(i32 %14)
  %16 = load %struct.kref*, %struct.kref** %4, align 8
  %17 = getelementptr inbounds %struct.kref, %struct.kref* %16, i32 0, i32 0
  %18 = call i64 @atomic_dec_and_test(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load void (%struct.kref*)*, void (%struct.kref*)** %5, align 8
  %22 = load %struct.kref*, %struct.kref** %4, align 8
  call void %21(%struct.kref* %22)
  store i32 1, i32* %3, align 4
  br label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %20
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
