; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_cu.c_dwarf_next_cu_header_c.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_cu.c_dwarf_next_cu_header_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i64, i32 }

@DW_DLE_ARGUMENT = common dso_local global i32 0, align 4
@DW_DLV_ERROR = common dso_local global i32 0, align 4
@DW_DLE_NO_ENTRY = common dso_local global i32 0, align 4
@DW_DLV_NO_ENTRY = common dso_local global i32 0, align 4
@DW_DLE_NONE = common dso_local global i32 0, align 4
@DW_DLV_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwarf_next_cu_header_c(%struct.TYPE_9__* %0, i64 %1, i32* %2, i32* %3, i64* %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9, i32* %10, i32* %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca %struct.TYPE_10__*, align 8
  %27 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %14, align 8
  store i64 %1, i64* %15, align 8
  store i32* %2, i32** %16, align 8
  store i32* %3, i32** %17, align 8
  store i64* %4, i64** %18, align 8
  store i32* %5, i32** %19, align 8
  store i32* %6, i32** %20, align 8
  store i32* %7, i32** %21, align 8
  store i32* %8, i32** %22, align 8
  store i32* %9, i32** %23, align 8
  store i32* %10, i32** %24, align 8
  store i32* %11, i32** %25, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %29 = icmp eq %struct.TYPE_9__* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %12
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %32 = load i32*, i32** %25, align 8
  %33 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %34 = call i32 @DWARF_SET_ERROR(%struct.TYPE_9__* %31, i32* %32, i32 %33)
  %35 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %35, i32* %13, align 4
  br label %205

36:                                               ; preds = %12
  %37 = load i64, i64* %15, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %36
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = icmp eq %struct.TYPE_10__* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %46 = load i32*, i32** %25, align 8
  %47 = call i32 @_dwarf_info_first_cu(%struct.TYPE_9__* %45, i32* %46)
  store i32 %47, i32* %27, align 4
  br label %52

48:                                               ; preds = %39
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %50 = load i32*, i32** %25, align 8
  %51 = call i32 @_dwarf_info_next_cu(%struct.TYPE_9__* %49, i32* %50)
  store i32 %51, i32* %27, align 4
  br label %52

52:                                               ; preds = %48, %44
  br label %67

53:                                               ; preds = %36
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = icmp eq %struct.TYPE_10__* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %60 = load i32*, i32** %25, align 8
  %61 = call i32 @_dwarf_info_first_tu(%struct.TYPE_9__* %59, i32* %60)
  store i32 %61, i32* %27, align 4
  br label %66

62:                                               ; preds = %53
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %64 = load i32*, i32** %25, align 8
  %65 = call i32 @_dwarf_info_next_tu(%struct.TYPE_9__* %63, i32* %64)
  store i32 %65, i32* %27, align 4
  br label %66

66:                                               ; preds = %62, %58
  br label %67

67:                                               ; preds = %66, %52
  %68 = load i32, i32* %27, align 4
  %69 = load i32, i32* @DW_DLE_NO_ENTRY, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %73 = load i32*, i32** %25, align 8
  %74 = load i32, i32* @DW_DLE_NO_ENTRY, align 4
  %75 = call i32 @DWARF_SET_ERROR(%struct.TYPE_9__* %72, i32* %73, i32 %74)
  %76 = load i32, i32* @DW_DLV_NO_ENTRY, align 4
  store i32 %76, i32* %13, align 4
  br label %205

77:                                               ; preds = %67
  %78 = load i32, i32* %27, align 4
  %79 = load i32, i32* @DW_DLE_NONE, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %82, i32* %13, align 4
  br label %205

83:                                               ; preds = %77
  br label %84

84:                                               ; preds = %83
  %85 = load i64, i64* %15, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %102

87:                                               ; preds = %84
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = icmp eq %struct.TYPE_10__* %90, null
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %94 = load i32*, i32** %25, align 8
  %95 = load i32, i32* @DW_DLE_NO_ENTRY, align 4
  %96 = call i32 @DWARF_SET_ERROR(%struct.TYPE_9__* %93, i32* %94, i32 %95)
  %97 = load i32, i32* @DW_DLV_NO_ENTRY, align 4
  store i32 %97, i32* %13, align 4
  br label %205

98:                                               ; preds = %87
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  store %struct.TYPE_10__* %101, %struct.TYPE_10__** %26, align 8
  br label %117

102:                                              ; preds = %84
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %104, align 8
  %106 = icmp eq %struct.TYPE_10__* %105, null
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %109 = load i32*, i32** %25, align 8
  %110 = load i32, i32* @DW_DLE_NO_ENTRY, align 4
  %111 = call i32 @DWARF_SET_ERROR(%struct.TYPE_9__* %108, i32* %109, i32 %110)
  %112 = load i32, i32* @DW_DLV_NO_ENTRY, align 4
  store i32 %112, i32* %13, align 4
  br label %205

113:                                              ; preds = %102
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %115, align 8
  store %struct.TYPE_10__* %116, %struct.TYPE_10__** %26, align 8
  br label %117

117:                                              ; preds = %113, %98
  %118 = load i32*, i32** %16, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 7
  %123 = load i32, i32* %122, align 8
  %124 = load i32*, i32** %16, align 8
  store i32 %123, i32* %124, align 4
  br label %125

125:                                              ; preds = %120, %117
  %126 = load i32*, i32** %17, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %133

128:                                              ; preds = %125
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32*, i32** %17, align 8
  store i32 %131, i32* %132, align 4
  br label %133

133:                                              ; preds = %128, %125
  %134 = load i64*, i64** %18, align 8
  %135 = icmp ne i64* %134, null
  br i1 %135, label %136, label %141

136:                                              ; preds = %133
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 6
  %139 = load i64, i64* %138, align 8
  %140 = load i64*, i64** %18, align 8
  store i64 %139, i64* %140, align 8
  br label %141

141:                                              ; preds = %136, %133
  %142 = load i32*, i32** %19, align 8
  %143 = icmp ne i32* %142, null
  br i1 %143, label %144, label %149

144:                                              ; preds = %141
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32*, i32** %19, align 8
  store i32 %147, i32* %148, align 4
  br label %149

149:                                              ; preds = %144, %141
  %150 = load i32*, i32** %20, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %162

152:                                              ; preds = %149
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = icmp eq i32 %155, 4
  br i1 %156, label %157, label %159

157:                                              ; preds = %152
  %158 = load i32*, i32** %20, align 8
  store i32 4, i32* %158, align 4
  br label %161

159:                                              ; preds = %152
  %160 = load i32*, i32** %20, align 8
  store i32 8, i32* %160, align 4
  br label %161

161:                                              ; preds = %159, %157
  br label %162

162:                                              ; preds = %161, %149
  %163 = load i32*, i32** %21, align 8
  %164 = icmp ne i32* %163, null
  br i1 %164, label %165, label %175

165:                                              ; preds = %162
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = icmp eq i32 %168, 4
  br i1 %169, label %170, label %172

170:                                              ; preds = %165
  %171 = load i32*, i32** %21, align 8
  store i32 0, i32* %171, align 4
  br label %174

172:                                              ; preds = %165
  %173 = load i32*, i32** %21, align 8
  store i32 4, i32* %173, align 4
  br label %174

174:                                              ; preds = %172, %170
  br label %175

175:                                              ; preds = %174, %162
  %176 = load i32*, i32** %24, align 8
  %177 = icmp ne i32* %176, null
  br i1 %177, label %178, label %183

178:                                              ; preds = %175
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 4
  %182 = load i32*, i32** %24, align 8
  store i32 %181, i32* %182, align 4
  br label %183

183:                                              ; preds = %178, %175
  %184 = load i64, i64* %15, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %203, label %186

186:                                              ; preds = %183
  %187 = load i32*, i32** %22, align 8
  %188 = icmp ne i32* %187, null
  br i1 %188, label %189, label %194

189:                                              ; preds = %186
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 8
  %193 = load i32*, i32** %22, align 8
  store i32 %192, i32* %193, align 4
  br label %194

194:                                              ; preds = %189, %186
  %195 = load i32*, i32** %23, align 8
  %196 = icmp ne i32* %195, null
  br i1 %196, label %197, label %202

197:                                              ; preds = %194
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 4
  %201 = load i32*, i32** %23, align 8
  store i32 %200, i32* %201, align 4
  br label %202

202:                                              ; preds = %197, %194
  br label %203

203:                                              ; preds = %202, %183
  %204 = load i32, i32* @DW_DLV_OK, align 4
  store i32 %204, i32* %13, align 4
  br label %205

205:                                              ; preds = %203, %107, %92, %81, %71, %30
  %206 = load i32, i32* %13, align 4
  ret i32 %206
}

declare dso_local i32 @DWARF_SET_ERROR(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local i32 @_dwarf_info_first_cu(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @_dwarf_info_next_cu(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @_dwarf_info_first_tu(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @_dwarf_info_next_tu(%struct.TYPE_9__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
