; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-alpha.c_elf64_alpha_want_plt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-alpha.c_elf64_alpha_want_plt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alpha_elf_link_hash_entry = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@STT_FUNC = common dso_local global i64 0, align 8
@bfd_link_hash_undefweak = common dso_local global i64 0, align 8
@bfd_link_hash_undefined = common dso_local global i64 0, align 8
@ALPHA_ELF_LINK_HASH_LU_PLT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.alpha_elf_link_hash_entry*)* @elf64_alpha_want_plt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf64_alpha_want_plt(%struct.alpha_elf_link_hash_entry* %0) #0 {
  %2 = alloca %struct.alpha_elf_link_hash_entry*, align 8
  store %struct.alpha_elf_link_hash_entry* %0, %struct.alpha_elf_link_hash_entry** %2, align 8
  %3 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %2, align 8
  %4 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @STT_FUNC, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %25, label %9

9:                                                ; preds = %1
  %10 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %2, align 8
  %11 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @bfd_link_hash_undefweak, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %25, label %17

17:                                               ; preds = %9
  %18 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %2, align 8
  %19 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @bfd_link_hash_undefined, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %17, %9, %1
  %26 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %2, align 8
  %27 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @ALPHA_ELF_LINK_HASH_LU_PLT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %2, align 8
  %34 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @ALPHA_ELF_LINK_HASH_LU_PLT, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %35, %37
  %39 = icmp eq i32 %38, 0
  br label %40

40:                                               ; preds = %32, %25, %17
  %41 = phi i1 [ false, %25 ], [ false, %17 ], [ %39, %32 ]
  %42 = zext i1 %41 to i32
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
