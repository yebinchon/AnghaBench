; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_find.c_swap_dirty_idx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_find.c_swap_dirty_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_lprops = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubifs_lprops**, %struct.ubifs_lprops**, i32)* @swap_dirty_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swap_dirty_idx(%struct.ubifs_lprops** %0, %struct.ubifs_lprops** %1, i32 %2) #0 {
  %4 = alloca %struct.ubifs_lprops**, align 8
  %5 = alloca %struct.ubifs_lprops**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubifs_lprops*, align 8
  store %struct.ubifs_lprops** %0, %struct.ubifs_lprops*** %4, align 8
  store %struct.ubifs_lprops** %1, %struct.ubifs_lprops*** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ubifs_lprops**, %struct.ubifs_lprops*** %4, align 8
  %9 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %8, align 8
  store %struct.ubifs_lprops* %9, %struct.ubifs_lprops** %7, align 8
  %10 = load %struct.ubifs_lprops**, %struct.ubifs_lprops*** %5, align 8
  %11 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %10, align 8
  %12 = load %struct.ubifs_lprops**, %struct.ubifs_lprops*** %4, align 8
  store %struct.ubifs_lprops* %11, %struct.ubifs_lprops** %12, align 8
  %13 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %7, align 8
  %14 = load %struct.ubifs_lprops**, %struct.ubifs_lprops*** %5, align 8
  store %struct.ubifs_lprops* %13, %struct.ubifs_lprops** %14, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
