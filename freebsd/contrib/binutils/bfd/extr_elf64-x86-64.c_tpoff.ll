; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-x86-64.c_tpoff.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-x86-64.c_tpoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.elf_link_hash_table = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bfd_link_info*, i64)* @tpoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tpoff(%struct.bfd_link_info* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.bfd_link_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.elf_link_hash_table*, align 8
  store %struct.bfd_link_info* %0, %struct.bfd_link_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %8 = call %struct.elf_link_hash_table* @elf_hash_table(%struct.bfd_link_info* %7)
  store %struct.elf_link_hash_table* %8, %struct.elf_link_hash_table** %6, align 8
  %9 = load %struct.elf_link_hash_table*, %struct.elf_link_hash_table** %6, align 8
  %10 = getelementptr inbounds %struct.elf_link_hash_table, %struct.elf_link_hash_table* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp eq %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %26

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.elf_link_hash_table*, %struct.elf_link_hash_table** %6, align 8
  %17 = getelementptr inbounds %struct.elf_link_hash_table, %struct.elf_link_hash_table* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %15, %18
  %20 = load %struct.elf_link_hash_table*, %struct.elf_link_hash_table** %6, align 8
  %21 = getelementptr inbounds %struct.elf_link_hash_table, %struct.elf_link_hash_table* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %19, %24
  store i64 %25, i64* %3, align 8
  br label %26

26:                                               ; preds = %14, %13
  %27 = load i64, i64* %3, align 8
  ret i64 %27
}

declare dso_local %struct.elf_link_hash_table* @elf_hash_table(%struct.bfd_link_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
