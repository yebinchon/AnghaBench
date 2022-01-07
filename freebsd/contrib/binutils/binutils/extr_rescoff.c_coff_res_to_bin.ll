; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_rescoff.c_coff_res_to_bin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_rescoff.c_coff_res_to_bin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.coff_write_info = type { i32, i32, i32, i32, i32, %struct.TYPE_13__, %struct.TYPE_11__, %struct.TYPE_16__**, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_15__*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_15__*, %struct.TYPE_14__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32*, i64, i32 }
%struct.extern_res_data = type { i32, i32, i32, i32 }

@BFD_RELOC_RVA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"can't get BFD_RELOC_RVA relocation type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.coff_write_info*)* @coff_res_to_bin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coff_res_to_bin(%struct.TYPE_14__* %0, %struct.coff_write_info* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.coff_write_info*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.extern_res_data*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.coff_write_info* %1, %struct.coff_write_info** %4, align 8
  %8 = call i64 @reswr_alloc(i32 32)
  %9 = inttoptr i64 %8 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %9, %struct.TYPE_16__** %5, align 8
  %10 = load %struct.coff_write_info*, %struct.coff_write_info** %4, align 8
  %11 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %10, i32 0, i32 8
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 8
  %15 = load %struct.coff_write_info*, %struct.coff_write_info** %4, align 8
  %16 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.coff_write_info*, %struct.coff_write_info** %4, align 8
  %19 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %17, %20
  %22 = load %struct.coff_write_info*, %struct.coff_write_info** %4, align 8
  %23 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %22, i32 0, i32 6
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %21, %25
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load %struct.coff_write_info*, %struct.coff_write_info** %4, align 8
  %32 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @WR_BFD(i32 %33)
  %35 = load i32, i32* @BFD_RELOC_RVA, align 4
  %36 = call i32* @bfd_reloc_type_lookup(i32 %34, i32 %35)
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 1
  store i32* %36, i32** %38, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %2
  %44 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %45 = call i32 @bfd_fatal(i32 %44)
  br label %46

46:                                               ; preds = %43, %2
  %47 = load %struct.coff_write_info*, %struct.coff_write_info** %4, align 8
  %48 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %47, i32 0, i32 7
  %49 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %48, align 8
  %50 = load %struct.coff_write_info*, %struct.coff_write_info** %4, align 8
  %51 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 2
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 8
  %56 = trunc i64 %55 to i32
  %57 = call %struct.TYPE_16__** @xrealloc(%struct.TYPE_16__** %49, i32 %56)
  %58 = load %struct.coff_write_info*, %struct.coff_write_info** %4, align 8
  %59 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %58, i32 0, i32 7
  store %struct.TYPE_16__** %57, %struct.TYPE_16__*** %59, align 8
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %61 = load %struct.coff_write_info*, %struct.coff_write_info** %4, align 8
  %62 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %61, i32 0, i32 7
  %63 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %62, align 8
  %64 = load %struct.coff_write_info*, %struct.coff_write_info** %4, align 8
  %65 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %63, i64 %67
  store %struct.TYPE_16__* %60, %struct.TYPE_16__** %68, align 8
  %69 = load %struct.coff_write_info*, %struct.coff_write_info** %4, align 8
  %70 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %69, i32 0, i32 7
  %71 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %70, align 8
  %72 = load %struct.coff_write_info*, %struct.coff_write_info** %4, align 8
  %73 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %71, i64 %76
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %77, align 8
  %78 = load %struct.coff_write_info*, %struct.coff_write_info** %4, align 8
  %79 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 8
  %82 = load %struct.coff_write_info*, %struct.coff_write_info** %4, align 8
  %83 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %82, i32 0, i32 6
  %84 = call i64 @coff_alloc(%struct.TYPE_11__* %83, i32 16)
  %85 = inttoptr i64 %84 to %struct.extern_res_data*
  store %struct.extern_res_data* %85, %struct.extern_res_data** %6, align 8
  %86 = load %struct.coff_write_info*, %struct.coff_write_info** %4, align 8
  %87 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.extern_res_data*, %struct.extern_res_data** %6, align 8
  %90 = getelementptr inbounds %struct.extern_res_data, %struct.extern_res_data* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.coff_write_info*, %struct.coff_write_info** %4, align 8
  %93 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.coff_write_info*, %struct.coff_write_info** %4, align 8
  %96 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %94, %97
  %99 = load %struct.coff_write_info*, %struct.coff_write_info** %4, align 8
  %100 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %98, %101
  %103 = load %struct.coff_write_info*, %struct.coff_write_info** %4, align 8
  %104 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %103, i32 0, i32 5
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = add nsw i32 %102, %106
  %108 = call i32 @windres_put_32(i32 %88, i32 %91, i32 %107)
  %109 = load %struct.coff_write_info*, %struct.coff_write_info** %4, align 8
  %110 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.extern_res_data*, %struct.extern_res_data** %6, align 8
  %113 = getelementptr inbounds %struct.extern_res_data, %struct.extern_res_data* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @windres_put_32(i32 %111, i32 %114, i32 %118)
  %120 = load %struct.coff_write_info*, %struct.coff_write_info** %4, align 8
  %121 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.extern_res_data*, %struct.extern_res_data** %6, align 8
  %124 = getelementptr inbounds %struct.extern_res_data, %struct.extern_res_data* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @windres_put_32(i32 %122, i32 %125, i32 %129)
  %131 = call i64 @reswr_alloc(i32 24)
  %132 = inttoptr i64 %131 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %132, %struct.TYPE_15__** %7, align 8
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %134 = call i32 @res_to_bin(i32* null, i32 0, %struct.TYPE_14__* %133)
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 2
  store %struct.TYPE_14__* %137, %struct.TYPE_14__** %139, align 8
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 1
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %141, align 8
  %142 = load %struct.coff_write_info*, %struct.coff_write_info** %4, align 8
  %143 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %142, i32 0, i32 5
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %144, align 8
  %146 = icmp eq %struct.TYPE_15__* %145, null
  br i1 %146, label %147, label %152

