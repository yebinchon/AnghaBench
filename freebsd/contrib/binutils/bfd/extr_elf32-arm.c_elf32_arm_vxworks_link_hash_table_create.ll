; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_elf32_arm_vxworks_link_hash_table_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_elf32_arm_vxworks_link_hash_table_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_hash_table = type { i32 }
%struct.elf32_arm_link_hash_table = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bfd_link_hash_table* (i32*)* @elf32_arm_vxworks_link_hash_table_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bfd_link_hash_table* @elf32_arm_vxworks_link_hash_table_create(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.bfd_link_hash_table*, align 8
  %4 = alloca %struct.elf32_arm_link_hash_table*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call %struct.bfd_link_hash_table* @elf32_arm_link_hash_table_create(i32* %5)
  store %struct.bfd_link_hash_table* %6, %struct.bfd_link_hash_table** %3, align 8
  %7 = load %struct.bfd_link_hash_table*, %struct.bfd_link_hash_table** %3, align 8
  %8 = icmp ne %struct.bfd_link_hash_table* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.bfd_link_hash_table*, %struct.bfd_link_hash_table** %3, align 8
  %11 = bitcast %struct.bfd_link_hash_table* %10 to %struct.elf32_arm_link_hash_table*
  store %struct.elf32_arm_link_hash_table* %11, %struct.elf32_arm_link_hash_table** %4, align 8
  %12 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %4, align 8
  %13 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %12, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %4, align 8
  %15 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  br label %16

16:                                               ; preds = %9, %1
  %17 = load %struct.bfd_link_hash_table*, %struct.bfd_link_hash_table** %3, align 8
  ret %struct.bfd_link_hash_table* %17
}

declare dso_local %struct.bfd_link_hash_table* @elf32_arm_link_hash_table_create(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
