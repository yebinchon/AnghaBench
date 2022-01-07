; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_init.c__dwarf_producer_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_init.c__dwarf_producer_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, i32, i32, i32, i32 }

@DW_DLC_WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @_dwarf_producer_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_dwarf_producer_deinit(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %3 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %4 = icmp ne %struct.TYPE_13__* %3, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @DW_DLC_WRITE, align 8
  %10 = icmp eq i64 %8, %9
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i1 [ false, %1 ], [ %10, %5 ]
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %16 = call i32 @_dwarf_info_pro_cleanup(%struct.TYPE_13__* %15)
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %18 = call i32 @_dwarf_die_pro_cleanup(%struct.TYPE_13__* %17)
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %20 = call i32 @_dwarf_expr_cleanup(%struct.TYPE_13__* %19)
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %22 = call i32 @_dwarf_lineno_pro_cleanup(%struct.TYPE_13__* %21)
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %24 = call i32 @_dwarf_frame_pro_cleanup(%struct.TYPE_13__* %23)
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %26 = call i32 @_dwarf_arange_pro_cleanup(%struct.TYPE_13__* %25)
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %28 = call i32 @_dwarf_macinfo_pro_cleanup(%struct.TYPE_13__* %27)
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %30 = call i32 @_dwarf_strtab_cleanup(%struct.TYPE_13__* %29)
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 5
  %33 = call i32 @_dwarf_nametbl_pro_cleanup(i32* %32)
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 4
  %36 = call i32 @_dwarf_nametbl_pro_cleanup(i32* %35)
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 3
  %39 = call i32 @_dwarf_nametbl_pro_cleanup(i32* %38)
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 2
  %42 = call i32 @_dwarf_nametbl_pro_cleanup(i32* %41)
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 1
  %45 = call i32 @_dwarf_nametbl_pro_cleanup(i32* %44)
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %47 = call i32 @_dwarf_section_cleanup(%struct.TYPE_13__* %46)
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %49 = call i32 @_dwarf_reloc_cleanup(%struct.TYPE_13__* %48)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @_dwarf_info_pro_cleanup(%struct.TYPE_13__*) #1

declare dso_local i32 @_dwarf_die_pro_cleanup(%struct.TYPE_13__*) #1

declare dso_local i32 @_dwarf_expr_cleanup(%struct.TYPE_13__*) #1

declare dso_local i32 @_dwarf_lineno_pro_cleanup(%struct.TYPE_13__*) #1

declare dso_local i32 @_dwarf_frame_pro_cleanup(%struct.TYPE_13__*) #1

declare dso_local i32 @_dwarf_arange_pro_cleanup(%struct.TYPE_13__*) #1

declare dso_local i32 @_dwarf_macinfo_pro_cleanup(%struct.TYPE_13__*) #1

declare dso_local i32 @_dwarf_strtab_cleanup(%struct.TYPE_13__*) #1

declare dso_local i32 @_dwarf_nametbl_pro_cleanup(i32*) #1

declare dso_local i32 @_dwarf_section_cleanup(%struct.TYPE_13__*) #1

declare dso_local i32 @_dwarf_reloc_cleanup(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
