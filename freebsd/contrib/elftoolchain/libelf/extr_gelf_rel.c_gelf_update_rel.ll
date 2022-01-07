; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_gelf_rel.c_gelf_update_rel.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_gelf_rel.c_gelf_update_rel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_16__, %struct.TYPE_21__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct._Libelf_Data = type { %struct.TYPE_17__, %struct.TYPE_19__* }
%struct.TYPE_17__ = type { i64, i64 }

@ARGUMENT = common dso_local global i32 0, align 4
@ELFCLASS32 = common dso_local global i32 0, align 4
@ELFCLASS64 = common dso_local global i32 0, align 4
@ELF_T_REL = common dso_local global i64 0, align 8
@r_offset = common dso_local global i32 0, align 4
@RANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gelf_update_rel(i32* %0, i32 %1, %struct.TYPE_18__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca %struct._Libelf_Data*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %7, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = bitcast i32* %16 to %struct._Libelf_Data*
  store %struct._Libelf_Data* %17, %struct._Libelf_Data** %15, align 8
  %18 = load %struct._Libelf_Data*, %struct._Libelf_Data** %15, align 8
  %19 = icmp eq %struct._Libelf_Data* %18, null
  br i1 %19, label %36, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %36, label %23

23:                                               ; preds = %20
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %25 = icmp eq %struct.TYPE_18__* %24, null
  br i1 %25, label %36, label %26

26:                                               ; preds = %23
  %27 = load %struct._Libelf_Data*, %struct._Libelf_Data** %15, align 8
  %28 = getelementptr inbounds %struct._Libelf_Data, %struct._Libelf_Data* %27, i32 0, i32 1
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %28, align 8
  store %struct.TYPE_19__* %29, %struct.TYPE_19__** %11, align 8
  %30 = icmp eq %struct.TYPE_19__* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %33, align 8
  store %struct.TYPE_21__* %34, %struct.TYPE_21__** %9, align 8
  %35 = icmp eq %struct.TYPE_21__* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %31, %26, %23, %20, %3
  %37 = load i32, i32* @ARGUMENT, align 4
  %38 = call i32 @LIBELF_SET_ERROR(i32 %37, i32 0)
  store i32 0, i32* %4, align 4
  br label %176

39:                                               ; preds = %31
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @ELFCLASS32, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @ELFCLASS64, align 4
  %49 = icmp eq i32 %47, %48
  br label %50

50:                                               ; preds = %46, %39
  %51 = phi i1 [ true, %39 ], [ %49, %46 ]
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @ELFCLASS32, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %50
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %12, align 4
  br label %69

63:                                               ; preds = %50
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %12, align 4
  br label %69

69:                                               ; preds = %63, %57
  %70 = load i32, i32* %12, align 4
  %71 = call i64 @_libelf_xlate_shtype(i32 %70)
  %72 = load i64, i64* @ELF_T_REL, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32, i32* @ARGUMENT, align 4
  %76 = call i32 @LIBELF_SET_ERROR(i32 %75, i32 0)
  store i32 0, i32* %4, align 4
  br label %176

77:                                               ; preds = %69
  %78 = load i64, i64* @ELF_T_REL, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @_libelf_msize(i64 %78, i32 %79, i32 %82)
  store i64 %83, i64* %10, align 8
  %84 = load i64, i64* %10, align 8
  %85 = icmp ugt i64 %84, 0
  %86 = zext i1 %85 to i32
  %87 = call i32 @assert(i32 %86)
  %88 = load i32, i32* %6, align 4
  %89 = icmp sge i32 %88, 0
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert(i32 %90)
  %92 = load i64, i64* %10, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = mul i64 %92, %94
  %96 = load %struct._Libelf_Data*, %struct._Libelf_Data** %15, align 8
  %97 = getelementptr inbounds %struct._Libelf_Data, %struct._Libelf_Data* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp uge i64 %95, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %77
  %102 = load i32, i32* @ARGUMENT, align 4
  %103 = call i32 @LIBELF_SET_ERROR(i32 %102, i32 0)
  store i32 0, i32* %4, align 4
  br label %176

104:                                              ; preds = %77
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @ELFCLASS32, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %151

108:                                              ; preds = %104
  %109 = load %struct._Libelf_Data*, %struct._Libelf_Data** %15, align 8
  %110 = getelementptr inbounds %struct._Libelf_Data, %struct._Libelf_Data* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = inttoptr i64 %112 to %struct.TYPE_20__*
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i64 %115
  store %struct.TYPE_20__* %116, %struct.TYPE_20__** %13, align 8
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %119 = load i32, i32* @r_offset, align 4
  %120 = call i32 @LIBELF_COPY_U32(%struct.TYPE_20__* %117, %struct.TYPE_18__* %118, i32 %119)
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i64 @ELF64_R_SYM(i32 %123)
  %125 = call i64 @ELF32_R_SYM(i64 -1)
  %126 = icmp sgt i64 %124, %125
  br i1 %126, label %134, label %127

127:                                              ; preds = %108
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i64 @ELF64_R_TYPE(i32 %130)
  %132 = call i64 @ELF32_R_TYPE(i32 -1)
  %133 = icmp sgt i64 %131, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %127, %108
  %135 = load i32, i32* @RANGE, align 4
  %136 = call i32 @LIBELF_SET_ERROR(i32 %135, i32 0)
  store i32 0, i32* %4, align 4
  br label %176

137:                                              ; preds = %127
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i64 @ELF64_R_SYM(i32 %140)
  %142 = trunc i64 %141 to i32
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i64 @ELF64_R_TYPE(i32 %145)
  %147 = trunc i64 %146 to i32
  %148 = call i32 @ELF32_R_INFO(i32 %142, i32 %147)
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 4
  br label %175

151:                                              ; preds = %104
  %152 = load %struct._Libelf_Data*, %struct._Libelf_Data** %15, align 8
  %153 = getelementptr inbounds %struct._Libelf_Data, %struct._Libelf_Data* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = inttoptr i64 %155 to %struct.TYPE_18__*
  %157 = load i32, i32* %6, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i64 %158
  store %struct.TYPE_18__* %159, %struct.TYPE_18__** %14, align 8
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %162 = bitcast %struct.TYPE_18__* %160 to i8*
  %163 = bitcast %struct.TYPE_18__* %161 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %162, i8* align 4 %163, i64 4, i1 false)
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %165 = call i64 @_libelf_is_mips64el(%struct.TYPE_21__* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %151
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @_libelf_mips64el_r_info_tof(i32 %170)
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 0
  store i32 %171, i32* %173, align 4
  br label %174

174:                                              ; preds = %167, %151
  br label %175

175:                                              ; preds = %174, %137
  store i32 1, i32* %4, align 4
  br label %176

176:                                              ; preds = %175, %134, %101, %74, %36
  %177 = load i32, i32* %4, align 4
  ret i32 %177
}

declare dso_local i32 @LIBELF_SET_ERROR(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @_libelf_xlate_shtype(i32) #1

declare dso_local i64 @_libelf_msize(i64, i32, i32) #1

declare dso_local i32 @LIBELF_COPY_U32(%struct.TYPE_20__*, %struct.TYPE_18__*, i32) #1

declare dso_local i64 @ELF64_R_SYM(i32) #1

declare dso_local i64 @ELF32_R_SYM(i64) #1

declare dso_local i64 @ELF64_R_TYPE(i32) #1

declare dso_local i64 @ELF32_R_TYPE(i32) #1

declare dso_local i32 @ELF32_R_INFO(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @_libelf_is_mips64el(%struct.TYPE_21__*) #1

declare dso_local i32 @_libelf_mips64el_r_info_tof(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
