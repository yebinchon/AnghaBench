; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_loclist.c_dwarf_loclist_n.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_loclist.c_dwarf_loclist_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32*, %struct.TYPE_10__*, %struct.TYPE_7__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, i32* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@DW_DLE_ARGUMENT = common dso_local global i32 0, align 4
@DW_DLV_ERROR = common dso_local global i32 0, align 4
@DW_DLE_NO_ENTRY = common dso_local global i32 0, align 4
@DW_DLV_NO_ENTRY = common dso_local global i32 0, align 4
@DW_DLE_NONE = common dso_local global i32 0, align 4
@DW_DLV_OK = common dso_local global i32 0, align 4
@DW_DLE_MEMORY = common dso_local global i32 0, align 4
@DW_DLE_ATTR_FORM_BAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwarf_loclist_n(%struct.TYPE_8__* %0, i32******* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*******, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32******* %1, i32******** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %13 = icmp ne %struct.TYPE_8__* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  br label %21

20:                                               ; preds = %4
  br label %21

21:                                               ; preds = %20, %14
  %22 = phi i32* [ %19, %14 ], [ null, %20 ]
  store i32* %22, i32** %10, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %24 = icmp eq %struct.TYPE_8__* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %21
  %26 = load i32*******, i32******** %7, align 8
  %27 = icmp eq i32******* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32*, i32** %8, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %28, %25, %21
  %32 = load i32*, i32** %10, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %35 = call i32 @DWARF_SET_ERROR(i32* %32, i32* %33, i32 %34)
  %36 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %36, i32* %5, align 4
  br label %185

37:                                               ; preds = %28
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %179 [
    i32 142, label %41
    i32 138, label %41
    i32 141, label %41
    i32 144, label %41
    i32 143, label %41
    i32 140, label %41
    i32 139, label %41
    i32 137, label %41
    i32 136, label %41
  ]

41:                                               ; preds = %37, %37, %37, %37, %37, %37, %37, %37, %37
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  switch i32 %44, label %173 [
    i32 131, label %45
    i32 130, label %45
    i32 128, label %61
    i32 135, label %95
    i32 134, label %95
    i32 133, label %95
    i32 132, label %95
    i32 129, label %95
  ]

45:                                               ; preds = %41, %41
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp sge i32 %52, 4
  br i1 %53, label %54, label %60

54:                                               ; preds = %45
  %55 = load i32*, i32** %10, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = load i32, i32* @DW_DLE_NO_ENTRY, align 4
  %58 = call i32 @DWARF_SET_ERROR(i32* %55, i32* %56, i32 %57)
  %59 = load i32, i32* @DW_DLV_NO_ENTRY, align 4
  store i32 %59, i32* %5, align 4
  br label %185

60:                                               ; preds = %45
  br label %61

61:                                               ; preds = %41, %60
  %62 = load i32*, i32** %10, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 3
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i64 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32*******, i32******** %7, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = call i32 @_dwarf_loclist_find(i32* %62, %struct.TYPE_9__* %67, i32 %73, i32******* %74, i32* %75, i32* null, i32* %76)
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* @DW_DLE_NO_ENTRY, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %61
  %82 = load i32*, i32** %10, align 8
  %83 = load i32*, i32** %9, align 8
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @DWARF_SET_ERROR(i32* %82, i32* %83, i32 %84)
  %86 = load i32, i32* @DW_DLV_NO_ENTRY, align 4
  store i32 %86, i32* %5, align 4
  br label %185

87:                                               ; preds = %61
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* @DW_DLE_NONE, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %92, i32* %5, align 4
  br label %185

93:                                               ; preds = %87
  %94 = load i32, i32* @DW_DLV_OK, align 4
  store i32 %94, i32* %5, align 4
  br label %185

95:                                               ; preds = %41, %41, %41, %41, %41
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = icmp eq i32* %98, null
  br i1 %99, label %100, label %113

100:                                              ; preds = %95
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 2
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %105 = load i32*, i32** %9, align 8
  %106 = call i32 @_dwarf_loc_add(%struct.TYPE_10__* %103, %struct.TYPE_8__* %104, i32* %105)
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* @DW_DLE_NONE, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %100
  %111 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %111, i32* %5, align 4
  br label %185

112:                                              ; preds = %100
  br label %113

113:                                              ; preds = %112, %95
  %114 = call i8* @calloc(i32 1, i32 8)
  %115 = bitcast i8* %114 to i32******
  %116 = load i32*******, i32******** %7, align 8
  store i32****** %115, i32******* %116, align 8
  %117 = load i32*******, i32******** %7, align 8
  %118 = load i32******, i32******* %117, align 8
  %119 = icmp eq i32****** %118, null
  br i1 %119, label %120, label %126

120:                                              ; preds = %113
  %121 = load i32*, i32** %10, align 8
  %122 = load i32*, i32** %9, align 8
  %123 = load i32, i32* @DW_DLE_MEMORY, align 4
  %124 = call i32 @DWARF_SET_ERROR(i32* %121, i32* %122, i32 %123)
  %125 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %125, i32* %5, align 4
  br label %185

126:                                              ; preds = %113
  %127 = call i8* @calloc(i32 1, i32 8)
  %128 = bitcast i8* %127 to i32*****
  %129 = load i32*******, i32******** %7, align 8
  %130 = load i32******, i32******* %129, align 8
  %131 = getelementptr inbounds i32*****, i32****** %130, i64 0
  store i32***** %128, i32****** %131, align 8
  %132 = load i32*******, i32******** %7, align 8
  %133 = load i32******, i32******* %132, align 8
  %134 = getelementptr inbounds i32*****, i32****** %133, i64 0
  %135 = load i32*****, i32****** %134, align 8
  %136 = icmp eq i32***** %135, null
  br i1 %136, label %137, label %146

137:                                              ; preds = %126
  %138 = load i32*******, i32******** %7, align 8
  %139 = load i32******, i32******* %138, align 8
  %140 = call i32 @free(i32****** %139)
  %141 = load i32*, i32** %10, align 8
  %142 = load i32*, i32** %9, align 8
  %143 = load i32, i32* @DW_DLE_MEMORY, align 4
  %144 = call i32 @DWARF_SET_ERROR(i32* %141, i32* %142, i32 %143)
  %145 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %145, i32* %5, align 4
  br label %185

146:                                              ; preds = %126
  %147 = load i32*, i32** %10, align 8
  %148 = load i32*******, i32******** %7, align 8
  %149 = load i32******, i32******* %148, align 8
  %150 = getelementptr inbounds i32*****, i32****** %149, i64 0
  %151 = load i32*****, i32****** %150, align 8
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = load i32*, i32** %9, align 8
  %156 = call i32 @copy_locdesc(i32* %147, i32***** %151, i32* %154, i32* %155)
  %157 = load i32, i32* @DW_DLE_NONE, align 4
  %158 = icmp ne i32 %156, %157
  br i1 %158, label %159, label %170

159:                                              ; preds = %146
  %160 = load i32*******, i32******** %7, align 8
  %161 = load i32******, i32******* %160, align 8
  %162 = getelementptr inbounds i32*****, i32****** %161, i64 0
  %163 = load i32*****, i32****** %162, align 8
  %164 = bitcast i32***** %163 to i32******
  %165 = call i32 @free(i32****** %164)
  %166 = load i32*******, i32******** %7, align 8
  %167 = load i32******, i32******* %166, align 8
  %168 = call i32 @free(i32****** %167)
  %169 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %169, i32* %5, align 4
  br label %185

170:                                              ; preds = %146
  %171 = load i32*, i32** %8, align 8
  store i32 1, i32* %171, align 4
  %172 = load i32, i32* @DW_DLV_OK, align 4
  store i32 %172, i32* %5, align 4
  br label %185

173:                                              ; preds = %41
  %174 = load i32*, i32** %10, align 8
  %175 = load i32*, i32** %9, align 8
  %176 = load i32, i32* @DW_DLE_ATTR_FORM_BAD, align 4
  %177 = call i32 @DWARF_SET_ERROR(i32* %174, i32* %175, i32 %176)
  %178 = load i32, i32* @DW_DLV_NO_ENTRY, align 4
  store i32 %178, i32* %5, align 4
  br label %185

179:                                              ; preds = %37
  %180 = load i32*, i32** %10, align 8
  %181 = load i32*, i32** %9, align 8
  %182 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %183 = call i32 @DWARF_SET_ERROR(i32* %180, i32* %181, i32 %182)
  %184 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %184, i32* %5, align 4
  br label %185

185:                                              ; preds = %179, %173, %170, %159, %137, %120, %110, %93, %91, %81, %54, %31
  %186 = load i32, i32* %5, align 4
  ret i32 %186
}

declare dso_local i32 @DWARF_SET_ERROR(i32*, i32*, i32) #1

declare dso_local i32 @_dwarf_loclist_find(i32*, %struct.TYPE_9__*, i32, i32*******, i32*, i32*, i32*) #1

declare dso_local i32 @_dwarf_loc_add(%struct.TYPE_10__*, %struct.TYPE_8__*, i32*) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @free(i32******) #1

declare dso_local i32 @copy_locdesc(i32*, i32*****, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
