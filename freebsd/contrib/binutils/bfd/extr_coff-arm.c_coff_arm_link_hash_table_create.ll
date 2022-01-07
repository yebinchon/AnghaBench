; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coff-arm.c_coff_arm_link_hash_table_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coff-arm.c_coff_arm_link_hash_table_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_hash_table = type { i32 }
%struct.coff_arm_link_hash_table = type { %struct.TYPE_2__, i32*, i64, i64 }
%struct.TYPE_2__ = type { %struct.bfd_link_hash_table }

@_bfd_coff_link_hash_newfunc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bfd_link_hash_table* (i32*)* @coff_arm_link_hash_table_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bfd_link_hash_table* @coff_arm_link_hash_table_create(i32* %0) #0 {
  %2 = alloca %struct.bfd_link_hash_table*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.coff_arm_link_hash_table*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 32, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.coff_arm_link_hash_table* @bfd_malloc(i32 %6)
  store %struct.coff_arm_link_hash_table* %7, %struct.coff_arm_link_hash_table** %4, align 8
  %8 = load %struct.coff_arm_link_hash_table*, %struct.coff_arm_link_hash_table** %4, align 8
  %9 = icmp eq %struct.coff_arm_link_hash_table* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.bfd_link_hash_table* null, %struct.bfd_link_hash_table** %2, align 8
  br label %31

11:                                               ; preds = %1
  %12 = load %struct.coff_arm_link_hash_table*, %struct.coff_arm_link_hash_table** %4, align 8
  %13 = getelementptr inbounds %struct.coff_arm_link_hash_table, %struct.coff_arm_link_hash_table* %12, i32 0, i32 0
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* @_bfd_coff_link_hash_newfunc, align 4
  %16 = call i32 @_bfd_coff_link_hash_table_init(%struct.TYPE_2__* %13, i32* %14, i32 %15, i32 4)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %11
  %19 = load %struct.coff_arm_link_hash_table*, %struct.coff_arm_link_hash_table** %4, align 8
  %20 = call i32 @free(%struct.coff_arm_link_hash_table* %19)
  store %struct.bfd_link_hash_table* null, %struct.bfd_link_hash_table** %2, align 8
  br label %31

21:                                               ; preds = %11
  %22 = load %struct.coff_arm_link_hash_table*, %struct.coff_arm_link_hash_table** %4, align 8
  %23 = getelementptr inbounds %struct.coff_arm_link_hash_table, %struct.coff_arm_link_hash_table* %22, i32 0, i32 3
  store i64 0, i64* %23, align 8
  %24 = load %struct.coff_arm_link_hash_table*, %struct.coff_arm_link_hash_table** %4, align 8
  %25 = getelementptr inbounds %struct.coff_arm_link_hash_table, %struct.coff_arm_link_hash_table* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load %struct.coff_arm_link_hash_table*, %struct.coff_arm_link_hash_table** %4, align 8
  %27 = getelementptr inbounds %struct.coff_arm_link_hash_table, %struct.coff_arm_link_hash_table* %26, i32 0, i32 1
  store i32* null, i32** %27, align 8
  %28 = load %struct.coff_arm_link_hash_table*, %struct.coff_arm_link_hash_table** %4, align 8
  %29 = getelementptr inbounds %struct.coff_arm_link_hash_table, %struct.coff_arm_link_hash_table* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store %struct.bfd_link_hash_table* %30, %struct.bfd_link_hash_table** %2, align 8
  br label %31

31:                                               ; preds = %21, %18, %10
  %32 = load %struct.bfd_link_hash_table*, %struct.bfd_link_hash_table** %2, align 8
  ret %struct.bfd_link_hash_table* %32
}

declare dso_local %struct.coff_arm_link_hash_table* @bfd_malloc(i32) #1

declare dso_local i32 @_bfd_coff_link_hash_table_init(%struct.TYPE_2__*, i32*, i32, i32) #1

declare dso_local i32 @free(%struct.coff_arm_link_hash_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
