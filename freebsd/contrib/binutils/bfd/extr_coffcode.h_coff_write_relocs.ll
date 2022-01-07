; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coffcode.h_coff_write_relocs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coffcode.h_coff_write_relocs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_24__**, %struct.TYPE_25__* }
%struct.TYPE_24__ = type { i8*, i64, i32, %struct.TYPE_23__* }
%struct.TYPE_25__ = type { i32, i32, i32, %struct.TYPE_26__**, %struct.TYPE_25__* }
%struct.TYPE_26__ = type { i32, i32, %struct.TYPE_22__*, %struct.TYPE_24__** }
%struct.TYPE_22__ = type { i64 }
%struct.external_reloc = type { i32 }
%struct.internal_reloc = type { i32, i32, i32, i64 }

@SEEK_SET = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@bfd_abs_section_ptr = common dso_local global i64 0, align 8
@BSF_SECTION_SYM = common dso_local global i32 0, align 4
@bfd_error_bad_value = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"%B: reloc against a non-existant symbol index: %ld\00", align 1
@TRUE = common dso_local global i32 0, align 4
@R_IHCONST = common dso_local global i64 0, align 8
@compare_arelent_ptr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, i32)* @coff_write_relocs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coff_write_relocs(%struct.TYPE_23__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.external_reloc, align 4
  %9 = alloca %struct.TYPE_26__**, align 8
  %10 = alloca %struct.internal_reloc, align 8
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_24__**, align 8
  %15 = alloca i8*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  store %struct.TYPE_25__* %18, %struct.TYPE_25__** %6, align 8
  br label %19

19:                                               ; preds = %182, %2
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %21 = icmp ne %struct.TYPE_25__* %20, null
  br i1 %21, label %22, label %186

22:                                               ; preds = %19
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %24, align 8
  store %struct.TYPE_26__** %25, %struct.TYPE_26__*** %9, align 8
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @SEEK_SET, align 4
  %31 = call i64 @bfd_seek(%struct.TYPE_23__* %26, i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %22
  %34 = load i32, i32* @FALSE, align 4
  store i32 %34, i32* %3, align 4
  br label %188

35:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %178, %35
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ult i32 %37, %40
  br i1 %41, label %42, label %181

42:                                               ; preds = %36
  %43 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %9, align 8
  %44 = load i32, i32* %7, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %43, i64 %45
  %47 = load %struct.TYPE_26__*, %struct.TYPE_26__** %46, align 8
  store %struct.TYPE_26__* %47, %struct.TYPE_26__** %11, align 8
  %48 = call i32 @memset(%struct.internal_reloc* %10, i32 0, i32 24)
  %49 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %49, i32 0, i32 3
  %51 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %51, i64 0
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %54, align 8
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %57 = icmp ne %struct.TYPE_23__* %55, %56
  br i1 %57, label %58, label %101

58:                                               ; preds = %42
  %59 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %61, i64 0
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %13, align 8
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %67, align 8
  store %struct.TYPE_24__** %68, %struct.TYPE_24__*** %14, align 8
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %12, align 4
  br label %70

70:                                               ; preds = %97, %58
  %71 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %14, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %71, i64 %73
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %74, align 8
  %76 = icmp ne %struct.TYPE_24__* %75, null
  br i1 %76, label %77, label %100

77:                                               ; preds = %70
  %78 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %14, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %78, i64 %80
  %82 = load %struct.TYPE_24__*, %struct.TYPE_24__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  store i8* %84, i8** %15, align 8
  %85 = load i8*, i8** %15, align 8
  %86 = load i8*, i8** %13, align 8
  %87 = call i64 @strcmp(i8* %85, i8* %86)
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %77
  %90 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %14, align 8
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %90, i64 %92
  %94 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %94, i32 0, i32 3
  store %struct.TYPE_24__** %93, %struct.TYPE_24__*** %95, align 8
  br label %100

96:                                               ; preds = %77
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %12, align 4
  br label %70

100:                                              ; preds = %89, %70
  br label %101

101:                                              ; preds = %100, %42
  %102 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %104, %107
  %109 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %10, i32 0, i32 0
  store i32 %108, i32* %109, align 8
  %110 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %110, i32 0, i32 3
  %112 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %111, align 8
  %113 = icmp ne %struct.TYPE_24__** %112, null
  br i1 %113, label %114, label %158

114:                                              ; preds = %101
  %115 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %115, i32 0, i32 3
  %117 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %116, align 8
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @bfd_abs_section_ptr, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %135

123:                                              ; preds = %114
  %124 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %124, i32 0, i32 3
  %126 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %125, align 8
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @BSF_SECTION_SYM, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %123
  %134 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %10, i32 0, i32 1
  store i32 -1, i32* %134, align 4
  br label %157

135:                                              ; preds = %123, %114
  %136 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %136, i32 0, i32 3
  %138 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %137, align 8
  %139 = load %struct.TYPE_24__*, %struct.TYPE_24__** %138, align 8
  %140 = call i32 @get_index(%struct.TYPE_24__* %139)
  %141 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %10, i32 0, i32 1
  store i32 %140, i32* %141, align 4
  %142 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %10, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %145 = call i32 @obj_conv_table_size(%struct.TYPE_23__* %144)
  %146 = icmp sgt i32 %143, %145
  br i1 %146, label %147, label %156

147:                                              ; preds = %135
  %148 = load i32, i32* @bfd_error_bad_value, align 4
  %149 = call i32 @bfd_set_error(i32 %148)
  %150 = call i32 @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %151 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %152 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %10, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @_bfd_error_handler(i32 %150, %struct.TYPE_23__* %151, i32 %153)
  %155 = load i32, i32* @FALSE, align 4
  store i32 %155, i32* %3, align 4
  br label %188

156:                                              ; preds = %135
  br label %157

157:                                              ; preds = %156, %133
  br label %158

158:                                              ; preds = %157, %101
  %159 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %160 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %159, i32 0, i32 2
  %161 = load %struct.TYPE_22__*, %struct.TYPE_22__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %10, i32 0, i32 3
  store i64 %163, i64* %164, align 8
  %165 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %166 = call i32 @coff_swap_reloc_out(%struct.TYPE_23__* %165, %struct.internal_reloc* %10, %struct.external_reloc* %8)
  %167 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %168 = call i64 @bfd_coff_relsz(%struct.TYPE_23__* %167)
  %169 = trunc i64 %168 to i32
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %171 = call i64 @bfd_bwrite(%struct.external_reloc* %8, i32 %169, %struct.TYPE_23__* %170)
  %172 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %173 = call i64 @bfd_coff_relsz(%struct.TYPE_23__* %172)
  %174 = icmp ne i64 %171, %173
  br i1 %174, label %175, label %177

175:                                              ; preds = %158
  %176 = load i32, i32* @FALSE, align 4
  store i32 %176, i32* %3, align 4
  br label %188

177:                                              ; preds = %158
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %7, align 4
  %180 = add i32 %179, 1
  store i32 %180, i32* %7, align 4
  br label %36

181:                                              ; preds = %36
  br label %182

182:                                              ; preds = %181
  %183 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %183, i32 0, i32 4
  %185 = load %struct.TYPE_25__*, %struct.TYPE_25__** %184, align 8
  store %struct.TYPE_25__* %185, %struct.TYPE_25__** %6, align 8
  br label %19

186:                                              ; preds = %19
  %187 = load i32, i32* @TRUE, align 4
  store i32 %187, i32* %3, align 4
  br label %188

188:                                              ; preds = %186, %175, %147, %33
  %189 = load i32, i32* %3, align 4
  ret i32 %189
}

declare dso_local i64 @bfd_seek(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @memset(%struct.internal_reloc*, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @get_index(%struct.TYPE_24__*) #1

declare dso_local i32 @obj_conv_table_size(%struct.TYPE_23__*) #1

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local i32 @_bfd_error_handler(i32, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @coff_swap_reloc_out(%struct.TYPE_23__*, %struct.internal_reloc*, %struct.external_reloc*) #1

declare dso_local i64 @bfd_bwrite(%struct.external_reloc*, i32, %struct.TYPE_23__*) #1

declare dso_local i64 @bfd_coff_relsz(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
