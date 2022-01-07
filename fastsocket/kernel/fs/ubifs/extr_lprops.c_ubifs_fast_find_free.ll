; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lprops.c_ubifs_fast_find_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lprops.c_ubifs_fast_find_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_lprops = type { i32 }
%struct.ubifs_info = type { %struct.ubifs_lpt_heap*, i32 }
%struct.ubifs_lpt_heap = type { i64, %struct.ubifs_lprops** }

@LPROPS_FREE = common dso_local global i32 0, align 4
@LPROPS_TAKEN = common dso_local global i32 0, align 4
@LPROPS_INDEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ubifs_lprops* @ubifs_fast_find_free(%struct.ubifs_info* %0) #0 {
  %2 = alloca %struct.ubifs_lprops*, align 8
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca %struct.ubifs_lprops*, align 8
  %5 = alloca %struct.ubifs_lpt_heap*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  %6 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %7 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %6, i32 0, i32 1
  %8 = call i32 @mutex_is_locked(i32* %7)
  %9 = call i32 @ubifs_assert(i32 %8)
  %10 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %11 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %10, i32 0, i32 0
  %12 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %11, align 8
  %13 = load i32, i32* @LPROPS_FREE, align 4
  %14 = sub nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %12, i64 %15
  store %struct.ubifs_lpt_heap* %16, %struct.ubifs_lpt_heap** %5, align 8
  %17 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %5, align 8
  %18 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store %struct.ubifs_lprops* null, %struct.ubifs_lprops** %2, align 8
  br label %47

22:                                               ; preds = %1
  %23 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %5, align 8
  %24 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %23, i32 0, i32 1
  %25 = load %struct.ubifs_lprops**, %struct.ubifs_lprops*** %24, align 8
  %26 = getelementptr inbounds %struct.ubifs_lprops*, %struct.ubifs_lprops** %25, i64 0
  %27 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %26, align 8
  store %struct.ubifs_lprops* %27, %struct.ubifs_lprops** %4, align 8
  %28 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %29 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @LPROPS_TAKEN, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @ubifs_assert(i32 %35)
  %37 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %38 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @LPROPS_INDEX, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @ubifs_assert(i32 %44)
  %46 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  store %struct.ubifs_lprops* %46, %struct.ubifs_lprops** %2, align 8
  br label %47

47:                                               ; preds = %22, %21
  %48 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %2, align 8
  ret %struct.ubifs_lprops* %48
}

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
