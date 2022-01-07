; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_attr.c__dwarf_attr_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_attr.c__dwarf_attr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 (i32, i32*, i32)* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct._Dwarf_Attribute = type { i32, i32, i32, %struct.TYPE_14__*, %struct.TYPE_13__, i32*, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i8*, i32 }
%struct.TYPE_13__ = type { i32, i8* }

@DW_DLE_NONE = common dso_local global i32 0, align 4
@DW_DLE_ATTR_FORM_BAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_dwarf_attr_init(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1, i32* %2, i32 %3, %struct.TYPE_17__* %4, i32 %5, %struct.TYPE_18__* %6, i32 %7, i32 %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_17__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_18__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca %struct._Dwarf_Attribute, align 8
  %23 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %12, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %13, align 8
  store i32* %2, i32** %14, align 8
  store i32 %3, i32* %15, align 4
  store %struct.TYPE_17__* %4, %struct.TYPE_17__** %16, align 8
  store i32 %5, i32* %17, align 4
  store %struct.TYPE_18__* %6, %struct.TYPE_18__** %18, align 8
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32* %9, i32** %21, align 8
  %24 = load i32, i32* @DW_DLE_NONE, align 4
  store i32 %24, i32* %23, align 4
  %25 = call i32 @memset(%struct._Dwarf_Attribute* %22, i32 0, i32 56)
  %26 = load i32, i32* %17, align 4
  %27 = getelementptr inbounds %struct._Dwarf_Attribute, %struct._Dwarf_Attribute* %22, i32 0, i32 7
  store i32 %26, i32* %27, align 4
  %28 = load i32*, i32** %14, align 8
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct._Dwarf_Attribute, %struct._Dwarf_Attribute* %22, i32 0, i32 0
  store i32 %29, i32* %30, align 8
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct._Dwarf_Attribute, %struct._Dwarf_Attribute* %22, i32 0, i32 6
  store i32 %33, i32* %34, align 8
  %35 = load i32, i32* %20, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %10
  %38 = load i32, i32* %19, align 4
  br label %43

39:                                               ; preds = %10
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  br label %43

43:                                               ; preds = %39, %37
  %44 = phi i32 [ %38, %37 ], [ %42, %39 ]
  %45 = getelementptr inbounds %struct._Dwarf_Attribute, %struct._Dwarf_Attribute* %22, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* %20, align 4
  %47 = getelementptr inbounds %struct._Dwarf_Attribute, %struct._Dwarf_Attribute* %22, i32 0, i32 2
  store i32 %46, i32* %47, align 8
  %48 = getelementptr inbounds %struct._Dwarf_Attribute, %struct._Dwarf_Attribute* %22, i32 0, i32 5
  store i32* null, i32** %48, align 8
  %49 = load i32, i32* %19, align 4
  switch i32 %49, label %375 [
    i32 152, label %50
    i32 151, label %66
    i32 143, label %66
    i32 150, label %91
    i32 149, label %118
    i32 148, label %145
    i32 147, label %172
    i32 142, label %172
    i32 139, label %172
    i32 146, label %185
    i32 138, label %185
    i32 145, label %198
    i32 137, label %198
    i32 144, label %211
    i32 136, label %211
    i32 140, label %224
    i32 135, label %241
    i32 133, label %277
    i32 128, label %277
    i32 132, label %288
    i32 131, label %298
    i32 130, label %312
    i32 129, label %325
    i32 134, label %351
    i32 141, label %370
  ]

50:                                               ; preds = %43
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %52, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %14, align 8
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 %53(i32 %56, i32* %57, i32 %60)
  %62 = getelementptr inbounds %struct._Dwarf_Attribute, %struct._Dwarf_Attribute* %22, i32 0, i32 3
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  store i32 %61, i32* %65, align 8
  br label %381

66:                                               ; preds = %43, %43
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %14, align 8
  %71 = call i8* @_dwarf_read_uleb128(i32 %69, i32* %70)
  %72 = ptrtoint i8* %71 to i32
  %73 = getelementptr inbounds %struct._Dwarf_Attribute, %struct._Dwarf_Attribute* %22, i32 0, i32 3
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i64 0
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  store i32 %72, i32* %76, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %14, align 8
  %81 = getelementptr inbounds %struct._Dwarf_Attribute, %struct._Dwarf_Attribute* %22, i32 0, i32 3
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i64 0
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i8* @_dwarf_read_block(i32 %79, i32* %80, i32 %85)
  %87 = getelementptr inbounds %struct._Dwarf_Attribute, %struct._Dwarf_Attribute* %22, i32 0, i32 3
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i64 1
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 2
  store i8* %86, i8** %90, align 8
  br label %381

91:                                               ; preds = %43
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  %94 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %93, align 8
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %14, align 8
  %99 = call i32 %94(i32 %97, i32* %98, i32 1)
  %100 = getelementptr inbounds %struct._Dwarf_Attribute, %struct._Dwarf_Attribute* %22, i32 0, i32 3
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i64 0
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  store i32 %99, i32* %103, align 8
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %14, align 8
  %108 = getelementptr inbounds %struct._Dwarf_Attribute, %struct._Dwarf_Attribute* %22, i32 0, i32 3
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i64 0
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i8* @_dwarf_read_block(i32 %106, i32* %107, i32 %112)
  %114 = getelementptr inbounds %struct._Dwarf_Attribute, %struct._Dwarf_Attribute* %22, i32 0, i32 3
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i64 1
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 2
  store i8* %113, i8** %117, align 8
  br label %381

118:                                              ; preds = %43
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  %121 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %120, align 8
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** %14, align 8
  %126 = call i32 %121(i32 %124, i32* %125, i32 2)
  %127 = getelementptr inbounds %struct._Dwarf_Attribute, %struct._Dwarf_Attribute* %22, i32 0, i32 3
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i64 0
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 0
  store i32 %126, i32* %130, align 8
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32*, i32** %14, align 8
  %135 = getelementptr inbounds %struct._Dwarf_Attribute, %struct._Dwarf_Attribute* %22, i32 0, i32 3
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i64 0
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i8* @_dwarf_read_block(i32 %133, i32* %134, i32 %139)
  %141 = getelementptr inbounds %struct._Dwarf_Attribute, %struct._Dwarf_Attribute* %22, i32 0, i32 3
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i64 1
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 2
  store i8* %140, i8** %144, align 8
  br label %381

145:                                              ; preds = %43
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 0
  %148 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %147, align 8
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32*, i32** %14, align 8
  %153 = call i32 %148(i32 %151, i32* %152, i32 4)
  %154 = getelementptr inbounds %struct._Dwarf_Attribute, %struct._Dwarf_Attribute* %22, i32 0, i32 3
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i64 0
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 0
  store i32 %153, i32* %157, align 8
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32*, i32** %14, align 8
  %162 = getelementptr inbounds %struct._Dwarf_Attribute, %struct._Dwarf_Attribute* %22, i32 0, i32 3
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i64 0
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = call i8* @_dwarf_read_block(i32 %160, i32* %161, i32 %166)
  %168 = getelementptr inbounds %struct._Dwarf_Attribute, %struct._Dwarf_Attribute* %22, i32 0, i32 3
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i64 1
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 2
  store i8* %167, i8** %171, align 8
  br label %381

172:                                              ; preds = %43, %43, %43
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 0
  %175 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %174, align 8
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32*, i32** %14, align 8
  %180 = call i32 %175(i32 %178, i32* %179, i32 1)
  %181 = getelementptr inbounds %struct._Dwarf_Attribute, %struct._Dwarf_Attribute* %22, i32 0, i32 3
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i64 0
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 0
  store i32 %180, i32* %184, align 8
  br label %381

185:                                              ; preds = %43, %43
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 0
  %188 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %187, align 8
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32*, i32** %14, align 8
  %193 = call i32 %188(i32 %191, i32* %192, i32 2)
  %194 = getelementptr inbounds %struct._Dwarf_Attribute, %struct._Dwarf_Attribute* %22, i32 0, i32 3
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i64 0
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 0
  store i32 %193, i32* %197, align 8
  br label %381

198:                                              ; preds = %43, %43
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 0
  %201 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %200, align 8
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load i32*, i32** %14, align 8
  %206 = call i32 %201(i32 %204, i32* %205, i32 4)
  %207 = getelementptr inbounds %struct._Dwarf_Attribute, %struct._Dwarf_Attribute* %22, i32 0, i32 3
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i64 0
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 0
  store i32 %206, i32* %210, align 8
  br label %381

211:                                              ; preds = %43, %43
  %212 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i32 0, i32 0
  %214 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %213, align 8
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %216 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = load i32*, i32** %14, align 8
  %219 = call i32 %214(i32 %217, i32* %218, i32 8)
  %220 = getelementptr inbounds %struct._Dwarf_Attribute, %struct._Dwarf_Attribute* %22, i32 0, i32 3
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i64 0
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 0
  store i32 %219, i32* %223, align 8
  br label %381

224:                                              ; preds = %43
  %225 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %226 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = load i32*, i32** %14, align 8
  %229 = call i8* @_dwarf_read_uleb128(i32 %227, i32* %228)
  %230 = ptrtoint i8* %229 to i32
  store i32 %230, i32* %19, align 4
  %231 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %232 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %233 = load i32*, i32** %14, align 8
  %234 = load i32, i32* %15, align 4
  %235 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %236 = load i32, i32* %17, align 4
  %237 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %238 = load i32, i32* %19, align 4
  %239 = load i32*, i32** %21, align 8
  %240 = call i32 @_dwarf_attr_init(%struct.TYPE_16__* %231, %struct.TYPE_15__* %232, i32* %233, i32 %234, %struct.TYPE_17__* %235, i32 %236, %struct.TYPE_18__* %237, i32 %238, i32 1, i32* %239)
  store i32 %240, i32* %11, align 4
  br label %418

241:                                              ; preds = %43
  %242 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %243 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = icmp eq i32 %244, 2
  br i1 %245, label %246, label %262

246:                                              ; preds = %241
  %247 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %248 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %247, i32 0, i32 0
  %249 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %248, align 8
  %250 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %251 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = load i32*, i32** %14, align 8
  %254 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %255 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = call i32 %249(i32 %252, i32* %253, i32 %256)
  %258 = getelementptr inbounds %struct._Dwarf_Attribute, %struct._Dwarf_Attribute* %22, i32 0, i32 3
  %259 = load %struct.TYPE_14__*, %struct.TYPE_14__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %259, i64 0
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %260, i32 0, i32 0
  store i32 %257, i32* %261, align 8
  br label %276

262:                                              ; preds = %241
  %263 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %264 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %263, i32 0, i32 0
  %265 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %264, align 8
  %266 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %267 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = load i32*, i32** %14, align 8
  %270 = load i32, i32* %15, align 4
  %271 = call i32 %265(i32 %268, i32* %269, i32 %270)
  %272 = getelementptr inbounds %struct._Dwarf_Attribute, %struct._Dwarf_Attribute* %22, i32 0, i32 3
  %273 = load %struct.TYPE_14__*, %struct.TYPE_14__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %273, i64 0
  %275 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %274, i32 0, i32 0
  store i32 %271, i32* %275, align 8
  br label %276

276:                                              ; preds = %262, %246
  br label %381

277:                                              ; preds = %43, %43
  %278 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %279 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = load i32*, i32** %14, align 8
  %282 = call i8* @_dwarf_read_uleb128(i32 %280, i32* %281)
  %283 = ptrtoint i8* %282 to i32
  %284 = getelementptr inbounds %struct._Dwarf_Attribute, %struct._Dwarf_Attribute* %22, i32 0, i32 3
  %285 = load %struct.TYPE_14__*, %struct.TYPE_14__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %285, i64 0
  %287 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %286, i32 0, i32 0
  store i32 %283, i32* %287, align 8
  br label %381

288:                                              ; preds = %43
  %289 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %290 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = load i32*, i32** %14, align 8
  %293 = call i32 @_dwarf_read_sleb128(i32 %291, i32* %292)
  %294 = getelementptr inbounds %struct._Dwarf_Attribute, %struct._Dwarf_Attribute* %22, i32 0, i32 3
  %295 = load %struct.TYPE_14__*, %struct.TYPE_14__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %295, i64 0
  %297 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %296, i32 0, i32 3
  store i32 %293, i32* %297, align 8
  br label %381

298:                                              ; preds = %43
  %299 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %300 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %299, i32 0, i32 0
  %301 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %300, align 8
  %302 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %303 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = load i32*, i32** %14, align 8
  %306 = load i32, i32* %15, align 4
  %307 = call i32 %301(i32 %304, i32* %305, i32 %306)
  %308 = getelementptr inbounds %struct._Dwarf_Attribute, %struct._Dwarf_Attribute* %22, i32 0, i32 3
  %309 = load %struct.TYPE_14__*, %struct.TYPE_14__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %309, i64 0
  %311 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %310, i32 0, i32 0
  store i32 %307, i32* %311, align 8
  br label %381

312:                                              ; preds = %43
  %313 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %314 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 4
  %316 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %317 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = load i32*, i32** %14, align 8
  %320 = call i32 @_dwarf_read_string(i32 %315, i32 %318, i32* %319)
  %321 = getelementptr inbounds %struct._Dwarf_Attribute, %struct._Dwarf_Attribute* %22, i32 0, i32 3
  %322 = load %struct.TYPE_14__*, %struct.TYPE_14__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %322, i64 0
  %324 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %323, i32 0, i32 1
  store i32 %320, i32* %324, align 4
  br label %381

325:                                              ; preds = %43
  %326 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %327 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %326, i32 0, i32 0
  %328 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %327, align 8
  %329 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %330 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 4
  %332 = load i32*, i32** %14, align 8
  %333 = load i32, i32* %15, align 4
  %334 = call i32 %328(i32 %331, i32* %332, i32 %333)
  %335 = getelementptr inbounds %struct._Dwarf_Attribute, %struct._Dwarf_Attribute* %22, i32 0, i32 3
  %336 = load %struct.TYPE_14__*, %struct.TYPE_14__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %336, i64 0
  %338 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %337, i32 0, i32 0
  store i32 %334, i32* %338, align 8
  %339 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %340 = call i32 @_dwarf_strtab_get_table(%struct.TYPE_16__* %339)
  %341 = getelementptr inbounds %struct._Dwarf_Attribute, %struct._Dwarf_Attribute* %22, i32 0, i32 3
  %342 = load %struct.TYPE_14__*, %struct.TYPE_14__** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %342, i64 0
  %344 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = add nsw i32 %340, %345
  %347 = getelementptr inbounds %struct._Dwarf_Attribute, %struct._Dwarf_Attribute* %22, i32 0, i32 3
  %348 = load %struct.TYPE_14__*, %struct.TYPE_14__** %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %348, i64 1
  %350 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %349, i32 0, i32 1
  store i32 %346, i32* %350, align 4
  br label %381

351:                                              ; preds = %43
  %352 = getelementptr inbounds %struct._Dwarf_Attribute, %struct._Dwarf_Attribute* %22, i32 0, i32 3
  %353 = load %struct.TYPE_14__*, %struct.TYPE_14__** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %353, i64 0
  %355 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %354, i32 0, i32 0
  store i32 8, i32* %355, align 8
  %356 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %357 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 4
  %359 = load i32*, i32** %14, align 8
  %360 = getelementptr inbounds %struct._Dwarf_Attribute, %struct._Dwarf_Attribute* %22, i32 0, i32 3
  %361 = load %struct.TYPE_14__*, %struct.TYPE_14__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %361, i64 0
  %363 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = call i8* @_dwarf_read_block(i32 %358, i32* %359, i32 %364)
  %366 = getelementptr inbounds %struct._Dwarf_Attribute, %struct._Dwarf_Attribute* %22, i32 0, i32 3
  %367 = load %struct.TYPE_14__*, %struct.TYPE_14__** %366, align 8
  %368 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %367, i64 1
  %369 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %368, i32 0, i32 2
  store i8* %365, i8** %369, align 8
  br label %381

370:                                              ; preds = %43
  %371 = getelementptr inbounds %struct._Dwarf_Attribute, %struct._Dwarf_Attribute* %22, i32 0, i32 3
  %372 = load %struct.TYPE_14__*, %struct.TYPE_14__** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %372, i64 0
  %374 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %373, i32 0, i32 0
  store i32 1, i32* %374, align 8
  br label %381

375:                                              ; preds = %43
  %376 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %377 = load i32*, i32** %21, align 8
  %378 = load i32, i32* @DW_DLE_ATTR_FORM_BAD, align 4
  %379 = call i32 @DWARF_SET_ERROR(%struct.TYPE_16__* %376, i32* %377, i32 %378)
  %380 = load i32, i32* @DW_DLE_ATTR_FORM_BAD, align 4
  store i32 %380, i32* %23, align 4
  br label %381

381:                                              ; preds = %375, %370, %351, %325, %312, %298, %288, %277, %276, %211, %198, %185, %172, %145, %118, %91, %66, %50
  %382 = load i32, i32* %23, align 4
  %383 = load i32, i32* @DW_DLE_NONE, align 4
  %384 = icmp eq i32 %382, %383
  br i1 %384, label %385, label %416

385:                                              ; preds = %381
  %386 = load i32, i32* %19, align 4
  %387 = icmp eq i32 %386, 151
  br i1 %387, label %397, label %388

388:                                              ; preds = %385
  %389 = load i32, i32* %19, align 4
  %390 = icmp eq i32 %389, 150
  br i1 %390, label %397, label %391

391:                                              ; preds = %388
  %392 = load i32, i32* %19, align 4
  %393 = icmp eq i32 %392, 149
  br i1 %393, label %397, label %394

394:                                              ; preds = %391
  %395 = load i32, i32* %19, align 4
  %396 = icmp eq i32 %395, 148
  br i1 %396, label %397, label %412

397:                                              ; preds = %394, %391, %388, %385
  %398 = getelementptr inbounds %struct._Dwarf_Attribute, %struct._Dwarf_Attribute* %22, i32 0, i32 3
  %399 = load %struct.TYPE_14__*, %struct.TYPE_14__** %398, align 8
  %400 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %399, i64 0
  %401 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 8
  %403 = getelementptr inbounds %struct._Dwarf_Attribute, %struct._Dwarf_Attribute* %22, i32 0, i32 4
  %404 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %403, i32 0, i32 0
  store i32 %402, i32* %404, align 8
  %405 = getelementptr inbounds %struct._Dwarf_Attribute, %struct._Dwarf_Attribute* %22, i32 0, i32 3
  %406 = load %struct.TYPE_14__*, %struct.TYPE_14__** %405, align 8
  %407 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %406, i64 1
  %408 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %407, i32 0, i32 2
  %409 = load i8*, i8** %408, align 8
  %410 = getelementptr inbounds %struct._Dwarf_Attribute, %struct._Dwarf_Attribute* %22, i32 0, i32 4
  %411 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %410, i32 0, i32 1
  store i8* %409, i8** %411, align 8
  br label %412

412:                                              ; preds = %397, %394
  %413 = load i32, i32* %17, align 4
  %414 = load i32*, i32** %21, align 8
  %415 = call i32 @_dwarf_attr_add(i32 %413, %struct._Dwarf_Attribute* %22, i32* null, i32* %414)
  store i32 %415, i32* %23, align 4
  br label %416

416:                                              ; preds = %412, %381
  %417 = load i32, i32* %23, align 4
  store i32 %417, i32* %11, align 4
  br label %418

418:                                              ; preds = %416, %224
  %419 = load i32, i32* %11, align 4
  ret i32 %419
}

declare dso_local i32 @memset(%struct._Dwarf_Attribute*, i32, i32) #1

declare dso_local i8* @_dwarf_read_uleb128(i32, i32*) #1

declare dso_local i8* @_dwarf_read_block(i32, i32*, i32) #1

declare dso_local i32 @_dwarf_read_sleb128(i32, i32*) #1

declare dso_local i32 @_dwarf_read_string(i32, i32, i32*) #1

declare dso_local i32 @_dwarf_strtab_get_table(%struct.TYPE_16__*) #1

declare dso_local i32 @DWARF_SET_ERROR(%struct.TYPE_16__*, i32*, i32) #1

declare dso_local i32 @_dwarf_attr_add(i32, %struct._Dwarf_Attribute*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
