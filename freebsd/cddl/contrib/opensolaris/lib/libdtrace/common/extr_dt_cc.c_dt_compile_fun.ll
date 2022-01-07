; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cc.c_dt_compile_fun.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cc.c_dt_compile_fun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32, i32 }

@DTRACEACT_FREOPEN = common dso_local global i32 0, align 4
@DTRACEACT_MOD = common dso_local global i32 0, align 4
@DTRACEACT_PRINTF = common dso_local global i32 0, align 4
@DTRACEACT_SYM = common dso_local global i32 0, align 4
@DTRACEACT_SYSTEM = common dso_local global i32 0, align 4
@DTRACEACT_UADDR = common dso_local global i32 0, align 4
@DTRACEACT_UMOD = common dso_local global i32 0, align 4
@DTRACEACT_USYM = common dso_local global i32 0, align 4
@D_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"tracing function %s( ) is not yet supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_28__*, i32*)* @dt_compile_fun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_compile_fun(i32* %0, %struct.TYPE_28__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %232 [
    i32 158, label %14
    i32 157, label %21
    i32 156, label %28
    i32 155, label %35
    i32 154, label %42
    i32 153, label %49
    i32 152, label %56
    i32 151, label %63
    i32 150, label %71
    i32 148, label %78
    i32 147, label %86
    i32 146, label %93
    i32 145, label %100
    i32 144, label %107
    i32 143, label %114
    i32 142, label %122
    i32 141, label %129
    i32 140, label %136
    i32 139, label %143
    i32 138, label %150
    i32 137, label %157
    i32 136, label %164
    i32 135, label %172
    i32 134, label %180
    i32 133, label %187
    i32 132, label %194
    i32 131, label %201
    i32 130, label %209
    i32 128, label %217
    i32 129, label %225
    i32 149, label %225
  ]

14:                                               ; preds = %3
  %15 = load i32*, i32** %4, align 8
  %16 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @dt_action_breakpoint(i32* %15, %struct.TYPE_29__* %18, i32* %19)
  br label %245

21:                                               ; preds = %3
  %22 = load i32*, i32** %4, align 8
  %23 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_29__*, %struct.TYPE_29__** %24, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @dt_action_chill(i32* %22, %struct.TYPE_29__* %25, i32* %26)
  br label %245

28:                                               ; preds = %3
  %29 = load i32*, i32** %4, align 8
  %30 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_29__*, %struct.TYPE_29__** %31, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @dt_action_clear(i32* %29, %struct.TYPE_29__* %32, i32* %33)
  br label %245

35:                                               ; preds = %3
  %36 = load i32*, i32** %4, align 8
  %37 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_29__*, %struct.TYPE_29__** %38, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @dt_action_commit(i32* %36, %struct.TYPE_29__* %39, i32* %40)
  br label %245

42:                                               ; preds = %3
  %43 = load i32*, i32** %4, align 8
  %44 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_29__*, %struct.TYPE_29__** %45, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @dt_action_normalize(i32* %43, %struct.TYPE_29__* %46, i32* %47)
  br label %245

49:                                               ; preds = %3
  %50 = load i32*, i32** %4, align 8
  %51 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_29__*, %struct.TYPE_29__** %52, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @dt_action_discard(i32* %50, %struct.TYPE_29__* %53, i32* %54)
  br label %245

56:                                               ; preds = %3
  %57 = load i32*, i32** %4, align 8
  %58 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_29__*, %struct.TYPE_29__** %59, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @dt_action_exit(i32* %57, %struct.TYPE_29__* %60, i32* %61)
  br label %245

63:                                               ; preds = %3
  %64 = load i32*, i32** %4, align 8
  %65 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_29__*, %struct.TYPE_29__** %66, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* @DTRACEACT_FREOPEN, align 4
  %70 = call i32 @dt_action_printflike(i32* %64, %struct.TYPE_29__* %67, i32* %68, i32 %69)
  br label %245

71:                                               ; preds = %3
  %72 = load i32*, i32** %4, align 8
  %73 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_29__*, %struct.TYPE_29__** %74, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = call i32 @dt_action_ftruncate(i32* %72, %struct.TYPE_29__* %75, i32* %76)
  br label %245

78:                                               ; preds = %3
  %79 = load i32*, i32** %4, align 8
  %80 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_29__*, %struct.TYPE_29__** %81, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* @DTRACEACT_MOD, align 4
  %85 = call i32 @dt_action_symmod(i32* %79, %struct.TYPE_29__* %82, i32* %83, i32 %84)
  br label %245

86:                                               ; preds = %3
  %87 = load i32*, i32** %4, align 8
  %88 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_29__*, %struct.TYPE_29__** %89, align 8
  %91 = load i32*, i32** %6, align 8
  %92 = call i32 @dt_action_normalize(i32* %87, %struct.TYPE_29__* %90, i32* %91)
  br label %245

93:                                               ; preds = %3
  %94 = load i32*, i32** %4, align 8
  %95 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_29__*, %struct.TYPE_29__** %96, align 8
  %98 = load i32*, i32** %6, align 8
  %99 = call i32 @dt_action_panic(i32* %94, %struct.TYPE_29__* %97, i32* %98)
  br label %245

