; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_peicode.h_pe_ILF_make_a_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_peicode.h_pe_ILF_make_a_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, %struct.coff_section_tdata*, i64 }
%struct.coff_section_tdata = type { i32 }
%struct.TYPE_15__ = type { i64, i64, i32, %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_17__ = type { i64 }

@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@SEC_ALLOC = common dso_local global i32 0, align 4
@SEC_LOAD = common dso_local global i32 0, align 4
@SEC_KEEP = common dso_local global i32 0, align 4
@SEC_IN_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@BSF_LOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_16__* (%struct.TYPE_15__*, i8*, i32, i32)* @pe_ILF_make_a_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_16__* @pe_ILF_make_a_section(%struct.TYPE_15__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call %struct.TYPE_16__* @bfd_make_section_old_way(i32 %14, i8* %15)
  store %struct.TYPE_16__* %16, %struct.TYPE_16__** %10, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %18 = icmp eq %struct.TYPE_16__* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %5, align 8
  br label %139

20:                                               ; preds = %4
  %21 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %22 = load i32, i32* @SEC_ALLOC, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @SEC_LOAD, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @SEC_KEEP, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @SEC_IN_MEMORY, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %11, align 4
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %9, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @bfd_set_section_flags(i32 %32, %struct.TYPE_16__* %33, i32 %36)
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %42 = call i32 @bfd_set_section_alignment(i32 %40, %struct.TYPE_16__* %41, i32 2)
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = zext i32 %46 to i64
  %48 = add nsw i64 %45, %47
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 3
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 3
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %53, %58
  %60 = icmp slt i64 %48, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @BFD_ASSERT(i32 %61)
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @bfd_set_section_size(i32 %65, %struct.TYPE_16__* %66, i32 %67)
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 8
  %78 = sext i32 %76 to i64
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 2
  store i64 %78, i64* %80, align 8
  %81 = load i32, i32* %8, align 4
  %82 = zext i32 %81 to i64
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, %82
  store i64 %86, i64* %84, align 8
  %87 = load i32, i32* %8, align 4
  %88 = and i32 %87, 1
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %20
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, -1
  store i64 %94, i64* %92, align 8
  br label %95

95:                                               ; preds = %90, %20
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = inttoptr i64 %98 to %struct.coff_section_tdata*
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 1
  store %struct.coff_section_tdata* %99, %struct.coff_section_tdata** %101, align 8
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = add i64 %104, 4
  store i64 %105, i64* %103, align 8
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 3
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 3
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %113, %118
  %120 = icmp sle i64 %108, %119
  %121 = zext i1 %120 to i32
  %122 = call i32 @BFD_ASSERT(i32 %121)
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %124 = load i8*, i8** %7, align 8
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %126 = load i32, i32* @BSF_LOCAL, align 4
  %127 = call i32 @pe_ILF_make_a_symbol(%struct.TYPE_15__* %123, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %124, %struct.TYPE_16__* %125, i32 %126)
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = sub nsw i64 %130, 1
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %136 = call %struct.TYPE_17__* @coff_section_data(i32 %134, %struct.TYPE_16__* %135)
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 0
  store i64 %131, i64* %137, align 8
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  store %struct.TYPE_16__* %138, %struct.TYPE_16__** %5, align 8
  br label %139

139:                                              ; preds = %95, %19
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  ret %struct.TYPE_16__* %140
}

declare dso_local %struct.TYPE_16__* @bfd_make_section_old_way(i32, i8*) #1

declare dso_local i32 @bfd_set_section_flags(i32, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @bfd_set_section_alignment(i32, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i32 @bfd_set_section_size(i32, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @pe_ILF_make_a_symbol(%struct.TYPE_15__*, i8*, i8*, %struct.TYPE_16__*, i32) #1

declare dso_local %struct.TYPE_17__* @coff_section_data(i32, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
