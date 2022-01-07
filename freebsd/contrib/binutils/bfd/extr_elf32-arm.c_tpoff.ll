; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_tpoff.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_tpoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.elf_link_hash_table = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@TCB_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bfd_link_info*, i64)* @tpoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tpoff(%struct.bfd_link_info* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.bfd_link_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.elf_link_hash_table*, align 8
  %7 = alloca i64, align 8
  store %struct.bfd_link_info* %0, %struct.bfd_link_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %9 = call %struct.elf_link_hash_table* @elf_hash_table(%struct.bfd_link_info* %8)
  store %struct.elf_link_hash_table* %9, %struct.elf_link_hash_table** %6, align 8
  %10 = load %struct.elf_link_hash_table*, %struct.elf_link_hash_table** %6, align 8
  %11 = getelementptr inbounds %struct.elf_link_hash_table, %struct.elf_link_hash_table* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp eq %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %32

15:                                               ; preds = %2
  %16 = load i64, i64* @TCB_SIZE, align 8
  %17 = load %struct.elf_link_hash_table*, %struct.elf_link_hash_table** %6, align 8
  %18 = getelementptr inbounds %struct.elf_link_hash_table, %struct.elf_link_hash_table* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @align_power(i64 %16, i32 %21)
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.elf_link_hash_table*, %struct.elf_link_hash_table** %6, align 8
  %25 = getelementptr inbounds %struct.elf_link_hash_table, %struct.elf_link_hash_table* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %23, %28
  %30 = load i64, i64* %7, align 8
  %31 = add nsw i64 %29, %30
  store i64 %31, i64* %3, align 8
  br label %32

32:                                               ; preds = %15, %14
  %33 = load i64, i64* %3, align 8
  ret i64 %33
}

declare dso_local %struct.elf_link_hash_table* @elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local i64 @align_power(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