100:                                              ; preds = %3
  %101 = load i32*, i32** %4, align 8
  %102 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_29__*, %struct.TYPE_29__** %103, align 8
  %105 = load i32*, i32** %6, align 8
  %106 = call i32 @dt_action_trace(i32* %101, %struct.TYPE_29__* %104, i32* %105)
  br label %245

107:                                              ; preds = %3
  %108 = load i32*, i32** %4, align 8
  %109 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_29__*, %struct.TYPE_29__** %110, align 8
  %112 = load i32*, i32** %6, align 8
  %113 = call i32 @dt_action_printa(i32* %108, %struct.TYPE_29__* %111, i32* %112)
  br label %245

114:                                              ; preds = %3
  %115 = load i32*, i32** %4, align 8
  %116 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_29__*, %struct.TYPE_29__** %117, align 8
  %119 = load i32*, i32** %6, align 8
  %120 = load i32, i32* @DTRACEACT_PRINTF, align 4
  %121 = call i32 @dt_action_printflike(i32* %115, %struct.TYPE_29__* %118, i32* %119, i32 %120)
  br label %245

122:                                              ; preds = %3
  %123 = load i32*, i32** %4, align 8
  %124 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_29__*, %struct.TYPE_29__** %125, align 8
  %127 = load i32*, i32** %6, align 8
  %128 = call i32 @dt_action_printm(i32* %123, %struct.TYPE_29__* %126, i32* %127)
  br label %245

129:                                              ; preds = %3
  %130 = load i32*, i32** %4, align 8
  %131 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_29__*, %struct.TYPE_29__** %132, align 8
  %134 = load i32*, i32** %6, align 8
  %135 = call i32 @dt_action_raise(i32* %130, %struct.TYPE_29__* %133, i32* %134)
  br label %245

136:                                              ; preds = %3
  %137 = load i32*, i32** %4, align 8
  %138 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_29__*, %struct.TYPE_29__** %139, align 8
  %141 = load i32*, i32** %6, align 8
  %142 = call i32 @dt_action_setopt(i32* %137, %struct.TYPE_29__* %140, i32* %141)
  br label %245

143:                                              ; preds = %3
  %144 = load i32*, i32** %4, align 8
  %145 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_29__*, %struct.TYPE_29__** %146, align 8
  %148 = load i32*, i32** %6, align 8
  %149 = call i32 @dt_action_speculate(i32* %144, %struct.TYPE_29__* %147, i32* %148)
  br label %245

150:                                              ; preds = %3
  %151 = load i32*, i32** %4, align 8
  %152 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_29__*, %struct.TYPE_29__** %153, align 8
  %155 = load i32*, i32** %6, align 8
  %156 = call i32 @dt_action_stack(i32* %151, %struct.TYPE_29__* %154, i32* %155)
  br label %245

157:                                              ; preds = %3
  %158 = load i32*, i32** %4, align 8
  %159 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_29__*, %struct.TYPE_29__** %160, align 8
  %162 = load i32*, i32** %6, align 8
  %163 = call i32 @dt_action_stop(i32* %158, %struct.TYPE_29__* %161, i32* %162)
  br label %245

164:                                              ; preds = %3
  %165 = load i32*, i32** %4, align 8
  %166 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_29__*, %struct.TYPE_29__** %167, align 8
  %169 = load i32*, i32** %6, align 8
  %170 = load i32, i32* @DTRACEACT_SYM, align 4
  %171 = call i32 @dt_action_symmod(i32* %165, %struct.TYPE_29__* %168, i32* %169, i32 %170)
  br label %245

172:                                              ; preds = %3
  %173 = load i32*, i32** %4, align 8
  %174 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_29__*, %struct.TYPE_29__** %175, align 8
  %177 = load i32*, i32** %6, align 8
  %178 = load i32, i32* @DTRACEACT_SYSTEM, align 4
  %179 = call i32 @dt_action_printflike(i32* %173, %struct.TYPE_29__* %176, i32* %177, i32 %178)
  br label %245

180:                                              ; preds = %3
  %181 = load i32*, i32** %4, align 8
  %182 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_29__*, %struct.TYPE_29__** %183, align 8
  %185 = load i32*, i32** %6, align 8
  %186 = call i32 @dt_action_trace(i32* %181, %struct.TYPE_29__* %184, i32* %185)
  br label %245

187:                                              ; preds = %3
  %188 = load i32*, i32** %4, align 8
  %189 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_29__*, %struct.TYPE_29__** %190, align 8
  %192 = load i32*, i32** %6, align 8
  %193 = call i32 @dt_action_tracemem(i32* %188, %struct.TYPE_29__* %191, i32* %192)
  br label %245

194:                                              ; preds = %3
  %195 = load i32*, i32** %4, align 8
  %196 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_29__*, %struct.TYPE_29__** %197, align 8
  %199 = load i32*, i32** %6, align 8
  %200 = call i32 @dt_action_trunc(i32* %195, %struct.TYPE_29__* %198, i32* %199)
  br label %245

