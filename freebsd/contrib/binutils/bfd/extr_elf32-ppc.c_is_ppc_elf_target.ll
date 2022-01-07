; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-ppc.c_is_ppc_elf_target.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-ppc.c_is_ppc_elf_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_target = type { i32 }

@bfd_elf32_powerpc_vec = external dso_local constant %struct.bfd_target, align 4
@bfd_elf32_powerpc_vxworks_vec = external dso_local constant %struct.bfd_target, align 4
@bfd_elf32_powerpcle_vec = external dso_local constant %struct.bfd_target, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfd_target*)* @is_ppc_elf_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_ppc_elf_target(%struct.bfd_target* %0) #0 {
  %2 = alloca %struct.bfd_target*, align 8
  store %struct.bfd_target* %0, %struct.bfd_target** %2, align 8
  %3 = load %struct.bfd_target*, %struct.bfd_target** %2, align 8
  %4 = icmp eq %struct.bfd_target* %3, @bfd_elf32_powerpc_vec
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = load %struct.bfd_target*, %struct.bfd_target** %2, align 8
  %7 = icmp eq %struct.bfd_target* %6, @bfd_elf32_powerpc_vxworks_vec
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = load %struct.bfd_target*, %struct.bfd_target** %2, align 8
  %10 = icmp eq %struct.bfd_target* %9, @bfd_elf32_powerpcle_vec
  br label %11

11:                                               ; preds = %8, %5, %1
  %12 = phi i1 [ true, %5 ], [ true, %1 ], [ %10, %8 ]
  %13 = zext i1 %12 to i32
  ret i32 %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
