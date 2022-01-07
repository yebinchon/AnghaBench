; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_futex.c_double_lock_hb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_futex.c_double_lock_hb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.futex_hash_bucket = type { i32 }

@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.futex_hash_bucket*, %struct.futex_hash_bucket*)* @double_lock_hb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @double_lock_hb(%struct.futex_hash_bucket* %0, %struct.futex_hash_bucket* %1) #0 {
  %3 = alloca %struct.futex_hash_bucket*, align 8
  %4 = alloca %struct.futex_hash_bucket*, align 8
  store %struct.futex_hash_bucket* %0, %struct.futex_hash_bucket** %3, align 8
  store %struct.futex_hash_bucket* %1, %struct.futex_hash_bucket** %4, align 8
  %5 = load %struct.futex_hash_bucket*, %struct.futex_hash_bucket** %3, align 8
  %6 = load %struct.futex_hash_bucket*, %struct.futex_hash_bucket** %4, align 8
  %7 = icmp ule %struct.futex_hash_bucket* %5, %6
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
  %9 = load %struct.futex_hash_bucket*, %struct.futex_hash_bucket** %3, align 8
  %10 = getelementptr inbounds %struct.futex_hash_bucket, %struct.futex_hash_bucket* %9, i32 0, i32 0
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.futex_hash_bucket*, %struct.futex_hash_bucket** %3, align 8
  %13 = load %struct.futex_hash_bucket*, %struct.futex_hash_bucket** %4, align 8
  %14 = icmp ult %struct.futex_hash_bucket* %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %8
  %16 = load %struct.futex_hash_bucket*, %struct.futex_hash_bucket** %4, align 8
  %17 = getelementptr inbounds %struct.futex_hash_bucket, %struct.futex_hash_bucket* %16, i32 0, i32 0
  %18 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %19 = call i32 @spin_lock_nested(i32* %17, i32 %18)
  br label %20

20:                                               ; preds = %15, %8
  br label %29

21:                                               ; preds = %2
  %22 = load %struct.futex_hash_bucket*, %struct.futex_hash_bucket** %4, align 8
  %23 = getelementptr inbounds %struct.futex_hash_bucket, %struct.futex_hash_bucket* %22, i32 0, i32 0
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load %struct.futex_hash_bucket*, %struct.futex_hash_bucket** %3, align 8
  %26 = getelementptr inbounds %struct.futex_hash_bucket, %struct.futex_hash_bucket* %25, i32 0, i32 0
  %27 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %28 = call i32 @spin_lock_nested(i32* %26, i32 %27)
  br label %29

29:                                               ; preds = %21, %20
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_lock_nested(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
