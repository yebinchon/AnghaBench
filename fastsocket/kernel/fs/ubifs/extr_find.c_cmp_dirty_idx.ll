; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_find.c_cmp_dirty_idx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_find.c_cmp_dirty_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_lprops = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_lprops**, %struct.ubifs_lprops**)* @cmp_dirty_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_dirty_idx(%struct.ubifs_lprops** %0, %struct.ubifs_lprops** %1) #0 {
  %3 = alloca %struct.ubifs_lprops**, align 8
  %4 = alloca %struct.ubifs_lprops**, align 8
  %5 = alloca %struct.ubifs_lprops*, align 8
  %6 = alloca %struct.ubifs_lprops*, align 8
  store %struct.ubifs_lprops** %0, %struct.ubifs_lprops*** %3, align 8
  store %struct.ubifs_lprops** %1, %struct.ubifs_lprops*** %4, align 8
  %7 = load %struct.ubifs_lprops**, %struct.ubifs_lprops*** %3, align 8
  %8 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %7, align 8
  store %struct.ubifs_lprops* %8, %struct.ubifs_lprops** %5, align 8
  %9 = load %struct.ubifs_lprops**, %struct.ubifs_lprops*** %4, align 8
  %10 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %9, align 8
  store %struct.ubifs_lprops* %10, %struct.ubifs_lprops** %6, align 8
  %11 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %12 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %15 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %13, %16
  %18 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %6, align 8
  %19 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %17, %20
  %22 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %6, align 8
  %23 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %21, %24
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
