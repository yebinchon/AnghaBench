; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_macinfo.c__dwarf_macinfo_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_macinfo.c__dwarf_macinfo_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 (i64, i64*, i32)* }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_9__ = type { i32, i8*, i8*, i8*, i64 }

@_FILEINDEX_STACK_SIZE = common dso_local global i32 0, align 4
@DW_DLE_DEBUG_MACRO_INCONSISTENT = common dso_local global i32 0, align 4
@DW_DLE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_8__*, i64*, %struct.TYPE_9__*, i8**, i32*)* @_dwarf_macinfo_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_dwarf_macinfo_parse(%struct.TYPE_10__* %0, %struct.TYPE_8__* %1, i64* %2, %struct.TYPE_9__* %3, i8** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %9, align 8
  store i64* %2, i64** %10, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i32* %5, i32** %13, align 8
  %22 = load i32, i32* @_FILEINDEX_STACK_SIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %15, align 8
  %25 = alloca i8*, i64 %23, align 16
  store i64 %23, i64* %16, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %20, align 4
  %26 = load i32, i32* %20, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  store i8* inttoptr (i64 -1 to i8*), i8** %28, align 8
  br label %29

29:                                               ; preds = %177, %6
  %30 = load i64*, i64** %10, align 8
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %31, %34
  br i1 %35, label %36, label %178

36:                                               ; preds = %29
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %38 = icmp ne %struct.TYPE_9__* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %36
  %40 = load i64*, i64** %10, align 8
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %43 = load i32, i32* %18, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 4
  store i64 %41, i64* %46, align 8
  br label %47

47:                                               ; preds = %39, %36
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i32 (i64, i64*, i32)*, i32 (i64, i64*, i32)** %49, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64*, i64** %10, align 8
  %55 = call i32 %50(i64 %53, i64* %54, i32 1)
  store i32 %55, i32* %19, align 4
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %57 = icmp ne %struct.TYPE_9__* %56, null
  br i1 %57, label %58, label %74

58:                                               ; preds = %47
  %59 = load i32, i32* %19, align 4
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %61 = load i32, i32* %18, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  store i32 %59, i32* %64, align 8
  %65 = load i32, i32* %20, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %25, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %70 = load i32, i32* %18, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 2
  store i8* %68, i8** %73, align 8
  br label %74

74:                                               ; preds = %58, %47
  %75 = load i32, i32* %19, align 4
  switch i32 %75, label %165 [
    i32 0, label %76
    i32 132, label %77
    i32 129, label %77
    i32 128, label %77
    i32 130, label %117
    i32 131, label %158
  ]

76:                                               ; preds = %74
  br label %171

77:                                               ; preds = %74, %74, %74
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64*, i64** %10, align 8
  %82 = call i8* @_dwarf_read_uleb128(i64 %80, i64* %81)
  store i8* %82, i8** %14, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to i8*
  store i8* %86, i8** %17, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %88 = icmp ne %struct.TYPE_9__* %87, null
  br i1 %88, label %89, label %105

89:                                               ; preds = %77
  %90 = load i8*, i8** %14, align 8
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %92 = load i32, i32* %18, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 3
  store i8* %90, i8** %95, align 8
  %96 = load i8*, i8** %17, align 8
  %97 = load i64*, i64** %10, align 8
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %101 = load i32, i32* %18, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  store i8* %99, i8** %104, align 8
  br label %105

105:                                              ; preds = %89, %77
  br label %106

106:                                              ; preds = %115, %105
  %107 = load i8*, i8** %17, align 8
  %108 = load i64*, i64** %10, align 8
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %109, 1
  store i64 %110, i64* %108, align 8
  %111 = getelementptr inbounds i8, i8* %107, i64 %109
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %106
  br label %106

116:                                              ; preds = %106
  br label %171

117:                                              ; preds = %74
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64*, i64** %10, align 8
  %122 = call i8* @_dwarf_read_uleb128(i64 %120, i64* %121)
  store i8* %122, i8** %14, align 8
  %123 = load i32, i32* %20, align 4
  %124 = load i32, i32* @_FILEINDEX_STACK_SIZE, align 4
  %125 = sub nsw i32 %124, 1
  %126 = icmp sge i32 %123, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %117
  %128 = call i32 @assert(i32 0)
  br label %129

129:                                              ; preds = %127, %117
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i64*, i64** %10, align 8
  %134 = call i8* @_dwarf_read_uleb128(i64 %132, i64* %133)
  %135 = load i32, i32* %20, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %20, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8*, i8** %25, i64 %137
  store i8* %134, i8** %138, align 8
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %140 = icmp ne %struct.TYPE_9__* %139, null
  br i1 %140, label %141, label %157

141:                                              ; preds = %129
  %142 = load i8*, i8** %14, align 8
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %144 = load i32, i32* %18, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 3
  store i8* %142, i8** %147, align 8
  %148 = load i32, i32* %20, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8*, i8** %25, i64 %149
  %151 = load i8*, i8** %150, align 8
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %153 = load i32, i32* %18, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 2
  store i8* %151, i8** %156, align 8
  br label %157

157:                                              ; preds = %141, %129
  br label %171

158:                                              ; preds = %74
  %159 = load i32, i32* %20, align 4
  %160 = icmp sgt i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %158
  %162 = load i32, i32* %20, align 4
  %163 = add nsw i32 %162, -1
  store i32 %163, i32* %20, align 4
  br label %171

164:                                              ; preds = %158
  br label %165

165:                                              ; preds = %74, %164
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %167 = load i32*, i32** %13, align 8
  %168 = load i32, i32* @DW_DLE_DEBUG_MACRO_INCONSISTENT, align 4
  %169 = call i32 @DWARF_SET_ERROR(%struct.TYPE_10__* %166, i32* %167, i32 %168)
  %170 = load i32, i32* @DW_DLE_DEBUG_MACRO_INCONSISTENT, align 4
  store i32 %170, i32* %7, align 4
  store i32 1, i32* %21, align 4
  br label %188

171:                                              ; preds = %161, %157, %116, %76
  %172 = load i32, i32* %18, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %18, align 4
  %174 = load i32, i32* %19, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %171
  br label %178

177:                                              ; preds = %171
  br label %29

178:                                              ; preds = %176, %29
  %179 = load i8**, i8*** %12, align 8
  %180 = icmp ne i8** %179, null
  br i1 %180, label %181, label %186

181:                                              ; preds = %178
  %182 = load i32, i32* %18, align 4
  %183 = sext i32 %182 to i64
  %184 = inttoptr i64 %183 to i8*
  %185 = load i8**, i8*** %12, align 8
  store i8* %184, i8** %185, align 8
  br label %186

186:                                              ; preds = %181, %178
  %187 = load i32, i32* @DW_DLE_NONE, align 4
  store i32 %187, i32* %7, align 4
  store i32 1, i32* %21, align 4
  br label %188

188:                                              ; preds = %186, %165
  %189 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %189)
  %190 = load i32, i32* %7, align 4
  ret i32 %190
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @_dwarf_read_uleb128(i64, i64*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @DWARF_SET_ERROR(%struct.TYPE_10__*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
