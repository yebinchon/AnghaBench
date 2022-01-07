; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_loc.c__dwarf_loc_expr_add_atom.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_loc.c__dwarf_loc_expr_add_atom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 (i32*, i32*, i32, i32)* }

@DW_DLE_LOC_EXPR_BAD = common dso_local global i32 0, align 4
@DW_DLE_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_dwarf_loc_expr_add_atom(%struct.TYPE_4__* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca [64 x i32], align 16
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %8
  %26 = load i32*, i32** %12, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32*, i32** %11, align 8
  store i32* %29, i32** %19, align 8
  %30 = load i32*, i32** %12, align 8
  store i32* %30, i32** %20, align 8
  br label %34

31:                                               ; preds = %25, %8
  %32 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 0
  store i32* %32, i32** %11, align 8
  store i32* %32, i32** %19, align 8
  %33 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 256
  store i32* %33, i32** %20, align 8
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* %13, align 4
  switch i32 %35, label %162 [
    i32 225, label %36
    i32 169, label %36
    i32 168, label %36
    i32 157, label %36
    i32 146, label %36
    i32 143, label %36
    i32 142, label %36
    i32 141, label %36
    i32 140, label %36
    i32 139, label %36
    i32 138, label %36
    i32 167, label %36
    i32 166, label %36
    i32 165, label %36
    i32 164, label %36
    i32 163, label %36
    i32 162, label %36
    i32 161, label %36
    i32 160, label %36
    i32 159, label %36
    i32 158, label %36
    i32 156, label %36
    i32 155, label %36
    i32 154, label %36
    i32 153, label %36
    i32 152, label %36
    i32 151, label %36
    i32 150, label %36
    i32 149, label %36
    i32 148, label %36
    i32 147, label %36
    i32 145, label %36
    i32 144, label %36
    i32 215, label %36
    i32 214, label %36
    i32 203, label %36
    i32 192, label %36
    i32 189, label %36
    i32 188, label %36
    i32 187, label %36
    i32 186, label %36
    i32 185, label %36
    i32 184, label %36
    i32 213, label %36
    i32 212, label %36
    i32 211, label %36
    i32 210, label %36
    i32 209, label %36
    i32 208, label %36
    i32 207, label %36
    i32 206, label %36
    i32 205, label %36
    i32 204, label %36
    i32 202, label %36
    i32 201, label %36
    i32 200, label %36
    i32 199, label %36
    i32 198, label %36
    i32 197, label %36
    i32 196, label %36
    i32 195, label %36
    i32 194, label %36
    i32 193, label %36
    i32 191, label %36
    i32 190, label %36
    i32 221, label %36
    i32 222, label %36
    i32 174, label %36
    i32 131, label %36
    i32 136, label %36
    i32 130, label %36
    i32 272, label %36
    i32 270, label %36
    i32 223, label %36
    i32 182, label %36
    i32 181, label %36
    i32 180, label %36
    i32 178, label %36
    i32 176, label %36
    i32 175, label %36
    i32 171, label %36
    i32 135, label %36
    i32 134, label %36
    i32 133, label %36
    i32 128, label %36
    i32 220, label %36
    i32 218, label %36
    i32 217, label %36
    i32 216, label %36
    i32 183, label %36
    i32 179, label %36
    i32 177, label %36
    i32 273, label %36
    i32 234, label %40
    i32 235, label %40
    i32 173, label %40
    i32 224, label %40
    i32 129, label %40
    i32 232, label %47
    i32 233, label %47
    i32 269, label %47
    i32 132, label %47
    i32 230, label %59
    i32 231, label %59
    i32 228, label %71
    i32 229, label %71
    i32 226, label %83
    i32 170, label %83
    i32 137, label %83
    i32 172, label %83
    i32 227, label %99
    i32 268, label %99
    i32 267, label %99
    i32 256, label %99
    i32 245, label %99
    i32 242, label %99
    i32 241, label %99
    i32 240, label %99
    i32 239, label %99
    i32 238, label %99
    i32 237, label %99
    i32 266, label %99
    i32 265, label %99
    i32 264, label %99
    i32 263, label %99
    i32 262, label %99
    i32 261, label %99
    i32 260, label %99
    i32 259, label %99
    i32 258, label %99
    i32 257, label %99
    i32 255, label %99
    i32 254, label %99
    i32 253, label %99
    i32 252, label %99
    i32 251, label %99
    i32 250, label %99
    i32 249, label %99
    i32 248, label %99
    i32 247, label %99
    i32 246, label %99
    i32 244, label %99
    i32 243, label %99
    i32 219, label %99
    i32 236, label %115
    i32 271, label %143
  ]

36:                                               ; preds = %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34
  %37 = load i32, i32* %13, align 4
  %38 = load i32*, i32** %19, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %19, align 8
  store i32 %37, i32* %38, align 4
  br label %168

40:                                               ; preds = %34, %34, %34, %34, %34
  %41 = load i32, i32* %13, align 4
  %42 = load i32*, i32** %19, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %19, align 8
  store i32 %41, i32* %42, align 4
  %44 = load i32, i32* %14, align 4
  %45 = load i32*, i32** %19, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %19, align 8
  store i32 %44, i32* %45, align 4
  br label %168

47:                                               ; preds = %34, %34, %34, %34
  %48 = load i32, i32* %13, align 4
  %49 = load i32*, i32** %19, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %19, align 8
  store i32 %48, i32* %49, align 4
  store i32 0, i32* %21, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32 (i32*, i32*, i32, i32)*, i32 (i32*, i32*, i32, i32)** %52, align 8
  %54 = load i32*, i32** %19, align 8
  %55 = load i32, i32* %14, align 4
  %56 = call i32 %53(i32* %54, i32* %21, i32 %55, i32 2)
  %57 = load i32*, i32** %19, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  store i32* %58, i32** %19, align 8
  br label %168

59:                                               ; preds = %34, %34
  %60 = load i32, i32* %13, align 4
  %61 = load i32*, i32** %19, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %19, align 8
  store i32 %60, i32* %61, align 4
  store i32 0, i32* %21, align 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32 (i32*, i32*, i32, i32)*, i32 (i32*, i32*, i32, i32)** %64, align 8
  %66 = load i32*, i32** %19, align 8
  %67 = load i32, i32* %14, align 4
  %68 = call i32 %65(i32* %66, i32* %21, i32 %67, i32 4)
  %69 = load i32*, i32** %19, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 4
  store i32* %70, i32** %19, align 8
  br label %168

71:                                               ; preds = %34, %34
  %72 = load i32, i32* %13, align 4
  %73 = load i32*, i32** %19, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %19, align 8
  store i32 %72, i32* %73, align 4
  store i32 0, i32* %21, align 4
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32 (i32*, i32*, i32, i32)*, i32 (i32*, i32*, i32, i32)** %76, align 8
  %78 = load i32*, i32** %19, align 8
  %79 = load i32, i32* %14, align 4
  %80 = call i32 %77(i32* %78, i32* %21, i32 %79, i32 8)
  %81 = load i32*, i32** %19, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 8
  store i32* %82, i32** %19, align 8
  br label %168

83:                                               ; preds = %34, %34, %34, %34
  %84 = load i32, i32* %13, align 4
  %85 = load i32*, i32** %19, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** %19, align 8
  store i32 %84, i32* %85, align 4
  %87 = load i32*, i32** %19, align 8
  %88 = load i32*, i32** %20, align 8
  %89 = load i32, i32* %14, align 4
  %90 = call i32 @_dwarf_write_uleb128(i32* %87, i32* %88, i32 %89)
  store i32 %90, i32* %22, align 4
  %91 = load i32, i32* %22, align 4
  %92 = icmp sgt i32 %91, 0
  %93 = zext i1 %92 to i32
  %94 = call i32 @assert(i32 %93)
  %95 = load i32, i32* %22, align 4
  %96 = load i32*, i32** %19, align 8
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  store i32* %98, i32** %19, align 8
  br label %168

99:                                               ; preds = %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34
  %100 = load i32, i32* %13, align 4
  %101 = load i32*, i32** %19, align 8
  %102 = getelementptr inbounds i32, i32* %101, i32 1
  store i32* %102, i32** %19, align 8
  store i32 %100, i32* %101, align 4
  %103 = load i32*, i32** %19, align 8
  %104 = load i32*, i32** %20, align 8
  %105 = load i32, i32* %14, align 4
  %106 = call i32 @_dwarf_write_sleb128(i32* %103, i32* %104, i32 %105)
  store i32 %106, i32* %22, align 4
  %107 = load i32, i32* %22, align 4
  %108 = icmp sgt i32 %107, 0
  %109 = zext i1 %108 to i32
  %110 = call i32 @assert(i32 %109)
  %111 = load i32, i32* %22, align 4
  %112 = load i32*, i32** %19, align 8
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  store i32* %114, i32** %19, align 8
  br label %168

115:                                              ; preds = %34
  %116 = load i32, i32* %13, align 4
  %117 = load i32*, i32** %19, align 8
  %118 = getelementptr inbounds i32, i32* %117, i32 1
  store i32* %118, i32** %19, align 8
  store i32 %116, i32* %117, align 4
  %119 = load i32*, i32** %19, align 8
  %120 = load i32*, i32** %20, align 8
  %121 = load i32, i32* %14, align 4
  %122 = call i32 @_dwarf_write_uleb128(i32* %119, i32* %120, i32 %121)
  store i32 %122, i32* %22, align 4
  %123 = load i32, i32* %22, align 4
  %124 = icmp sgt i32 %123, 0
  %125 = zext i1 %124 to i32
  %126 = call i32 @assert(i32 %125)
  %127 = load i32, i32* %22, align 4
  %128 = load i32*, i32** %19, align 8
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  store i32* %130, i32** %19, align 8
  %131 = load i32*, i32** %19, align 8
  %132 = load i32*, i32** %20, align 8
  %133 = load i32, i32* %15, align 4
  %134 = call i32 @_dwarf_write_sleb128(i32* %131, i32* %132, i32 %133)
  store i32 %134, i32* %22, align 4
  %135 = load i32, i32* %22, align 4
  %136 = icmp sgt i32 %135, 0
  %137 = zext i1 %136 to i32
  %138 = call i32 @assert(i32 %137)
  %139 = load i32, i32* %22, align 4
  %140 = load i32*, i32** %19, align 8
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds i32, i32* %140, i64 %141
  store i32* %142, i32** %19, align 8
  br label %168

143:                                              ; preds = %34
  %144 = load i32, i32* %13, align 4
  %145 = load i32*, i32** %19, align 8
  %146 = getelementptr inbounds i32, i32* %145, i32 1
  store i32* %146, i32** %19, align 8
  store i32 %144, i32* %145, align 4
  store i32 0, i32* %21, align 4
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 1
  %149 = load i32 (i32*, i32*, i32, i32)*, i32 (i32*, i32*, i32, i32)** %148, align 8
  %150 = load i32*, i32** %19, align 8
  %151 = load i32, i32* %14, align 4
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 %149(i32* %150, i32* %21, i32 %151, i32 %154)
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32*, i32** %19, align 8
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds i32, i32* %159, i64 %160
  store i32* %161, i32** %19, align 8
  br label %168

162:                                              ; preds = %34
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %164 = load i32*, i32** %17, align 8
  %165 = load i32, i32* @DW_DLE_LOC_EXPR_BAD, align 4
  %166 = call i32 @DWARF_SET_ERROR(%struct.TYPE_4__* %163, i32* %164, i32 %165)
  %167 = load i32, i32* @DW_DLE_LOC_EXPR_BAD, align 4
  store i32 %167, i32* %9, align 4
  br label %182

168:                                              ; preds = %143, %115, %99, %83, %71, %59, %47, %40, %36
  %169 = load i32*, i32** %16, align 8
  %170 = icmp ne i32* %169, null
  br i1 %170, label %171, label %180

171:                                              ; preds = %168
  %172 = load i32*, i32** %19, align 8
  %173 = load i32*, i32** %11, align 8
  %174 = ptrtoint i32* %172 to i64
  %175 = ptrtoint i32* %173 to i64
  %176 = sub i64 %174, %175
  %177 = sdiv exact i64 %176, 4
  %178 = trunc i64 %177 to i32
  %179 = load i32*, i32** %16, align 8
  store i32 %178, i32* %179, align 4
  br label %180

180:                                              ; preds = %171, %168
  %181 = load i32, i32* @DW_DLE_NONE, align 4
  store i32 %181, i32* %9, align 4
  br label %182

182:                                              ; preds = %180, %162
  %183 = load i32, i32* %9, align 4
  ret i32 %183
}

declare dso_local i32 @_dwarf_write_uleb128(i32*, i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @_dwarf_write_sleb128(i32*, i32*, i32) #1

declare dso_local i32 @DWARF_SET_ERROR(%struct.TYPE_4__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
