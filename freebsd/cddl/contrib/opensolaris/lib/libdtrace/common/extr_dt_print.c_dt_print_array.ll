; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_print.c_dt_print_array.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_print.c_dt_print_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i32, i32*, i32* }
%struct.TYPE_9__ = type { i32, i32 }

@NBBY = common dso_local global i32 0, align 4
@CTF_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"<invalid type %lu>\00", align 1
@B_FALSE = common dso_local global i64 0, align 8
@CTF_K_INTEGER = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"[ \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@dt_print_member = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.TYPE_8__*)* @dt_print_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_print_array(i32 %0, i32 %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_9__, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca %struct.TYPE_8__, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %6, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 4
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %7, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %8, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @NBBY, align 4
  %31 = sdiv i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %28, %32
  store i64 %33, i64* %9, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @ctf_array_info(i32* %34, i32 %35, %struct.TYPE_9__* %10)
  %37 = load i32, i32* @CTF_ERR, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %3
  %40 = load i32*, i32** %7, align 8
  %41 = load i64, i64* %9, align 8
  %42 = inttoptr i64 %41 to i8*
  %43 = call i32 (i32*, i8*, ...) @fprintf(i32* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %42)
  br label %241

44:                                               ; preds = %3
  %45 = load i32*, i32** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ctf_type_size(i32* %45, i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %63, label %50

50:                                               ; preds = %44
  %51 = load i32*, i32** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ctf_type_resolve(i32* %51, i32 %53)
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* @CTF_ERR, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %63, label %57

57:                                               ; preds = %50
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* %16, align 4
  %60 = call i32 @ctf_type_kind(i32* %58, i32 %59)
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* @CTF_ERR, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %57, %50, %44
  %64 = load i32*, i32** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i32*, i8*, ...) @fprintf(i32* %64, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  br label %241

68:                                               ; preds = %57
  %69 = load i64, i64* @B_FALSE, align 8
  store i64 %69, i64* %14, align 8
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* @CTF_K_INTEGER, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %122

73:                                               ; preds = %68
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* %16, align 4
  %76 = call i32 @ctf_type_encoding(i32* %74, i32 %75, i32* %12)
  %77 = load i32, i32* @CTF_ERR, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %122

79:                                               ; preds = %73
  %80 = load i32, i32* %12, align 4
  %81 = call i64 @CTF_IS_CHAR(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %122

83:                                               ; preds = %79
  store i32 0, i32* %13, align 4
  br label %84

84:                                               ; preds = %107, %83
  %85 = load i32, i32* %13, align 4
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp slt i32 %85, %87
  br i1 %88, label %89, label %110

89:                                               ; preds = %84
  %90 = load i64, i64* %9, align 8
  %91 = inttoptr i64 %90 to i8*
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %13, align 4
  %94 = mul nsw i32 %92, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %91, i64 %95
  %97 = load i8, i8* %96, align 1
  store i8 %97, i8* %17, align 1
  %98 = load i8, i8* %17, align 1
  %99 = call i32 @isprint(i8 signext %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %89
  %102 = load i8, i8* %17, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %101, %89
  br label %110

106:                                              ; preds = %101
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %13, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %13, align 4
  br label %84

110:                                              ; preds = %105, %84
  %111 = load i32, i32* %13, align 4
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %111, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %110
  %116 = load i8, i8* %17, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = load i64, i64* @B_TRUE, align 8
  store i64 %120, i64* %14, align 8
  br label %121

121:                                              ; preds = %119, %115, %110
  br label %122

122:                                              ; preds = %121, %79, %73, %68
  %123 = load i64, i64* %14, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %122
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %125, %122
  %131 = load i32*, i32** %7, align 8
  %132 = call i32 (i32*, i8*, ...) @fprintf(i32* %131, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %133

133:                                              ; preds = %130, %125
  %134 = load i64, i64* %14, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load i32*, i32** %7, align 8
  %138 = call i32 (i32*, i8*, ...) @fprintf(i32* %137, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %139

139:                                              ; preds = %136, %133
  store i32 0, i32* %13, align 4
  br label %140

140:                                              ; preds = %211, %139
  %141 = load i32, i32* %13, align 4
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = icmp slt i32 %141, %143
  br i1 %144, label %145, label %214

145:                                              ; preds = %140
  %146 = load i64, i64* %14, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %166

148:                                              ; preds = %145
  %149 = load i64, i64* %9, align 8
  %150 = inttoptr i64 %149 to i8*
  %151 = load i32, i32* %11, align 4
  %152 = load i32, i32* %13, align 4
  %153 = mul nsw i32 %151, %152
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %150, i64 %154
  %156 = load i8, i8* %155, align 1
  store i8 %156, i8* %18, align 1
  %157 = load i8, i8* %18, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %148
  br label %214

161:                                              ; preds = %148
  %162 = load i32*, i32** %7, align 8
  %163 = load i8, i8* %18, align 1
  %164 = sext i8 %163 to i32
  %165 = call i32 (i32*, i8*, ...) @fprintf(i32* %162, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %164)
  br label %210

166:                                              ; preds = %145
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %168 = bitcast %struct.TYPE_8__* %19 to i8*
  %169 = bitcast %struct.TYPE_8__* %167 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %168, i8* align 8 %169, i64 40, i1 false)
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = add nsw i64 %172, 1
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = sext i32 %175 to i64
  %177 = add nsw i64 %176, %173
  %178 = trunc i64 %177 to i32
  store i32 %178, i32* %174, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  store i64 0, i64* %179, align 8
  %180 = load i64, i64* %9, align 8
  %181 = load i32, i32* %11, align 4
  %182 = load i32, i32* %13, align 4
  %183 = mul nsw i32 %181, %182
  %184 = sext i32 %183 to i64
  %185 = add nsw i64 %180, %184
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  store i64 %185, i64* %186, align 8
  %187 = load i32*, i32** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @dt_print_member, align 4
  %191 = call i32 @ctf_type_visit(i32* %187, i32 %189, i32 %190, %struct.TYPE_8__* %19)
  %192 = call i32 @dt_print_trailing_braces(%struct.TYPE_8__* %19, i32 0)
  %193 = load i32, i32* %13, align 4
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = sub nsw i32 %195, 1
  %197 = icmp ne i32 %193, %196
  br i1 %197, label %198, label %201

198:                                              ; preds = %166
  %199 = load i32*, i32** %7, align 8
  %200 = call i32 (i32*, i8*, ...) @fprintf(i32* %199, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %209

201:                                              ; preds = %166
  %202 = load i32, i32* %15, align 4
  %203 = call i64 @CTF_IS_STRUCTLIKE(i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %201
  %206 = load i32*, i32** %7, align 8
  %207 = call i32 (i32*, i8*, ...) @fprintf(i32* %206, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %208

208:                                              ; preds = %205, %201
  br label %209

209:                                              ; preds = %208, %198
  br label %210

210:                                              ; preds = %209, %161
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %13, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %13, align 4
  br label %140

214:                                              ; preds = %160, %140
  %215 = load i64, i64* %14, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %214
  %218 = load i32*, i32** %7, align 8
  %219 = call i32 (i32*, i8*, ...) @fprintf(i32* %218, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %220

220:                                              ; preds = %217, %214
  %221 = load i64, i64* %14, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %228

223:                                              ; preds = %220
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %241

228:                                              ; preds = %223, %220
  %229 = load i32, i32* %15, align 4
  %230 = call i64 @CTF_IS_STRUCTLIKE(i32 %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %228
  %233 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %234 = call i32 @dt_print_indent(%struct.TYPE_8__* %233)
  br label %238

235:                                              ; preds = %228
  %236 = load i32*, i32** %7, align 8
  %237 = call i32 (i32*, i8*, ...) @fprintf(i32* %236, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %238

238:                                              ; preds = %235, %232
  %239 = load i32*, i32** %7, align 8
  %240 = call i32 (i32*, i8*, ...) @fprintf(i32* %239, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %241

241:                                              ; preds = %39, %63, %238, %223
  ret void
}

declare dso_local i32 @ctf_array_info(i32*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @ctf_type_size(i32*, i32) #1

declare dso_local i32 @ctf_type_resolve(i32*, i32) #1

declare dso_local i32 @ctf_type_kind(i32*, i32) #1

declare dso_local i32 @ctf_type_encoding(i32*, i32, i32*) #1

declare dso_local i64 @CTF_IS_CHAR(i32) #1

declare dso_local i32 @isprint(i8 signext) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ctf_type_visit(i32*, i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @dt_print_trailing_braces(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @CTF_IS_STRUCTLIKE(i32) #1

declare dso_local i32 @dt_print_indent(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
