; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_eval.c_evaltree.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_eval.c_evaltree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.node = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %union.node*, %union.node*, %union.node* }
%struct.stackmark = type { i32 }
%struct.TYPE_6__ = type { %union.node*, %union.node* }
%struct.TYPE_8__ = type { %union.node*, %union.node* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { %union.node* }
%struct.backcmd = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"evaltree(NULL) called\0A\00", align 1
@exitstatus = common dso_local global i64 0, align 8
@displayhist = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"evaltree(%p: %d) called\0A\00", align 1
@EV_EXIT = common dso_local global i32 0, align 4
@evalskip = common dso_local global i32 0, align 4
@EV_TESTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"Node type = %d\0A\00", align 1
@output = common dso_local global i32 0, align 4
@pendingsig = common dso_local global i64 0, align 8
@eflag = common dso_local global i64 0, align 8
@EXEXIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evaltree(%union.node* %0, i32 %1) #0 {
  %3 = alloca %union.node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %union.node*, align 8
  %7 = alloca %struct.stackmark, align 4
  store %union.node* %0, %union.node** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call i32 @setstackmark(%struct.stackmark* %7)
  store i32 0, i32* %5, align 4
  %9 = load %union.node*, %union.node** %3, align 8
  %10 = icmp eq %union.node* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* @exitstatus, align 8
  br label %230

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %226, %13
  store %union.node* null, %union.node** %6, align 8
  store i32 1, i32* @displayhist, align 4
  %15 = load %union.node*, %union.node** %3, align 8
  %16 = bitcast %union.node* %15 to i8*
  %17 = load %union.node*, %union.node** %3, align 8
  %18 = bitcast %union.node* %17 to i32*
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @TRACE(i8* %21)
  %23 = load %union.node*, %union.node** %3, align 8
  %24 = bitcast %union.node* %23 to i32*
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %216 [
    i32 131, label %26
    i32 144, label %43
    i32 134, label %60
    i32 132, label %77
    i32 130, label %81
    i32 143, label %91
    i32 136, label %95
    i32 128, label %126
    i32 129, label %126
    i32 137, label %133
    i32 142, label %140
    i32 141, label %143
    i32 140, label %148
    i32 138, label %172
    i32 135, label %182
    i32 133, label %197
    i32 139, label %206
  ]

26:                                               ; preds = %14
  %27 = load %union.node*, %union.node** %3, align 8
  %28 = bitcast %union.node* %27 to %struct.TYPE_6__*
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load %union.node*, %union.node** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @EV_EXIT, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  call void @evaltree(%union.node* %30, i32 %34)
  %35 = load i32, i32* @evalskip, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  br label %230

38:                                               ; preds = %26
  %39 = load %union.node*, %union.node** %3, align 8
  %40 = bitcast %union.node* %39 to %struct.TYPE_6__*
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load %union.node*, %union.node** %41, align 8
  store %union.node* %42, %union.node** %6, align 8
  br label %222

43:                                               ; preds = %14
  %44 = load %union.node*, %union.node** %3, align 8
  %45 = bitcast %union.node* %44 to %struct.TYPE_6__*
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load %union.node*, %union.node** %46, align 8
  %48 = load i32, i32* @EV_TESTED, align 4
  call void @evaltree(%union.node* %47, i32 %48)
  %49 = load i32, i32* @evalskip, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %43
  %52 = load i64, i64* @exitstatus, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51, %43
  br label %230

55:                                               ; preds = %51
  %56 = load %union.node*, %union.node** %3, align 8
  %57 = bitcast %union.node* %56 to %struct.TYPE_6__*
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load %union.node*, %union.node** %58, align 8
  store %union.node* %59, %union.node** %6, align 8
  br label %222

60:                                               ; preds = %14
  %61 = load %union.node*, %union.node** %3, align 8
  %62 = bitcast %union.node* %61 to %struct.TYPE_6__*
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load %union.node*, %union.node** %63, align 8
  %65 = load i32, i32* @EV_TESTED, align 4
  call void @evaltree(%union.node* %64, i32 %65)
  %66 = load i32, i32* @evalskip, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %60
  %69 = load i64, i64* @exitstatus, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68, %60
  br label %230

72:                                               ; preds = %68
  %73 = load %union.node*, %union.node** %3, align 8
  %74 = bitcast %union.node* %73 to %struct.TYPE_6__*
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load %union.node*, %union.node** %75, align 8
  store %union.node* %76, %union.node** %6, align 8
  br label %222

77:                                               ; preds = %14
  %78 = load %union.node*, %union.node** %3, align 8
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @evalredir(%union.node* %78, i32 %79)
  br label %222

81:                                               ; preds = %14
  %82 = load %union.node*, %union.node** %3, align 8
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @evalsubshell(%union.node* %82, i32 %83)
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @EV_TESTED, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %5, align 4
  br label %222

91:                                               ; preds = %14
  %92 = load %union.node*, %union.node** %3, align 8
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @evalsubshell(%union.node* %92, i32 %93)
  br label %222

95:                                               ; preds = %14
  %96 = load %union.node*, %union.node** %3, align 8
  %97 = bitcast %union.node* %96 to %struct.TYPE_7__*
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 2
  %99 = load %union.node*, %union.node** %98, align 8
  %100 = load i32, i32* @EV_TESTED, align 4
  call void @evaltree(%union.node* %99, i32 %100)
  %101 = load i32, i32* @evalskip, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %95
  br label %230

104:                                              ; preds = %95
  %105 = load i64, i64* @exitstatus, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %104
  %108 = load %union.node*, %union.node** %3, align 8
  %109 = bitcast %union.node* %108 to %struct.TYPE_7__*
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load %union.node*, %union.node** %110, align 8
  store %union.node* %111, %union.node** %6, align 8
  br label %125

112:                                              ; preds = %104
  %113 = load %union.node*, %union.node** %3, align 8
  %114 = bitcast %union.node* %113 to %struct.TYPE_7__*
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load %union.node*, %union.node** %115, align 8
  %117 = icmp ne %union.node* %116, null
  br i1 %117, label %118, label %123

118:                                              ; preds = %112
  %119 = load %union.node*, %union.node** %3, align 8
  %120 = bitcast %union.node* %119 to %struct.TYPE_7__*
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load %union.node*, %union.node** %121, align 8
  store %union.node* %122, %union.node** %6, align 8
  br label %124

123:                                              ; preds = %112
  store i64 0, i64* @exitstatus, align 8
  br label %124

124:                                              ; preds = %123, %118
  br label %125

125:                                              ; preds = %124, %107
  br label %222

126:                                              ; preds = %14, %14
  %127 = load %union.node*, %union.node** %3, align 8
  %128 = load i32, i32* %4, align 4
  %129 = load i32, i32* @EV_EXIT, align 4
  %130 = xor i32 %129, -1
  %131 = and i32 %128, %130
  %132 = call i32 @evalloop(%union.node* %127, i32 %131)
  br label %222

133:                                              ; preds = %14
  %134 = load %union.node*, %union.node** %3, align 8
  %135 = load i32, i32* %4, align 4
  %136 = load i32, i32* @EV_EXIT, align 4
  %137 = xor i32 %136, -1
  %138 = and i32 %135, %137
  %139 = call i32 @evalfor(%union.node* %134, i32 %138)
  br label %222

140:                                              ; preds = %14
  %141 = load %union.node*, %union.node** %3, align 8
  %142 = call %union.node* @evalcase(%union.node* %141)
  store %union.node* %142, %union.node** %6, align 8
  br label %222

143:                                              ; preds = %14
  %144 = load %union.node*, %union.node** %3, align 8
  %145 = bitcast %union.node* %144 to %struct.TYPE_8__*
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 1
  %147 = load %union.node*, %union.node** %146, align 8
  store %union.node* %147, %union.node** %6, align 8
  br label %222

148:                                              ; preds = %14
  %149 = load %union.node*, %union.node** %3, align 8
  %150 = bitcast %union.node* %149 to %struct.TYPE_8__*
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 1
  %152 = load %union.node*, %union.node** %151, align 8
  %153 = icmp ne %union.node* %152, null
  br i1 %153, label %154, label %167

154:                                              ; preds = %148
  %155 = load %union.node*, %union.node** %3, align 8
  %156 = bitcast %union.node* %155 to %struct.TYPE_8__*
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 1
  %158 = load %union.node*, %union.node** %157, align 8
  %159 = load i32, i32* %4, align 4
  %160 = load i32, i32* @EV_EXIT, align 4
  %161 = xor i32 %160, -1
  %162 = and i32 %159, %161
  call void @evaltree(%union.node* %158, i32 %162)
  %163 = load i32, i32* @evalskip, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %154
  br label %230

166:                                              ; preds = %154
  br label %167

167:                                              ; preds = %166, %148
  %168 = load %union.node*, %union.node** %3, align 8
  %169 = bitcast %union.node* %168 to %struct.TYPE_8__*
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  %171 = load %union.node*, %union.node** %170, align 8
  store %union.node* %171, %union.node** %6, align 8
  br label %222

172:                                              ; preds = %14
  %173 = load %union.node*, %union.node** %3, align 8
  %174 = bitcast %union.node* %173 to %struct.TYPE_9__*
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %union.node*, %union.node** %3, align 8
  %178 = bitcast %union.node* %177 to %struct.TYPE_9__*
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @defun(i32 %176, i32 %180)
  store i64 0, i64* @exitstatus, align 8
  br label %222

182:                                              ; preds = %14
  %183 = load %union.node*, %union.node** %3, align 8
  %184 = bitcast %union.node* %183 to %struct.TYPE_10__*
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 0
  %186 = load %union.node*, %union.node** %185, align 8
  %187 = load i32, i32* @EV_TESTED, align 4
  call void @evaltree(%union.node* %186, i32 %187)
  %188 = load i32, i32* @evalskip, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %182
  br label %230

191:                                              ; preds = %182
  %192 = load i64, i64* @exitstatus, align 8
  %193 = icmp ne i64 %192, 0
  %194 = xor i1 %193, true
  %195 = zext i1 %194 to i32
  %196 = sext i32 %195 to i64
  store i64 %196, i64* @exitstatus, align 8
  br label %222

197:                                              ; preds = %14
  %198 = load %union.node*, %union.node** %3, align 8
  %199 = call i32 @evalpipe(%union.node* %198)
  %200 = load i32, i32* %4, align 4
  %201 = load i32, i32* @EV_TESTED, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  %204 = xor i1 %203, true
  %205 = zext i1 %204 to i32
  store i32 %205, i32* %5, align 4
  br label %222

206:                                              ; preds = %14
  %207 = load %union.node*, %union.node** %3, align 8
  %208 = load i32, i32* %4, align 4
  %209 = call i32 @evalcommand(%union.node* %207, i32 %208, %struct.backcmd* null)
  %210 = load i32, i32* %4, align 4
  %211 = load i32, i32* @EV_TESTED, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  %214 = xor i1 %213, true
  %215 = zext i1 %214 to i32
  store i32 %215, i32* %5, align 4
  br label %222

216:                                              ; preds = %14
  %217 = load %union.node*, %union.node** %3, align 8
  %218 = bitcast %union.node* %217 to i32*
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @out1fmt(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %219)
  %221 = call i32 @flushout(i32* @output)
  br label %222

222:                                              ; preds = %216, %206, %197, %191, %172, %167, %143, %140, %133, %126, %125, %91, %81, %77, %72, %55, %38
  %223 = load %union.node*, %union.node** %6, align 8
  store %union.node* %223, %union.node** %3, align 8
  %224 = call i32 @popstackmark(%struct.stackmark* %7)
  %225 = call i32 @setstackmark(%struct.stackmark* %7)
  br label %226

226:                                              ; preds = %222
  %227 = load %union.node*, %union.node** %3, align 8
  %228 = icmp ne %union.node* %227, null
  br i1 %228, label %14, label %229

229:                                              ; preds = %226
  br label %230

230:                                              ; preds = %229, %190, %165, %103, %71, %54, %37, %11
  %231 = call i32 @popstackmark(%struct.stackmark* %7)
  %232 = load i64, i64* @pendingsig, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %230
  %235 = call i32 (...) @dotrap()
  br label %236

236:                                              ; preds = %234, %230
  %237 = load i64, i64* @eflag, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %248

239:                                              ; preds = %236
  %240 = load i64, i64* @exitstatus, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %248

242:                                              ; preds = %239
  %243 = load i32, i32* %5, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %242
  %246 = load i64, i64* @exitstatus, align 8
  %247 = call i32 @exitshell(i64 %246)
  br label %248

248:                                              ; preds = %245, %242, %239, %236
  %249 = load i32, i32* %4, align 4
  %250 = load i32, i32* @EV_EXIT, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %256

253:                                              ; preds = %248
  %254 = load i32, i32* @EXEXIT, align 4
  %255 = call i32 @exraise(i32 %254)
  br label %256

256:                                              ; preds = %253, %248
  ret void
}

declare dso_local i32 @setstackmark(%struct.stackmark*) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @evalredir(%union.node*, i32) #1

declare dso_local i32 @evalsubshell(%union.node*, i32) #1

declare dso_local i32 @evalloop(%union.node*, i32) #1

declare dso_local i32 @evalfor(%union.node*, i32) #1

declare dso_local %union.node* @evalcase(%union.node*) #1

declare dso_local i32 @defun(i32, i32) #1

declare dso_local i32 @evalpipe(%union.node*) #1

declare dso_local i32 @evalcommand(%union.node*, i32, %struct.backcmd*) #1

declare dso_local i32 @out1fmt(i8*, i32) #1

declare dso_local i32 @flushout(i32*) #1

declare dso_local i32 @popstackmark(%struct.stackmark*) #1

declare dso_local i32 @dotrap(...) #1

declare dso_local i32 @exitshell(i64) #1

declare dso_local i32 @exraise(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
