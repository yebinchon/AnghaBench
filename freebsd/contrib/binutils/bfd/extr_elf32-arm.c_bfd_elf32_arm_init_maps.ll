; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_bfd_elf32_arm_init_maps.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_bfd_elf32_arm_init_maps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }

@bfd_target_elf_flavour = common dso_local global i64 0, align 8
@DYNAMIC = common dso_local global i32 0, align 4
@STB_LOCAL = common dso_local global i64 0, align 8
@BFD_ARM_SPECIAL_SYM_TYPE_MAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfd_elf32_arm_init_maps(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %11 = call i64 @bfd_get_flavour(%struct.TYPE_13__* %10)
  %12 = load i64, i64* @bfd_target_elf_flavour, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %16 = call %struct.TYPE_16__* @elf_tdata(%struct.TYPE_13__* %15)
  %17 = icmp eq %struct.TYPE_16__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %1
  br label %92

19:                                               ; preds = %14
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @DYNAMIC, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %92

27:                                               ; preds = %19
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %29 = call %struct.TYPE_16__* @elf_tdata(%struct.TYPE_13__* %28)
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  store %struct.TYPE_15__* %30, %struct.TYPE_15__** %4, align 8
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %6, align 4
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call %struct.TYPE_14__* @bfd_elf_get_elf_syms(%struct.TYPE_13__* %34, %struct.TYPE_15__* %35, i32 %36, i32 0, i32* null, i32* null, i32* null)
  store %struct.TYPE_14__* %37, %struct.TYPE_14__** %3, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %39 = icmp eq %struct.TYPE_14__* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %27
  br label %92

41:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %89, %41
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %92

46:                                               ; preds = %42
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %48 = load i32, i32* %5, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i64 %49
  store %struct.TYPE_14__* %50, %struct.TYPE_14__** %7, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32* @bfd_section_from_elf_index(%struct.TYPE_13__* %51, i32 %54)
  store i32* %55, i32** %8, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %88

58:                                               ; preds = %46
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @ELF_ST_BIND(i32 %61)
  %63 = load i64, i64* @STB_LOCAL, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %88

65:                                               ; preds = %58
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @bfd_elf_string_from_elf_section(%struct.TYPE_13__* %66, i32 %69, i32 %72)
  store i8* %73, i8** %9, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = load i32, i32* @BFD_ARM_SPECIAL_SYM_TYPE_MAP, align 4
  %76 = call i64 @bfd_is_arm_special_symbol_name(i8* %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %65
  %79 = load i32*, i32** %8, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  %82 = load i8, i8* %81, align 1
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @elf32_arm_section_map_add(i32* %79, i8 signext %82, i32 %85)
  br label %87

87:                                               ; preds = %78, %65
  br label %88

88:                                               ; preds = %87, %58, %46
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %5, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %5, align 4
  br label %42

92:                                               ; preds = %18, %26, %40, %42
  ret void
}

declare dso_local i64 @bfd_get_flavour(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_16__* @elf_tdata(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_14__* @bfd_elf_get_elf_syms(%struct.TYPE_13__*, %struct.TYPE_15__*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32* @bfd_section_from_elf_index(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @ELF_ST_BIND(i32) #1

declare dso_local i8* @bfd_elf_string_from_elf_section(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i64 @bfd_is_arm_special_symbol_name(i8*, i32) #1

declare dso_local i32 @elf32_arm_section_map_add(i32*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
