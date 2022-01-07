; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_elf_data.c_elf_rawdata.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_elf_data.c_elf_rawdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_15__, %struct.TYPE_18__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i64, i64, i64, i64 }
%struct.TYPE_13__ = type { i64, i64, i64, i64 }
%struct.TYPE_18__ = type { i64, i32, i64, i32, i32* }
%struct.TYPE_17__ = type { i32, i32, i64, i64, i64, i32* }
%struct._Libelf_Data = type { %struct.TYPE_17__ }
%struct.TYPE_12__ = type { %struct.TYPE_17__ }

@ARGUMENT = common dso_local global i32 0, align 4
@ELF_K_ELF = common dso_local global i64 0, align 8
@d_next = common dso_local global i32 0, align 4
@ELFCLASS32 = common dso_local global i32 0, align 4
@ELFCLASS64 = common dso_local global i32 0, align 4
@SHT_NULL = common dso_local global i64 0, align 8
@SECTION = common dso_local global i32 0, align 4
@SHT_NOBITS = common dso_local global i64 0, align 8
@ELF_T_BYTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @elf_rawdata(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct._Libelf_Data*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %14 = icmp eq %struct.TYPE_16__* %13, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %2
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  store %struct.TYPE_18__* %18, %struct.TYPE_18__** %6, align 8
  %19 = icmp eq %struct.TYPE_18__* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 4
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %20, %15, %2
  %26 = load i32, i32* @ARGUMENT, align 4
  %27 = call i32 @LIBELF_SET_ERROR(i32 %26, i32 0)
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %3, align 8
  br label %196

28:                                               ; preds = %20
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ELF_K_ELF, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %37 = bitcast %struct.TYPE_17__* %36 to %struct._Libelf_Data*
  store %struct._Libelf_Data* %37, %struct._Libelf_Data** %9, align 8
  %38 = load %struct._Libelf_Data*, %struct._Libelf_Data** %9, align 8
  %39 = icmp eq %struct._Libelf_Data* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %28
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = call %struct._Libelf_Data* @STAILQ_FIRST(i32* %42)
  store %struct._Libelf_Data* %43, %struct._Libelf_Data** %9, align 8
  %44 = icmp ne %struct._Libelf_Data* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load %struct._Libelf_Data*, %struct._Libelf_Data** %9, align 8
  %47 = getelementptr inbounds %struct._Libelf_Data, %struct._Libelf_Data* %46, i32 0, i32 0
  store %struct.TYPE_17__* %47, %struct.TYPE_17__** %3, align 8
  br label %196

48:                                               ; preds = %40, %28
  %49 = load %struct._Libelf_Data*, %struct._Libelf_Data** %9, align 8
  %50 = icmp ne %struct._Libelf_Data* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load %struct._Libelf_Data*, %struct._Libelf_Data** %9, align 8
  %53 = load i32, i32* @d_next, align 4
  %54 = call %struct.TYPE_12__* @STAILQ_NEXT(%struct._Libelf_Data* %52, i32 %53)
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  store %struct.TYPE_17__* %55, %struct.TYPE_17__** %3, align 8
  br label %196

56:                                               ; preds = %48
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @ELFCLASS32, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %67, label %63

63:                                               ; preds = %56
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @ELFCLASS64, align 4
  %66 = icmp eq i32 %64, %65
  br label %67

67:                                               ; preds = %63, %56
  %68 = phi i1 [ true, %56 ], [ %66, %63 ]
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @ELFCLASS32, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %95

74:                                               ; preds = %67
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %8, align 8
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %11, align 8
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %12, align 8
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %10, align 8
  br label %116

95:                                               ; preds = %67
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %8, align 8
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %11, align 8
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  store i64 %110, i64* %12, align 8
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %10, align 8
  br label %116

116:                                              ; preds = %95, %74
  %117 = load i64, i64* %8, align 8
  %118 = load i64, i64* @SHT_NULL, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load i32, i32* @SECTION, align 4
  %122 = call i32 @LIBELF_SET_ERROR(i32 %121, i32 0)
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %3, align 8
  br label %196

123:                                              ; preds = %116
  %124 = load i64, i64* %8, align 8
  %125 = load i64, i64* @SHT_NOBITS, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %144

127:                                              ; preds = %123
  %128 = load i64, i64* %11, align 8
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = icmp sgt i64 %128, %131
  br i1 %132, label %141, label %133

133:                                              ; preds = %127
  %134 = load i64, i64* %12, align 8
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* %11, align 8
  %139 = sub nsw i64 %137, %138
  %140 = icmp sgt i64 %134, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %133, %127
  %142 = load i32, i32* @SECTION, align 4
  %143 = call i32 @LIBELF_SET_ERROR(i32 %142, i32 0)
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %3, align 8
  br label %196

144:                                              ; preds = %133, %123
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %146 = call %struct._Libelf_Data* @_libelf_allocate_data(%struct.TYPE_16__* %145)
  store %struct._Libelf_Data* %146, %struct._Libelf_Data** %9, align 8
  %147 = icmp eq %struct._Libelf_Data* %146, null
  br i1 %147, label %148, label %149

148:                                              ; preds = %144
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %3, align 8
  br label %196

149:                                              ; preds = %144
  %150 = load i64, i64* %8, align 8
  %151 = load i64, i64* @SHT_NOBITS, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %156, label %153

153:                                              ; preds = %149
  %154 = load i64, i64* %12, align 8
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %153, %149
  br label %163

157:                                              ; preds = %153
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 4
  %160 = load i32*, i32** %159, align 8
  %161 = load i64, i64* %11, align 8
  %162 = getelementptr inbounds i32, i32* %160, i64 %161
  br label %163

163:                                              ; preds = %157, %156
  %164 = phi i32* [ null, %156 ], [ %162, %157 ]
  %165 = load %struct._Libelf_Data*, %struct._Libelf_Data** %9, align 8
  %166 = getelementptr inbounds %struct._Libelf_Data, %struct._Libelf_Data* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 5
  store i32* %164, i32** %167, align 8
  %168 = load %struct._Libelf_Data*, %struct._Libelf_Data** %9, align 8
  %169 = getelementptr inbounds %struct._Libelf_Data, %struct._Libelf_Data* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 4
  store i64 0, i64* %170, align 8
  %171 = load i64, i64* %10, align 8
  %172 = load %struct._Libelf_Data*, %struct._Libelf_Data** %9, align 8
  %173 = getelementptr inbounds %struct._Libelf_Data, %struct._Libelf_Data* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 3
  store i64 %171, i64* %174, align 8
  %175 = load i64, i64* %12, align 8
  %176 = load %struct._Libelf_Data*, %struct._Libelf_Data** %9, align 8
  %177 = getelementptr inbounds %struct._Libelf_Data, %struct._Libelf_Data* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 2
  store i64 %175, i64* %178, align 8
  %179 = load i32, i32* @ELF_T_BYTE, align 4
  %180 = load %struct._Libelf_Data*, %struct._Libelf_Data** %9, align 8
  %181 = getelementptr inbounds %struct._Libelf_Data, %struct._Libelf_Data* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 1
  store i32 %179, i32* %182, align 4
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 8
  %186 = load %struct._Libelf_Data*, %struct._Libelf_Data** %9, align 8
  %187 = getelementptr inbounds %struct._Libelf_Data, %struct._Libelf_Data* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 0
  store i32 %185, i32* %188, align 8
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 0
  %191 = load %struct._Libelf_Data*, %struct._Libelf_Data** %9, align 8
  %192 = load i32, i32* @d_next, align 4
  %193 = call i32 @STAILQ_INSERT_TAIL(i32* %190, %struct._Libelf_Data* %191, i32 %192)
  %194 = load %struct._Libelf_Data*, %struct._Libelf_Data** %9, align 8
  %195 = getelementptr inbounds %struct._Libelf_Data, %struct._Libelf_Data* %194, i32 0, i32 0
  store %struct.TYPE_17__* %195, %struct.TYPE_17__** %3, align 8
  br label %196

196:                                              ; preds = %163, %148, %141, %120, %51, %45, %25
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  ret %struct.TYPE_17__* %197
}

declare dso_local i32 @LIBELF_SET_ERROR(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct._Libelf_Data* @STAILQ_FIRST(i32*) #1

declare dso_local %struct.TYPE_12__* @STAILQ_NEXT(%struct._Libelf_Data*, i32) #1

declare dso_local %struct._Libelf_Data* @_libelf_allocate_data(%struct.TYPE_16__*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct._Libelf_Data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