201:                                              ; preds = %3
  %202 = load i32*, i32** %4, align 8
  %203 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_29__*, %struct.TYPE_29__** %204, align 8
  %206 = load i32*, i32** %6, align 8
  %207 = load i32, i32* @DTRACEACT_UADDR, align 4
  %208 = call i32 @dt_action_symmod(i32* %202, %struct.TYPE_29__* %205, i32* %206, i32 %207)
  br label %245

209:                                              ; preds = %3
  %210 = load i32*, i32** %4, align 8
  %211 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %211, i32 0, i32 0
  %213 = load %struct.TYPE_29__*, %struct.TYPE_29__** %212, align 8
  %214 = load i32*, i32** %6, align 8
  %215 = load i32, i32* @DTRACEACT_UMOD, align 4
  %216 = call i32 @dt_action_symmod(i32* %210, %struct.TYPE_29__* %213, i32* %214, i32 %215)
  br label %245

217:                                              ; preds = %3
  %218 = load i32*, i32** %4, align 8
  %219 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %219, i32 0, i32 0
  %221 = load %struct.TYPE_29__*, %struct.TYPE_29__** %220, align 8
  %222 = load i32*, i32** %6, align 8
  %223 = load i32, i32* @DTRACEACT_USYM, align 4
  %224 = call i32 @dt_action_symmod(i32* %218, %struct.TYPE_29__* %221, i32* %222, i32 %223)
  br label %245

225:                                              ; preds = %3, %3
  %226 = load i32*, i32** %4, align 8
  %227 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %227, i32 0, i32 0
  %229 = load %struct.TYPE_29__*, %struct.TYPE_29__** %228, align 8
  %230 = load i32*, i32** %6, align 8
  %231 = call i32 @dt_action_ustack(i32* %226, %struct.TYPE_29__* %229, i32* %230)
  br label %245

232:                                              ; preds = %3
  %233 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %233, i32 0, i32 0
  %235 = load %struct.TYPE_29__*, %struct.TYPE_29__** %234, align 8
  %236 = load i32, i32* @D_UNKNOWN, align 4
  %237 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %237, i32 0, i32 0
  %239 = load %struct.TYPE_29__*, %struct.TYPE_29__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %239, i32 0, i32 0
  %241 = load %struct.TYPE_27__*, %struct.TYPE_27__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @dnerror(%struct.TYPE_29__* %235, i32 %236, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %243)
  br label %245

245:                                              ; preds = %232, %225, %217, %209, %201, %194, %187, %180, %172, %164, %157, %150, %143, %136, %129, %122, %114, %107, %100, %93, %86, %78, %71, %63, %56, %49, %42, %35, %28, %21, %14
  ret void
}

declare dso_local i32 @dt_action_breakpoint(i32*, %struct.TYPE_29__*, i32*) #1

declare dso_local i32 @dt_action_chill(i32*, %struct.TYPE_29__*, i32*) #1

declare dso_local i32 @dt_action_clear(i32*, %struct.TYPE_29__*, i32*) #1

declare dso_local i32 @dt_action_commit(i32*, %struct.TYPE_29__*, i32*) #1

declare dso_local i32 @dt_action_normalize(i32*, %struct.TYPE_29__*, i32*) #1

declare dso_local i32 @dt_action_discard(i32*, %struct.TYPE_29__*, i32*) #1

declare dso_local i32 @dt_action_exit(i32*, %struct.TYPE_29__*, i32*) #1

declare dso_local i32 @dt_action_printflike(i32*, %struct.TYPE_29__*, i32*, i32) #1

declare dso_local i32 @dt_action_ftruncate(i32*, %struct.TYPE_29__*, i32*) #1

declare dso_local i32 @dt_action_symmod(i32*, %struct.TYPE_29__*, i32*, i32) #1

declare dso_local i32 @dt_action_panic(i32*, %struct.TYPE_29__*, i32*) #1

declare dso_local i32 @dt_action_trace(i32*, %struct.TYPE_29__*, i32*) #1

declare dso_local i32 @dt_action_printa(i32*, %struct.TYPE_29__*, i32*) #1

declare dso_local i32 @dt_action_printm(i32*, %struct.TYPE_29__*, i32*) #1

declare dso_local i32 @dt_action_raise(i32*, %struct.TYPE_29__*, i32*) #1

declare dso_local i32 @dt_action_setopt(i32*, %struct.TYPE_29__*, i32*) #1

declare dso_local i32 @dt_action_speculate(i32*, %struct.TYPE_29__*, i32*) #1

declare dso_local i32 @dt_action_stack(i32*, %struct.TYPE_29__*, i32*) #1

declare dso_local i32 @dt_action_stop(i32*, %struct.TYPE_29__*, i32*) #1

declare dso_local i32 @dt_action_tracemem(i32*, %struct.TYPE_29__*, i32*) #1

declare dso_local i32 @dt_action_trunc(i32*, %struct.TYPE_29__*, i32*) #1

declare dso_local i32 @dt_action_ustack(i32*, %struct.TYPE_29__*, i32*) #1

declare dso_local i32 @dnerror(%struct.TYPE_29__*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
