; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-mep.c_mep_elf_check_relocs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-mep.c_mep_elf_check_relocs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.elf_link_hash_entry = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }

@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.bfd_link_info*, %struct.TYPE_7__*, %struct.TYPE_9__*)* @mep_elf_check_relocs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mep_elf_check_relocs(i32* %0, %struct.bfd_link_info* %1, %struct.TYPE_7__* %2, %struct.TYPE_9__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.bfd_link_info*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.elf_link_hash_entry**, align 8
  %12 = alloca %struct.elf_link_hash_entry**, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca %struct.elf_link_hash_entry*, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %7, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %9, align 8
  %17 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %18 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @TRUE, align 4
  store i32 %22, i32* %5, align 4
  br label %84

23:                                               ; preds = %4
  %24 = load i32*, i32** %6, align 8
  %25 = call %struct.TYPE_10__* @elf_tdata(i32* %24)
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %10, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = call %struct.elf_link_hash_entry** @elf_sym_hashes(i32* %27)
  store %struct.elf_link_hash_entry** %28, %struct.elf_link_hash_entry*** %11, align 8
  %29 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %11, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = udiv i64 %33, 4
  %35 = getelementptr inbounds %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %29, i64 %34
  store %struct.elf_link_hash_entry** %35, %struct.elf_link_hash_entry*** %12, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @elf_bad_symtab(i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %23
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %12, align 8
  %44 = sub i64 0, %42
  %45 = getelementptr inbounds %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %43, i64 %44
  store %struct.elf_link_hash_entry** %45, %struct.elf_link_hash_entry*** %12, align 8
  br label %46

46:                                               ; preds = %39, %23
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i64 %51
  store %struct.TYPE_9__* %52, %struct.TYPE_9__** %14, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_9__* %53, %struct.TYPE_9__** %13, align 8
  br label %54

54:                                               ; preds = %79, %46
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %57 = icmp ult %struct.TYPE_9__* %55, %56
  br i1 %57, label %58, label %82

58:                                               ; preds = %54
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @ELF32_R_SYM(i32 %61)
  store i64 %62, i64* %16, align 8
  %63 = load i64, i64* %16, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ult i64 %63, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %58
  store %struct.elf_link_hash_entry* null, %struct.elf_link_hash_entry** %15, align 8
  br label %78

69:                                               ; preds = %58
  %70 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %11, align 8
  %71 = load i64, i64* %16, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = sub i64 %71, %74
  %76 = getelementptr inbounds %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %70, i64 %75
  %77 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %76, align 8
  store %struct.elf_link_hash_entry* %77, %struct.elf_link_hash_entry** %15, align 8
  br label %78

78:                                               ; preds = %69, %68
  br label %79

79:                                               ; preds = %78
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 1
  store %struct.TYPE_9__* %81, %struct.TYPE_9__** %13, align 8
  br label %54

82:                                               ; preds = %54
  %83 = load i32, i32* @TRUE, align 4
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %82, %21
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local %struct.TYPE_10__* @elf_tdata(i32*) #1

declare dso_local %struct.elf_link_hash_entry** @elf_sym_hashes(i32*) #1

declare dso_local i32 @elf_bad_symtab(i32*) #1

declare dso_local i64 @ELF32_R_SYM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
