; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/slicoss/extr_slicoss.c_slic_debug_card_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/slicoss/extr_slicoss.c_slic_debug_card_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sliccard = type { i32, i32*, i32*, %struct.adapter** }
%struct.adapter = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sliccard*)* @slic_debug_card_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slic_debug_card_destroy(%struct.sliccard* %0) #0 {
  %2 = alloca %struct.sliccard*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  store %struct.sliccard* %0, %struct.sliccard** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %25, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.sliccard*, %struct.sliccard** %2, align 8
  %8 = getelementptr inbounds %struct.sliccard, %struct.sliccard* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %28

11:                                               ; preds = %5
  %12 = load %struct.sliccard*, %struct.sliccard** %2, align 8
  %13 = getelementptr inbounds %struct.sliccard, %struct.sliccard* %12, i32 0, i32 3
  %14 = load %struct.adapter**, %struct.adapter*** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.adapter*, %struct.adapter** %14, i64 %16
  %18 = load %struct.adapter*, %struct.adapter** %17, align 8
  store %struct.adapter* %18, %struct.adapter** %4, align 8
  %19 = load %struct.adapter*, %struct.adapter** %4, align 8
  %20 = icmp ne %struct.adapter* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %11
  %22 = load %struct.adapter*, %struct.adapter** %4, align 8
  %23 = call i32 @slic_debug_adapter_destroy(%struct.adapter* %22)
  br label %24

24:                                               ; preds = %21, %11
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %5

28:                                               ; preds = %5
  %29 = load %struct.sliccard*, %struct.sliccard** %2, align 8
  %30 = getelementptr inbounds %struct.sliccard, %struct.sliccard* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load %struct.sliccard*, %struct.sliccard** %2, align 8
  %35 = getelementptr inbounds %struct.sliccard, %struct.sliccard* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @debugfs_remove(i32* %36)
  %38 = load %struct.sliccard*, %struct.sliccard** %2, align 8
  %39 = getelementptr inbounds %struct.sliccard, %struct.sliccard* %38, i32 0, i32 2
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %33, %28
  %41 = load %struct.sliccard*, %struct.sliccard** %2, align 8
  %42 = getelementptr inbounds %struct.sliccard, %struct.sliccard* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load %struct.sliccard*, %struct.sliccard** %2, align 8
  %47 = getelementptr inbounds %struct.sliccard, %struct.sliccard* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @debugfs_remove(i32* %48)
  %50 = load %struct.sliccard*, %struct.sliccard** %2, align 8
  %51 = getelementptr inbounds %struct.sliccard, %struct.sliccard* %50, i32 0, i32 1
  store i32* null, i32** %51, align 8
  br label %52

52:                                               ; preds = %45, %40
  ret void
}

declare dso_local i32 @slic_debug_adapter_destroy(%struct.adapter*) #1

declare dso_local i32 @debugfs_remove(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
