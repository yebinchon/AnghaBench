; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_new_vers_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_new_vers_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_elf_version_tree = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.bfd_elf_version_expr* }
%struct.TYPE_3__ = type { %struct.bfd_elf_version_expr* }
%struct.bfd_elf_version_expr = type { i32 }

@lang_vers_match = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bfd_elf_version_tree* @lang_new_vers_node(%struct.bfd_elf_version_expr* %0, %struct.bfd_elf_version_expr* %1) #0 {
  %3 = alloca %struct.bfd_elf_version_expr*, align 8
  %4 = alloca %struct.bfd_elf_version_expr*, align 8
  %5 = alloca %struct.bfd_elf_version_tree*, align 8
  store %struct.bfd_elf_version_expr* %0, %struct.bfd_elf_version_expr** %3, align 8
  store %struct.bfd_elf_version_expr* %1, %struct.bfd_elf_version_expr** %4, align 8
  %6 = call %struct.bfd_elf_version_tree* @xcalloc(i32 1, i32 24)
  store %struct.bfd_elf_version_tree* %6, %struct.bfd_elf_version_tree** %5, align 8
  %7 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %3, align 8
  %8 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %5, align 8
  %9 = getelementptr inbounds %struct.bfd_elf_version_tree, %struct.bfd_elf_version_tree* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store %struct.bfd_elf_version_expr* %7, %struct.bfd_elf_version_expr** %10, align 8
  %11 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %4, align 8
  %12 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %5, align 8
  %13 = getelementptr inbounds %struct.bfd_elf_version_tree, %struct.bfd_elf_version_tree* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.bfd_elf_version_expr* %11, %struct.bfd_elf_version_expr** %14, align 8
  %15 = load i32, i32* @lang_vers_match, align 4
  %16 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %5, align 8
  %17 = getelementptr inbounds %struct.bfd_elf_version_tree, %struct.bfd_elf_version_tree* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %5, align 8
  %19 = getelementptr inbounds %struct.bfd_elf_version_tree, %struct.bfd_elf_version_tree* %18, i32 0, i32 0
  store i32 -1, i32* %19, align 8
  %20 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %5, align 8
  ret %struct.bfd_elf_version_tree* %20
}

declare dso_local %struct.bfd_elf_version_tree* @xcalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
