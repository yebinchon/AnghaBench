; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-alpha.c_elf64_alpha_adjust_dynamic_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-alpha.c_elf64_alpha_adjust_dynamic_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.elf_link_hash_entry = type { %struct.TYPE_17__, %struct.TYPE_12__, i8* }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.alpha_elf_link_hash_entry = type { i32 }
%struct.TYPE_18__ = type { i32* }

@TRUE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c".plt\00", align 1
@FALSE = common dso_local global i8* null, align 8
@bfd_link_hash_defined = common dso_local global i64 0, align 8
@bfd_link_hash_defweak = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.bfd_link_info*, %struct.elf_link_hash_entry*)* @elf64_alpha_adjust_dynamic_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @elf64_alpha_adjust_dynamic_symbol(%struct.bfd_link_info* %0, %struct.elf_link_hash_entry* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.bfd_link_info*, align 8
  %5 = alloca %struct.elf_link_hash_entry*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.alpha_elf_link_hash_entry*, align 8
  store %struct.bfd_link_info* %0, %struct.bfd_link_info** %4, align 8
  store %struct.elf_link_hash_entry* %1, %struct.elf_link_hash_entry** %5, align 8
  %9 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %10 = call %struct.TYPE_18__* @elf_hash_table(%struct.bfd_link_info* %9)
  %11 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %6, align 8
  %13 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %14 = bitcast %struct.elf_link_hash_entry* %13 to %struct.alpha_elf_link_hash_entry*
  store %struct.alpha_elf_link_hash_entry* %14, %struct.alpha_elf_link_hash_entry** %8, align 8
  %15 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %16 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %17 = call i64 @alpha_elf_dynamic_symbol_p(%struct.elf_link_hash_entry* %15, %struct.bfd_link_info* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %2
  %20 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %8, align 8
  %21 = call i64 @elf64_alpha_want_plt(%struct.alpha_elf_link_hash_entry* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %19
  %24 = load i8*, i8** @TRUE, align 8
  %25 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %26 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = call i32* @bfd_get_section_by_name(i32* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* %28, i32** %7, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %23
  %32 = load i32*, i32** %6, align 8
  %33 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %34 = call i32 @elf64_alpha_create_dynamic_sections(i32* %32, %struct.bfd_link_info* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  %37 = load i8*, i8** @FALSE, align 8
  store i8* %37, i8** %3, align 8
  br label %105

38:                                               ; preds = %31, %23
  %39 = load i8*, i8** @TRUE, align 8
  store i8* %39, i8** %3, align 8
  br label %105

40:                                               ; preds = %19, %2
  %41 = load i8*, i8** @FALSE, align 8
  %42 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %43 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  br label %44

44:                                               ; preds = %40
  %45 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %46 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %47, align 8
  %49 = icmp ne %struct.TYPE_16__* %48, null
  br i1 %49, label %50, label %103

50:                                               ; preds = %44
  %51 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %52 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @bfd_link_hash_defined, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %70, label %60

60:                                               ; preds = %50
  %61 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %62 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @bfd_link_hash_defweak, align 8
  %69 = icmp eq i64 %67, %68
  br label %70

70:                                               ; preds = %60, %50
  %71 = phi i1 [ true, %50 ], [ %69, %60 ]
  %72 = zext i1 %71 to i32
  %73 = call i32 @BFD_ASSERT(i32 %72)
  %74 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %75 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %84 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  store i32 %82, i32* %87, align 4
  %88 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %89 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %98 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  store i32 %96, i32* %101, align 8
  %102 = load i8*, i8** @TRUE, align 8
  store i8* %102, i8** %3, align 8
  br label %105

103:                                              ; preds = %44
  %104 = load i8*, i8** @TRUE, align 8
  store i8* %104, i8** %3, align 8
  br label %105

105:                                              ; preds = %103, %70, %38, %36
  %106 = load i8*, i8** %3, align 8
  ret i8* %106
}

declare dso_local %struct.TYPE_18__* @elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local i64 @alpha_elf_dynamic_symbol_p(%struct.elf_link_hash_entry*, %struct.bfd_link_info*) #1

declare dso_local i64 @elf64_alpha_want_plt(%struct.alpha_elf_link_hash_entry*) #1

declare dso_local i32* @bfd_get_section_by_name(i32*, i8*) #1

declare dso_local i32 @elf64_alpha_create_dynamic_sections(i32*, %struct.bfd_link_info*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
