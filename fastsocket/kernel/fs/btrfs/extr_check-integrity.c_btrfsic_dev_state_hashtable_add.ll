; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_check-integrity.c_btrfsic_dev_state_hashtable_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_check-integrity.c_btrfsic_dev_state_hashtable_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfsic_dev_state = type { i32, i64 }
%struct.btrfsic_dev_state_hashtable = type { i64 }

@BTRFSIC_DEV2STATE_HASHTABLE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfsic_dev_state*, %struct.btrfsic_dev_state_hashtable*)* @btrfsic_dev_state_hashtable_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btrfsic_dev_state_hashtable_add(%struct.btrfsic_dev_state* %0, %struct.btrfsic_dev_state_hashtable* %1) #0 {
  %3 = alloca %struct.btrfsic_dev_state*, align 8
  %4 = alloca %struct.btrfsic_dev_state_hashtable*, align 8
  %5 = alloca i32, align 4
  store %struct.btrfsic_dev_state* %0, %struct.btrfsic_dev_state** %3, align 8
  store %struct.btrfsic_dev_state_hashtable* %1, %struct.btrfsic_dev_state_hashtable** %4, align 8
  %6 = load %struct.btrfsic_dev_state*, %struct.btrfsic_dev_state** %3, align 8
  %7 = getelementptr inbounds %struct.btrfsic_dev_state, %struct.btrfsic_dev_state* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = trunc i64 %8 to i32
  %10 = load i32, i32* @BTRFSIC_DEV2STATE_HASHTABLE_SIZE, align 4
  %11 = sub nsw i32 %10, 1
  %12 = and i32 %9, %11
  store i32 %12, i32* %5, align 4
  %13 = load %struct.btrfsic_dev_state*, %struct.btrfsic_dev_state** %3, align 8
  %14 = getelementptr inbounds %struct.btrfsic_dev_state, %struct.btrfsic_dev_state* %13, i32 0, i32 0
  %15 = load %struct.btrfsic_dev_state_hashtable*, %struct.btrfsic_dev_state_hashtable** %4, align 8
  %16 = getelementptr inbounds %struct.btrfsic_dev_state_hashtable, %struct.btrfsic_dev_state_hashtable* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = add nsw i64 %17, %19
  %21 = call i32 @list_add(i32* %14, i64 %20)
  ret void
}

declare dso_local i32 @list_add(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
