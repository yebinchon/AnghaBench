; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_lineno.c_dwarf_srcfiles.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_lineno.c_dwarf_srcfiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_18__*, i32* }
%struct.TYPE_18__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i8**, i32, i64 }
%struct.TYPE_16__ = type { i8*, i8* }
%struct.TYPE_19__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }

@DW_DLE_ARGUMENT = common dso_local global i32 0, align 4
@DW_DLV_ERROR = common dso_local global i32 0, align 4
@DW_AT_stmt_list = common dso_local global i32 0, align 4
@DW_DLE_NO_ENTRY = common dso_local global i32 0, align 4
@DW_DLV_NO_ENTRY = common dso_local global i32 0, align 4
@DW_DLE_NONE = common dso_local global i64 0, align 8
@DW_DLV_OK = common dso_local global i32 0, align 4
@DW_DLE_MEMORY = common dso_local global i32 0, align 4
@lf_next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwarf_srcfiles(%struct.TYPE_17__* %0, i8*** %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i8***, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca %struct.TYPE_19__*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store i8*** %1, i8**** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %17 = icmp ne %struct.TYPE_17__* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  br label %23

22:                                               ; preds = %4
  br label %23

23:                                               ; preds = %22, %18
  %24 = phi i32* [ %21, %18 ], [ null, %22 ]
  store i32* %24, i32** %12, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %26 = icmp eq %struct.TYPE_17__* %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = load i8***, i8**** %7, align 8
  %29 = icmp eq i8*** %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32*, i32** %8, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %30, %27, %23
  %34 = load i32*, i32** %12, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %37 = call i32 @DWARF_SET_ERROR(i32* %34, i32* %35, i32 %36)
  %38 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %38, i32* %5, align 4
  br label %181

39:                                               ; preds = %30
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %41 = load i32, i32* @DW_AT_stmt_list, align 4
  %42 = call %struct.TYPE_19__* @_dwarf_attr_find(%struct.TYPE_17__* %40, i32 %41)
  store %struct.TYPE_19__* %42, %struct.TYPE_19__** %14, align 8
  %43 = icmp eq %struct.TYPE_19__* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load i32*, i32** %12, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* @DW_DLE_NO_ENTRY, align 4
  %48 = call i32 @DWARF_SET_ERROR(i32* %45, i32* %46, i32 %47)
  %49 = load i32, i32* @DW_DLV_NO_ENTRY, align 4
  store i32 %49, i32* %5, align 4
  br label %181

50:                                               ; preds = %39
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %52, align 8
  store %struct.TYPE_18__* %53, %struct.TYPE_18__** %13, align 8
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %55, align 8
  %57 = icmp eq %struct.TYPE_15__* %56, null
  br i1 %57, label %58, label %73

58:                                               ; preds = %50
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %9, align 8
  %67 = call i64 @_dwarf_lineno_init(%struct.TYPE_17__* %59, i32 %65, i32* %66)
  %68 = load i64, i64* @DW_DLE_NONE, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %58
  %71 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %71, i32* %5, align 4
  br label %181

72:                                               ; preds = %58
  br label %73

73:                                               ; preds = %72, %50
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %75, align 8
  %77 = icmp eq %struct.TYPE_15__* %76, null
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load i32*, i32** %12, align 8
  %80 = load i32*, i32** %9, align 8
  %81 = load i32, i32* @DW_DLE_NO_ENTRY, align 4
  %82 = call i32 @DWARF_SET_ERROR(i32* %79, i32* %80, i32 %81)
  %83 = load i32, i32* @DW_DLV_NO_ENTRY, align 4
  store i32 %83, i32* %5, align 4
  br label %181

84:                                               ; preds = %73
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %86, align 8
  store %struct.TYPE_15__* %87, %struct.TYPE_15__** %10, align 8
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  %92 = load i32*, i32** %8, align 8
  store i32 %91, i32* %92, align 4
  %93 = load i32*, i32** %8, align 8
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %84
  %97 = load i32*, i32** %12, align 8
  %98 = load i32*, i32** %9, align 8
  %99 = load i32, i32* @DW_DLE_NO_ENTRY, align 4
  %100 = call i32 @DWARF_SET_ERROR(i32* %97, i32* %98, i32 %99)
  %101 = load i32, i32* @DW_DLV_NO_ENTRY, align 4
  store i32 %101, i32* %5, align 4
  br label %181

102:                                              ; preds = %84
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 0
  %105 = load i8**, i8*** %104, align 8
  %106 = icmp ne i8** %105, null
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 0
  %110 = load i8**, i8*** %109, align 8
  %111 = load i8***, i8**** %7, align 8
  store i8** %110, i8*** %111, align 8
  %112 = load i32, i32* @DW_DLV_OK, align 4
  store i32 %112, i32* %5, align 4
  br label %181

113:                                              ; preds = %102
  %114 = load i32*, i32** %8, align 8
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = mul i64 %116, 8
  %118 = trunc i64 %117 to i32
  %119 = call i8** @malloc(i32 %118)
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  store i8** %119, i8*** %121, align 8
  %122 = icmp eq i8** %119, null
  br i1 %122, label %123, label %129

123:                                              ; preds = %113
  %124 = load i32*, i32** %12, align 8
  %125 = load i32*, i32** %9, align 8
  %126 = load i32, i32* @DW_DLE_MEMORY, align 4
  %127 = call i32 @DWARF_SET_ERROR(i32* %124, i32* %125, i32 %126)
  %128 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %128, i32* %5, align 4
  br label %181

129:                                              ; preds = %113
  store i32 0, i32* %15, align 4
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 1
  %132 = call %struct.TYPE_16__* @STAILQ_FIRST(i32* %131)
  store %struct.TYPE_16__* %132, %struct.TYPE_16__** %11, align 8
  br label %133

133:                                              ; preds = %169, %129
  %134 = load i32, i32* %15, align 4
  %135 = load i32*, i32** %8, align 8
  %136 = load i32, i32* %135, align 4
  %137 = icmp slt i32 %134, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %140 = icmp ne %struct.TYPE_16__* %139, null
  br label %141

141:                                              ; preds = %138, %133
  %142 = phi i1 [ false, %133 ], [ %140, %138 ]
  br i1 %142, label %143, label %175

143:                                              ; preds = %141
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %148, label %158

148:                                              ; preds = %143
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 0
  %154 = load i8**, i8*** %153, align 8
  %155 = load i32, i32* %15, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8*, i8** %154, i64 %156
  store i8* %151, i8** %157, align 8
  br label %168

158:                                              ; preds = %143
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 1
  %161 = load i8*, i8** %160, align 8
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 0
  %164 = load i8**, i8*** %163, align 8
  %165 = load i32, i32* %15, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8*, i8** %164, i64 %166
  store i8* %161, i8** %167, align 8
  br label %168

168:                                              ; preds = %158, %148
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %15, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %15, align 4
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %173 = load i32, i32* @lf_next, align 4
  %174 = call %struct.TYPE_16__* @STAILQ_NEXT(%struct.TYPE_16__* %172, i32 %173)
  store %struct.TYPE_16__* %174, %struct.TYPE_16__** %11, align 8
  br label %133

175:                                              ; preds = %141
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 0
  %178 = load i8**, i8*** %177, align 8
  %179 = load i8***, i8**** %7, align 8
  store i8** %178, i8*** %179, align 8
  %180 = load i32, i32* @DW_DLV_OK, align 4
  store i32 %180, i32* %5, align 4
  br label %181

181:                                              ; preds = %175, %123, %107, %96, %78, %70, %44, %33
  %182 = load i32, i32* %5, align 4
  ret i32 %182
}

declare dso_local i32 @DWARF_SET_ERROR(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_19__* @_dwarf_attr_find(%struct.TYPE_17__*, i32) #1

declare dso_local i64 @_dwarf_lineno_init(%struct.TYPE_17__*, i32, i32*) #1

declare dso_local i8** @malloc(i32) #1

declare dso_local %struct.TYPE_16__* @STAILQ_FIRST(i32*) #1

declare dso_local %struct.TYPE_16__* @STAILQ_NEXT(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
