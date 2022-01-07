; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_hugetlb.c_hugetlb_acct_memory.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_hugetlb.c_hugetlb_acct_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hstate = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@hugetlb_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hstate*, i64)* @hugetlb_acct_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hugetlb_acct_memory(%struct.hstate* %0, i64 %1) #0 {
  %3 = alloca %struct.hstate*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.hstate* %0, %struct.hstate** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i32, i32* @ENOMEM, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = call i32 @spin_lock(i32* @hugetlb_lock)
  %9 = load i64, i64* %4, align 8
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %2
  %12 = load %struct.hstate*, %struct.hstate** %3, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i64 @gather_surplus_pages(%struct.hstate* %12, i64 %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %38

17:                                               ; preds = %11
  %18 = load i64, i64* %4, align 8
  %19 = load %struct.hstate*, %struct.hstate** %3, align 8
  %20 = getelementptr inbounds %struct.hstate, %struct.hstate* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @cpuset_mems_nr(i32 %21)
  %23 = icmp sgt i64 %18, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load %struct.hstate*, %struct.hstate** %3, align 8
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @return_unused_surplus_pages(%struct.hstate* %25, i64 %26)
  br label %38

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %28, %2
  store i32 0, i32* %5, align 4
  %30 = load i64, i64* %4, align 8
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load %struct.hstate*, %struct.hstate** %3, align 8
  %34 = load i64, i64* %4, align 8
  %35 = sub nsw i64 0, %34
  %36 = call i32 @return_unused_surplus_pages(%struct.hstate* %33, i64 %35)
  br label %37

37:                                               ; preds = %32, %29
  br label %38

38:                                               ; preds = %37, %24, %16
  %39 = call i32 @spin_unlock(i32* @hugetlb_lock)
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @gather_surplus_pages(%struct.hstate*, i64) #1

declare dso_local i64 @cpuset_mems_nr(i32) #1

declare dso_local i32 @return_unused_surplus_pages(%struct.hstate*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
