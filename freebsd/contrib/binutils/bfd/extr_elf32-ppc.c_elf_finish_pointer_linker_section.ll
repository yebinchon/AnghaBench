; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-ppc.c_elf_finish_pointer_linker_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-ppc.c_elf_finish_pointer_linker_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i8*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i64, i32 }
%struct.elf_link_hash_entry = type { i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.ppc_elf_link_hash_entry = type { %struct.TYPE_15__*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_14__*, %struct.elf_link_hash_entry*, i32, %struct.TYPE_16__*)* @elf_finish_pointer_linker_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf_finish_pointer_linker_section(i32* %0, %struct.TYPE_14__* %1, %struct.elf_link_hash_entry* %2, i32 %3, %struct.TYPE_16__* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.elf_link_hash_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca %struct.ppc_elf_link_hash_entry*, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store %struct.elf_link_hash_entry* %2, %struct.elf_link_hash_entry** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_16__* %4, %struct.TYPE_16__** %10, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %15 = icmp ne %struct.TYPE_14__* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @BFD_ASSERT(i32 %16)
  %18 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %8, align 8
  %19 = icmp ne %struct.elf_link_hash_entry* %18, null
  br i1 %19, label %20, label %31

20:                                               ; preds = %5
  %21 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %8, align 8
  %22 = bitcast %struct.elf_link_hash_entry* %21 to %struct.ppc_elf_link_hash_entry*
  store %struct.ppc_elf_link_hash_entry* %22, %struct.ppc_elf_link_hash_entry** %12, align 8
  %23 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %12, align 8
  %24 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @BFD_ASSERT(i32 %26)
  %28 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %12, align 8
  %29 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %28, i32 0, i32 0
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %29, align 8
  store %struct.TYPE_15__* %30, %struct.TYPE_15__** %11, align 8
  br label %46

31:                                               ; preds = %5
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @ELF32_R_SYM(i32 %34)
  store i64 %35, i64* %13, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = call %struct.TYPE_15__** @elf_local_ptr_offsets(i32* %36)
  %38 = icmp ne %struct.TYPE_15__** %37, null
  %39 = zext i1 %38 to i32
  %40 = call i32 @BFD_ASSERT(i32 %39)
  %41 = load i32*, i32** %6, align 8
  %42 = call %struct.TYPE_15__** @elf_local_ptr_offsets(i32* %41)
  %43 = load i64, i64* %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %42, i64 %43
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %44, align 8
  store %struct.TYPE_15__* %45, %struct.TYPE_15__** %11, align 8
  br label %46

46:                                               ; preds = %31, %20
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %52 = call %struct.TYPE_15__* @elf_find_pointer_linker_section(%struct.TYPE_15__* %47, i32 %50, %struct.TYPE_14__* %51)
  store %struct.TYPE_15__* %52, %struct.TYPE_15__** %11, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %54 = icmp ne %struct.TYPE_15__* %53, null
  %55 = zext i1 %54 to i32
  %56 = call i32 @BFD_ASSERT(i32 %55)
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %88

62:                                               ; preds = %46
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %68, %71
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %77, %81
  %83 = call i32 @bfd_put_32(i32 %67, i32 %72, i64 %82)
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %62, %46
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %93, %96
  %98 = sub nsw i32 %97, 1
  %99 = sub nsw i32 %98, 32768
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = sub nsw i32 %100, %103
  ret i32 %104
}

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i64 @ELF32_R_SYM(i32) #1

declare dso_local %struct.TYPE_15__** @elf_local_ptr_offsets(i32*) #1

declare dso_local %struct.TYPE_15__* @elf_find_pointer_linker_section(%struct.TYPE_15__*, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @bfd_put_32(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
