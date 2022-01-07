; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/partitions/extr_msdos.c_is_extended_partition.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/partitions/extr_msdos.c_is_extended_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.partition = type { i32 }

@DOS_EXTENDED_PARTITION = common dso_local global i64 0, align 8
@WIN98_EXTENDED_PARTITION = common dso_local global i64 0, align 8
@LINUX_EXTENDED_PARTITION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.partition*)* @is_extended_partition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_extended_partition(%struct.partition* %0) #0 {
  %2 = alloca %struct.partition*, align 8
  store %struct.partition* %0, %struct.partition** %2, align 8
  %3 = load %struct.partition*, %struct.partition** %2, align 8
  %4 = call i64 @SYS_IND(%struct.partition* %3)
  %5 = load i64, i64* @DOS_EXTENDED_PARTITION, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %17, label %7

7:                                                ; preds = %1
  %8 = load %struct.partition*, %struct.partition** %2, align 8
  %9 = call i64 @SYS_IND(%struct.partition* %8)
  %10 = load i64, i64* @WIN98_EXTENDED_PARTITION, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = load %struct.partition*, %struct.partition** %2, align 8
  %14 = call i64 @SYS_IND(%struct.partition* %13)
  %15 = load i64, i64* @LINUX_EXTENDED_PARTITION, align 8
  %16 = icmp eq i64 %14, %15
  br label %17

17:                                               ; preds = %12, %7, %1
  %18 = phi i1 [ true, %7 ], [ true, %1 ], [ %16, %12 ]
  %19 = zext i1 %18 to i32
  ret i32 %19
}

declare dso_local i64 @SYS_IND(%struct.partition*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
