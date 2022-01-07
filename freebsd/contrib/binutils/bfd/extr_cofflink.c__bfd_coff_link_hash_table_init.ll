; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_cofflink.c__bfd_coff_link_hash_table_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_cofflink.c__bfd_coff_link_hash_table_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coff_link_hash_table = type { i32, i32 }
%struct.bfd_hash_entry = type opaque
%struct.bfd_hash_table = type opaque
%struct.bfd_hash_entry.0 = type opaque
%struct.bfd_hash_table.1 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_coff_link_hash_table_init(%struct.coff_link_hash_table* %0, i32* %1, %struct.bfd_hash_entry* (%struct.bfd_hash_entry*, %struct.bfd_hash_table*, i8*)* %2, i32 %3) #0 {
  %5 = alloca %struct.coff_link_hash_table*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.bfd_hash_entry* (%struct.bfd_hash_entry*, %struct.bfd_hash_table*, i8*)*, align 8
  %8 = alloca i32, align 4
  store %struct.coff_link_hash_table* %0, %struct.coff_link_hash_table** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.bfd_hash_entry* (%struct.bfd_hash_entry*, %struct.bfd_hash_table*, i8*)* %2, %struct.bfd_hash_entry* (%struct.bfd_hash_entry*, %struct.bfd_hash_table*, i8*)** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.coff_link_hash_table*, %struct.coff_link_hash_table** %5, align 8
  %10 = getelementptr inbounds %struct.coff_link_hash_table, %struct.coff_link_hash_table* %9, i32 0, i32 1
  %11 = call i32 @memset(i32* %10, i32 0, i32 4)
  %12 = load %struct.coff_link_hash_table*, %struct.coff_link_hash_table** %5, align 8
  %13 = getelementptr inbounds %struct.coff_link_hash_table, %struct.coff_link_hash_table* %12, i32 0, i32 0
  %14 = load i32*, i32** %6, align 8
  %15 = load %struct.bfd_hash_entry* (%struct.bfd_hash_entry*, %struct.bfd_hash_table*, i8*)*, %struct.bfd_hash_entry* (%struct.bfd_hash_entry*, %struct.bfd_hash_table*, i8*)** %7, align 8
  %16 = bitcast %struct.bfd_hash_entry* (%struct.bfd_hash_entry*, %struct.bfd_hash_table*, i8*)* %15 to %struct.bfd_hash_entry.0* (%struct.bfd_hash_entry.0*, %struct.bfd_hash_table.1*, i8*)*
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @_bfd_link_hash_table_init(i32* %13, i32* %14, %struct.bfd_hash_entry.0* (%struct.bfd_hash_entry.0*, %struct.bfd_hash_table.1*, i8*)* %16, i32 %17)
  ret i32 %18
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @_bfd_link_hash_table_init(i32*, i32*, %struct.bfd_hash_entry.0* (%struct.bfd_hash_entry.0*, %struct.bfd_hash_table.1*, i8*)*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