147:                                              ; preds = %46
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %149 = load %struct.coff_write_info*, %struct.coff_write_info** %4, align 8
  %150 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %149, i32 0, i32 5
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 2
  store %struct.TYPE_15__* %148, %struct.TYPE_15__** %151, align 8
  br label %159

152:                                              ; preds = %46
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %154 = load %struct.coff_write_info*, %struct.coff_write_info** %4, align 8
  %155 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %154, i32 0, i32 5
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 1
  store %struct.TYPE_15__* %153, %struct.TYPE_15__** %158, align 8
  br label %159

159:                                              ; preds = %152, %147
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %161 = load %struct.coff_write_info*, %struct.coff_write_info** %4, align 8
  %162 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %161, i32 0, i32 5
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 1
  store %struct.TYPE_15__* %160, %struct.TYPE_15__** %163, align 8
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = add nsw i32 %166, 3
  %168 = and i32 %167, -4
  %169 = load %struct.coff_write_info*, %struct.coff_write_info** %4, align 8
  %170 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %169, i32 0, i32 5
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = add nsw i32 %172, %168
  store i32 %173, i32* %171, align 8
  %174 = load %struct.coff_write_info*, %struct.coff_write_info** %4, align 8
  %175 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.extern_res_data*, %struct.extern_res_data** %6, align 8
  %178 = getelementptr inbounds %struct.extern_res_data, %struct.extern_res_data* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @windres_put_32(i32 %176, i32 %179, i32 %182)
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = add nsw i32 %186, 3
  %188 = and i32 %187, -4
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 0
  store i32 %188, i32* %190, align 8
  ret void
}

declare dso_local i64 @reswr_alloc(i32) #1

declare dso_local i32* @bfd_reloc_type_lookup(i32, i32) #1

declare dso_local i32 @WR_BFD(i32) #1

declare dso_local i32 @bfd_fatal(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.TYPE_16__** @xrealloc(%struct.TYPE_16__**, i32) #1

declare dso_local i64 @coff_alloc(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @windres_put_32(i32, i32, i32) #1

declare dso_local i32 @res_to_bin(i32*, i32, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
