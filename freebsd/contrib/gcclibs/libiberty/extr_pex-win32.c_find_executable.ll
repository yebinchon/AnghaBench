; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_pex-win32.c_find_executable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_pex-win32.c_find_executable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@no_suffixes = common dso_local global i8** null, align 8
@std_suffixes = common dso_local global i8** null, align 8
@GENERIC_READ = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64)* @find_executable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @find_executable(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* null, i8** %9, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i64 @strlen(i8* %17)
  store i64 %18, i64* %13, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i64 @strchr(i8* %19, i8 signext 46)
  %21 = icmp ne i64 %20, 0
  %22 = xor i1 %21, true
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %14, align 4
  %25 = load i8*, i8** %4, align 8
  %26 = call i64 @strchr(i8* %25, i8 signext 47)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %2
  %29 = load i8*, i8** %4, align 8
  %30 = call i64 @strchr(i8* %29, i8 signext 92)
  %31 = icmp ne i64 %30, 0
  br label %32

32:                                               ; preds = %28, %2
  %33 = phi i1 [ true, %2 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %15, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i64, i64* @FALSE, align 8
  store i64 %38, i64* %5, align 8
  br label %39

39:                                               ; preds = %37, %32
  %40 = load i64, i64* %5, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %43, i8** %9, align 8
  br label %44

44:                                               ; preds = %42, %39
  %45 = load i8*, i8** %9, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %48

48:                                               ; preds = %47, %44
  store i64 0, i64* %8, align 8
  %49 = load i8*, i8** %9, align 8
  store i8* %49, i8** %11, align 8
  br label %50

50:                                               ; preds = %94, %48
  %51 = load i8*, i8** %11, align 8
  %52 = load i8, i8* %51, align 1
  %53 = icmp ne i8 %52, 0
  br i1 %53, label %54, label %96

54:                                               ; preds = %50
  %55 = load i8*, i8** %11, align 8
  store i8* %55, i8** %12, align 8
  br label %56

56:                                               ; preds = %68, %54
  %57 = load i8*, i8** %12, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 59
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load i8*, i8** %12, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 0
  br label %66

66:                                               ; preds = %61, %56
  %67 = phi i1 [ false, %56 ], [ %65, %61 ]
  br i1 %67, label %68, label %71

68:                                               ; preds = %66
  %69 = load i8*, i8** %12, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %12, align 8
  br label %56

71:                                               ; preds = %66
  %72 = load i8*, i8** %12, align 8
  %73 = load i8*, i8** %11, align 8
  %74 = ptrtoint i8* %72 to i64
  %75 = ptrtoint i8* %73 to i64
  %76 = sub i64 %74, %75
  %77 = load i64, i64* %8, align 8
  %78 = icmp ugt i64 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %71
  %80 = load i8*, i8** %12, align 8
  %81 = load i8*, i8** %11, align 8
  %82 = ptrtoint i8* %80 to i64
  %83 = ptrtoint i8* %81 to i64
  %84 = sub i64 %82, %83
  store i64 %84, i64* %8, align 8
  br label %85

85:                                               ; preds = %79, %71
  %86 = load i8*, i8** %12, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 59
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load i8*, i8** %12, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %12, align 8
  br label %93

93:                                               ; preds = %90, %85
  br label %94

94:                                               ; preds = %93
  %95 = load i8*, i8** %12, align 8
  store i8* %95, i8** %11, align 8
  br label %50

96:                                               ; preds = %50
  %97 = load i64, i64* %8, align 8
  %98 = add i64 %97, 1
  %99 = load i64, i64* %13, align 8
  %100 = add i64 %98, %99
  %101 = load i32, i32* %14, align 4
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 1, i32 5
  %105 = sext i32 %104 to i64
  %106 = add i64 %100, %105
  store i64 %106, i64* %8, align 8
  %107 = load i64, i64* %8, align 8
  %108 = call i8* @xmalloc(i64 %107)
  store i8* %108, i8** %6, align 8
  %109 = load i8*, i8** %9, align 8
  store i8* %109, i8** %11, align 8
  br label %110

110:                                              ; preds = %219, %96
  %111 = load i8*, i8** %11, align 8
  store i8* %111, i8** %12, align 8
  br label %112

112:                                              ; preds = %124, %110
  %113 = load i8*, i8** %12, align 8
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp ne i32 %115, 59
  br i1 %116, label %117, label %122

117:                                              ; preds = %112
  %118 = load i8*, i8** %12, align 8
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp ne i32 %120, 0
  br label %122

122:                                              ; preds = %117, %112
  %123 = phi i1 [ false, %112 ], [ %121, %117 ]
  br i1 %123, label %124, label %127

124:                                              ; preds = %122
  %125 = load i8*, i8** %12, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %12, align 8
  br label %112

127:                                              ; preds = %122
  %128 = load i8*, i8** %6, align 8
  store i8* %128, i8** %7, align 8
  %129 = load i8*, i8** %7, align 8
  %130 = load i8*, i8** %11, align 8
  %131 = load i8*, i8** %12, align 8
  %132 = load i8*, i8** %11, align 8
  %133 = ptrtoint i8* %131 to i64
  %134 = ptrtoint i8* %132 to i64
  %135 = sub i64 %133, %134
  %136 = trunc i64 %135 to i32
  %137 = call i32 @memcpy(i8* %129, i8* %130, i32 %136)
  %138 = load i8*, i8** %12, align 8
  %139 = load i8*, i8** %11, align 8
  %140 = ptrtoint i8* %138 to i64
  %141 = ptrtoint i8* %139 to i64
  %142 = sub i64 %140, %141
  %143 = load i8*, i8** %7, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 %142
  store i8* %144, i8** %7, align 8
  %145 = load i8*, i8** %12, align 8
  %146 = load i8*, i8** %11, align 8
  %147 = ptrtoint i8* %145 to i64
  %148 = ptrtoint i8* %146 to i64
  %149 = sub i64 %147, %148
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %127
  %152 = load i8*, i8** %7, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %7, align 8
  store i8 92, i8* %152, align 1
  br label %154

154:                                              ; preds = %151, %127
  %155 = load i8*, i8** %7, align 8
  %156 = load i8*, i8** %4, align 8
  %157 = call i32 @strcpy(i8* %155, i8* %156)
  %158 = load i8*, i8** %12, align 8
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp eq i32 %160, 59
  br i1 %161, label %162, label %165

162:                                              ; preds = %154
  %163 = load i8*, i8** %12, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %12, align 8
  br label %165

165:                                              ; preds = %162, %154
  %166 = load i8*, i8** %6, align 8
  store i8* %166, i8** %7, align 8
  br label %167

167:                                              ; preds = %179, %165
  %168 = load i8*, i8** %7, align 8
  %169 = load i8, i8* %168, align 1
  %170 = icmp ne i8 %169, 0
  br i1 %170, label %171, label %182

171:                                              ; preds = %167
  %172 = load i8*, i8** %7, align 8
  %173 = load i8, i8* %172, align 1
  %174 = sext i8 %173 to i32
  %175 = icmp eq i32 %174, 47
  br i1 %175, label %176, label %178

176:                                              ; preds = %171
  %177 = load i8*, i8** %7, align 8
  store i8 92, i8* %177, align 1
  br label %178

178:                                              ; preds = %176, %171
  br label %179

179:                                              ; preds = %178
  %180 = load i8*, i8** %7, align 8
  %181 = getelementptr inbounds i8, i8* %180, i32 1
  store i8* %181, i8** %7, align 8
  br label %167

182:                                              ; preds = %167
  %183 = load i32, i32* %14, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %182
  %186 = load i8**, i8*** @no_suffixes, align 8
  br label %189

187:                                              ; preds = %182
  %188 = load i8**, i8*** @std_suffixes, align 8
  br label %189

189:                                              ; preds = %187, %185
  %190 = phi i8** [ %186, %185 ], [ %188, %187 ]
  store i8** %190, i8*** %10, align 8
  br label %191

191:                                              ; preds = %214, %189
  %192 = load i8**, i8*** %10, align 8
  %193 = load i8*, i8** %192, align 8
  %194 = icmp ne i8* %193, null
  br i1 %194, label %195, label %217

195:                                              ; preds = %191
  %196 = load i8*, i8** %7, align 8
  store i8 0, i8* %196, align 1
  %197 = load i8*, i8** %6, align 8
  %198 = load i8**, i8*** %10, align 8
  %199 = load i8*, i8** %198, align 8
  %200 = call i32 @strcat(i8* %197, i8* %199)
  %201 = load i8*, i8** %6, align 8
  %202 = load i32, i32* @GENERIC_READ, align 4
  %203 = load i32, i32* @FILE_SHARE_READ, align 4
  %204 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %205 = or i32 %203, %204
  %206 = load i32, i32* @OPEN_EXISTING, align 4
  %207 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %208 = call i64 @CreateFile(i8* %201, i32 %202, i32 %205, i32 0, i32 %206, i32 %207, i32 0)
  store i64 %208, i64* %16, align 8
  %209 = load i64, i64* %16, align 8
  %210 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %211 = icmp ne i64 %209, %210
  br i1 %211, label %212, label %213

212:                                              ; preds = %195
  br label %226

213:                                              ; preds = %195
  br label %214

214:                                              ; preds = %213
  %215 = load i8**, i8*** %10, align 8
  %216 = getelementptr inbounds i8*, i8** %215, i32 1
  store i8** %216, i8*** %10, align 8
  br label %191

217:                                              ; preds = %191
  %218 = load i8*, i8** %12, align 8
  store i8* %218, i8** %11, align 8
  br label %219

219:                                              ; preds = %217
  %220 = load i8*, i8** %11, align 8
  %221 = load i8, i8* %220, align 1
  %222 = icmp ne i8 %221, 0
  br i1 %222, label %110, label %223

223:                                              ; preds = %219
  %224 = load i8*, i8** %6, align 8
  %225 = call i32 @free(i8* %224)
  store i8* null, i8** %3, align 8
  br label %230

226:                                              ; preds = %212
  %227 = load i64, i64* %16, align 8
  %228 = call i32 @CloseHandle(i64 %227)
  %229 = load i8*, i8** %6, align 8
  store i8* %229, i8** %3, align 8
  br label %230

230:                                              ; preds = %226, %223
  %231 = load i8*, i8** %3, align 8
  ret i8* %231
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i64 @CreateFile(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @CloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
