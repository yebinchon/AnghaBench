; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/partitions/extr_msdos.c_parse_minix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/partitions/extr_msdos.c_parse_minix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsed_partitions = type { i64, i64, i32 }
%struct.block_device = type { i32 }

@MINIX_NR_SUBPARTITIONS = common dso_local global i32 0, align 4
@MINIX_PARTITION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parsed_partitions*, %struct.block_device*, i32, i32, i32)* @parse_minix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_minix(%struct.parsed_partitions* %0, %struct.block_device* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.parsed_partitions*, align 8
  %7 = alloca %struct.block_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.parsed_partitions* %0, %struct.parsed_partitions** %6, align 8
  store %struct.block_device* %1, %struct.block_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
