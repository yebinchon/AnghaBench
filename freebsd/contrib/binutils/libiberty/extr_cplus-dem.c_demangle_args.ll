; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cplus-dem.c_demangle_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cplus-dem.c_demangle_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_stuff = type { i64, i32, i8** }

@PRINT_ARG_TYPES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@HP_DEMANGLING = common dso_local global i64 0, align 8
@ARM_DEMANGLING = common dso_local global i64 0, align 8
@EDG_DEMANGLING = common dso_local global i64 0, align 8
@LUCID_DEMANGLING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c")\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.work_stuff*, i8**, i32*)* @demangle_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @demangle_args(%struct.work_stuff* %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.work_stuff*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  store %struct.work_stuff* %0, %struct.work_stuff** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %14 = load i64, i64* @PRINT_ARG_TYPES, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %3
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @string_append(i32* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %19 = load i8**, i8*** %6, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @string_append(i32* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %16
  br label %28

28:                                               ; preds = %27, %3
  br label %29

29:                                               ; preds = %197, %28
  %30 = load i8**, i8*** %6, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 95
  br i1 %34, label %35, label %47

35:                                               ; preds = %29
  %36 = load i8**, i8*** %6, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load i8**, i8*** %6, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 101
  br i1 %46, label %52, label %47

47:                                               ; preds = %41, %35, %29
  %48 = load %struct.work_stuff*, %struct.work_stuff** %5, align 8
  %49 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %50, 0
  br label %52

52:                                               ; preds = %47, %41
  %53 = phi i1 [ true, %41 ], [ %51, %47 ]
  br i1 %53, label %54, label %198

54:                                               ; preds = %52
  %55 = load i8**, i8*** %6, align 8
  %56 = load i8*, i8** %55, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 78
  br i1 %59, label %66, label %60

60:                                               ; preds = %54
  %61 = load i8**, i8*** %6, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 84
  br i1 %65, label %66, label %174

66:                                               ; preds = %60, %54
  %67 = load i8**, i8*** %6, align 8
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %67, align 8
  %70 = load i8, i8* %68, align 1
  store i8 %70, i8* %13, align 1
  %71 = load i8, i8* %13, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 78
  br i1 %73, label %74, label %80

74:                                               ; preds = %66
  %75 = load i8**, i8*** %6, align 8
  %76 = call i32 @get_count(i8** %75, i32* %10)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  store i32 0, i32* %4, align 4
  br label %227

79:                                               ; preds = %74
  br label %81

80:                                               ; preds = %66
  store i32 1, i32* %10, align 4
  br label %81

81:                                               ; preds = %80, %79
  %82 = load i64, i64* @HP_DEMANGLING, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %81
  %85 = load i64, i64* @ARM_DEMANGLING, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = load i64, i64* @EDG_DEMANGLING, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %87, %84, %81
  %91 = load %struct.work_stuff*, %struct.work_stuff** %5, align 8
  %92 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = icmp sge i32 %93, 10
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = load i8**, i8*** %6, align 8
  %97 = call i32 @consume_count(i8** %96)
  store i32 %97, i32* %11, align 4
  %98 = icmp sle i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  store i32 0, i32* %4, align 4
  br label %227

100:                                              ; preds = %95
  br label %107

101:                                              ; preds = %90, %87
  %102 = load i8**, i8*** %6, align 8
  %103 = call i32 @get_count(i8** %102, i32* %11)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %101
  store i32 0, i32* %4, align 4
  br label %227

106:                                              ; preds = %101
  br label %107

107:                                              ; preds = %106, %100
  %108 = load i64, i64* @LUCID_DEMANGLING, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %119, label %110

110:                                              ; preds = %107
  %111 = load i64, i64* @ARM_DEMANGLING, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %119, label %113

113:                                              ; preds = %110
  %114 = load i64, i64* @HP_DEMANGLING, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %113
  %117 = load i64, i64* @EDG_DEMANGLING, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %116, %113, %110, %107
  %120 = load i32, i32* %11, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %11, align 4
  br label %122

122:                                              ; preds = %119, %116
  %123 = load i32, i32* %11, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %131, label %125

125:                                              ; preds = %122
  %126 = load i32, i32* %11, align 4
  %127 = load %struct.work_stuff*, %struct.work_stuff** %5, align 8
  %128 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = icmp sge i32 %126, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %125, %122
  store i32 0, i32* %4, align 4
  br label %227

132:                                              ; preds = %125
  br label %133

133:                                              ; preds = %171, %132
  %134 = load %struct.work_stuff*, %struct.work_stuff** %5, align 8
  %135 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp sgt i64 %136, 0
  br i1 %137, label %142, label %138

138:                                              ; preds = %133
  %139 = load i32, i32* %10, align 4
  %140 = add nsw i32 %139, -1
  store i32 %140, i32* %10, align 4
  %141 = icmp sge i32 %140, 0
  br label %142

142:                                              ; preds = %138, %133
  %143 = phi i1 [ true, %133 ], [ %141, %138 ]
  br i1 %143, label %144, label %173

144:                                              ; preds = %142
  %145 = load %struct.work_stuff*, %struct.work_stuff** %5, align 8
  %146 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %145, i32 0, i32 2
  %147 = load i8**, i8*** %146, align 8
  %148 = load i32, i32* %11, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8*, i8** %147, i64 %149
  %151 = load i8*, i8** %150, align 8
  store i8* %151, i8** %12, align 8
  %152 = load i32, i32* %9, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %144
  %155 = load i64, i64* @PRINT_ARG_TYPES, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = load i32*, i32** %7, align 8
  %159 = call i32 @string_append(i32* %158, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %160

160:                                              ; preds = %157, %154, %144
  %161 = load %struct.work_stuff*, %struct.work_stuff** %5, align 8
  %162 = call i32 @do_arg(%struct.work_stuff* %161, i8** %12, i32* %8)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %160
  store i32 0, i32* %4, align 4
  br label %227

165:                                              ; preds = %160
  %166 = load i64, i64* @PRINT_ARG_TYPES, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = load i32*, i32** %7, align 8
  %170 = call i32 @string_appends(i32* %169, i32* %8)
  br label %171

171:                                              ; preds = %168, %165
  %172 = call i32 @string_delete(i32* %8)
  store i32 1, i32* %9, align 4
  br label %133

173:                                              ; preds = %142
  br label %197

174:                                              ; preds = %60
  %175 = load i32, i32* %9, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %174
  %178 = load i64, i64* @PRINT_ARG_TYPES, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %177
  %181 = load i32*, i32** %7, align 8
  %182 = call i32 @string_append(i32* %181, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %183

183:                                              ; preds = %180, %177, %174
  %184 = load %struct.work_stuff*, %struct.work_stuff** %5, align 8
  %185 = load i8**, i8*** %6, align 8
  %186 = call i32 @do_arg(%struct.work_stuff* %184, i8** %185, i32* %8)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %189, label %188

188:                                              ; preds = %183
  store i32 0, i32* %4, align 4
  br label %227

189:                                              ; preds = %183
  %190 = load i64, i64* @PRINT_ARG_TYPES, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %189
  %193 = load i32*, i32** %7, align 8
  %194 = call i32 @string_appends(i32* %193, i32* %8)
  br label %195

195:                                              ; preds = %192, %189
  %196 = call i32 @string_delete(i32* %8)
  store i32 1, i32* %9, align 4
  br label %197

197:                                              ; preds = %195, %173
  br label %29

198:                                              ; preds = %52
  %199 = load i8**, i8*** %6, align 8
  %200 = load i8*, i8** %199, align 8
  %201 = load i8, i8* %200, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp eq i32 %202, 101
  br i1 %203, label %204, label %220

204:                                              ; preds = %198
  %205 = load i8**, i8*** %6, align 8
  %206 = load i8*, i8** %205, align 8
  %207 = getelementptr inbounds i8, i8* %206, i32 1
  store i8* %207, i8** %205, align 8
  %208 = load i64, i64* @PRINT_ARG_TYPES, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %219

210:                                              ; preds = %204
  %211 = load i32, i32* %9, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %210
  %214 = load i32*, i32** %7, align 8
  %215 = call i32 @string_append(i32* %214, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %216

216:                                              ; preds = %213, %210
  %217 = load i32*, i32** %7, align 8
  %218 = call i32 @string_append(i32* %217, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %219

219:                                              ; preds = %216, %204
  br label %220

220:                                              ; preds = %219, %198
  %221 = load i64, i64* @PRINT_ARG_TYPES, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %220
  %224 = load i32*, i32** %7, align 8
  %225 = call i32 @string_append(i32* %224, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %226

226:                                              ; preds = %223, %220
  store i32 1, i32* %4, align 4
  br label %227

227:                                              ; preds = %226, %188, %164, %131, %105, %99, %78
  %228 = load i32, i32* %4, align 4
  ret i32 %228
}

declare dso_local i32 @string_append(i32*, i8*) #1

declare dso_local i32 @get_count(i8**, i32*) #1

declare dso_local i32 @consume_count(i8**) #1

declare dso_local i32 @do_arg(%struct.work_stuff*, i8**, i32*) #1

declare dso_local i32 @string_appends(i32*, i32*) #1

declare dso_local i32 @string_delete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
