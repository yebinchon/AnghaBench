; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objdump.c_dump_dwarf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objdump.c_dump_dwarf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@HAS_RELOC = common dso_local global i32 0, align 4
@EXEC_P = common dso_local global i32 0, align 4
@DYNAMIC = common dso_local global i32 0, align 4
@is_relocatable = common dso_local global i32 0, align 4
@eh_addr_size = common dso_local global i32 0, align 4
@byte_get_big_endian = common dso_local global i32 0, align 4
@byte_get = common dso_local global i32 0, align 4
@byte_get_little_endian = common dso_local global i32 0, align 4
@dump_dwarf_section = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @dump_dwarf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_dwarf(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %3 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @HAS_RELOC, align 4
  %7 = load i32, i32* @EXEC_P, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @DYNAMIC, align 4
  %10 = or i32 %8, %9
  %11 = and i32 %5, %10
  %12 = load i32, i32* @HAS_RELOC, align 4
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i32
  store i32 %14, i32* @is_relocatable, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %16 = call i32 @bfd_get_arch_size(%struct.TYPE_8__* %15)
  %17 = icmp eq i32 %16, 64
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 8, i32 4
  store i32 %19, i32* @eh_addr_size, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %21 = call i64 @bfd_big_endian(%struct.TYPE_8__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* @byte_get_big_endian, align 4
  store i32 %24, i32* @byte_get, align 4
  br label %34

25:                                               ; preds = %1
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %27 = call i64 @bfd_little_endian(%struct.TYPE_8__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @byte_get_little_endian, align 4
  store i32 %30, i32* @byte_get, align 4
  br label %33

31:                                               ; preds = %25
  %32 = call i32 (...) @abort() #3
  unreachable

33:                                               ; preds = %29
  br label %34

34:                                               ; preds = %33, %23
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %36 = call i32 @check_mach_o_dwarf(%struct.TYPE_8__* %35)
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %38 = load i32, i32* @dump_dwarf_section, align 4
  %39 = call i32 @bfd_map_over_sections(%struct.TYPE_8__* %37, i32 %38, i32* null)
  %40 = call i32 (...) @free_debug_memory()
  ret void
}

declare dso_local i32 @bfd_get_arch_size(%struct.TYPE_8__*) #1

declare dso_local i64 @bfd_big_endian(%struct.TYPE_8__*) #1

declare dso_local i64 @bfd_little_endian(%struct.TYPE_8__*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @check_mach_o_dwarf(%struct.TYPE_8__*) #1

declare dso_local i32 @bfd_map_over_sections(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @free_debug_memory(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
