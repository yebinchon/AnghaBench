; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-mips.c_mips_elf_adjust_addend.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-mips.c_mips_elf_adjust_addend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@R_MIPS16_GPREL = common dso_local global i32 0, align 4
@R_MIPS_GPREL16 = common dso_local global i32 0, align 4
@R_MIPS_GPREL32 = common dso_local global i32 0, align 4
@R_MIPS_LITERAL = common dso_local global i32 0, align 4
@STT_SECTION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.bfd_link_info*, i32*, %struct.TYPE_13__*, %struct.TYPE_12__**, %struct.TYPE_14__*)* @mips_elf_adjust_addend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mips_elf_adjust_addend(i32* %0, %struct.bfd_link_info* %1, i32* %2, %struct.TYPE_13__* %3, %struct.TYPE_12__** %4, %struct.TYPE_14__* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.bfd_link_info*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_12__**, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_12__** %4, %struct.TYPE_12__*** %11, align 8
  store %struct.TYPE_14__* %5, %struct.TYPE_14__** %12, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %19 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %11, align 8
  %20 = load i32, i32* @FALSE, align 4
  %21 = call i64 @mips_elf_local_relocation_p(i32* %17, %struct.TYPE_14__* %18, %struct.TYPE_12__** %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %107

23:                                               ; preds = %6
  %24 = load i32*, i32** %7, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ELF_R_TYPE(i32* %24, i32 %27)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* @R_MIPS16_GPREL, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %44, label %32

32:                                               ; preds = %23
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* @R_MIPS_GPREL16, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %44, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* @R_MIPS_GPREL32, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* @R_MIPS_LITERAL, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %61

44:                                               ; preds = %40, %36, %32, %23
  %45 = load i32*, i32** %9, align 8
  %46 = call i64 @_bfd_get_gp_value(i32* %45)
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %46
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %48, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = call i64 @_bfd_get_gp_value(i32* %53)
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = sub nsw i64 %58, %54
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %56, align 4
  br label %61

61:                                               ; preds = %44, %40
  %62 = load i32*, i32** %7, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ELF_R_SYM(i32* %62, i32 %65)
  store i32 %66, i32* %14, align 4
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %68 = load i32, i32* %14, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i64 %69
  store %struct.TYPE_13__* %70, %struct.TYPE_13__** %15, align 8
  %71 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %72 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %85, label %75

75:                                               ; preds = %61
  %76 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %11, align 8
  %77 = load i32, i32* %14, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %76, i64 %78
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  store %struct.TYPE_12__* %80, %struct.TYPE_12__** %16, align 8
  %81 = load i32*, i32** %7, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %84 = call i32 @_bfd_elf_rela_local_sym(i32* %81, %struct.TYPE_13__* %82, %struct.TYPE_12__** %16, %struct.TYPE_14__* %83)
  br label %85

85:                                               ; preds = %75, %61
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @ELF_ST_TYPE(i32 %88)
  %90 = load i64, i64* @STT_SECTION, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %106

92:                                               ; preds = %85
  %93 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %11, align 8
  %94 = load i32, i32* %14, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %93, i64 %95
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %103, %99
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %101, align 4
  br label %106

106:                                              ; preds = %92, %85
  br label %107

107:                                              ; preds = %106, %6
  ret void
}

declare dso_local i64 @mips_elf_local_relocation_p(i32*, %struct.TYPE_14__*, %struct.TYPE_12__**, i32) #1

declare dso_local i32 @ELF_R_TYPE(i32*, i32) #1

declare dso_local i64 @_bfd_get_gp_value(i32*) #1

declare dso_local i32 @ELF_R_SYM(i32*, i32) #1

declare dso_local i32 @_bfd_elf_rela_local_sym(i32*, %struct.TYPE_13__*, %struct.TYPE_12__**, %struct.TYPE_14__*) #1

declare dso_local i64 @ELF_ST_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
