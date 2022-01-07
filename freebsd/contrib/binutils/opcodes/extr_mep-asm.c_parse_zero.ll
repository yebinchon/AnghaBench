; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_mep-asm.c_parse_zero.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_mep-asm.c_parse_zero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"($\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"not zero\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%lo(\00", align 1
@BFD_RELOC_MEP_LOW16 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"missing `)'\00", align 1
@CGEN_PARSE_OPERAND_RESULT_NUMBER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"%hi(\00", align 1
@BFD_RELOC_MEP_HI16S = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"%uhi(\00", align 1
@BFD_RELOC_MEP_HI16U = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"%sdaoff(\00", align 1
@BFD_RELOC_MEP_GPREL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"%tpoff(\00", align 1
@BFD_RELOC_MEP_TPREL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"invalid %function() here\00", align 1
@BFD_RELOC_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8**, i32, i64*)* @parse_zero to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_zero(i32 %0, i8** %1, i32 %2, i64* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %13 = load i8**, i8*** %7, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = call i64 @strncmp(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %233

18:                                               ; preds = %4
  %19 = load i8**, i8*** %7, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = call i64 @strncasecmp(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %56

23:                                               ; preds = %18
  %24 = load i8**, i8*** %7, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 4
  store i8* %26, i8** %24, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i8**, i8*** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @BFD_RELOC_MEP_LOW16, align 4
  %31 = call i8* @cgen_parse_address(i32 %27, i8** %28, i32 %29, i32 %30, i32* %11, i64* %12)
  store i8* %31, i8** %10, align 8
  %32 = load i8**, i8*** %7, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 41
  br i1 %36, label %37, label %38

37:                                               ; preds = %23
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %233

38:                                               ; preds = %23
  %39 = load i8**, i8*** %7, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %39, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @CGEN_PARSE_OPERAND_RESULT_NUMBER, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = load i64, i64* %12, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48, %44
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %233

52:                                               ; preds = %48, %38
  %53 = load i64, i64* %12, align 8
  %54 = load i64*, i64** %9, align 8
  store i64 %53, i64* %54, align 8
  %55 = load i8*, i8** %10, align 8
  store i8* %55, i8** %5, align 8
  br label %233

56:                                               ; preds = %18
  %57 = load i8**, i8*** %7, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = call i64 @strncasecmp(i8* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %94

61:                                               ; preds = %56
  %62 = load i8**, i8*** %7, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 4
  store i8* %64, i8** %62, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load i8**, i8*** %7, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @BFD_RELOC_MEP_HI16S, align 4
  %69 = call i8* @cgen_parse_address(i32 %65, i8** %66, i32 %67, i32 %68, i32* %11, i64* %12)
  store i8* %69, i8** %10, align 8
  %70 = load i8**, i8*** %7, align 8
  %71 = load i8*, i8** %70, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 41
  br i1 %74, label %75, label %76

75:                                               ; preds = %61
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %233

76:                                               ; preds = %61
  %77 = load i8**, i8*** %7, align 8
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %77, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = icmp eq i8* %80, null
  br i1 %81, label %82, label %90

82:                                               ; preds = %76
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* @CGEN_PARSE_OPERAND_RESULT_NUMBER, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %89, label %86

86:                                               ; preds = %82
  %87 = load i64, i64* %12, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86, %82
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %233

90:                                               ; preds = %86, %76
  %91 = load i64, i64* %12, align 8
  %92 = load i64*, i64** %9, align 8
  store i64 %91, i64* %92, align 8
  %93 = load i8*, i8** %10, align 8
  store i8* %93, i8** %5, align 8
  br label %233

94:                                               ; preds = %56
  %95 = load i8**, i8*** %7, align 8
  %96 = load i8*, i8** %95, align 8
  %97 = call i64 @strncasecmp(i8* %96, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 5)
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %132

99:                                               ; preds = %94
  %100 = load i8**, i8*** %7, align 8
  %101 = load i8*, i8** %100, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 5
  store i8* %102, i8** %100, align 8
  %103 = load i32, i32* %6, align 4
  %104 = load i8**, i8*** %7, align 8
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @BFD_RELOC_MEP_HI16U, align 4
  %107 = call i8* @cgen_parse_address(i32 %103, i8** %104, i32 %105, i32 %106, i32* %11, i64* %12)
  store i8* %107, i8** %10, align 8
  %108 = load i8**, i8*** %7, align 8
  %109 = load i8*, i8** %108, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp ne i32 %111, 41
  br i1 %112, label %113, label %114

113:                                              ; preds = %99
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %233

114:                                              ; preds = %99
  %115 = load i8**, i8*** %7, align 8
  %116 = load i8*, i8** %115, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %115, align 8
  %118 = load i8*, i8** %10, align 8
  %119 = icmp eq i8* %118, null
  br i1 %119, label %120, label %128

120:                                              ; preds = %114
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* @CGEN_PARSE_OPERAND_RESULT_NUMBER, align 4
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %127, label %124

124:                                              ; preds = %120
  %125 = load i64, i64* %12, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %124, %120
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %233

128:                                              ; preds = %124, %114
  %129 = load i64, i64* %12, align 8
  %130 = load i64*, i64** %9, align 8
  store i64 %129, i64* %130, align 8
  %131 = load i8*, i8** %10, align 8
  store i8* %131, i8** %5, align 8
  br label %233

132:                                              ; preds = %94
  %133 = load i8**, i8*** %7, align 8
  %134 = load i8*, i8** %133, align 8
  %135 = call i64 @strncasecmp(i8* %134, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 8)
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %170

137:                                              ; preds = %132
  %138 = load i8**, i8*** %7, align 8
  %139 = load i8*, i8** %138, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 8
  store i8* %140, i8** %138, align 8
  %141 = load i32, i32* %6, align 4
  %142 = load i8**, i8*** %7, align 8
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* @BFD_RELOC_MEP_GPREL, align 4
  %145 = call i8* @cgen_parse_address(i32 %141, i8** %142, i32 %143, i32 %144, i32* %11, i64* %12)
  store i8* %145, i8** %10, align 8
  %146 = load i8**, i8*** %7, align 8
  %147 = load i8*, i8** %146, align 8
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp ne i32 %149, 41
  br i1 %150, label %151, label %152

151:                                              ; preds = %137
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %233

152:                                              ; preds = %137
  %153 = load i8**, i8*** %7, align 8
  %154 = load i8*, i8** %153, align 8
  %155 = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %155, i8** %153, align 8
  %156 = load i8*, i8** %10, align 8
  %157 = icmp eq i8* %156, null
  br i1 %157, label %158, label %166

158:                                              ; preds = %152
  %159 = load i32, i32* %11, align 4
  %160 = load i32, i32* @CGEN_PARSE_OPERAND_RESULT_NUMBER, align 4
  %161 = icmp ne i32 %159, %160
  br i1 %161, label %165, label %162

162:                                              ; preds = %158
  %163 = load i64, i64* %12, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %162, %158
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %233

166:                                              ; preds = %162, %152
  %167 = load i64, i64* %12, align 8
  %168 = load i64*, i64** %9, align 8
  store i64 %167, i64* %168, align 8
  %169 = load i8*, i8** %10, align 8
  store i8* %169, i8** %5, align 8
  br label %233

170:                                              ; preds = %132
  %171 = load i8**, i8*** %7, align 8
  %172 = load i8*, i8** %171, align 8
  %173 = call i64 @strncasecmp(i8* %172, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 7)
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %208

175:                                              ; preds = %170
  %176 = load i8**, i8*** %7, align 8
  %177 = load i8*, i8** %176, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 7
  store i8* %178, i8** %176, align 8
  %179 = load i32, i32* %6, align 4
  %180 = load i8**, i8*** %7, align 8
  %181 = load i32, i32* %8, align 4
  %182 = load i32, i32* @BFD_RELOC_MEP_TPREL, align 4
  %183 = call i8* @cgen_parse_address(i32 %179, i8** %180, i32 %181, i32 %182, i32* %11, i64* %12)
  store i8* %183, i8** %10, align 8
  %184 = load i8**, i8*** %7, align 8
  %185 = load i8*, i8** %184, align 8
  %186 = load i8, i8* %185, align 1
  %187 = sext i8 %186 to i32
  %188 = icmp ne i32 %187, 41
  br i1 %188, label %189, label %190

189:                                              ; preds = %175
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %233

190:                                              ; preds = %175
  %191 = load i8**, i8*** %7, align 8
  %192 = load i8*, i8** %191, align 8
  %193 = getelementptr inbounds i8, i8* %192, i32 1
  store i8* %193, i8** %191, align 8
  %194 = load i8*, i8** %10, align 8
  %195 = icmp eq i8* %194, null
  br i1 %195, label %196, label %204

196:                                              ; preds = %190
  %197 = load i32, i32* %11, align 4
  %198 = load i32, i32* @CGEN_PARSE_OPERAND_RESULT_NUMBER, align 4
  %199 = icmp ne i32 %197, %198
  br i1 %199, label %203, label %200

200:                                              ; preds = %196
  %201 = load i64, i64* %12, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %200, %196
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %233

204:                                              ; preds = %200, %190
  %205 = load i64, i64* %12, align 8
  %206 = load i64*, i64** %9, align 8
  store i64 %205, i64* %206, align 8
  %207 = load i8*, i8** %10, align 8
  store i8* %207, i8** %5, align 8
  br label %233

208:                                              ; preds = %170
  %209 = load i8**, i8*** %7, align 8
  %210 = load i8*, i8** %209, align 8
  %211 = load i8, i8* %210, align 1
  %212 = sext i8 %211 to i32
  %213 = icmp eq i32 %212, 37
  br i1 %213, label %214, label %215

214:                                              ; preds = %208
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8** %5, align 8
  br label %233

215:                                              ; preds = %208
  %216 = load i32, i32* %6, align 4
  %217 = load i8**, i8*** %7, align 8
  %218 = load i32, i32* %8, align 4
  %219 = load i32, i32* @BFD_RELOC_NONE, align 4
  %220 = call i8* @cgen_parse_address(i32 %216, i8** %217, i32 %218, i32 %219, i32* %11, i64* %12)
  store i8* %220, i8** %10, align 8
  %221 = load i8*, i8** %10, align 8
  %222 = icmp eq i8* %221, null
  br i1 %222, label %223, label %231

223:                                              ; preds = %215
  %224 = load i32, i32* %11, align 4
  %225 = load i32, i32* @CGEN_PARSE_OPERAND_RESULT_NUMBER, align 4
  %226 = icmp ne i32 %224, %225
  br i1 %226, label %230, label %227

227:                                              ; preds = %223
  %228 = load i64, i64* %12, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %227, %223
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %233

231:                                              ; preds = %227, %215
  %232 = load i8*, i8** %10, align 8
  store i8* %232, i8** %5, align 8
  br label %233

233:                                              ; preds = %231, %230, %214, %204, %203, %189, %166, %165, %151, %128, %127, %113, %90, %89, %75, %52, %51, %37, %17
  %234 = load i8*, i8** %5, align 8
  ret i8* %234
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i8* @cgen_parse_address(i32, i8**, i32, i32, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
