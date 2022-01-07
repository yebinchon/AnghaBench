; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_store_in_ref_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_store_in_ref_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.die_info = type { %struct.die_info* }

@REF_HASH_SIZE = common dso_local global i32 0, align 4
@die_ref_table = common dso_local global %struct.die_info** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.die_info*)* @store_in_ref_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @store_in_ref_table(i32 %0, %struct.die_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.die_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.die_info*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.die_info* %1, %struct.die_info** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @REF_HASH_SIZE, align 4
  %9 = urem i32 %7, %8
  store i32 %9, i32* %5, align 4
  %10 = load %struct.die_info**, %struct.die_info*** @die_ref_table, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.die_info*, %struct.die_info** %10, i64 %12
  %14 = load %struct.die_info*, %struct.die_info** %13, align 8
  store %struct.die_info* %14, %struct.die_info** %6, align 8
  %15 = load %struct.die_info*, %struct.die_info** %6, align 8
  %16 = load %struct.die_info*, %struct.die_info** %4, align 8
  %17 = getelementptr inbounds %struct.die_info, %struct.die_info* %16, i32 0, i32 0
  store %struct.die_info* %15, %struct.die_info** %17, align 8
  %18 = load %struct.die_info*, %struct.die_info** %4, align 8
  %19 = load %struct.die_info**, %struct.die_info*** @die_ref_table, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.die_info*, %struct.die_info** %19, i64 %21
  store %struct.die_info* %18, %struct.die_info** %22, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
