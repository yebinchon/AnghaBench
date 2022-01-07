; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_ppc64_elf_tls_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_ppc64_elf_tls_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.ppc_link_hash_table = type { i32, %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry* }
%struct.ppc_link_hash_entry = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c".__tls_get_addr\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"__tls_get_addr\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ppc64_elf_tls_setup(i32* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.bfd_link_info*, align 8
  %5 = alloca %struct.ppc_link_hash_table*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %4, align 8
  %6 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %7 = call %struct.ppc_link_hash_table* @ppc_hash_table(%struct.bfd_link_info* %6)
  store %struct.ppc_link_hash_table* %7, %struct.ppc_link_hash_table** %5, align 8
  %8 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %5, align 8
  %9 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %8, i32 0, i32 0
  %10 = load i32, i32* @FALSE, align 4
  %11 = load i32, i32* @FALSE, align 4
  %12 = load i32, i32* @TRUE, align 4
  %13 = call i64 @elf_link_hash_lookup(i32* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11, i32 %12)
  %14 = inttoptr i64 %13 to %struct.ppc_link_hash_entry*
  %15 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %5, align 8
  %16 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %15, i32 0, i32 2
  store %struct.ppc_link_hash_entry* %14, %struct.ppc_link_hash_entry** %16, align 8
  %17 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %5, align 8
  %18 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %17, i32 0, i32 0
  %19 = load i32, i32* @FALSE, align 4
  %20 = load i32, i32* @FALSE, align 4
  %21 = load i32, i32* @TRUE, align 4
  %22 = call i64 @elf_link_hash_lookup(i32* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %19, i32 %20, i32 %21)
  %23 = inttoptr i64 %22 to %struct.ppc_link_hash_entry*
  %24 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %5, align 8
  %25 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %24, i32 0, i32 1
  store %struct.ppc_link_hash_entry* %23, %struct.ppc_link_hash_entry** %25, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %28 = call i32* @_bfd_elf_tls_setup(i32* %26, %struct.bfd_link_info* %27)
  ret i32* %28
}

declare dso_local %struct.ppc_link_hash_table* @ppc_hash_table(%struct.bfd_link_info*) #1

declare dso_local i64 @elf_link_hash_lookup(i32*, i8*, i32, i32, i32) #1

declare dso_local i32* @_bfd_elf_tls_setup(i32*, %struct.bfd_link_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
