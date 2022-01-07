; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-mips.c__bfd_mips_elf_symbol_processing.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-mips.c__bfd_mips_elf_symbol_processing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i8*, i32, %struct.TYPE_18__**, %struct.TYPE_18__*, %struct.TYPE_17__*, i32 }
%struct.TYPE_18__ = type { i8*, %struct.TYPE_17__*, i8* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32 }

@mips_elf_acom_section = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@.str = private unnamed_addr constant [9 x i8] c".acommon\00", align 1
@SEC_ALLOC = common dso_local global i32 0, align 4
@mips_elf_acom_symbol = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@mips_elf_acom_symbol_ptr = common dso_local global %struct.TYPE_18__* null, align 8
@BSF_SECTION_SYM = common dso_local global i8* null, align 8
@STT_TLS = common dso_local global i32 0, align 4
@ict_irix6 = common dso_local global i32 0, align 4
@mips_elf_scom_section = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c".scommon\00", align 1
@SEC_IS_COMMON = common dso_local global i32 0, align 4
@mips_elf_scom_symbol = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@mips_elf_scom_symbol_ptr = common dso_local global %struct.TYPE_18__* null, align 8
@bfd_und_section_ptr = common dso_local global %struct.TYPE_17__* null, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c".text\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c".data\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_bfd_mips_elf_symbol_processing(i32* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %9 = bitcast %struct.TYPE_16__* %8 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %9, %struct.TYPE_15__** %5, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %104 [
    i32 132, label %14
    i32 133, label %23
    i32 130, label %45
    i32 129, label %60
    i32 128, label %64
    i32 131, label %84
  ]

14:                                               ; preds = %2
  %15 = load i8*, i8** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @mips_elf_acom_section, i32 0, i32 0), align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @mips_elf_acom_section, i32 0, i32 0), align 8
  %18 = load i32, i32* @SEC_ALLOC, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @mips_elf_acom_section, i32 0, i32 5), align 8
  store %struct.TYPE_17__* @mips_elf_acom_section, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @mips_elf_acom_section, i32 0, i32 4), align 8
  store %struct.TYPE_18__* @mips_elf_acom_symbol, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @mips_elf_acom_section, i32 0, i32 3), align 8
  store %struct.TYPE_18__** @mips_elf_acom_symbol_ptr, %struct.TYPE_18__*** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @mips_elf_acom_section, i32 0, i32 2), align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @mips_elf_acom_symbol, i32 0, i32 0), align 8
  %19 = load i8*, i8** @BSF_SECTION_SYM, align 8
  store i8* %19, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @mips_elf_acom_symbol, i32 0, i32 2), align 8
  store %struct.TYPE_17__* @mips_elf_acom_section, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @mips_elf_acom_symbol, i32 0, i32 1), align 8
  store %struct.TYPE_18__* @mips_elf_acom_symbol, %struct.TYPE_18__** @mips_elf_acom_symbol_ptr, align 8
  br label %20

20:                                               ; preds = %17, %14
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 1
  store %struct.TYPE_17__* @mips_elf_acom_section, %struct.TYPE_17__** %22, align 8
  br label %104

23:                                               ; preds = %2
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @elf_gp_size(i32* %27)
  %29 = icmp sgt i32 %26, %28
  br i1 %29, label %43, label %30

30:                                               ; preds = %23
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ELF_ST_TYPE(i32 %34)
  %36 = load i32, i32* @STT_TLS, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %43, label %38

38:                                               ; preds = %30
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @IRIX_COMPAT(i32* %39)
  %41 = load i32, i32* @ict_irix6, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %38, %30, %23
  br label %104

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %2, %44
  %46 = load i8*, i8** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @mips_elf_scom_section, i32 0, i32 0), align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @mips_elf_scom_section, i32 0, i32 0), align 8
  %49 = load i32, i32* @SEC_IS_COMMON, align 4
  store i32 %49, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @mips_elf_scom_section, i32 0, i32 5), align 8
  store %struct.TYPE_17__* @mips_elf_scom_section, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @mips_elf_scom_section, i32 0, i32 4), align 8
  store %struct.TYPE_18__* @mips_elf_scom_symbol, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @mips_elf_scom_section, i32 0, i32 3), align 8
  store %struct.TYPE_18__** @mips_elf_scom_symbol_ptr, %struct.TYPE_18__*** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @mips_elf_scom_section, i32 0, i32 2), align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @mips_elf_scom_symbol, i32 0, i32 0), align 8
  %50 = load i8*, i8** @BSF_SECTION_SYM, align 8
  store i8* %50, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @mips_elf_scom_symbol, i32 0, i32 2), align 8
  store %struct.TYPE_17__* @mips_elf_scom_section, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @mips_elf_scom_symbol, i32 0, i32 1), align 8
  store %struct.TYPE_18__* @mips_elf_scom_symbol, %struct.TYPE_18__** @mips_elf_scom_symbol_ptr, align 8
  br label %51

51:                                               ; preds = %48, %45
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 1
  store %struct.TYPE_17__* @mips_elf_scom_section, %struct.TYPE_17__** %53, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  br label %104

60:                                               ; preds = %2
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** @bfd_und_section_ptr, align 8
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 1
  store %struct.TYPE_17__* %61, %struct.TYPE_17__** %63, align 8
  br label %104

64:                                               ; preds = %2
  %65 = load i32*, i32** %3, align 8
  %66 = call %struct.TYPE_17__* @bfd_get_section_by_name(i32* %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_17__* %66, %struct.TYPE_17__** %6, align 8
  %67 = load i32*, i32** %3, align 8
  %68 = call i32 @SGI_COMPAT(i32* %67)
  %69 = call i32 @BFD_ASSERT(i32 %68)
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %71 = icmp ne %struct.TYPE_17__* %70, null
  br i1 %71, label %72, label %83

72:                                               ; preds = %64
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 1
  store %struct.TYPE_17__* %73, %struct.TYPE_17__** %75, align 8
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sub nsw i32 %81, %78
  store i32 %82, i32* %80, align 8
  br label %83

83:                                               ; preds = %72, %64
  br label %104

84:                                               ; preds = %2
  %85 = load i32*, i32** %3, align 8
  %86 = call %struct.TYPE_17__* @bfd_get_section_by_name(i32* %85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_17__* %86, %struct.TYPE_17__** %7, align 8
  %87 = load i32*, i32** %3, align 8
  %88 = call i32 @SGI_COMPAT(i32* %87)
  %89 = call i32 @BFD_ASSERT(i32 %88)
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %91 = icmp ne %struct.TYPE_17__* %90, null
  br i1 %91, label %92, label %103

92:                                               ; preds = %84
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 1
  store %struct.TYPE_17__* %93, %struct.TYPE_17__** %95, align 8
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sub nsw i32 %101, %98
  store i32 %102, i32* %100, align 8
  br label %103

103:                                              ; preds = %92, %84
  br label %104

104:                                              ; preds = %2, %103, %83, %60, %51, %43, %20
  ret void
}

declare dso_local i32 @elf_gp_size(i32*) #1

declare dso_local i32 @ELF_ST_TYPE(i32) #1

declare dso_local i32 @IRIX_COMPAT(i32*) #1

declare dso_local %struct.TYPE_17__* @bfd_get_section_by_name(i32*, i8*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i32 @SGI_COMPAT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
