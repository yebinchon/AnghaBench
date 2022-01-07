; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_init.c__dwarf_consumer_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_init.c__dwarf_consumer_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32, i32, i32, i32, i32, i32 }

@DW_DLC_READ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @_dwarf_consumer_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_dwarf_consumer_deinit(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %3 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %4 = icmp ne %struct.TYPE_9__* %3, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @DW_DLC_READ, align 8
  %10 = icmp eq i64 %8, %9
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i1 [ false, %1 ], [ %10, %5 ]
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %16 = call i32 @_dwarf_info_cleanup(%struct.TYPE_9__* %15)
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %18 = call i32 @_dwarf_ranges_cleanup(%struct.TYPE_9__* %17)
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %20 = call i32 @_dwarf_frame_cleanup(%struct.TYPE_9__* %19)
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %22 = call i32 @_dwarf_arange_cleanup(%struct.TYPE_9__* %21)
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %24 = call i32 @_dwarf_macinfo_cleanup(%struct.TYPE_9__* %23)
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %26 = call i32 @_dwarf_strtab_cleanup(%struct.TYPE_9__* %25)
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 7
  %29 = call i32 @_dwarf_nametbl_cleanup(i32* %28)
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 6
  %32 = call i32 @_dwarf_nametbl_cleanup(i32* %31)
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 5
  %35 = call i32 @_dwarf_nametbl_cleanup(i32* %34)
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 4
  %38 = call i32 @_dwarf_nametbl_cleanup(i32* %37)
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 3
  %41 = call i32 @_dwarf_nametbl_cleanup(i32* %40)
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 2
  %44 = call i32 @_dwarf_nametbl_cleanup(i32* %43)
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @free(i32 %47)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @_dwarf_info_cleanup(%struct.TYPE_9__*) #1

declare dso_local i32 @_dwarf_ranges_cleanup(%struct.TYPE_9__*) #1

declare dso_local i32 @_dwarf_frame_cleanup(%struct.TYPE_9__*) #1

declare dso_local i32 @_dwarf_arange_cleanup(%struct.TYPE_9__*) #1

declare dso_local i32 @_dwarf_macinfo_cleanup(%struct.TYPE_9__*) #1

declare dso_local i32 @_dwarf_strtab_cleanup(%struct.TYPE_9__*) #1

declare dso_local i32 @_dwarf_nametbl_cleanup(i32*) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
