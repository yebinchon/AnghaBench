; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_cofflink.c__bfd_coff_link_hash_table_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_cofflink.c__bfd_coff_link_hash_table_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_hash_table = type { i32 }
%struct.coff_link_hash_table = type { %struct.bfd_link_hash_table }

@_bfd_coff_link_hash_newfunc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bfd_link_hash_table* @_bfd_coff_link_hash_table_create(i32* %0) #0 {
  %2 = alloca %struct.bfd_link_hash_table*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.coff_link_hash_table*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 4, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.coff_link_hash_table* @bfd_malloc(i32 %6)
  store %struct.coff_link_hash_table* %7, %struct.coff_link_hash_table** %4, align 8
  %8 = load %struct.coff_link_hash_table*, %struct.coff_link_hash_table** %4, align 8
  %9 = icmp eq %struct.coff_link_hash_table* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.bfd_link_hash_table* null, %struct.bfd_link_hash_table** %2, align 8
  br label %23

11:                                               ; preds = %1
  %12 = load %struct.coff_link_hash_table*, %struct.coff_link_hash_table** %4, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* @_bfd_coff_link_hash_newfunc, align 4
  %15 = call i32 @_bfd_coff_link_hash_table_init(%struct.coff_link_hash_table* %12, i32* %13, i32 %14, i32 4)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = load %struct.coff_link_hash_table*, %struct.coff_link_hash_table** %4, align 8
  %19 = call i32 @free(%struct.coff_link_hash_table* %18)
  store %struct.bfd_link_hash_table* null, %struct.bfd_link_hash_table** %2, align 8
  br label %23

20:                                               ; preds = %11
  %21 = load %struct.coff_link_hash_table*, %struct.coff_link_hash_table** %4, align 8
  %22 = getelementptr inbounds %struct.coff_link_hash_table, %struct.coff_link_hash_table* %21, i32 0, i32 0
  store %struct.bfd_link_hash_table* %22, %struct.bfd_link_hash_table** %2, align 8
  br label %23

23:                                               ; preds = %20, %17, %10
  %24 = load %struct.bfd_link_hash_table*, %struct.bfd_link_hash_table** %2, align 8
  ret %struct.bfd_link_hash_table* %24
}

declare dso_local %struct.coff_link_hash_table* @bfd_malloc(i32) #1

declare dso_local i32 @_bfd_coff_link_hash_table_init(%struct.coff_link_hash_table*, i32*, i32, i32) #1

declare dso_local i32 @free(%struct.coff_link_hash_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
