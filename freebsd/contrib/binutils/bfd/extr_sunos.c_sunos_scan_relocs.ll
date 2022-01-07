; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_sunos.c_sunos_scan_relocs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_sunos.c_sunos_scan_relocs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.aout_section_data_struct = type { i32 }
%struct.TYPE_9__ = type { i8* }
%struct.reloc_std_external = type { i32 }
%struct.reloc_ext_external = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@RELOC_STD_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfd_link_info*, i32*, %struct.TYPE_8__*, i32)* @sunos_scan_relocs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunos_scan_relocs(%struct.bfd_link_info* %0, i32* %1, %struct.TYPE_8__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bfd_link_info*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.aout_section_data_struct*, align 8
  %13 = alloca i32, align 4
  store %struct.bfd_link_info* %0, %struct.bfd_link_info** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* null, i8** %11, align 8
  %14 = load i32, i32* %9, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @TRUE, align 4
  store i32 %17, i32* %5, align 4
  br label %108

18:                                               ; preds = %4
  %19 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %20 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* %9, align 4
  %25 = call i8* @bfd_malloc(i32 %24)
  store i8* %25, i8** %11, align 8
  store i8* %25, i8** %10, align 8
  br label %44

26:                                               ; preds = %18
  store i32 4, i32* %13, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %13, align 4
  %29 = call %struct.aout_section_data_struct* @bfd_alloc(i32* %27, i32 %28)
  store %struct.aout_section_data_struct* %29, %struct.aout_section_data_struct** %12, align 8
  %30 = load %struct.aout_section_data_struct*, %struct.aout_section_data_struct** %12, align 8
  %31 = icmp eq %struct.aout_section_data_struct* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i8* null, i8** %10, align 8
  br label %43

33:                                               ; preds = %26
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %35 = load %struct.aout_section_data_struct*, %struct.aout_section_data_struct** %12, align 8
  %36 = call i32 @set_aout_section_data(%struct.TYPE_8__* %34, %struct.aout_section_data_struct* %35)
  %37 = load i32, i32* %9, align 4
  %38 = call i8* @bfd_malloc(i32 %37)
  store i8* %38, i8** %10, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %41 = call %struct.TYPE_9__* @aout_section_data(%struct.TYPE_8__* %40)
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  store i8* %39, i8** %42, align 8
  br label %43

43:                                               ; preds = %33, %32
  br label %44

44:                                               ; preds = %43, %23
  %45 = load i8*, i8** %10, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* @FALSE, align 4
  store i32 %48, i32* %5, align 4
  br label %108

49:                                               ; preds = %44
  %50 = load i32*, i32** %7, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @SEEK_SET, align 4
  %55 = call i64 @bfd_seek(i32* %50, i32 %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %49
  %58 = load i8*, i8** %10, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @bfd_bread(i8* %58, i32 %59, i32* %60)
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %57, %49
  br label %100

65:                                               ; preds = %57
  %66 = load i32*, i32** %7, align 8
  %67 = call i64 @obj_reloc_entry_size(i32* %66)
  %68 = load i64, i64* @RELOC_STD_SIZE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %65
  %71 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = bitcast i8* %74 to %struct.reloc_std_external*
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @sunos_scan_std_relocs(%struct.bfd_link_info* %71, i32* %72, %struct.TYPE_8__* %73, %struct.reloc_std_external* %75, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %70
  br label %100

80:                                               ; preds = %70
  br label %92

81:                                               ; preds = %65
  %82 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %83 = load i32*, i32** %7, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %85 = load i8*, i8** %10, align 8
  %86 = bitcast i8* %85 to %struct.reloc_ext_external*
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @sunos_scan_ext_relocs(%struct.bfd_link_info* %82, i32* %83, %struct.TYPE_8__* %84, %struct.reloc_ext_external* %86, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %81
  br label %100

91:                                               ; preds = %81
  br label %92

92:                                               ; preds = %91, %80
  %93 = load i8*, i8** %11, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i8*, i8** %11, align 8
  %97 = call i32 @free(i8* %96)
  br label %98

98:                                               ; preds = %95, %92
  %99 = load i32, i32* @TRUE, align 4
  store i32 %99, i32* %5, align 4
  br label %108

100:                                              ; preds = %90, %79, %64
  %101 = load i8*, i8** %11, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i8*, i8** %11, align 8
  %105 = call i32 @free(i8* %104)
  br label %106

106:                                              ; preds = %103, %100
  %107 = load i32, i32* @FALSE, align 4
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %106, %98, %47, %16
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i8* @bfd_malloc(i32) #1

declare dso_local %struct.aout_section_data_struct* @bfd_alloc(i32*, i32) #1

declare dso_local i32 @set_aout_section_data(%struct.TYPE_8__*, %struct.aout_section_data_struct*) #1

declare dso_local %struct.TYPE_9__* @aout_section_data(%struct.TYPE_8__*) #1

declare dso_local i64 @bfd_seek(i32*, i32, i32) #1

declare dso_local i32 @bfd_bread(i8*, i32, i32*) #1

declare dso_local i64 @obj_reloc_entry_size(i32*) #1

declare dso_local i32 @sunos_scan_std_relocs(%struct.bfd_link_info*, i32*, %struct.TYPE_8__*, %struct.reloc_std_external*, i32) #1

declare dso_local i32 @sunos_scan_ext_relocs(%struct.bfd_link_info*, i32*, %struct.TYPE_8__*, %struct.reloc_ext_external*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
