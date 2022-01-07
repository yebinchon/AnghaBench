; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_link.c_dt_modtext.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_link.c_dt_modtext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@R_386_PC32 = common dso_local global i64 0, align 8
@R_386_PLT32 = common dso_local global i64 0, align 8
@DT_OP_NOP = common dso_local global i64 0, align 8
@DT_OP_RET = common dso_local global i64 0, align 8
@DTRACE_O_LP64 = common dso_local global i32 0, align 4
@DT_OP_REX_RAX = common dso_local global i64 0, align 8
@DT_OP_XOR_EAX_0 = common dso_local global i64 0, align 8
@DT_OP_XOR_EAX_1 = common dso_local global i64 0, align 8
@DT_OP_CALL = common dso_local global i64 0, align 8
@DT_OP_JMP32 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"found %x instead of a call or jmp instruction at %llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i32, %struct.TYPE_6__*, i32*)* @dt_modtext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt_modtext(%struct.TYPE_5__* %0, i8* %1, i32 %2, %struct.TYPE_6__* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %14, i64 %18
  %20 = getelementptr inbounds i8, i8* %19, i64 -1
  %21 = bitcast i8* %20 to i64*
  store i64* %21, i64** %12, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @GELF_R_TYPE(i32 %27)
  %29 = load i64, i64* @R_386_PC32, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %5
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @GELF_R_TYPE(i32 %34)
  %36 = load i64, i64* @R_386_PLT32, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 -1, i32* %6, align 4
  br label %267

39:                                               ; preds = %31, %5
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %80, label %42

42:                                               ; preds = %39
  %43 = load i64*, i64** %12, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @DT_OP_NOP, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load i64*, i64** %12, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @DT_OP_RET, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %79

54:                                               ; preds = %48, %42
  %55 = load i64*, i64** %12, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @DT_OP_NOP, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %79

60:                                               ; preds = %54
  %61 = load i64*, i64** %12, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @DT_OP_NOP, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %60
  %67 = load i64*, i64** %12, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 3
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @DT_OP_NOP, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %66
  %73 = load i64*, i64** %12, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 4
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @DT_OP_NOP, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  store i32 0, i32* %6, align 4
  br label %267

79:                                               ; preds = %72, %66, %60, %54, %48
  br label %170

80:                                               ; preds = %39
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @DTRACE_O_LP64, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %128

87:                                               ; preds = %80
  %88 = load i64*, i64** %12, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @DT_OP_REX_RAX, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %127

93:                                               ; preds = %87
  %94 = load i64*, i64** %12, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @DT_OP_XOR_EAX_0, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %127

99:                                               ; preds = %93
  %100 = load i64*, i64** %12, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 2
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @DT_OP_XOR_EAX_1, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %127

105:                                              ; preds = %99
  %106 = load i64*, i64** %12, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 3
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @DT_OP_NOP, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %117, label %111

111:                                              ; preds = %105
  %112 = load i64*, i64** %12, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 3
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @DT_OP_RET, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %127

117:                                              ; preds = %111, %105
  %118 = load i64*, i64** %12, align 8
  %119 = getelementptr inbounds i64, i64* %118, i64 4
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @DT_OP_NOP, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %117
  %124 = load i32*, i32** %11, align 8
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 3
  store i32 %126, i32* %124, align 4
  store i32 0, i32* %6, align 4
  br label %267

127:                                              ; preds = %117, %111, %99, %93, %87
  br label %169

128:                                              ; preds = %80
  %129 = load i64*, i64** %12, align 8
  %130 = getelementptr inbounds i64, i64* %129, i64 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @DT_OP_XOR_EAX_0, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %168

134:                                              ; preds = %128
  %135 = load i64*, i64** %12, align 8
  %136 = getelementptr inbounds i64, i64* %135, i64 1
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @DT_OP_XOR_EAX_1, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %168

140:                                              ; preds = %134
  %141 = load i64*, i64** %12, align 8
  %142 = getelementptr inbounds i64, i64* %141, i64 2
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @DT_OP_NOP, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %152, label %146

146:                                              ; preds = %140
  %147 = load i64*, i64** %12, align 8
  %148 = getelementptr inbounds i64, i64* %147, i64 2
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @DT_OP_RET, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %168

152:                                              ; preds = %146, %140
  %153 = load i64*, i64** %12, align 8
  %154 = getelementptr inbounds i64, i64* %153, i64 3
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @DT_OP_NOP, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %168

158:                                              ; preds = %152
  %159 = load i64*, i64** %12, align 8
  %160 = getelementptr inbounds i64, i64* %159, i64 4
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @DT_OP_NOP, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %158
  %165 = load i32*, i32** %11, align 8
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %166, 2
  store i32 %167, i32* %165, align 4
  store i32 0, i32* %6, align 4
  br label %267

168:                                              ; preds = %158, %152, %146, %134, %128
  br label %169

169:                                              ; preds = %168, %127
  br label %170

170:                                              ; preds = %169, %79
  %171 = load i64*, i64** %12, align 8
  %172 = getelementptr inbounds i64, i64* %171, i64 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @DT_OP_CALL, align 8
  %175 = icmp ne i64 %173, %174
  br i1 %175, label %176, label %190

176:                                              ; preds = %170
  %177 = load i64*, i64** %12, align 8
  %178 = getelementptr inbounds i64, i64* %177, i64 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @DT_OP_JMP32, align 8
  %181 = icmp ne i64 %179, %180
  br i1 %181, label %182, label %190

