; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_elf_init.c__dwarf_elf_apply_rel_reloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_elf_init.c__dwarf_elf_apply_rel_reloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i64 }

@ELFDATA2MSB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i64, i32*, i32*, i32)* @_dwarf_elf_apply_rel_reloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_dwarf_elf_apply_rel_reloc(i32 %0, i8* %1, i64 %2, i32* %3, i32* %4, i32 %5) #0 {
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
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %20, align 4
  br label %21

21:                                               ; preds = %90, %55, %45, %38, %6
  %22 = load i32*, i32** %10, align 8
  %23 = load i32, i32* %20, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %20, align 4
  %25 = call i32* @gelf_getrel(i32* %22, i32 %23, %struct.TYPE_6__* %14)
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %91

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @GELF_R_SYM(i32 %29)
  store i64 %30, i64* %16, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @GELF_R_TYPE(i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32*, i32** %11, align 8
  %35 = load i64, i64* %16, align 8
  %36 = call i32* @gelf_getsym(i32* %34, i64 %35, %struct.TYPE_5__* %15)
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  br label %21

39:                                               ; preds = %27
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @_dwarf_get_reloc_size(i32 %40, i32 %41)
  store i32 %42, i32* %19, align 4
  %43 = load i32, i32* %19, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %21

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %17, align 8
  %49 = load i64, i64* %17, align 8
  %50 = load i32, i32* %19, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %49, %51
  %53 = load i64, i64* %9, align 8
  %54 = icmp sge i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  br label %21

56:                                               ; preds = %46
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @ELFDATA2MSB, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i8*, i8** %8, align 8
  %62 = load i32, i32* %19, align 4
  %63 = call i64 @_dwarf_read_msb(i8* %61, i64* %17, i32 %62)
  store i64 %63, i64* %18, align 8
  br label %68

64:                                               ; preds = %56
  %65 = load i8*, i8** %8, align 8
  %66 = load i32, i32* %19, align 4
  %67 = call i64 @_dwarf_read_lsb(i8* %65, i64* %17, i32 %66)
  store i64 %67, i64* %18, align 8
  br label %68

68:                                               ; preds = %64, %60
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %17, align 8
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* @ELFDATA2MSB, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %68
  %75 = load i8*, i8** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %18, align 8
  %79 = add nsw i64 %77, %78
  %80 = load i32, i32* %19, align 4
  %81 = call i32 @_dwarf_write_msb(i8* %75, i64* %17, i64 %79, i32 %80)
  br label %90

82:                                               ; preds = %68
  %83 = load i8*, i8** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %18, align 8
  %87 = add nsw i64 %85, %86
  %88 = load i32, i32* %19, align 4
  %89 = call i32 @_dwarf_write_lsb(i8* %83, i64* %17, i64 %87, i32 %88)
  br label %90

90:                                               ; preds = %82, %74
  br label %21

91:                                               ; preds = %21
  ret void
}

declare dso_local i32* @gelf_getrel(i32*, i32, %struct.TYPE_6__*) #1

declare dso_local i64 @GELF_R_SYM(i32) #1

declare dso_local i32 @GELF_R_TYPE(i32) #1

declare dso_local i32* @gelf_getsym(i32*, i64, %struct.TYPE_5__*) #1

declare dso_local i32 @_dwarf_get_reloc_size(i32, i32) #1

declare dso_local i64 @_dwarf_read_msb(i8*, i64*, i32) #1

declare dso_local i64 @_dwarf_read_lsb(i8*, i64*, i32) #1

declare dso_local i32 @_dwarf_write_msb(i8*, i64*, i64, i32) #1

declare dso_local i32 @_dwarf_write_lsb(i8*, i64*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
