; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_elf32_arm_link_hash_table_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_elf32_arm_link_hash_table_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_hash_table = type { i32 }
%struct.elf32_arm_link_hash_table = type { i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32*, %struct.TYPE_4__, i64, i64, i64, i64, i32, i64, i64, i32*, i64, i64, i32, i64, i64, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_6__ = type { %struct.bfd_link_hash_table }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32* }

@elf32_arm_link_hash_newfunc = common dso_local global i32 0, align 4
@BFD_ARM_VFP11_FIX_NONE = common dso_local global i32 0, align 4
@R_ARM_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bfd_link_hash_table* (i32*)* @elf32_arm_link_hash_table_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bfd_link_hash_table* @elf32_arm_link_hash_table_create(i32* %0) #0 {
  %2 = alloca %struct.bfd_link_hash_table*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.elf32_arm_link_hash_table*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 208, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.elf32_arm_link_hash_table* @bfd_malloc(i32 %6)
  store %struct.elf32_arm_link_hash_table* %7, %struct.elf32_arm_link_hash_table** %4, align 8
  %8 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %4, align 8
  %9 = icmp eq %struct.elf32_arm_link_hash_table* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.bfd_link_hash_table* null, %struct.bfd_link_hash_table** %2, align 8
  br label %84

11:                                               ; preds = %1
  %12 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %4, align 8
  %13 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %12, i32 0, i32 3
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* @elf32_arm_link_hash_newfunc, align 4
  %16 = call i32 @_bfd_elf_link_hash_table_init(%struct.TYPE_6__* %13, i32* %14, i32 %15, i32 4)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %11
  %19 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %4, align 8
  %20 = call i32 @free(%struct.elf32_arm_link_hash_table* %19)
  store %struct.bfd_link_hash_table* null, %struct.bfd_link_hash_table** %2, align 8
  br label %84

21:                                               ; preds = %11
  %22 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %4, align 8
  %23 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %22, i32 0, i32 27
  store i32* null, i32** %23, align 8
  %24 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %4, align 8
  %25 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %24, i32 0, i32 26
  store i32* null, i32** %25, align 8
  %26 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %4, align 8
  %27 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %26, i32 0, i32 25
  store i32* null, i32** %27, align 8
  %28 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %4, align 8
  %29 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %28, i32 0, i32 24
  store i32* null, i32** %29, align 8
  %30 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %4, align 8
  %31 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %30, i32 0, i32 23
  store i32* null, i32** %31, align 8
  %32 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %4, align 8
  %33 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %32, i32 0, i32 22
  store i32* null, i32** %33, align 8
  %34 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %4, align 8
  %35 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %34, i32 0, i32 21
  store i32* null, i32** %35, align 8
  %36 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %4, align 8
  %37 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %36, i32 0, i32 20
  store i32* null, i32** %37, align 8
  %38 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %4, align 8
  %39 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %38, i32 0, i32 19
  store i64 0, i64* %39, align 8
  %40 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %4, align 8
  %41 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %40, i32 0, i32 18
  store i64 0, i64* %41, align 8
  %42 = load i32, i32* @BFD_ARM_VFP11_FIX_NONE, align 4
  %43 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %4, align 8
  %44 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %43, i32 0, i32 17
  store i32 %42, i32* %44, align 8
  %45 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %4, align 8
  %46 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %45, i32 0, i32 16
  store i64 0, i64* %46, align 8
  %47 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %4, align 8
  %48 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %47, i32 0, i32 15
  store i64 0, i64* %48, align 8
  %49 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %4, align 8
  %50 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %49, i32 0, i32 14
  store i32* null, i32** %50, align 8
  %51 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %4, align 8
  %52 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %51, i32 0, i32 13
  store i64 0, i64* %52, align 8
  %53 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %4, align 8
  %54 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %53, i32 0, i32 12
  store i64 0, i64* %54, align 8
  %55 = load i32, i32* @R_ARM_NONE, align 4
  %56 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %4, align 8
  %57 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %56, i32 0, i32 11
  store i32 %55, i32* %57, align 8
  %58 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %4, align 8
  %59 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %58, i32 0, i32 0
  store i32 20, i32* %59, align 8
  %60 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %4, align 8
  %61 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %60, i32 0, i32 1
  store i32 12, i32* %61, align 4
  %62 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %4, align 8
  %63 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %62, i32 0, i32 10
  store i64 0, i64* %63, align 8
  %64 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %4, align 8
  %65 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %64, i32 0, i32 9
  store i64 0, i64* %65, align 8
  %66 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %4, align 8
  %67 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %66, i32 0, i32 8
  store i64 0, i64* %67, align 8
  %68 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %4, align 8
  %69 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %68, i32 0, i32 7
  store i64 0, i64* %69, align 8
  %70 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %4, align 8
  %71 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %70, i32 0, i32 2
  store i32 1, i32* %71, align 8
  %72 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %4, align 8
  %73 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %72, i32 0, i32 6
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i32* null, i32** %74, align 8
  %75 = load i32*, i32** %3, align 8
  %76 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %4, align 8
  %77 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %76, i32 0, i32 5
  store i32* %75, i32** %77, align 8
  %78 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %4, align 8
  %79 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  store i64 0, i64* %80, align 8
  %81 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %4, align 8
  %82 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  store %struct.bfd_link_hash_table* %83, %struct.bfd_link_hash_table** %2, align 8
  br label %84

84:                                               ; preds = %21, %18, %10
  %85 = load %struct.bfd_link_hash_table*, %struct.bfd_link_hash_table** %2, align 8
  ret %struct.bfd_link_hash_table* %85
}

declare dso_local %struct.elf32_arm_link_hash_table* @bfd_malloc(i32) #1

declare dso_local i32 @_bfd_elf_link_hash_table_init(%struct.TYPE_6__*, i32*, i32, i32) #1

declare dso_local i32 @free(%struct.elf32_arm_link_hash_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
