; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_check-integrity.c_btrfsic_get_block_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_check-integrity.c_btrfsic_get_block_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfsic_state = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.btrfsic_block = type { i64, i64, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.btrfsic_state*, %struct.btrfsic_block*)* @btrfsic_get_block_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @btrfsic_get_block_type(%struct.btrfsic_state* %0, %struct.btrfsic_block* %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.btrfsic_state*, align 8
  %5 = alloca %struct.btrfsic_block*, align 8
  store %struct.btrfsic_state* %0, %struct.btrfsic_state** %4, align 8
  store %struct.btrfsic_block* %1, %struct.btrfsic_block** %5, align 8
  %6 = load %struct.btrfsic_block*, %struct.btrfsic_block** %5, align 8
  %7 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %2
  %11 = load %struct.btrfsic_state*, %struct.btrfsic_state** %4, align 8
  %12 = getelementptr inbounds %struct.btrfsic_state, %struct.btrfsic_state* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.btrfsic_block*, %struct.btrfsic_block** %5, align 8
  %17 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %10
  %21 = load %struct.btrfsic_state*, %struct.btrfsic_state** %4, align 8
  %22 = getelementptr inbounds %struct.btrfsic_state, %struct.btrfsic_state* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.btrfsic_block*, %struct.btrfsic_block** %5, align 8
  %29 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %28, i32 0, i32 3
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %27, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  store i8 83, i8* %3, align 1
  br label %48

35:                                               ; preds = %20, %10, %2
  %36 = load %struct.btrfsic_block*, %struct.btrfsic_block** %5, align 8
  %37 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i8 115, i8* %3, align 1
  br label %48

41:                                               ; preds = %35
  %42 = load %struct.btrfsic_block*, %struct.btrfsic_block** %5, align 8
  %43 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i8 77, i8* %3, align 1
  br label %48

47:                                               ; preds = %41
  store i8 68, i8* %3, align 1
  br label %48

48:                                               ; preds = %47, %46, %40, %34
  %49 = load i8, i8* %3, align 1
  ret i8 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
