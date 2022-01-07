; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_backing-dev.c_bdi_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_backing-dev.c_bdi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backing_dev_info = type { i32, i32*, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i32* }

@PROP_FRAC_BASE = common dso_local global i32 0, align 4
@NR_BDI_STAT_ITEMS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bdi_init(%struct.backing_dev_info* %0) #0 {
  %2 = alloca %struct.backing_dev_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.backing_dev_info* %0, %struct.backing_dev_info** %2, align 8
  %5 = load %struct.backing_dev_info*, %struct.backing_dev_info** %2, align 8
  %6 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %5, i32 0, i32 12
  store i32* null, i32** %6, align 8
  %7 = load %struct.backing_dev_info*, %struct.backing_dev_info** %2, align 8
  %8 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %7, i32 0, i32 11
  store i64 0, i64* %8, align 8
  %9 = load %struct.backing_dev_info*, %struct.backing_dev_info** %2, align 8
  %10 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %9, i32 0, i32 0
  store i32 100, i32* %10, align 8
  %11 = load i32, i32* @PROP_FRAC_BASE, align 4
  %12 = load %struct.backing_dev_info*, %struct.backing_dev_info** %2, align 8
  %13 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %12, i32 0, i32 10
  store i32 %11, i32* %13, align 8
  %14 = load %struct.backing_dev_info*, %struct.backing_dev_info** %2, align 8
  %15 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %14, i32 0, i32 9
  %16 = call i32 @spin_lock_init(i32* %15)
  %17 = load %struct.backing_dev_info*, %struct.backing_dev_info** %2, align 8
  %18 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %17, i32 0, i32 8
  %19 = call i32 @INIT_RCU_HEAD(i32* %18)
  %20 = load %struct.backing_dev_info*, %struct.backing_dev_info** %2, align 8
  %21 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %20, i32 0, i32 7
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load %struct.backing_dev_info*, %struct.backing_dev_info** %2, align 8
  %24 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %23, i32 0, i32 6
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.backing_dev_info*, %struct.backing_dev_info** %2, align 8
  %27 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %26, i32 0, i32 5
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load %struct.backing_dev_info*, %struct.backing_dev_info** %2, align 8
  %30 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %29, i32 0, i32 4
  %31 = load %struct.backing_dev_info*, %struct.backing_dev_info** %2, align 8
  %32 = call i32 @bdi_wb_init(i32* %30, %struct.backing_dev_info* %31)
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %49, %1
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @NR_BDI_STAT_ITEMS, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %33
  %38 = load %struct.backing_dev_info*, %struct.backing_dev_info** %2, align 8
  %39 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = call i32 @percpu_counter_init(i32* %43, i32 0)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %61

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %3, align 4
  br label %33

52:                                               ; preds = %33
  %53 = load %struct.backing_dev_info*, %struct.backing_dev_info** %2, align 8
  %54 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %53, i32 0, i32 3
  store i64 0, i64* %54, align 8
  %55 = load %struct.backing_dev_info*, %struct.backing_dev_info** %2, align 8
  %56 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %55, i32 0, i32 2
  %57 = call i32 @prop_local_init_percpu(i32* %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60, %47
  br label %62

62:                                               ; preds = %66, %61
  %63 = load i32, i32* %3, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %3, align 4
  %65 = icmp ne i32 %63, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %62
  %67 = load %struct.backing_dev_info*, %struct.backing_dev_info** %2, align 8
  %68 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = call i32 @percpu_counter_destroy(i32* %72)
  br label %62

74:                                               ; preds = %62
  br label %75

75:                                               ; preds = %74, %52
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_RCU_HEAD(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @bdi_wb_init(i32*, %struct.backing_dev_info*) #1

declare dso_local i32 @percpu_counter_init(i32*, i32) #1

declare dso_local i32 @prop_local_init_percpu(i32*) #1

declare dso_local i32 @percpu_counter_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
