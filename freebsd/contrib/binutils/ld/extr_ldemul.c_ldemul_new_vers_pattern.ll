; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldemul.c_ldemul_new_vers_pattern.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldemul.c_ldemul_new_vers_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.bfd_elf_version_expr* (%struct.bfd_elf_version_expr*)* }
%struct.bfd_elf_version_expr = type { i32 }

@ld_emulation = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bfd_elf_version_expr* @ldemul_new_vers_pattern(%struct.bfd_elf_version_expr* %0) #0 {
  %2 = alloca %struct.bfd_elf_version_expr*, align 8
  store %struct.bfd_elf_version_expr* %0, %struct.bfd_elf_version_expr** %2, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ld_emulation, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %5 = load %struct.bfd_elf_version_expr* (%struct.bfd_elf_version_expr*)*, %struct.bfd_elf_version_expr* (%struct.bfd_elf_version_expr*)** %4, align 8
  %6 = icmp ne %struct.bfd_elf_version_expr* (%struct.bfd_elf_version_expr*)* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ld_emulation, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.bfd_elf_version_expr* (%struct.bfd_elf_version_expr*)*, %struct.bfd_elf_version_expr* (%struct.bfd_elf_version_expr*)** %9, align 8
  %11 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %2, align 8
  %12 = call %struct.bfd_elf_version_expr* %10(%struct.bfd_elf_version_expr* %11)
  store %struct.bfd_elf_version_expr* %12, %struct.bfd_elf_version_expr** %2, align 8
  br label %13

13:                                               ; preds = %7, %1
  %14 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %2, align 8
  ret %struct.bfd_elf_version_expr* %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
