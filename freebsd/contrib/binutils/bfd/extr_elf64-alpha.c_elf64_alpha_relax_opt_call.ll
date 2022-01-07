; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-alpha.c_elf64_alpha_relax_opt_call.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-alpha.c_elf64_alpha_relax_opt_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alpha_relax_info = type { i32, i64, %struct.TYPE_15__*, %struct.TYPE_18__*, i32, %struct.TYPE_19__*, %struct.TYPE_19__*, %struct.TYPE_15__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__*, i64 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__*, i64, %struct.TYPE_16__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_20__ = type { i64 }

@STO_ALPHA_STD_GPLOAD = common dso_local global i32 0, align 4
@STO_ALPHA_NOPV = common dso_local global i32 0, align 4
@R_ALPHA_GPDISP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.alpha_relax_info*, i64)* @elf64_alpha_relax_opt_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @elf64_alpha_relax_opt_call(%struct.alpha_relax_info* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.alpha_relax_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i64, align 8
  store %struct.alpha_relax_info* %0, %struct.alpha_relax_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.alpha_relax_info*, %struct.alpha_relax_info** %4, align 8
  %12 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @STO_ALPHA_STD_GPLOAD, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @STO_ALPHA_NOPV, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i64, i64* %5, align 8
  store i64 %19, i64* %3, align 8
  br label %156

20:                                               ; preds = %2
  %21 = load %struct.alpha_relax_info*, %struct.alpha_relax_info** %4, align 8
  %22 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @STO_ALPHA_STD_GPLOAD, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @STO_ALPHA_STD_GPLOAD, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %122

29:                                               ; preds = %20
  %30 = load %struct.alpha_relax_info*, %struct.alpha_relax_info** %4, align 8
  %31 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %30, i32 0, i32 7
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %33 = load %struct.alpha_relax_info*, %struct.alpha_relax_info** %4, align 8
  %34 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %33, i32 0, i32 2
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %34, align 8
  %36 = icmp eq %struct.TYPE_15__* %32, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %29
  %38 = load %struct.alpha_relax_info*, %struct.alpha_relax_info** %4, align 8
  %39 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %38, i32 0, i32 6
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %39, align 8
  store %struct.TYPE_19__* %40, %struct.TYPE_19__** %6, align 8
  %41 = load %struct.alpha_relax_info*, %struct.alpha_relax_info** %4, align 8
  %42 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %41, i32 0, i32 5
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %42, align 8
  store %struct.TYPE_19__* %43, %struct.TYPE_19__** %7, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %8, align 8
  br label %80

44:                                               ; preds = %29
  %45 = load %struct.alpha_relax_info*, %struct.alpha_relax_info** %4, align 8
  %46 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.alpha_relax_info*, %struct.alpha_relax_info** %4, align 8
  %49 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %48, i32 0, i32 2
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %49, align 8
  %51 = load %struct.alpha_relax_info*, %struct.alpha_relax_info** %4, align 8
  %52 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %51, i32 0, i32 3
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call %struct.TYPE_19__* @_bfd_elf_link_read_relocs(i32 %47, %struct.TYPE_15__* %50, i32 0, %struct.TYPE_19__* null, i64 %55)
  store %struct.TYPE_19__* %56, %struct.TYPE_19__** %6, align 8
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %58 = icmp eq %struct.TYPE_19__* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %44
  store i64 0, i64* %3, align 8
  br label %156

60:                                               ; preds = %44
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %62 = load %struct.alpha_relax_info*, %struct.alpha_relax_info** %4, align 8
  %63 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %62, i32 0, i32 2
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i64 %67
  store %struct.TYPE_19__* %68, %struct.TYPE_19__** %7, align 8
  %69 = load %struct.alpha_relax_info*, %struct.alpha_relax_info** %4, align 8
  %70 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %69, i32 0, i32 3
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %60
  br label %78

76:                                               ; preds = %60
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  br label %78

78:                                               ; preds = %76, %75
  %79 = phi %struct.TYPE_19__* [ null, %75 ], [ %77, %76 ]
  store %struct.TYPE_19__* %79, %struct.TYPE_19__** %8, align 8
  br label %80

80:                                               ; preds = %78, %37
  %81 = load i64, i64* %5, align 8
  %82 = load %struct.alpha_relax_info*, %struct.alpha_relax_info** %4, align 8
  %83 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %82, i32 0, i32 2
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 3
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = sub nsw i64 %81, %88
  %90 = load %struct.alpha_relax_info*, %struct.alpha_relax_info** %4, align 8
  %91 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %90, i32 0, i32 2
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = sub nsw i64 %89, %94
  store i64 %95, i64* %10, align 8
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %98 = load i64, i64* %10, align 8
  %99 = load i32, i32* @R_ALPHA_GPDISP, align 4
  %100 = call %struct.TYPE_19__* @elf64_alpha_find_reloc_at_ofs(%struct.TYPE_19__* %96, %struct.TYPE_19__* %97, i64 %98, i32 %99)
  store %struct.TYPE_19__* %100, %struct.TYPE_19__** %9, align 8
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %102 = icmp ne %struct.TYPE_19__* %101, null
  br i1 %102, label %103, label %108

103:                                              ; preds = %80
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 4
  br i1 %107, label %108, label %115

108:                                              ; preds = %103, %80
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %110 = icmp ne %struct.TYPE_19__* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %113 = call i32 @free(%struct.TYPE_19__* %112)
  br label %114

114:                                              ; preds = %111, %108
  store i64 0, i64* %3, align 8
  br label %156

115:                                              ; preds = %103
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %117 = icmp ne %struct.TYPE_19__* %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %120 = call i32 @free(%struct.TYPE_19__* %119)
  br label %121

121:                                              ; preds = %118, %115
  br label %122

122:                                              ; preds = %121, %28
  br label %123

123:                                              ; preds = %122
  %124 = load %struct.alpha_relax_info*, %struct.alpha_relax_info** %4, align 8
  %125 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %124, i32 0, i32 3
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.alpha_relax_info*, %struct.alpha_relax_info** %4, align 8
  %132 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %131, i32 0, i32 2
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %130, %137
  br i1 %138, label %152, label %139

139:                                              ; preds = %123
  %140 = load %struct.alpha_relax_info*, %struct.alpha_relax_info** %4, align 8
  %141 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.alpha_relax_info*, %struct.alpha_relax_info** %4, align 8
  %144 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %143, i32 0, i32 2
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %146, align 8
  %148 = call %struct.TYPE_20__* @alpha_elf_tdata(%struct.TYPE_14__* %147)
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %142, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %139, %123
  store i64 0, i64* %3, align 8
  br label %156

153:                                              ; preds = %139
  %154 = load i64, i64* %5, align 8
  %155 = add nsw i64 %154, 8
  store i64 %155, i64* %3, align 8
  br label %156

156:                                              ; preds = %153, %152, %114, %59, %18
  %157 = load i64, i64* %3, align 8
  ret i64 %157
}

declare dso_local %struct.TYPE_19__* @_bfd_elf_link_read_relocs(i32, %struct.TYPE_15__*, i32, %struct.TYPE_19__*, i64) #1

declare dso_local %struct.TYPE_19__* @elf64_alpha_find_reloc_at_ofs(%struct.TYPE_19__*, %struct.TYPE_19__*, i64, i32) #1

declare dso_local i32 @free(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_20__* @alpha_elf_tdata(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
