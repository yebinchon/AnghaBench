; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resrc.c_write_rc_dialog_control.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resrc.c_write_rc_dialog_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.control_info = type { i8*, i64, i64 }
%struct.TYPE_6__ = type { i32, i64, i64, i64, i64, i32*, i64, i64, %struct.TYPE_7__, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [3 x i8] c"  \00", align 1
@control_info = common dso_local global %struct.control_info* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"CONTROL\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c" %d, \00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c", 0x%x, \00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"%d, %d\00", align 1
@SS_ICON = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c", %d, %d\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c", 0x%x\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c", 0x%x, %u\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_6__*)* @write_rc_dialog_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_rc_dialog_control(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.control_info*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 (i32*, i8*, ...) @fprintf(i32* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.control_info* null, %struct.control_info** %5, align 8
  br label %52

14:                                               ; preds = %2
  %15 = load %struct.control_info*, %struct.control_info** @control_info, align 8
  store %struct.control_info* %15, %struct.control_info** %5, align 8
  br label %16

16:                                               ; preds = %48, %14
  %17 = load %struct.control_info*, %struct.control_info** %5, align 8
  %18 = getelementptr inbounds %struct.control_info, %struct.control_info* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %51

21:                                               ; preds = %16
  %22 = load %struct.control_info*, %struct.control_info** %5, align 8
  %23 = getelementptr inbounds %struct.control_info, %struct.control_info* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %24, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %21
  %32 = load %struct.control_info*, %struct.control_info** %5, align 8
  %33 = getelementptr inbounds %struct.control_info, %struct.control_info* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, -1
  br i1 %35, label %46, label %36

36:                                               ; preds = %31
  %37 = load %struct.control_info*, %struct.control_info** %5, align 8
  %38 = getelementptr inbounds %struct.control_info, %struct.control_info* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, 255
  %44 = sext i32 %43 to i64
  %45 = icmp eq i64 %39, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %36, %31
  br label %51

47:                                               ; preds = %36, %21
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.control_info*, %struct.control_info** %5, align 8
  %50 = getelementptr inbounds %struct.control_info, %struct.control_info* %49, i32 1
  store %struct.control_info* %50, %struct.control_info** %5, align 8
  br label %16

51:                                               ; preds = %46, %16
  br label %52

52:                                               ; preds = %51, %13
  %53 = load %struct.control_info*, %struct.control_info** %5, align 8
  %54 = icmp eq %struct.control_info* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 (i32*, i8*, ...) @fprintf(i32* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %73

58:                                               ; preds = %52
  %59 = load %struct.control_info*, %struct.control_info** %5, align 8
  %60 = getelementptr inbounds %struct.control_info, %struct.control_info* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load i32*, i32** %3, align 8
  %65 = load %struct.control_info*, %struct.control_info** %5, align 8
  %66 = getelementptr inbounds %struct.control_info, %struct.control_info* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 (i32*, i8*, ...) @fprintf(i32* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %67)
  br label %72

69:                                               ; preds = %58
  %70 = load i32*, i32** %3, align 8
  %71 = call i32 (i32*, i8*, ...) @fprintf(i32* %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store %struct.control_info* null, %struct.control_info** %5, align 8
  br label %72

72:                                               ; preds = %69, %63
  br label %73

73:                                               ; preds = %72, %55
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 10
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %73
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 10
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %100

86:                                               ; preds = %79, %73
  %87 = load i32*, i32** %3, align 8
  %88 = call i32 (i32*, i8*, ...) @fprintf(i32* %87, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %89 = load i32*, i32** %3, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 10
  %92 = bitcast %struct.TYPE_7__* %91 to { i64, i64 }*
  %93 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %92, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @res_id_print(i32* %89, i64 %94, i64 %96, i32 1)
  %98 = load i32*, i32** %3, align 8
  %99 = call i32 (i32*, i8*, ...) @fprintf(i32* %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %100

100:                                              ; preds = %86, %79
  %101 = load i32*, i32** %3, align 8
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 9
  %104 = load i64, i64* %103, align 8
  %105 = trunc i64 %104 to i32
  %106 = call i32 (i32*, i8*, ...) @fprintf(i32* %101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %105)
  %107 = load %struct.control_info*, %struct.control_info** %5, align 8
  %108 = icmp eq %struct.control_info* %107, null
  br i1 %108, label %109, label %142

109:                                              ; preds = %100
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %109
  %116 = load i32*, i32** %3, align 8
  %117 = call i32 (i32*, i8*, ...) @fprintf(i32* %116, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %118

118:                                              ; preds = %115, %109
  %119 = load i32*, i32** %3, align 8
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 8
  %122 = bitcast %struct.TYPE_7__* %121 to { i64, i64 }*
  %123 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %122, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @res_id_print(i32* %119, i64 %124, i64 %126, i32 0)
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %118
  %134 = load i32*, i32** %3, align 8
  %135 = call i32 (i32*, i8*, ...) @fprintf(i32* %134, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %136

136:                                              ; preds = %133, %118
  %137 = load i32*, i32** %3, align 8
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 (i32*, i8*, ...) @fprintf(i32* %137, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %140)
  br label %142

142:                                              ; preds = %136, %100
  %143 = load i32*, i32** %3, align 8
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 7
  %146 = load i64, i64* %145, align 8
  %147 = trunc i64 %146 to i32
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 6
  %150 = load i64, i64* %149, align 8
  %151 = trunc i64 %150 to i32
  %152 = call i32 (i32*, i8*, ...) @fprintf(i32* %143, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %147, i32 %151)
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @SS_ICON, align 4
  %157 = icmp ne i32 %155, %156
  br i1 %157, label %178, label %158

158:                                              ; preds = %142
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %178, label %163

163:                                              ; preds = %158
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %178, label %168

168:                                              ; preds = %163
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %178, label %173

173:                                              ; preds = %168
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 4
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %219

178:                                              ; preds = %173, %168, %163, %158, %142
  %179 = load i32*, i32** %3, align 8
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = trunc i64 %182 to i32
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 3
  %186 = load i64, i64* %185, align 8
  %187 = trunc i64 %186 to i32
  %188 = call i32 (i32*, i8*, ...) @fprintf(i32* %179, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %183, i32 %187)
  %189 = load %struct.control_info*, %struct.control_info** %5, align 8
  %190 = icmp ne %struct.control_info* %189, null
  br i1 %190, label %191, label %197

191:                                              ; preds = %178
  %192 = load i32*, i32** %3, align 8
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = call i32 (i32*, i8*, ...) @fprintf(i32* %192, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %195)
  br label %197

197:                                              ; preds = %191, %178
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %207, label %202

202:                                              ; preds = %197
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 4
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %218

207:                                              ; preds = %202, %197
  %208 = load i32*, i32** %3, align 8
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = trunc i64 %211 to i32
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 4
  %215 = load i64, i64* %214, align 8
  %216 = trunc i64 %215 to i32
  %217 = call i32 (i32*, i8*, ...) @fprintf(i32* %208, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 %212, i32 %216)
  br label %218

218:                                              ; preds = %207, %202
  br label %219

219:                                              ; preds = %218, %173
  %220 = load i32*, i32** %3, align 8
  %221 = call i32 (i32*, i8*, ...) @fprintf(i32* %220, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 5
  %224 = load i32*, i32** %223, align 8
  %225 = icmp ne i32* %224, null
  br i1 %225, label %226, label %232

226:                                              ; preds = %219
  %227 = load i32*, i32** %3, align 8
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 5
  %230 = load i32*, i32** %229, align 8
  %231 = call i32 @write_rc_rcdata(i32* %227, i32* %230, i32 2)
  br label %232

232:                                              ; preds = %226, %219
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @res_id_print(i32*, i64, i64, i32) #1

declare dso_local i32 @write_rc_rcdata(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
