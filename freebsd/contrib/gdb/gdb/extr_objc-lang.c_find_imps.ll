; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_objc-lang.c_find_imps.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_objc-lang.c_find_imps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symtab = type { i32 }
%struct.block = type { i32 }
%struct.symbol = type { i32 }
%struct.minimal_symbol = type { i32 }

@VAR_DOMAIN = common dso_local global i32 0, align 4
@compare_classes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @find_imps(%struct.symtab* %0, %struct.block* %1, i8* %2, %struct.symbol** %3, i32* %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.symtab*, align 8
  %9 = alloca %struct.block*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.symbol**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8, align 1
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct.symbol*, align 8
  %25 = alloca %struct.minimal_symbol*, align 8
  %26 = alloca %struct.symbol*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.symtab* %0, %struct.symtab** %8, align 8
  store %struct.block* %1, %struct.block** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.symbol** %3, %struct.symbol*** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i8 0, i8* %14, align 1
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i8* null, i8** %22, align 8
  store i8* null, i8** %23, align 8
  %29 = load i32*, i32** %12, align 8
  %30 = icmp ne i32* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @gdb_assert(i32 %31)
  %33 = load i32*, i32** %13, align 8
  %34 = icmp ne i32* %33, null
  %35 = zext i1 %34 to i32
  %36 = call i32 @gdb_assert(i32 %35)
  %37 = load i32*, i32** %12, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %6
  %40 = load i32*, i32** %12, align 8
  store i32 0, i32* %40, align 4
  br label %41

41:                                               ; preds = %39, %6
  %42 = load i32*, i32** %13, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32*, i32** %13, align 8
  store i32 0, i32* %45, align 4
  br label %46

46:                                               ; preds = %44, %41
  %47 = load i8*, i8** %10, align 8
  %48 = call i64 @strlen(i8* %47)
  %49 = add nsw i64 %48, 1
  %50 = call i64 @alloca(i64 %49)
  %51 = inttoptr i64 %50 to i8*
  store i8* %51, i8** %22, align 8
  %52 = load i8*, i8** %22, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = call i32 @strcpy(i8* %52, i8* %53)
  %55 = load i8*, i8** %22, align 8
  %56 = call i8* @parse_method(i8* %55, i8* %14, i8** %15, i8** %16, i8** %17)
  store i8* %56, i8** %23, align 8
  %57 = load i8*, i8** %23, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %112

59:                                               ; preds = %46
  store %struct.symbol* null, %struct.symbol** %24, align 8
  store %struct.minimal_symbol* null, %struct.minimal_symbol** %25, align 8
  %60 = load i8*, i8** %22, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = call i32 @strcpy(i8* %60, i8* %61)
  %63 = load i8*, i8** %22, align 8
  %64 = call i8* @parse_selector(i8* %63, i8** %17)
  store i8* %64, i8** %23, align 8
  %65 = load i8*, i8** %23, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  store i8* null, i8** %7, align 8
  br label %252

68:                                               ; preds = %59
  %69 = load i8*, i8** %17, align 8
  %70 = load %struct.block*, %struct.block** %9, align 8
  %71 = load i32, i32* @VAR_DOMAIN, align 4
  %72 = call %struct.symbol* @lookup_symbol(i8* %69, %struct.block* %70, i32 %71, i32 0, i32* null)
  store %struct.symbol* %72, %struct.symbol** %24, align 8
  %73 = load %struct.symbol*, %struct.symbol** %24, align 8
  %74 = icmp ne %struct.symbol* %73, null
  br i1 %74, label %75, label %89

75:                                               ; preds = %68
  %76 = load %struct.symbol**, %struct.symbol*** %11, align 8
  %77 = icmp ne %struct.symbol** %76, null
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load %struct.symbol*, %struct.symbol** %24, align 8
  %80 = load %struct.symbol**, %struct.symbol*** %11, align 8
  %81 = load i32, i32* %18, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.symbol*, %struct.symbol** %80, i64 %82
  store %struct.symbol* %79, %struct.symbol** %83, align 8
  br label %84

84:                                               ; preds = %78, %75
  %85 = load i32, i32* %18, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %18, align 4
  %87 = load i32, i32* %19, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %19, align 4
  br label %89

89:                                               ; preds = %84, %68
  %90 = load %struct.symbol*, %struct.symbol** %24, align 8
  %91 = icmp eq %struct.symbol* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i8*, i8** %17, align 8
  %94 = call %struct.minimal_symbol* @lookup_minimal_symbol(i8* %93, i32 0, i32 0)
  store %struct.minimal_symbol* %94, %struct.minimal_symbol** %25, align 8
  br label %95

95:                                               ; preds = %92, %89
  %96 = load %struct.minimal_symbol*, %struct.minimal_symbol** %25, align 8
  %97 = icmp ne %struct.minimal_symbol* %96, null
  br i1 %97, label %98, label %111

98:                                               ; preds = %95
  %99 = load %struct.symbol**, %struct.symbol*** %11, align 8
  %100 = icmp ne %struct.symbol** %99, null
  br i1 %100, label %101, label %108

101:                                              ; preds = %98
  %102 = load %struct.minimal_symbol*, %struct.minimal_symbol** %25, align 8
  %103 = bitcast %struct.minimal_symbol* %102 to %struct.symbol*
  %104 = load %struct.symbol**, %struct.symbol*** %11, align 8
  %105 = load i32, i32* %18, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.symbol*, %struct.symbol** %104, i64 %106
  store %struct.symbol* %103, %struct.symbol** %107, align 8
  br label %108

108:                                              ; preds = %101, %98
  %109 = load i32, i32* %18, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %18, align 4
  br label %111

111:                                              ; preds = %108, %95
  br label %112

112:                                              ; preds = %111, %46
  %113 = load %struct.symbol**, %struct.symbol*** %11, align 8
  %114 = icmp ne %struct.symbol** %113, null
  br i1 %114, label %115, label %126

115:                                              ; preds = %112
  %116 = load %struct.symtab*, %struct.symtab** %8, align 8
  %117 = load i8, i8* %14, align 1
  %118 = load i8*, i8** %15, align 8
  %119 = load i8*, i8** %16, align 8
  %120 = load i8*, i8** %17, align 8
  %121 = load %struct.symbol**, %struct.symbol*** %11, align 8
  %122 = load i32, i32* %18, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.symbol*, %struct.symbol** %121, i64 %123
  %125 = call i32 @find_methods(%struct.symtab* %116, i8 signext %117, i8* %118, i8* %119, i8* %120, %struct.symbol** %124, i32* %20, i32* %21)
  br label %133

126:                                              ; preds = %112
  %127 = load %struct.symtab*, %struct.symtab** %8, align 8
  %128 = load i8, i8* %14, align 1
  %129 = load i8*, i8** %15, align 8
  %130 = load i8*, i8** %16, align 8
  %131 = load i8*, i8** %17, align 8
  %132 = call i32 @find_methods(%struct.symtab* %127, i8 signext %128, i8* %129, i8* %130, i8* %131, %struct.symbol** null, i32* %20, i32* %21)
  br label %133

133:                                              ; preds = %126, %115
  %134 = load i32, i32* %20, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %133
  %137 = load i32, i32* %21, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = load i8*, i8** %10, align 8
  store i8* %140, i8** %7, align 8
  br label %252

141:                                              ; preds = %136, %133
  %142 = load %struct.symbol**, %struct.symbol*** %11, align 8
  %143 = icmp ne %struct.symbol** %142, null
  br i1 %143, label %144, label %184

144:                                              ; preds = %141
  br label %145

145:                                              ; preds = %154, %144
  %146 = load i32, i32* %19, align 4
  %147 = load i32, i32* %18, align 4
  %148 = icmp ult i32 %146, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %145
  %150 = load i32, i32* %21, align 4
  %151 = icmp ugt i32 %150, 0
  br label %152

152:                                              ; preds = %149, %145
  %153 = phi i1 [ false, %145 ], [ %151, %149 ]
  br i1 %153, label %154, label %183

154:                                              ; preds = %152
  store %struct.symbol* null, %struct.symbol** %26, align 8
  %155 = load i32, i32* %19, align 4
  store i32 %155, i32* %27, align 4
  %156 = load i32, i32* %18, align 4
  %157 = load i32, i32* %21, align 4
  %158 = add i32 %156, %157
  %159 = sub i32 %158, 1
  store i32 %159, i32* %28, align 4
  %160 = load %struct.symbol**, %struct.symbol*** %11, align 8
  %161 = load i32, i32* %28, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds %struct.symbol*, %struct.symbol** %160, i64 %162
  %164 = load %struct.symbol*, %struct.symbol** %163, align 8
  store %struct.symbol* %164, %struct.symbol** %26, align 8
  %165 = load %struct.symbol**, %struct.symbol*** %11, align 8
  %166 = load i32, i32* %27, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds %struct.symbol*, %struct.symbol** %165, i64 %167
  %169 = load %struct.symbol*, %struct.symbol** %168, align 8
  %170 = load %struct.symbol**, %struct.symbol*** %11, align 8
  %171 = load i32, i32* %28, align 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds %struct.symbol*, %struct.symbol** %170, i64 %172
  store %struct.symbol* %169, %struct.symbol** %173, align 8
  %174 = load %struct.symbol*, %struct.symbol** %26, align 8
  %175 = load %struct.symbol**, %struct.symbol*** %11, align 8
  %176 = load i32, i32* %27, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds %struct.symbol*, %struct.symbol** %175, i64 %177
  store %struct.symbol* %174, %struct.symbol** %178, align 8
  %179 = load i32, i32* %19, align 4
  %180 = add i32 %179, 1
  store i32 %180, i32* %19, align 4
  %181 = load i32, i32* %21, align 4
  %182 = add i32 %181, -1
  store i32 %182, i32* %21, align 4
  br label %145

183:                                              ; preds = %152
  br label %184

184:                                              ; preds = %183, %141
  %185 = load i32, i32* %20, align 4
  %186 = load i32, i32* %18, align 4
  %187 = add i32 %186, %185
  store i32 %187, i32* %18, align 4
  %188 = load i32, i32* %21, align 4
  %189 = load i32, i32* %19, align 4
  %190 = add i32 %189, %188
  store i32 %190, i32* %19, align 4
  %191 = load i32*, i32** %12, align 8
  %192 = icmp ne i32* %191, null
  br i1 %192, label %193, label %196

193:                                              ; preds = %184
  %194 = load i32, i32* %18, align 4
  %195 = load i32*, i32** %12, align 8
  store i32 %194, i32* %195, align 4
  br label %196

196:                                              ; preds = %193, %184
  %197 = load i32*, i32** %13, align 8
  %198 = icmp ne i32* %197, null
  br i1 %198, label %199, label %202

199:                                              ; preds = %196
  %200 = load i32, i32* %19, align 4
  %201 = load i32*, i32** %13, align 8
  store i32 %200, i32* %201, align 4
  br label %202

202:                                              ; preds = %199, %196
  %203 = load %struct.symbol**, %struct.symbol*** %11, align 8
  %204 = icmp eq %struct.symbol** %203, null
  br i1 %204, label %205, label %213

205:                                              ; preds = %202
  %206 = load i8*, i8** %10, align 8
  %207 = load i8*, i8** %23, align 8
  %208 = load i8*, i8** %22, align 8
  %209 = ptrtoint i8* %207 to i64
  %210 = ptrtoint i8* %208 to i64
  %211 = sub i64 %209, %210
  %212 = getelementptr inbounds i8, i8* %206, i64 %211
  store i8* %212, i8** %7, align 8
  br label %252

213:                                              ; preds = %202
  %214 = load i32, i32* %18, align 4
  %215 = icmp ugt i32 %214, 1
  br i1 %215, label %216, label %240

216:                                              ; preds = %213
  %217 = load i32, i32* %19, align 4
  %218 = icmp ugt i32 %217, 1
  br i1 %218, label %219, label %224

219:                                              ; preds = %216
  %220 = load %struct.symbol**, %struct.symbol*** %11, align 8
  %221 = load i32, i32* %19, align 4
  %222 = load i32, i32* @compare_classes, align 4
  %223 = call i32 @qsort(%struct.symbol** %220, i32 %221, i32 8, i32 %222)
  br label %224

224:                                              ; preds = %219, %216
  %225 = load i32, i32* %18, align 4
  %226 = load i32, i32* %19, align 4
  %227 = sub i32 %225, %226
  %228 = icmp ugt i32 %227, 1
  br i1 %228, label %229, label %239

229:                                              ; preds = %224
  %230 = load %struct.symbol**, %struct.symbol*** %11, align 8
  %231 = load i32, i32* %19, align 4
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds %struct.symbol*, %struct.symbol** %230, i64 %232
  %234 = load i32, i32* %18, align 4
  %235 = load i32, i32* %19, align 4
  %236 = sub i32 %234, %235
  %237 = load i32, i32* @compare_classes, align 4
  %238 = call i32 @qsort(%struct.symbol** %233, i32 %236, i32 8, i32 %237)
  br label %239

239:                                              ; preds = %229, %224
  br label %240

240:                                              ; preds = %239, %213
  %241 = load %struct.symbol**, %struct.symbol*** %11, align 8
  %242 = load i32, i32* %18, align 4
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds %struct.symbol*, %struct.symbol** %241, i64 %243
  store %struct.symbol* null, %struct.symbol** %244, align 8
  %245 = load i8*, i8** %10, align 8
  %246 = load i8*, i8** %23, align 8
  %247 = load i8*, i8** %22, align 8
  %248 = ptrtoint i8* %246 to i64
  %249 = ptrtoint i8* %247 to i64
  %250 = sub i64 %248, %249
  %251 = getelementptr inbounds i8, i8* %245, i64 %250
  store i8* %251, i8** %7, align 8
  br label %252

252:                                              ; preds = %240, %205, %139, %67
  %253 = load i8*, i8** %7, align 8
  ret i8* %253
}

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i64 @alloca(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @parse_method(i8*, i8*, i8**, i8**, i8**) #1

declare dso_local i8* @parse_selector(i8*, i8**) #1

declare dso_local %struct.symbol* @lookup_symbol(i8*, %struct.block*, i32, i32, i32*) #1

declare dso_local %struct.minimal_symbol* @lookup_minimal_symbol(i8*, i32, i32) #1

declare dso_local i32 @find_methods(%struct.symtab*, i8 signext, i8*, i8*, i8*, %struct.symbol**, i32*, i32*) #1

declare dso_local i32 @qsort(%struct.symbol**, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
