; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_calls.c_special_function_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_calls.c_special_function_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@TRANSLATION_UNIT_DECL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"alloca\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"__builtin_alloca\00", align 1
@ECF_MAY_BE_ALLOCA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"setjmp\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"setjmp_syscall\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"sigsetjmp\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"savectx\00", align 1
@ECF_RETURNS_TWICE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"siglongjmp\00", align 1
@ECF_NORETURN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"qsetjmp\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"vfork\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"getcontext\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"longjmp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @special_function_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @special_function_p(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* %3, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %240

9:                                                ; preds = %2
  %10 = load i64, i64* %3, align 8
  %11 = call i64 @DECL_NAME(i64 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %240

13:                                               ; preds = %9
  %14 = load i64, i64* %3, align 8
  %15 = call i64 @DECL_NAME(i64 %14)
  %16 = call i32 @IDENTIFIER_LENGTH(i64 %15)
  %17 = icmp sle i32 %16, 17
  br i1 %17, label %18, label %240

18:                                               ; preds = %13
  %19 = load i64, i64* %3, align 8
  %20 = call i64 @DECL_CONTEXT(i64 %19)
  %21 = load i64, i64* @NULL_TREE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %18
  %24 = load i64, i64* %3, align 8
  %25 = call i64 @DECL_CONTEXT(i64 %24)
  %26 = call i64 @TREE_CODE(i64 %25)
  %27 = load i64, i64* @TRANSLATION_UNIT_DECL, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %240

29:                                               ; preds = %23, %18
  %30 = load i64, i64* %3, align 8
  %31 = call i64 @TREE_PUBLIC(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %240

33:                                               ; preds = %29
  %34 = load i64, i64* %3, align 8
  %35 = call i64 @DECL_NAME(i64 %34)
  %36 = call i8* @IDENTIFIER_POINTER(i64 %35)
  store i8* %36, i8** %5, align 8
  %37 = load i8*, i8** %5, align 8
  store i8* %37, i8** %6, align 8
  %38 = load i64, i64* %3, align 8
  %39 = call i64 @DECL_NAME(i64 %38)
  %40 = call i32 @IDENTIFIER_LENGTH(i64 %39)
  %41 = icmp eq i32 %40, 6
  br i1 %41, label %42, label %52

42:                                               ; preds = %33
  %43 = load i8*, i8** %5, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 97
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @strcmp(i8* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %48, %42, %33
  %53 = load i64, i64* %3, align 8
  %54 = call i64 @DECL_NAME(i64 %53)
  %55 = call i32 @IDENTIFIER_LENGTH(i64 %54)
  %56 = icmp eq i32 %55, 16
  br i1 %56, label %57, label %71

57:                                               ; preds = %52
  %58 = load i8*, i8** %5, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 95
  br i1 %62, label %63, label %71

63:                                               ; preds = %57
  %64 = load i8*, i8** %5, align 8
  %65 = call i32 @strcmp(i8* %64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %63, %48
  %68 = load i32, i32* @ECF_MAY_BE_ALLOCA, align 4
  %69 = load i32, i32* %4, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %67, %63, %57, %52
  %72 = load i8*, i8** %5, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 95
  br i1 %76, label %77, label %106

77:                                               ; preds = %71
  %78 = load i8*, i8** %5, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 95
  br i1 %82, label %83, label %92

83:                                               ; preds = %77
  %84 = load i8*, i8** %5, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 2
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 120
  br i1 %88, label %89, label %92

89:                                               ; preds = %83
  %90 = load i8*, i8** %6, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 3
  store i8* %91, i8** %6, align 8
  br label %105

92:                                               ; preds = %83, %77
  %93 = load i8*, i8** %5, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 95
  br i1 %97, label %98, label %101

98:                                               ; preds = %92
  %99 = load i8*, i8** %6, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 2
  store i8* %100, i8** %6, align 8
  br label %104

101:                                              ; preds = %92
  %102 = load i8*, i8** %6, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 1
  store i8* %103, i8** %6, align 8
  br label %104

104:                                              ; preds = %101, %98
  br label %105

105:                                              ; preds = %104, %89
  br label %106

106:                                              ; preds = %105, %71
  %107 = load i8*, i8** %6, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 0
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 115
  br i1 %111, label %112, label %165

112:                                              ; preds = %106
  %113 = load i8*, i8** %6, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 1
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 101
  br i1 %117, label %118, label %126

118:                                              ; preds = %112
  %119 = load i8*, i8** %6, align 8
  %120 = call i32 @strcmp(i8* %119, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %146

122:                                              ; preds = %118
  %123 = load i8*, i8** %6, align 8
  %124 = call i32 @strcmp(i8* %123, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %146

126:                                              ; preds = %122, %112
  %127 = load i8*, i8** %6, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 1
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %130, 105
  br i1 %131, label %132, label %136

132:                                              ; preds = %126
  %133 = load i8*, i8** %6, align 8
  %134 = call i32 @strcmp(i8* %133, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %132, %126
  %137 = load i8*, i8** %6, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 1
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %140, 97
  br i1 %141, label %142, label %150

142:                                              ; preds = %136
  %143 = load i8*, i8** %6, align 8
  %144 = call i32 @strcmp(i8* %143, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %150, label %146

146:                                              ; preds = %142, %132, %122, %118
  %147 = load i32, i32* @ECF_RETURNS_TWICE, align 4
  %148 = load i32, i32* %4, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %4, align 4
  br label %150

150:                                              ; preds = %146, %142, %136
  %151 = load i8*, i8** %6, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 1
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp eq i32 %154, 105
  br i1 %155, label %156, label %164

156:                                              ; preds = %150
  %157 = load i8*, i8** %6, align 8
  %158 = call i32 @strcmp(i8* %157, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %164, label %160

160:                                              ; preds = %156
  %161 = load i32, i32* @ECF_NORETURN, align 4
  %162 = load i32, i32* %4, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %4, align 4
  br label %164

164:                                              ; preds = %160, %156, %150
  br label %239

165:                                              ; preds = %106
  %166 = load i8*, i8** %6, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 0
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp eq i32 %169, 113
  br i1 %170, label %171, label %181

171:                                              ; preds = %165
  %172 = load i8*, i8** %6, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 1
  %174 = load i8, i8* %173, align 1
  %175 = sext i8 %174 to i32
  %176 = icmp eq i32 %175, 115
  br i1 %176, label %177, label %181

177:                                              ; preds = %171
  %178 = load i8*, i8** %6, align 8
  %179 = call i32 @strcmp(i8* %178, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %213

181:                                              ; preds = %177, %171, %165
  %182 = load i8*, i8** %6, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 0
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp eq i32 %185, 118
  br i1 %186, label %187, label %197

187:                                              ; preds = %181
  %188 = load i8*, i8** %6, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 1
  %190 = load i8, i8* %189, align 1
  %191 = sext i8 %190 to i32
  %192 = icmp eq i32 %191, 102
  br i1 %192, label %193, label %197

193:                                              ; preds = %187
  %194 = load i8*, i8** %6, align 8
  %195 = call i32 @strcmp(i8* %194, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %213

197:                                              ; preds = %193, %187, %181
  %198 = load i8*, i8** %6, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 0
  %200 = load i8, i8* %199, align 1
  %201 = sext i8 %200 to i32
  %202 = icmp eq i32 %201, 103
  br i1 %202, label %203, label %217

203:                                              ; preds = %197
  %204 = load i8*, i8** %6, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 1
  %206 = load i8, i8* %205, align 1
  %207 = sext i8 %206 to i32
  %208 = icmp eq i32 %207, 101
  br i1 %208, label %209, label %217

209:                                              ; preds = %203
  %210 = load i8*, i8** %6, align 8
  %211 = call i32 @strcmp(i8* %210, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %217, label %213

213:                                              ; preds = %209, %193, %177
  %214 = load i32, i32* @ECF_RETURNS_TWICE, align 4
  %215 = load i32, i32* %4, align 4
  %216 = or i32 %215, %214
  store i32 %216, i32* %4, align 4
  br label %238

217:                                              ; preds = %209, %203, %197
  %218 = load i8*, i8** %6, align 8
  %219 = getelementptr inbounds i8, i8* %218, i64 0
  %220 = load i8, i8* %219, align 1
  %221 = sext i8 %220 to i32
  %222 = icmp eq i32 %221, 108
  br i1 %222, label %223, label %237

223:                                              ; preds = %217
  %224 = load i8*, i8** %6, align 8
  %225 = getelementptr inbounds i8, i8* %224, i64 1
  %226 = load i8, i8* %225, align 1
  %227 = sext i8 %226 to i32
  %228 = icmp eq i32 %227, 111
  br i1 %228, label %229, label %237

229:                                              ; preds = %223
  %230 = load i8*, i8** %6, align 8
  %231 = call i32 @strcmp(i8* %230, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %237, label %233

233:                                              ; preds = %229
  %234 = load i32, i32* @ECF_NORETURN, align 4
  %235 = load i32, i32* %4, align 4
  %236 = or i32 %235, %234
  store i32 %236, i32* %4, align 4
  br label %237

237:                                              ; preds = %233, %229, %223, %217
  br label %238

238:                                              ; preds = %237, %213
  br label %239

239:                                              ; preds = %238, %164
  br label %240

240:                                              ; preds = %239, %29, %23, %13, %9, %2
  %241 = load i32, i32* %4, align 4
  ret i32 %241
}

declare dso_local i64 @DECL_NAME(i64) #1

declare dso_local i32 @IDENTIFIER_LENGTH(i64) #1

declare dso_local i64 @DECL_CONTEXT(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_PUBLIC(i64) #1

declare dso_local i8* @IDENTIFIER_POINTER(i64) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
