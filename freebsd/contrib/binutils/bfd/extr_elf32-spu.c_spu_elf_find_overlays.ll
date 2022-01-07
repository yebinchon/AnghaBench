; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_spu_elf_find_overlays.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_spu_elf_find_overlays.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i64, i64, %struct.TYPE_12__* }
%struct.bfd_link_info = type { i32 }
%struct.spu_link_hash_table = type { i32, i32, %struct.TYPE_12__** }
%struct.TYPE_13__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@SEC_ALLOC = common dso_local global i32 0, align 4
@SEC_LOAD = common dso_local global i32 0, align 4
@SEC_THREAD_LOCAL = common dso_local global i32 0, align 4
@sort_sections = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spu_elf_find_overlays(%struct.TYPE_11__* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca %struct.spu_link_hash_table*, align 8
  %7 = alloca %struct.TYPE_12__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %5, align 8
  %15 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %16 = call %struct.spu_link_hash_table* @spu_hash_table(%struct.bfd_link_info* %15)
  store %struct.spu_link_hash_table* %16, %struct.spu_link_hash_table** %6, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %19, 2
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %3, align 4
  br label %220

23:                                               ; preds = %2
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 8
  %29 = trunc i64 %28 to i32
  %30 = call %struct.TYPE_12__** @bfd_malloc(i32 %29)
  store %struct.TYPE_12__** %30, %struct.TYPE_12__*** %7, align 8
  %31 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %32 = icmp eq %struct.TYPE_12__** %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = load i32, i32* @FALSE, align 4
  store i32 %34, i32* %3, align 4
  br label %220

35:                                               ; preds = %23
  store i32 0, i32* %9, align 4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  store %struct.TYPE_12__* %38, %struct.TYPE_12__** %12, align 8
  br label %39

39:                                               ; preds = %72, %35
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %41 = icmp ne %struct.TYPE_12__* %40, null
  br i1 %41, label %42, label %76

42:                                               ; preds = %39
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @SEC_ALLOC, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %71

49:                                               ; preds = %42
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @SEC_LOAD, align 4
  %54 = load i32, i32* @SEC_THREAD_LOCAL, align 4
  %55 = or i32 %53, %54
  %56 = and i32 %52, %55
  %57 = load i32, i32* @SEC_THREAD_LOCAL, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %49
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %66 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %67 = load i32, i32* %9, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %9, align 4
  %69 = zext i32 %67 to i64
  %70 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %66, i64 %69
  store %struct.TYPE_12__* %65, %struct.TYPE_12__** %70, align 8
  br label %71

71:                                               ; preds = %64, %59, %49, %42
  br label %72

72:                                               ; preds = %71
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 3
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %74, align 8
  store %struct.TYPE_12__* %75, %struct.TYPE_12__** %12, align 8
  br label %39

76:                                               ; preds = %39
  %77 = load i32, i32* %9, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %81 = call i32 @free(%struct.TYPE_12__** %80)
  %82 = load i32, i32* @FALSE, align 4
  store i32 %82, i32* %3, align 4
  br label %220

83:                                               ; preds = %76
  %84 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @sort_sections, align 4
  %87 = call i32 @qsort(%struct.TYPE_12__** %84, i32 %85, i32 8, i32 %86)
  %88 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %88, i64 0
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %93, i64 0
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %92, %97
  store i64 %98, i64* %13, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 1, i32* %8, align 4
  br label %99

99:                                               ; preds = %187, %83
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp ult i32 %100, %101
  br i1 %102, label %103, label %190

103:                                              ; preds = %99
  %104 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %105 = load i32, i32* %8, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %104, i64 %106
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %107, align 8
  store %struct.TYPE_12__* %108, %struct.TYPE_12__** %12, align 8
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* %13, align 8
  %113 = icmp slt i64 %111, %112
  br i1 %113, label %114, label %178

114:                                              ; preds = %103
  %115 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %116 = load i32, i32* %8, align 4
  %117 = sub i32 %116, 1
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %115, i64 %118
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %119, align 8
  store %struct.TYPE_12__* %120, %struct.TYPE_12__** %14, align 8
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %122 = call %struct.TYPE_13__* @spu_elf_section_data(%struct.TYPE_12__* %121)
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %147

126:                                              ; preds = %114
  %127 = load i32, i32* %10, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %10, align 4
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %130 = call %struct.TYPE_13__* @spu_elf_section_data(%struct.TYPE_12__* %129)
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  store i32 %128, i32* %131, align 4
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %133 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %134 = load i32, i32* %11, align 4
  %135 = mul i32 %134, 2
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %133, i64 %136
  store %struct.TYPE_12__* %132, %struct.TYPE_12__** %137, align 8
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %139 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %140 = load i32, i32* %11, align 4
  %141 = mul i32 %140, 2
  %142 = add i32 %141, 1
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %139, i64 %143
  store %struct.TYPE_12__* %138, %struct.TYPE_12__** %144, align 8
  %145 = load i32, i32* %11, align 4
  %146 = add i32 %145, 1
  store i32 %146, i32* %11, align 4
  br label %147

147:                                              ; preds = %126, %114
  %148 = load i32, i32* %10, align 4
  %149 = add i32 %148, 1
  store i32 %149, i32* %10, align 4
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %151 = call %struct.TYPE_13__* @spu_elf_section_data(%struct.TYPE_12__* %150)
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 0
  store i32 %149, i32* %152, align 4
  %153 = load i64, i64* %13, align 8
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = add nsw i64 %156, %159
  %161 = icmp slt i64 %153, %160
  br i1 %161, label %162, label %177

162:                                              ; preds = %147
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = add nsw i64 %165, %168
  store i64 %169, i64* %13, align 8
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %171 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %172 = load i32, i32* %11, align 4
  %173 = mul i32 %172, 2
  %174 = sub i32 %173, 1
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %171, i64 %175
  store %struct.TYPE_12__* %170, %struct.TYPE_12__** %176, align 8
  br label %177

177:                                              ; preds = %162, %147
  br label %186

178:                                              ; preds = %103
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = add nsw i64 %181, %184
  store i64 %185, i64* %13, align 8
  br label %186

186:                                              ; preds = %178, %177
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %8, align 4
  %189 = add i32 %188, 1
  store i32 %189, i32* %8, align 4
  br label %99

190:                                              ; preds = %99
  %191 = load i32, i32* %10, align 4
  %192 = load %struct.spu_link_hash_table*, %struct.spu_link_hash_table** %6, align 8
  %193 = getelementptr inbounds %struct.spu_link_hash_table, %struct.spu_link_hash_table* %192, i32 0, i32 0
  store i32 %191, i32* %193, align 8
  %194 = load i32, i32* %11, align 4
  %195 = load %struct.spu_link_hash_table*, %struct.spu_link_hash_table** %6, align 8
  %196 = getelementptr inbounds %struct.spu_link_hash_table, %struct.spu_link_hash_table* %195, i32 0, i32 1
  store i32 %194, i32* %196, align 4
  %197 = load i32, i32* %10, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %190
  %200 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %201 = call i32 @free(%struct.TYPE_12__** %200)
  %202 = load i32, i32* @FALSE, align 4
  store i32 %202, i32* %3, align 4
  br label %220

203:                                              ; preds = %190
  %204 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %205 = load i32, i32* %11, align 4
  %206 = mul i32 %205, 2
  %207 = zext i32 %206 to i64
  %208 = mul i64 %207, 8
  %209 = trunc i64 %208 to i32
  %210 = call %struct.TYPE_12__** @bfd_realloc(%struct.TYPE_12__** %204, i32 %209)
  store %struct.TYPE_12__** %210, %struct.TYPE_12__*** %7, align 8
  %211 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %212 = icmp eq %struct.TYPE_12__** %211, null
  br i1 %212, label %213, label %215

213:                                              ; preds = %203
  %214 = load i32, i32* @FALSE, align 4
  store i32 %214, i32* %3, align 4
  br label %220

215:                                              ; preds = %203
  %216 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %217 = load %struct.spu_link_hash_table*, %struct.spu_link_hash_table** %6, align 8
  %218 = getelementptr inbounds %struct.spu_link_hash_table, %struct.spu_link_hash_table* %217, i32 0, i32 2
  store %struct.TYPE_12__** %216, %struct.TYPE_12__*** %218, align 8
  %219 = load i32, i32* @TRUE, align 4
  store i32 %219, i32* %3, align 4
  br label %220

220:                                              ; preds = %215, %213, %199, %79, %33, %21
  %221 = load i32, i32* %3, align 4
  ret i32 %221
}

declare dso_local %struct.spu_link_hash_table* @spu_hash_table(%struct.bfd_link_info*) #1

declare dso_local %struct.TYPE_12__** @bfd_malloc(i32) #1

declare dso_local i32 @free(%struct.TYPE_12__**) #1

declare dso_local i32 @qsort(%struct.TYPE_12__**, i32, i32, i32) #1

declare dso_local %struct.TYPE_13__* @spu_elf_section_data(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__** @bfd_realloc(%struct.TYPE_12__**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
