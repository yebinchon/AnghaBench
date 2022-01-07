; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-sparc.c__bfd_sparc_elf_link_hash_table_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-sparc.c__bfd_sparc_elf_link_hash_table_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_hash_table = type { i32 }
%struct._bfd_sparc_elf_link_hash_table = type { i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.bfd_link_hash_table }

@sparc_put_word_64 = common dso_local global i32 0, align 4
@sparc_elf_r_info_64 = common dso_local global i32 0, align 4
@sparc_elf_r_symndx_64 = common dso_local global i32 0, align 4
@R_SPARC_TLS_DTPOFF64 = common dso_local global i32 0, align 4
@R_SPARC_TLS_DTPMOD64 = common dso_local global i32 0, align 4
@R_SPARC_TLS_TPOFF64 = common dso_local global i32 0, align 4
@ELF64_DYNAMIC_INTERPRETER = common dso_local global i32 0, align 4
@sparc_put_word_32 = common dso_local global i32 0, align 4
@sparc_elf_r_info_32 = common dso_local global i32 0, align 4
@sparc_elf_r_symndx_32 = common dso_local global i32 0, align 4
@R_SPARC_TLS_DTPOFF32 = common dso_local global i32 0, align 4
@R_SPARC_TLS_DTPMOD32 = common dso_local global i32 0, align 4
@R_SPARC_TLS_TPOFF32 = common dso_local global i32 0, align 4
@ELF32_DYNAMIC_INTERPRETER = common dso_local global i32 0, align 4
@link_hash_newfunc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bfd_link_hash_table* @_bfd_sparc_elf_link_hash_table_create(i32* %0) #0 {
  %2 = alloca %struct.bfd_link_hash_table*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct._bfd_sparc_elf_link_hash_table*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 52, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @bfd_zmalloc(i32 %6)
  %8 = inttoptr i64 %7 to %struct._bfd_sparc_elf_link_hash_table*
  store %struct._bfd_sparc_elf_link_hash_table* %8, %struct._bfd_sparc_elf_link_hash_table** %4, align 8
  %9 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %4, align 8
  %10 = icmp eq %struct._bfd_sparc_elf_link_hash_table* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.bfd_link_hash_table* null, %struct.bfd_link_hash_table** %2, align 8
  br label %94

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = call i64 @ABI_64_P(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %48

16:                                               ; preds = %12
  %17 = load i32, i32* @sparc_put_word_64, align 4
  %18 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %4, align 8
  %19 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %18, i32 0, i32 12
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @sparc_elf_r_info_64, align 4
  %21 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %4, align 8
  %22 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %21, i32 0, i32 11
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @sparc_elf_r_symndx_64, align 4
  %24 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %4, align 8
  %25 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %24, i32 0, i32 10
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @R_SPARC_TLS_DTPOFF64, align 4
  %27 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %4, align 8
  %28 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %27, i32 0, i32 9
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @R_SPARC_TLS_DTPMOD64, align 4
  %30 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %4, align 8
  %31 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %30, i32 0, i32 8
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @R_SPARC_TLS_TPOFF64, align 4
  %33 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %4, align 8
  %34 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %33, i32 0, i32 7
  store i32 %32, i32* %34, align 4
  %35 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %4, align 8
  %36 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %35, i32 0, i32 0
  store i32 3, i32* %36, align 4
  %37 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %4, align 8
  %38 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %37, i32 0, i32 1
  store i32 4, i32* %38, align 4
  %39 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %4, align 8
  %40 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %39, i32 0, i32 2
  store i32 8, i32* %40, align 4
  %41 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %4, align 8
  %42 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %41, i32 0, i32 3
  store i32 4, i32* %42, align 4
  %43 = load i32, i32* @ELF64_DYNAMIC_INTERPRETER, align 4
  %44 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %4, align 8
  %45 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %44, i32 0, i32 6
  store i32 %43, i32* %45, align 4
  %46 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %4, align 8
  %47 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %46, i32 0, i32 4
  store i32 4, i32* %47, align 4
  br label %80

48:                                               ; preds = %12
  %49 = load i32, i32* @sparc_put_word_32, align 4
  %50 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %4, align 8
  %51 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %50, i32 0, i32 12
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @sparc_elf_r_info_32, align 4
  %53 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %4, align 8
  %54 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %53, i32 0, i32 11
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @sparc_elf_r_symndx_32, align 4
  %56 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %4, align 8
  %57 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %56, i32 0, i32 10
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @R_SPARC_TLS_DTPOFF32, align 4
  %59 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %4, align 8
  %60 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %59, i32 0, i32 9
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @R_SPARC_TLS_DTPMOD32, align 4
  %62 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %4, align 8
  %63 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %62, i32 0, i32 8
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @R_SPARC_TLS_TPOFF32, align 4
  %65 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %4, align 8
  %66 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %65, i32 0, i32 7
  store i32 %64, i32* %66, align 4
  %67 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %4, align 8
  %68 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %67, i32 0, i32 0
  store i32 2, i32* %68, align 4
  %69 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %4, align 8
  %70 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %69, i32 0, i32 1
  store i32 3, i32* %70, align 4
  %71 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %4, align 8
  %72 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %71, i32 0, i32 2
  store i32 4, i32* %72, align 4
  %73 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %4, align 8
  %74 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %73, i32 0, i32 3
  store i32 4, i32* %74, align 4
  %75 = load i32, i32* @ELF32_DYNAMIC_INTERPRETER, align 4
  %76 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %4, align 8
  %77 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %76, i32 0, i32 6
  store i32 %75, i32* %77, align 4
  %78 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %4, align 8
  %79 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %78, i32 0, i32 4
  store i32 4, i32* %79, align 4
  br label %80

80:                                               ; preds = %48, %16
  %81 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %4, align 8
  %82 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %81, i32 0, i32 5
  %83 = load i32*, i32** %3, align 8
  %84 = load i32, i32* @link_hash_newfunc, align 4
  %85 = call i32 @_bfd_elf_link_hash_table_init(%struct.TYPE_2__* %82, i32* %83, i32 %84, i32 4)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %80
  %88 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %4, align 8
  %89 = call i32 @free(%struct._bfd_sparc_elf_link_hash_table* %88)
  store %struct.bfd_link_hash_table* null, %struct.bfd_link_hash_table** %2, align 8
  br label %94

90:                                               ; preds = %80
  %91 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %4, align 8
  %92 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %91, i32 0, i32 5
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  store %struct.bfd_link_hash_table* %93, %struct.bfd_link_hash_table** %2, align 8
  br label %94

94:                                               ; preds = %90, %87, %11
  %95 = load %struct.bfd_link_hash_table*, %struct.bfd_link_hash_table** %2, align 8
  ret %struct.bfd_link_hash_table* %95
}

declare dso_local i64 @bfd_zmalloc(i32) #1

declare dso_local i64 @ABI_64_P(i32*) #1

declare dso_local i32 @_bfd_elf_link_hash_table_init(%struct.TYPE_2__*, i32*, i32, i32) #1

declare dso_local i32 @free(%struct._bfd_sparc_elf_link_hash_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
