; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_elf_init.c__dwarf_elf_apply_rela_reloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_elf_init.c__dwarf_elf_apply_rela_reloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32 }
%struct.TYPE_5__ = type { i64 }

@ELFDATA2MSB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i64, i32*, i32*, i32)* @_dwarf_elf_apply_rela_reloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_dwarf_elf_apply_rela_reloc(i32 %0, i8* %1, i64 %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_6__, align 8
  %15 = alloca %struct.TYPE_5__, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %19, align 4
  br label %20

20:                                               ; preds = %77, %54, %46, %37, %6
  %21 = load i32*, i32** %10, align 8
  %22 = load i32, i32* %19, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %19, align 4
  %24 = call i32* @gelf_getrela(i32* %21, i32 %22, %struct.TYPE_6__* %14)
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %78

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @GELF_R_SYM(i32 %28)
  store i64 %29, i64* %16, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @GELF_R_TYPE(i32 %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32*, i32** %11, align 8
  %34 = load i64, i64* %16, align 8
  %35 = call i32* @gelf_getsym(i32* %33, i64 %34, %struct.TYPE_5__* %15)
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  br label %20

38:                                               ; preds = %26
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %17, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %13, align 4
  %43 = call i32 @_dwarf_get_reloc_size(i32 %41, i32 %42)
  store i32 %43, i32* %18, align 4
  %44 = load i32, i32* %18, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %20

47:                                               ; preds = %38
  %48 = load i64, i64* %17, align 8
  %49 = load i32, i32* %18, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %48, %50
  %52 = load i64, i64* %9, align 8
  %53 = icmp sge i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %20

55:                                               ; preds = %47
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @ELFDATA2MSB, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = load i8*, i8** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %62, %64
  %66 = load i32, i32* %18, align 4
  %67 = call i32 @_dwarf_write_msb(i8* %60, i64* %17, i64 %65, i32 %66)
  br label %77

68:                                               ; preds = %55
  %69 = load i8*, i8** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %71, %73
  %75 = load i32, i32* %18, align 4
  %76 = call i32 @_dwarf_write_lsb(i8* %69, i64* %17, i64 %74, i32 %75)
  br label %77

77:                                               ; preds = %68, %59
  br label %20

78:                                               ; preds = %20
  ret void
}

declare dso_local i32* @gelf_getrela(i32*, i32, %struct.TYPE_6__*) #1

declare dso_local i64 @GELF_R_SYM(i32) #1

declare dso_local i32 @GELF_R_TYPE(i32) #1

declare dso_local i32* @gelf_getsym(i32*, i64, %struct.TYPE_5__*) #1

declare dso_local i32 @_dwarf_get_reloc_size(i32, i32) #1

declare dso_local i32 @_dwarf_write_msb(i8*, i64*, i64, i32) #1

declare dso_local i32 @_dwarf_write_lsb(i8*, i64*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
