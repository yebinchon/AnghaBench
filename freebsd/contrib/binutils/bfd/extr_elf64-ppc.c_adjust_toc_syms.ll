; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_adjust_toc_syms.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_adjust_toc_syms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.elf_link_hash_entry = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.ppc_link_hash_entry = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_13__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_13__ = type { i32 }
%struct.adjust_toc_info = type { i64*, i32, %struct.TYPE_18__* }

@bfd_link_hash_indirect = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@bfd_link_hash_warning = common dso_local global i64 0, align 8
@bfd_link_hash_defined = common dso_local global i64 0, align 8
@bfd_link_hash_defweak = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"%s defined in removed toc entry\00", align 1
@bfd_abs_section = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c".toc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elf_link_hash_entry*, i8*)* @adjust_toc_syms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adjust_toc_syms(%struct.elf_link_hash_entry* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.elf_link_hash_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ppc_link_hash_entry*, align 8
  %7 = alloca %struct.adjust_toc_info*, align 8
  %8 = alloca i64, align 8
  store %struct.elf_link_hash_entry* %0, %struct.elf_link_hash_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.adjust_toc_info*
  store %struct.adjust_toc_info* %10, %struct.adjust_toc_info** %7, align 8
  %11 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %12 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @bfd_link_hash_indirect, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @TRUE, align 4
  store i32 %18, i32* %3, align 4
  br label %143

19:                                               ; preds = %2
  %20 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %21 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @bfd_link_hash_warning, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %19
  %27 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %28 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %33, %struct.elf_link_hash_entry** %4, align 8
  br label %34

34:                                               ; preds = %26, %19
  %35 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %36 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @bfd_link_hash_defined, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %34
  %42 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %43 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @bfd_link_hash_defweak, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* @TRUE, align 4
  store i32 %49, i32* %3, align 4
  br label %143

50:                                               ; preds = %41, %34
  %51 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %52 = bitcast %struct.elf_link_hash_entry* %51 to %struct.ppc_link_hash_entry*
  store %struct.ppc_link_hash_entry* %52, %struct.ppc_link_hash_entry** %6, align 8
  %53 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %6, align 8
  %54 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* @TRUE, align 4
  store i32 %58, i32* %3, align 4
  br label %143

59:                                               ; preds = %50
  %60 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %6, align 8
  %61 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %65, align 8
  %67 = load %struct.adjust_toc_info*, %struct.adjust_toc_info** %7, align 8
  %68 = getelementptr inbounds %struct.adjust_toc_info, %struct.adjust_toc_info* %67, i32 0, i32 2
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %68, align 8
  %70 = icmp eq %struct.TYPE_18__* %66, %69
  br i1 %70, label %71, label %124

71:                                               ; preds = %59
  %72 = load %struct.adjust_toc_info*, %struct.adjust_toc_info** %7, align 8
  %73 = getelementptr inbounds %struct.adjust_toc_info, %struct.adjust_toc_info* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %6, align 8
  %76 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = ashr i32 %81, 3
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %74, i64 %83
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %8, align 8
  %86 = load i64, i64* %8, align 8
  %87 = icmp ne i64 %86, -1
  br i1 %87, label %88, label %100

88:                                               ; preds = %71
  %89 = load i64, i64* %8, align 8
  %90 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %6, align 8
  %91 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = sub i64 %97, %89
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %95, align 8
  br label %121

100:                                              ; preds = %71
  %101 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %102 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %6, align 8
  %103 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @_bfd_error_handler(i32 %101, i32 %107)
  %109 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %6, align 8
  %110 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 1
  store %struct.TYPE_18__* @bfd_abs_section, %struct.TYPE_18__** %114, align 8
  %115 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %6, align 8
  %116 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  store i32 0, i32* %120, align 8
  br label %121

121:                                              ; preds = %100, %88
  %122 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %6, align 8
  %123 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %122, i32 0, i32 0
  store i32 1, i32* %123, align 8
  br label %141

124:                                              ; preds = %59
  %125 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %6, align 8
  %126 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i64 @strcmp(i32 %133, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %124
  %137 = load i32, i32* @TRUE, align 4
  %138 = load %struct.adjust_toc_info*, %struct.adjust_toc_info** %7, align 8
  %139 = getelementptr inbounds %struct.adjust_toc_info, %struct.adjust_toc_info* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 8
  br label %140

140:                                              ; preds = %136, %124
  br label %141

141:                                              ; preds = %140, %121
  %142 = load i32, i32* @TRUE, align 4
  store i32 %142, i32* %3, align 4
  br label %143

143:                                              ; preds = %141, %57, %48, %17
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i32 @_bfd_error_handler(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
