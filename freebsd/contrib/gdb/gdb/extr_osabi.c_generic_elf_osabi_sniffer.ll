; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_osabi.c_generic_elf_osabi_sniffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_osabi.c_generic_elf_osabi_sniffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@GDB_OSABI_UNKNOWN = common dso_local global i32 0, align 4
@EI_OSABI = common dso_local global i64 0, align 8
@generic_elf_osabi_sniff_abi_tag_sections = common dso_local global i32 0, align 4
@GDB_OSABI_FREEBSD_ELF = common dso_local global i32 0, align 4
@GDB_OSABI_NETBSD_ELF = common dso_local global i32 0, align 4
@GDB_OSABI_LINUX = common dso_local global i32 0, align 4
@GDB_OSABI_HURD = common dso_local global i32 0, align 4
@GDB_OSABI_SOLARIS = common dso_local global i32 0, align 4
@GDB_OSABI_HPUX_ELF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"FreeBSD\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @generic_elf_osabi_sniffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_elf_osabi_sniffer(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32, i32* @GDB_OSABI_UNKNOWN, align 4
  store i32 %5, i32* %4, align 4
  %6 = load i32*, i32** %2, align 8
  %7 = call %struct.TYPE_2__* @elf_elfheader(i32* %6)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i64, i64* @EI_OSABI, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  switch i32 %13, label %30 [
    i32 129, label %14
    i32 134, label %18
    i32 130, label %20
    i32 131, label %22
    i32 132, label %24
    i32 128, label %26
    i32 133, label %28
  ]

14:                                               ; preds = %1
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* @generic_elf_osabi_sniff_abi_tag_sections, align 4
  %17 = call i32 @bfd_map_over_sections(i32* %15, i32 %16, i32* %4)
  br label %30

18:                                               ; preds = %1
  %19 = load i32, i32* @GDB_OSABI_FREEBSD_ELF, align 4
  store i32 %19, i32* %4, align 4
  br label %30

20:                                               ; preds = %1
  %21 = load i32, i32* @GDB_OSABI_NETBSD_ELF, align 4
  store i32 %21, i32* %4, align 4
  br label %30

22:                                               ; preds = %1
  %23 = load i32, i32* @GDB_OSABI_LINUX, align 4
  store i32 %23, i32* %4, align 4
  br label %30

24:                                               ; preds = %1
  %25 = load i32, i32* @GDB_OSABI_HURD, align 4
  store i32 %25, i32* %4, align 4
  br label %30

26:                                               ; preds = %1
  %27 = load i32, i32* @GDB_OSABI_SOLARIS, align 4
  store i32 %27, i32* %4, align 4
  br label %30

28:                                               ; preds = %1
  %29 = load i32, i32* @GDB_OSABI_HPUX_ELF, align 4
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %1, %28, %26, %24, %22, %20, %18, %14
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @GDB_OSABI_UNKNOWN, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = load i32*, i32** %2, align 8
  %36 = call %struct.TYPE_2__* @elf_elfheader(i32* %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 8
  %40 = call i64 @strcmp(i32* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* @GDB_OSABI_FREEBSD_ELF, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %42, %34
  br label %45

45:                                               ; preds = %44, %30
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.TYPE_2__* @elf_elfheader(i32*) #1

declare dso_local i32 @bfd_map_over_sections(i32*, i32, i32*) #1

declare dso_local i64 @strcmp(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
