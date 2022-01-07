; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_idr.c_ida_pre_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_idr.c_ida_pre_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ida = type { i32, i32 }
%struct.ida_bitmap = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ida_pre_get(%struct.ida* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ida*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ida_bitmap*, align 8
  store %struct.ida* %0, %struct.ida** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ida*, %struct.ida** %4, align 8
  %8 = getelementptr inbounds %struct.ida, %struct.ida* %7, i32 0, i32 1
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @idr_pre_get(i32* %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %29

13:                                               ; preds = %2
  %14 = load %struct.ida*, %struct.ida** %4, align 8
  %15 = getelementptr inbounds %struct.ida, %struct.ida* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* %5, align 4
  %20 = call %struct.ida_bitmap* @kmalloc(i32 4, i32 %19)
  store %struct.ida_bitmap* %20, %struct.ida_bitmap** %6, align 8
  %21 = load %struct.ida_bitmap*, %struct.ida_bitmap** %6, align 8
  %22 = icmp ne %struct.ida_bitmap* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %29

24:                                               ; preds = %18
  %25 = load %struct.ida*, %struct.ida** %4, align 8
  %26 = load %struct.ida_bitmap*, %struct.ida_bitmap** %6, align 8
  %27 = call i32 @free_bitmap(%struct.ida* %25, %struct.ida_bitmap* %26)
  br label %28

28:                                               ; preds = %24, %13
  store i32 1, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %23, %12
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @idr_pre_get(i32*, i32) #1

declare dso_local %struct.ida_bitmap* @kmalloc(i32, i32) #1

declare dso_local i32 @free_bitmap(%struct.ida*, %struct.ida_bitmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