182:                                              ; preds = %176
  %183 = load i64*, i64** %12, align 8
  %184 = getelementptr inbounds i64, i64* %183, i64 0
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @dt_dprintf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %185, i32 %188)
  store i32 -1, i32* %6, align 4
  br label %267

190:                                              ; preds = %176, %170
  %191 = load i64*, i64** %12, align 8
  %192 = getelementptr inbounds i64, i64* %191, i64 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @DT_OP_JMP32, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %198

196:                                              ; preds = %190
  %197 = load i64, i64* @DT_OP_RET, align 8
  br label %200

198:                                              ; preds = %190
  %199 = load i64, i64* @DT_OP_NOP, align 8
  br label %200

200:                                              ; preds = %198, %196
  %201 = phi i64 [ %197, %196 ], [ %199, %198 ]
  store i64 %201, i64* %13, align 8
  %202 = load i32, i32* %9, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %220, label %204

204:                                              ; preds = %200
  %205 = load i64, i64* %13, align 8
  %206 = load i64*, i64** %12, align 8
  %207 = getelementptr inbounds i64, i64* %206, i64 0
  store i64 %205, i64* %207, align 8
  %208 = load i64, i64* @DT_OP_NOP, align 8
  %209 = load i64*, i64** %12, align 8
  %210 = getelementptr inbounds i64, i64* %209, i64 1
  store i64 %208, i64* %210, align 8
  %211 = load i64, i64* @DT_OP_NOP, align 8
  %212 = load i64*, i64** %12, align 8
  %213 = getelementptr inbounds i64, i64* %212, i64 2
  store i64 %211, i64* %213, align 8
  %214 = load i64, i64* @DT_OP_NOP, align 8
  %215 = load i64*, i64** %12, align 8
  %216 = getelementptr inbounds i64, i64* %215, i64 3
  store i64 %214, i64* %216, align 8
  %217 = load i64, i64* @DT_OP_NOP, align 8
  %218 = load i64*, i64** %12, align 8
  %219 = getelementptr inbounds i64, i64* %218, i64 4
  store i64 %217, i64* %219, align 8
  br label %266

220:                                              ; preds = %200
  %221 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @DTRACE_O_LP64, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %246

227:                                              ; preds = %220
  %228 = load i64, i64* @DT_OP_REX_RAX, align 8
  %229 = load i64*, i64** %12, align 8
  %230 = getelementptr inbounds i64, i64* %229, i64 0
  store i64 %228, i64* %230, align 8
  %231 = load i64, i64* @DT_OP_XOR_EAX_0, align 8
  %232 = load i64*, i64** %12, align 8
  %233 = getelementptr inbounds i64, i64* %232, i64 1
  store i64 %231, i64* %233, align 8
  %234 = load i64, i64* @DT_OP_XOR_EAX_1, align 8
  %235 = load i64*, i64** %12, align 8
  %236 = getelementptr inbounds i64, i64* %235, i64 2
  store i64 %234, i64* %236, align 8
  %237 = load i64, i64* %13, align 8
  %238 = load i64*, i64** %12, align 8
  %239 = getelementptr inbounds i64, i64* %238, i64 3
  store i64 %237, i64* %239, align 8
  %240 = load i64, i64* @DT_OP_NOP, align 8
  %241 = load i64*, i64** %12, align 8
  %242 = getelementptr inbounds i64, i64* %241, i64 4
  store i64 %240, i64* %242, align 8
  %243 = load i32*, i32** %11, align 8
  %244 = load i32, i32* %243, align 4
  %245 = add nsw i32 %244, 3
  store i32 %245, i32* %243, align 4
  br label %265

246:                                              ; preds = %220
  %247 = load i64, i64* @DT_OP_XOR_EAX_0, align 8
  %248 = load i64*, i64** %12, align 8
  %249 = getelementptr inbounds i64, i64* %248, i64 0
  store i64 %247, i64* %249, align 8
  %250 = load i64, i64* @DT_OP_XOR_EAX_1, align 8
  %251 = load i64*, i64** %12, align 8
  %252 = getelementptr inbounds i64, i64* %251, i64 1
  store i64 %250, i64* %252, align 8
  %253 = load i64, i64* %13, align 8
  %254 = load i64*, i64** %12, align 8
  %255 = getelementptr inbounds i64, i64* %254, i64 2
  store i64 %253, i64* %255, align 8
  %256 = load i64, i64* @DT_OP_NOP, align 8
  %257 = load i64*, i64** %12, align 8
  %258 = getelementptr inbounds i64, i64* %257, i64 3
  store i64 %256, i64* %258, align 8
  %259 = load i64, i64* @DT_OP_NOP, align 8
  %260 = load i64*, i64** %12, align 8
  %261 = getelementptr inbounds i64, i64* %260, i64 4
  store i64 %259, i64* %261, align 8
  %262 = load i32*, i32** %11, align 8
  %263 = load i32, i32* %262, align 4
  %264 = add nsw i32 %263, 2
  store i32 %264, i32* %262, align 4
  br label %265

265:                                              ; preds = %246, %227
  br label %266

266:                                              ; preds = %265, %204
  store i32 0, i32* %6, align 4
  br label %267

267:                                              ; preds = %266, %182, %164, %123, %78, %38
  %268 = load i32, i32* %6, align 4
  ret i32 %268
}

declare dso_local i64 @GELF_R_TYPE(i32) #1

declare dso_local i32 @dt_dprintf(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
