; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-decode.c_lookup_cmd_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-decode.c_lookup_cmd_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_element = type { i32, %struct.cmd_list_element**, %struct.cmd_list_element* }

@xdb_commands = common dso_local global i64 0, align 8
@DEPRECATED_WARN_USER = common dso_local global i32 0, align 4
@tui_active = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_list_element* @lookup_cmd_1(i8** %0, %struct.cmd_list_element* %1, %struct.cmd_list_element** %2, i32 %3) #0 {
  %5 = alloca %struct.cmd_list_element*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.cmd_list_element*, align 8
  %8 = alloca %struct.cmd_list_element**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.cmd_list_element*, align 8
  %16 = alloca %struct.cmd_list_element*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  store i8** %0, i8*** %6, align 8
  store %struct.cmd_list_element* %1, %struct.cmd_list_element** %7, align 8
  store %struct.cmd_list_element** %2, %struct.cmd_list_element*** %8, align 8
  store i32 %3, i32* %9, align 4
  %20 = load i8**, i8*** %6, align 8
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %17, align 8
  br label %22

22:                                               ; preds = %36, %4
  %23 = load i8**, i8*** %6, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 32
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load i8**, i8*** %6, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 9
  br label %34

34:                                               ; preds = %28, %22
  %35 = phi i1 [ true, %22 ], [ %33, %28 ]
  br i1 %35, label %36, label %40

36:                                               ; preds = %34
  %37 = load i8**, i8*** %6, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %37, align 8
  br label %22

40:                                               ; preds = %34
  %41 = load i8**, i8*** %6, align 8
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %10, align 8
  br label %43

43:                                               ; preds = %90, %40
  %44 = load i8*, i8** %10, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %87

