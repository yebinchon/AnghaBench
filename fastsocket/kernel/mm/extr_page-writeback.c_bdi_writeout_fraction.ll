; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page-writeback.c_bdi_writeout_fraction.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page-writeback.c_bdi_writeout_fraction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backing_dev_info = type { i32 }

@vm_completions = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.backing_dev_info*, i64*, i64*)* @bdi_writeout_fraction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bdi_writeout_fraction(%struct.backing_dev_info* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.backing_dev_info*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  store %struct.backing_dev_info* %0, %struct.backing_dev_info** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %7 = load %struct.backing_dev_info*, %struct.backing_dev_info** %4, align 8
  %8 = call i64 @bdi_cap_writeback_dirty(%struct.backing_dev_info* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = load %struct.backing_dev_info*, %struct.backing_dev_info** %4, align 8
  %12 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %11, i32 0, i32 0
  %13 = load i64*, i64** %5, align 8
  %14 = load i64*, i64** %6, align 8
  %15 = call i32 @prop_fraction_percpu(i32* @vm_completions, i32* %12, i64* %13, i64* %14)
  br label %19

16:                                               ; preds = %3
  %17 = load i64*, i64** %5, align 8
  store i64 0, i64* %17, align 8
  %18 = load i64*, i64** %6, align 8
  store i64 1, i64* %18, align 8
  br label %19

19:                                               ; preds = %16, %10
  ret void
}

declare dso_local i64 @bdi_cap_writeback_dirty(%struct.backing_dev_info*) #1

declare dso_local i32 @prop_fraction_percpu(i32*, i32*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
