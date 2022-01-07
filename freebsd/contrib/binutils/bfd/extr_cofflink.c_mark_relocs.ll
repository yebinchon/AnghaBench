; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_cofflink.c_mark_relocs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_cofflink.c_mark_relocs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64 }
%struct.coff_final_link_info = type { i32*, i64, %struct.TYPE_11__*, %struct.TYPE_10__*, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_14__*, %struct.TYPE_13__* }
%struct.internal_reloc = type { i64 }

@HAS_SYMS = common dso_local global i32 0, align 4
@SEC_RELOC = common dso_local global i32 0, align 4
@bfd_abs_section_ptr = common dso_local global %struct.TYPE_14__* null, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.coff_final_link_info*, %struct.TYPE_12__*)* @mark_relocs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_relocs(%struct.coff_final_link_info* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.coff_final_link_info*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.internal_reloc*, align 8
  %7 = alloca %struct.internal_reloc*, align 8
  %8 = alloca %struct.internal_reloc*, align 8
  store %struct.coff_final_link_info* %0, %struct.coff_final_link_info** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %10 = call i32 @bfd_get_file_flags(%struct.TYPE_12__* %9)
  %11 = load i32, i32* @HAS_SYMS, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %116

15:                                               ; preds = %2
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  store %struct.TYPE_13__* %18, %struct.TYPE_13__** %5, align 8
  br label %19

19:                                               ; preds = %112, %15
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %21 = icmp ne %struct.TYPE_13__* %20, null
  br i1 %21, label %22, label %116

22:                                               ; preds = %19
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @SEC_RELOC, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %22
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %32, 1
  br i1 %33, label %34, label %35

34:                                               ; preds = %29, %22
  br label %112

35:                                               ; preds = %29
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %37, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** @bfd_abs_section_ptr, align 8
  %40 = icmp eq %struct.TYPE_14__* %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %112

42:                                               ; preds = %35
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %45 = load i32, i32* @FALSE, align 4
  %46 = load %struct.coff_final_link_info*, %struct.coff_final_link_info** %3, align 8
  %47 = getelementptr inbounds %struct.coff_final_link_info, %struct.coff_final_link_info* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.coff_final_link_info*, %struct.coff_final_link_info** %3, align 8
  %50 = getelementptr inbounds %struct.coff_final_link_info, %struct.coff_final_link_info* %49, i32 0, i32 3
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.coff_final_link_info*, %struct.coff_final_link_info** %3, align 8
  %55 = getelementptr inbounds %struct.coff_final_link_info, %struct.coff_final_link_info* %54, i32 0, i32 3
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %78

60:                                               ; preds = %42
  %61 = load %struct.coff_final_link_info*, %struct.coff_final_link_info** %3, align 8
  %62 = getelementptr inbounds %struct.coff_final_link_info, %struct.coff_final_link_info* %61, i32 0, i32 2
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %62, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %71, %76
  br label %82

78:                                               ; preds = %42
  %79 = load %struct.coff_final_link_info*, %struct.coff_final_link_info** %3, align 8
  %80 = getelementptr inbounds %struct.coff_final_link_info, %struct.coff_final_link_info* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  br label %82

82:                                               ; preds = %78, %60
  %83 = phi i64 [ %77, %60 ], [ %81, %78 ]
  %84 = call %struct.internal_reloc* @_bfd_coff_read_internal_relocs(%struct.TYPE_12__* %43, %struct.TYPE_13__* %44, i32 %45, i32 %48, i64 %53, i64 %83)
  store %struct.internal_reloc* %84, %struct.internal_reloc** %6, align 8
  %85 = load %struct.internal_reloc*, %struct.internal_reloc** %6, align 8
  %86 = icmp eq %struct.internal_reloc* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %112

88:                                               ; preds = %82
  %89 = load %struct.internal_reloc*, %struct.internal_reloc** %6, align 8
  store %struct.internal_reloc* %89, %struct.internal_reloc** %7, align 8
  %90 = load %struct.internal_reloc*, %struct.internal_reloc** %7, align 8
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %90, i64 %94
  store %struct.internal_reloc* %95, %struct.internal_reloc** %8, align 8
  br label %96

96:                                               ; preds = %108, %88
  %97 = load %struct.internal_reloc*, %struct.internal_reloc** %7, align 8
  %98 = load %struct.internal_reloc*, %struct.internal_reloc** %8, align 8
  %99 = icmp ult %struct.internal_reloc* %97, %98
  br i1 %99, label %100, label %111

100:                                              ; preds = %96
  %101 = load %struct.coff_final_link_info*, %struct.coff_final_link_info** %3, align 8
  %102 = getelementptr inbounds %struct.coff_final_link_info, %struct.coff_final_link_info* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load %struct.internal_reloc*, %struct.internal_reloc** %7, align 8
  %105 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  store i32 -1, i32* %107, align 4
  br label %108

108:                                              ; preds = %100
  %109 = load %struct.internal_reloc*, %struct.internal_reloc** %7, align 8
  %110 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %109, i32 1
  store %struct.internal_reloc* %110, %struct.internal_reloc** %7, align 8
  br label %96

111:                                              ; preds = %96
  br label %112

112:                                              ; preds = %111, %87, %41, %34
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 3
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %114, align 8
  store %struct.TYPE_13__* %115, %struct.TYPE_13__** %5, align 8
  br label %19

116:                                              ; preds = %14, %19
  ret void
}

declare dso_local i32 @bfd_get_file_flags(%struct.TYPE_12__*) #1

declare dso_local %struct.internal_reloc* @_bfd_coff_read_internal_relocs(%struct.TYPE_12__*, %struct.TYPE_13__*, i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