48:                                               ; preds = %43
  %49 = load i8*, i8** %10, align 8
  %50 = load i8, i8* %49, align 1
  %51 = call i64 @isalnum(i8 signext %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %85, label %53

53:                                               ; preds = %48
  %54 = load i8*, i8** %10, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 45
  br i1 %57, label %85, label %58

58:                                               ; preds = %53
  %59 = load i8*, i8** %10, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 95
  br i1 %62, label %85, label %63

63:                                               ; preds = %58
  %64 = load i64, i64* @xdb_commands, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %63
  %67 = load i8*, i8** %10, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 33
  br i1 %70, label %81, label %71

71:                                               ; preds = %66
  %72 = load i8*, i8** %10, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 47
  br i1 %75, label %81, label %76

76:                                               ; preds = %71
  %77 = load i8*, i8** %10, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 63
  br label %81

81:                                               ; preds = %76, %71, %66
  %82 = phi i1 [ true, %71 ], [ true, %66 ], [ %80, %76 ]
  br label %83

83:                                               ; preds = %81, %63
  %84 = phi i1 [ false, %63 ], [ %82, %81 ]
  br label %85

85:                                               ; preds = %83, %58, %53, %48
  %86 = phi i1 [ true, %58 ], [ true, %53 ], [ true, %48 ], [ %84, %83 ]
  br label %87

87:                                               ; preds = %85, %43
  %88 = phi i1 [ false, %43 ], [ %86, %85 ]
  br i1 %88, label %89, label %93

89:                                               ; preds = %87
  br label %90

90:                                               ; preds = %89
  %91 = load i8*, i8** %10, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %10, align 8
  br label %43

93:                                               ; preds = %87
  %94 = load i8*, i8** %10, align 8
  %95 = load i8**, i8*** %6, align 8
  %96 = load i8*, i8** %95, align 8
  %97 = icmp eq i8* %94, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  store %struct.cmd_list_element* null, %struct.cmd_list_element** %5, align 8
  br label %265

99:                                               ; preds = %93
  %100 = load i8*, i8** %10, align 8
  %101 = load i8**, i8*** %6, align 8
  %102 = load i8*, i8** %101, align 8
  %103 = ptrtoint i8* %100 to i64
  %104 = ptrtoint i8* %102 to i64
  %105 = sub i64 %103, %104
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %12, align 4
  %107 = load i32, i32* %12, align 4
  %108 = add nsw i32 %107, 1
  %109 = call i64 @alloca(i32 %108)
  %110 = inttoptr i64 %109 to i8*
  store i8* %110, i8** %11, align 8
  store i32 0, i32* %13, align 4
  br label %111

111:                                              ; preds = %127, %99
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* %12, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %130

115:                                              ; preds = %111
  %116 = load i8**, i8*** %6, align 8
  %117 = load i8*, i8** %116, align 8
  %118 = load i32, i32* %13, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  %121 = load i8, i8* %120, align 1
  store i8 %121, i8* %18, align 1
  %122 = load i8, i8* %18, align 1
  %123 = load i8*, i8** %11, align 8
  %124 = load i32, i32* %13, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  store i8 %122, i8* %126, align 1
  br label %127

127:                                              ; preds = %115
  %128 = load i32, i32* %13, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %13, align 4
  br label %111

130:                                              ; preds = %111
  %131 = load i8*, i8** %11, align 8
  %132 = load i32, i32* %12, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  store i8 0, i8* %134, align 1
  store %struct.cmd_list_element* null, %struct.cmd_list_element** %15, align 8
  store i32 0, i32* %14, align 4
  %135 = load i8*, i8** %11, align 8
  %136 = load i32, i32* %12, align 4
  %137 = load %struct.cmd_list_element*, %struct.cmd_list_element** %7, align 8
  %138 = load i32, i32* %9, align 4
  %139 = call %struct.cmd_list_element* @find_cmd(i8* %135, i32 %136, %struct.cmd_list_element* %137, i32 %138, i32* %14)
  store %struct.cmd_list_element* %139, %struct.cmd_list_element** %15, align 8
  %140 = load %struct.cmd_list_element*, %struct.cmd_list_element** %15, align 8
  %141 = icmp ne %struct.cmd_list_element* %140, null
  br i1 %141, label %142, label %145

142:                                              ; preds = %130
  %143 = load i32, i32* %14, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %182

145:                                              ; preds = %142, %130
  store i32 0, i32* %13, align 4
  br label %146

146:                                              ; preds = %173, %145
  %147 = load i32, i32* %13, align 4
  %148 = load i32, i32* %12, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %176

150:                                              ; preds = %146
  %151 = load i8*, i8** %11, align 8
  %152 = load i32, i32* %13, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %151, i64 %153
  %155 = load i8, i8* %154, align 1
  store i8 %155, i8* %19, align 1
  %156 = load i8, i8* %19, align 1
  %157 = call i64 @isupper(i8 signext %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %150
  %160 = load i8, i8* %19, align 1
  %161 = call signext i8 @tolower(i8 signext %160)
  %162 = sext i8 %161 to i32
  br label %166

163:                                              ; preds = %150
  %164 = load i8, i8* %19, align 1
  %165 = sext i8 %164 to i32
  br label %166

166:                                              ; preds = %163, %159
  %167 = phi i32 [ %162, %159 ], [ %165, %163 ]
  %168 = trunc i32 %167 to i8
  %169 = load i8*, i8** %11, align 8
  %170 = load i32, i32* %13, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8, i8* %169, i64 %171
  store i8 %168, i8* %172, align 1
  br label %173

173:                                              ; preds = %166
  %174 = load i32, i32* %13, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %13, align 4
  br label %146

176:                                              ; preds = %146
  %177 = load i8*, i8** %11, align 8
  %178 = load i32, i32* %12, align 4
  %179 = load %struct.cmd_list_element*, %struct.cmd_list_element** %7, align 8
  %180 = load i32, i32* %9, align 4
  %181 = call %struct.cmd_list_element* @find_cmd(i8* %177, i32 %178, %struct.cmd_list_element* %179, i32 %180, i32* %14)
  store %struct.cmd_list_element* %181, %struct.cmd_list_element** %15, align 8
  br label %182

182:                                              ; preds = %176, %142
  %183 = load i32, i32* %14, align 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %182
  store %struct.cmd_list_element* null, %struct.cmd_list_element** %5, align 8
  br label %265

186:                                              ; preds = %182
  %187 = load i32, i32* %14, align 4
  %188 = icmp sgt i32 %187, 1
  br i1 %188, label %189, label %195

189:                                              ; preds = %186
  %190 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %8, align 8
  %191 = icmp ne %struct.cmd_list_element** %190, null
  br i1 %191, label %192, label %194

192:                                              ; preds = %189
  %193 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %8, align 8
  store %struct.cmd_list_element* null, %struct.cmd_list_element** %193, align 8
  br label %194

194:                                              ; preds = %192, %189
  store %struct.cmd_list_element* inttoptr (i64 -1 to %struct.cmd_list_element*), %struct.cmd_list_element** %5, align 8
  br label %265

195:                                              ; preds = %186
  %196 = load i8*, i8** %10, align 8
  %197 = load i8**, i8*** %6, align 8
  store i8* %196, i8** %197, align 8
  %198 = load %struct.cmd_list_element*, %struct.cmd_list_element** %15, align 8
  %199 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %198, i32 0, i32 2
  %200 = load %struct.cmd_list_element*, %struct.cmd_list_element** %199, align 8
  %201 = icmp ne %struct.cmd_list_element* %200, null
  br i1 %201, label %202, label %215

202:                                              ; preds = %195
  %203 = load %struct.cmd_list_element*, %struct.cmd_list_element** %15, align 8
  %204 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @DEPRECATED_WARN_USER, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %202
  %210 = call i32 @deprecated_cmd_warning(i8** %17)
  br label %211

211:                                              ; preds = %209, %202
  %212 = load %struct.cmd_list_element*, %struct.cmd_list_element** %15, align 8
  %213 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %212, i32 0, i32 2
  %214 = load %struct.cmd_list_element*, %struct.cmd_list_element** %213, align 8
  store %struct.cmd_list_element* %214, %struct.cmd_list_element** %15, align 8
  br label %215

215:                                              ; preds = %211, %195
  %216 = load %struct.cmd_list_element*, %struct.cmd_list_element** %15, align 8
  %217 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %216, i32 0, i32 1
  %218 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %217, align 8
  %219 = icmp ne %struct.cmd_list_element** %218, null
  br i1 %219, label %220, label %257

220:                                              ; preds = %215
  %221 = load i8**, i8*** %6, align 8
  %222 = load %struct.cmd_list_element*, %struct.cmd_list_element** %15, align 8
  %223 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %222, i32 0, i32 1
  %224 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %223, align 8
  %225 = load %struct.cmd_list_element*, %struct.cmd_list_element** %224, align 8
  %226 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %8, align 8
  %227 = load i32, i32* %9, align 4
  %228 = call %struct.cmd_list_element* @lookup_cmd_1(i8** %221, %struct.cmd_list_element* %225, %struct.cmd_list_element** %226, i32 %227)
  store %struct.cmd_list_element* %228, %struct.cmd_list_element** %16, align 8
  %229 = load %struct.cmd_list_element*, %struct.cmd_list_element** %16, align 8
  %230 = icmp ne %struct.cmd_list_element* %229, null
  br i1 %230, label %239, label %231

231:                                              ; preds = %220
  %232 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %8, align 8
  %233 = icmp ne %struct.cmd_list_element** %232, null
  br i1 %233, label %234, label %237

234:                                              ; preds = %231
  %235 = load %struct.cmd_list_element*, %struct.cmd_list_element** %7, align 8
  %236 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %8, align 8
  store %struct.cmd_list_element* %235, %struct.cmd_list_element** %236, align 8
  br label %237

237:                                              ; preds = %234, %231
  %238 = load %struct.cmd_list_element*, %struct.cmd_list_element** %15, align 8
  store %struct.cmd_list_element* %238, %struct.cmd_list_element** %5, align 8
  br label %265

239:                                              ; preds = %220
  %240 = load %struct.cmd_list_element*, %struct.cmd_list_element** %16, align 8
  %241 = icmp eq %struct.cmd_list_element* %240, inttoptr (i64 -1 to %struct.cmd_list_element*)
  br i1 %241, label %242, label %255

242:                                              ; preds = %239
  %243 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %8, align 8
  %244 = icmp ne %struct.cmd_list_element** %243, null
  br i1 %244, label %245, label %253

245:                                              ; preds = %242
  %246 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %8, align 8
  %247 = load %struct.cmd_list_element*, %struct.cmd_list_element** %246, align 8
  %248 = icmp ne %struct.cmd_list_element* %247, null
  br i1 %248, label %252, label %249

249:                                              ; preds = %245
  %250 = load %struct.cmd_list_element*, %struct.cmd_list_element** %15, align 8
  %251 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %8, align 8
  store %struct.cmd_list_element* %250, %struct.cmd_list_element** %251, align 8
  br label %252

252:                                              ; preds = %249, %245
  br label %253

253:                                              ; preds = %252, %242
  %254 = load %struct.cmd_list_element*, %struct.cmd_list_element** %16, align 8
  store %struct.cmd_list_element* %254, %struct.cmd_list_element** %5, align 8
  br label %265

255:                                              ; preds = %239
  %256 = load %struct.cmd_list_element*, %struct.cmd_list_element** %16, align 8
  store %struct.cmd_list_element* %256, %struct.cmd_list_element** %5, align 8
  br label %265

257:                                              ; preds = %215
  %258 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %8, align 8
  %259 = icmp ne %struct.cmd_list_element** %258, null
  br i1 %259, label %260, label %263

260:                                              ; preds = %257
  %261 = load %struct.cmd_list_element*, %struct.cmd_list_element** %7, align 8
  %262 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %8, align 8
  store %struct.cmd_list_element* %261, %struct.cmd_list_element** %262, align 8
  br label %263

263:                                              ; preds = %260, %257
  %264 = load %struct.cmd_list_element*, %struct.cmd_list_element** %15, align 8
  store %struct.cmd_list_element* %264, %struct.cmd_list_element** %5, align 8
  br label %265

265:                                              ; preds = %263, %255, %253, %237, %194, %185, %98
  %266 = load %struct.cmd_list_element*, %struct.cmd_list_element** %5, align 8
  ret %struct.cmd_list_element* %266
}

declare dso_local i64 @isalnum(i8 signext) #1

declare dso_local i64 @alloca(i32) #1

declare dso_local %struct.cmd_list_element* @find_cmd(i8*, i32, %struct.cmd_list_element*, i32, i32*) #1

declare dso_local i64 @isupper(i8 signext) #1

declare dso_local signext i8 @tolower(i8 signext) #1

declare dso_local i32 @deprecated_cmd_warning(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
