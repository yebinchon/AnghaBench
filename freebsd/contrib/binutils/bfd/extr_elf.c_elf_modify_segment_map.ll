; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c_elf_modify_segment_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c_elf_modify_segment_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.elf_segment_map = type { i32, i64, %struct.elf_segment_map*, %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32 }
%struct.elf_backend_data = type { i32 (i32*, %struct.bfd_link_info.0*)* }
%struct.bfd_link_info.0 = type opaque
%struct.TYPE_4__ = type { %struct.elf_segment_map* }

@SEC_EXCLUDE = common dso_local global i32 0, align 4
@SEC_ALLOC = common dso_local global i32 0, align 4
@PT_LOAD = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.bfd_link_info*)* @elf_modify_segment_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf_modify_segment_map(i32* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca %struct.elf_segment_map**, align 8
  %7 = alloca %struct.elf_backend_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call %struct.TYPE_4__* @elf_tdata(i32* %10)
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store %struct.elf_segment_map** %12, %struct.elf_segment_map*** %6, align 8
  br label %13

13:                                               ; preds = %109, %2
  %14 = load %struct.elf_segment_map**, %struct.elf_segment_map*** %6, align 8
  %15 = load %struct.elf_segment_map*, %struct.elf_segment_map** %14, align 8
  %16 = icmp ne %struct.elf_segment_map* %15, null
  br i1 %16, label %17, label %110

17:                                               ; preds = %13
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %79, %17
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.elf_segment_map**, %struct.elf_segment_map*** %6, align 8
  %21 = load %struct.elf_segment_map*, %struct.elf_segment_map** %20, align 8
  %22 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ult i32 %19, %23
  br i1 %24, label %25, label %82

25:                                               ; preds = %18
  %26 = load %struct.elf_segment_map**, %struct.elf_segment_map*** %6, align 8
  %27 = load %struct.elf_segment_map*, %struct.elf_segment_map** %26, align 8
  %28 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %27, i32 0, i32 3
  %29 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %29, i64 %31
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @SEC_EXCLUDE, align 4
  %37 = and i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %78

39:                                               ; preds = %25
  %40 = load %struct.elf_segment_map**, %struct.elf_segment_map*** %6, align 8
  %41 = load %struct.elf_segment_map*, %struct.elf_segment_map** %40, align 8
  %42 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %41, i32 0, i32 3
  %43 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %43, i64 %45
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @SEC_ALLOC, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %39
  %54 = load %struct.elf_segment_map**, %struct.elf_segment_map*** %6, align 8
  %55 = load %struct.elf_segment_map*, %struct.elf_segment_map** %54, align 8
  %56 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @PT_LOAD, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %78

60:                                               ; preds = %53, %39
  %61 = load %struct.elf_segment_map**, %struct.elf_segment_map*** %6, align 8
  %62 = load %struct.elf_segment_map*, %struct.elf_segment_map** %61, align 8
  %63 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %62, i32 0, i32 3
  %64 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %64, i64 %66
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = load %struct.elf_segment_map**, %struct.elf_segment_map*** %6, align 8
  %70 = load %struct.elf_segment_map*, %struct.elf_segment_map** %69, align 8
  %71 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %70, i32 0, i32 3
  %72 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %72, i64 %74
  store %struct.TYPE_3__* %68, %struct.TYPE_3__** %75, align 8
  %76 = load i32, i32* %9, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %60, %53, %25
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %8, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %18

82:                                               ; preds = %18
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.elf_segment_map**, %struct.elf_segment_map*** %6, align 8
  %85 = load %struct.elf_segment_map*, %struct.elf_segment_map** %84, align 8
  %86 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 8
  %87 = load %struct.elf_segment_map**, %struct.elf_segment_map*** %6, align 8
  %88 = load %struct.elf_segment_map*, %struct.elf_segment_map** %87, align 8
  %89 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @PT_LOAD, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %105

93:                                               ; preds = %82
  %94 = load %struct.elf_segment_map**, %struct.elf_segment_map*** %6, align 8
  %95 = load %struct.elf_segment_map*, %struct.elf_segment_map** %94, align 8
  %96 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %93
  %100 = load %struct.elf_segment_map**, %struct.elf_segment_map*** %6, align 8
  %101 = load %struct.elf_segment_map*, %struct.elf_segment_map** %100, align 8
  %102 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %101, i32 0, i32 2
  %103 = load %struct.elf_segment_map*, %struct.elf_segment_map** %102, align 8
  %104 = load %struct.elf_segment_map**, %struct.elf_segment_map*** %6, align 8
  store %struct.elf_segment_map* %103, %struct.elf_segment_map** %104, align 8
  br label %109

105:                                              ; preds = %93, %82
  %106 = load %struct.elf_segment_map**, %struct.elf_segment_map*** %6, align 8
  %107 = load %struct.elf_segment_map*, %struct.elf_segment_map** %106, align 8
  %108 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %107, i32 0, i32 2
  store %struct.elf_segment_map** %108, %struct.elf_segment_map*** %6, align 8
  br label %109

109:                                              ; preds = %105, %99
  br label %13

110:                                              ; preds = %13
  %111 = load i32*, i32** %4, align 8
  %112 = call %struct.elf_backend_data* @get_elf_backend_data(i32* %111)
  store %struct.elf_backend_data* %112, %struct.elf_backend_data** %7, align 8
  %113 = load %struct.elf_backend_data*, %struct.elf_backend_data** %7, align 8
  %114 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %113, i32 0, i32 0
  %115 = load i32 (i32*, %struct.bfd_link_info.0*)*, i32 (i32*, %struct.bfd_link_info.0*)** %114, align 8
  %116 = icmp ne i32 (i32*, %struct.bfd_link_info.0*)* %115, null
  br i1 %116, label %117, label %129

117:                                              ; preds = %110
  %118 = load %struct.elf_backend_data*, %struct.elf_backend_data** %7, align 8
  %119 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %118, i32 0, i32 0
  %120 = load i32 (i32*, %struct.bfd_link_info.0*)*, i32 (i32*, %struct.bfd_link_info.0*)** %119, align 8
  %121 = load i32*, i32** %4, align 8
  %122 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %123 = bitcast %struct.bfd_link_info* %122 to %struct.bfd_link_info.0*
  %124 = call i32 %120(i32* %121, %struct.bfd_link_info.0* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %117
  %127 = load i32, i32* @FALSE, align 4
  store i32 %127, i32* %3, align 4
  br label %131

128:                                              ; preds = %117
  br label %129

129:                                              ; preds = %128, %110
  %130 = load i32, i32* @TRUE, align 4
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %129, %126
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local %struct.TYPE_4__* @elf_tdata(i32*) #1

declare dso_local %struct.elf_backend_data* @get_elf_backend_data(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
