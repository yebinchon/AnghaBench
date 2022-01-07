; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_regrename.c_scan_rtx_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_regrename.c_scan_rtx_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.du_chain = type { i8**, i32, i32, %struct.du_chain*, %struct.du_chain*, i64, i8* }

@hard_regno_nregs = common dso_local global i32** null, align 8
@mark_write = common dso_local global i32 0, align 4
@OP_OUT = common dso_local global i32 0, align 4
@rename_obstack = common dso_local global i32 0, align 4
@open_chains = common dso_local global %struct.du_chain* null, align 8
@terminate_write = common dso_local global i32 0, align 4
@mark_access = common dso_local global i32 0, align 4
@cc0_rtx = common dso_local global i64 0, align 8
@mark_read = common dso_local global i32 0, align 4
@NO_REGS = common dso_local global i32 0, align 4
@terminate_overlapping_read = common dso_local global i32 0, align 4
@terminate_dead = common dso_local global i32 0, align 4
@closed_chains = common dso_local global %struct.du_chain* null, align 8
@dump_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Closing chain %s at insn %d (%s)\0A\00", align 1
@reg_names = common dso_local global i8** null, align 8
@scan_actions_name = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"Discarding chain %s at insn %d (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8**, i32, i32, i32, i32)* @scan_rtx_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scan_rtx_reg(i8* %0, i8** %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.du_chain**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.du_chain*, align 8
  %19 = alloca %struct.du_chain*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.du_chain*, align 8
  store i8* %0, i8** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %24 = load i8**, i8*** %8, align 8
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %14, align 8
  %26 = load i8*, i8** %14, align 8
  %27 = call i64 @GET_MODE(i8* %26)
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %15, align 4
  %29 = load i8*, i8** %14, align 8
  %30 = call i64 @REGNO(i8* %29)
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %16, align 4
  %32 = load i32**, i32*** @hard_regno_nregs, align 8
  %33 = load i32, i32* %16, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %32, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %15, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %17, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @mark_write, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %71

44:                                               ; preds = %6
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @OP_OUT, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %70

48:                                               ; preds = %44
  %49 = call %struct.du_chain* @obstack_alloc(i32* @rename_obstack, i32 48)
  store %struct.du_chain* %49, %struct.du_chain** %18, align 8
  %50 = load %struct.du_chain*, %struct.du_chain** %18, align 8
  %51 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %50, i32 0, i32 4
  store %struct.du_chain* null, %struct.du_chain** %51, align 8
  %52 = load %struct.du_chain*, %struct.du_chain** @open_chains, align 8
  %53 = load %struct.du_chain*, %struct.du_chain** %18, align 8
  %54 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %53, i32 0, i32 3
  store %struct.du_chain* %52, %struct.du_chain** %54, align 8
  %55 = load i8**, i8*** %8, align 8
  %56 = load %struct.du_chain*, %struct.du_chain** %18, align 8
  %57 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %56, i32 0, i32 0
  store i8** %55, i8*** %57, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = load %struct.du_chain*, %struct.du_chain** %18, align 8
  %60 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %59, i32 0, i32 6
  store i8* %58, i8** %60, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.du_chain*, %struct.du_chain** %18, align 8
  %63 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = load %struct.du_chain*, %struct.du_chain** %18, align 8
  %65 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %64, i32 0, i32 5
  store i64 0, i64* %65, align 8
  %66 = load i32, i32* %12, align 4
  %67 = load %struct.du_chain*, %struct.du_chain** %18, align 8
  %68 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load %struct.du_chain*, %struct.du_chain** %18, align 8
  store %struct.du_chain* %69, %struct.du_chain** @open_chains, align 8
  br label %70

70:                                               ; preds = %48, %44
  br label %273

71:                                               ; preds = %6
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @OP_OUT, align 4
  %74 = icmp eq i32 %72, %73
  %75 = zext i1 %74 to i32
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @terminate_write, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %83, label %79

79:                                               ; preds = %71
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @mark_access, align 4
  %82 = icmp eq i32 %80, %81
  br label %83

83:                                               ; preds = %79, %71
  %84 = phi i1 [ true, %71 ], [ %82, %79 ]
  %85 = zext i1 %84 to i32
  %86 = icmp ne i32 %75, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  br label %273

88:                                               ; preds = %83
  store %struct.du_chain** @open_chains, %struct.du_chain*** %13, align 8
  br label %89

89:                                               ; preds = %272, %146, %88
  %90 = load %struct.du_chain**, %struct.du_chain*** %13, align 8
  %91 = load %struct.du_chain*, %struct.du_chain** %90, align 8
  %92 = icmp ne %struct.du_chain* %91, null
  br i1 %92, label %93, label %273

93:                                               ; preds = %89
  %94 = load %struct.du_chain**, %struct.du_chain*** %13, align 8
  %95 = load %struct.du_chain*, %struct.du_chain** %94, align 8
  store %struct.du_chain* %95, %struct.du_chain** %19, align 8
  %96 = load %struct.du_chain*, %struct.du_chain** %19, align 8
  %97 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %96, i32 0, i32 0
  %98 = load i8**, i8*** %97, align 8
  %99 = load i8*, i8** %98, align 8
  %100 = load i64, i64* @cc0_rtx, align 8
  %101 = inttoptr i64 %100 to i8*
  %102 = icmp eq i8* %99, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %93
  %104 = load %struct.du_chain*, %struct.du_chain** %19, align 8
  %105 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %104, i32 0, i32 3
  store %struct.du_chain** %105, %struct.du_chain*** %13, align 8
  br label %272

106:                                              ; preds = %93
  %107 = load %struct.du_chain*, %struct.du_chain** %19, align 8
  %108 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %107, i32 0, i32 0
  %109 = load i8**, i8*** %108, align 8
  %110 = load i8*, i8** %109, align 8
  %111 = call i64 @REGNO(i8* %110)
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %20, align 4
  %113 = load i32**, i32*** @hard_regno_nregs, align 8
  %114 = load i32, i32* %20, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32*, i32** %113, i64 %115
  %117 = load i32*, i32** %116, align 8
  %118 = load %struct.du_chain*, %struct.du_chain** %19, align 8
  %119 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %118, i32 0, i32 0
  %120 = load i8**, i8*** %119, align 8
  %121 = load i8*, i8** %120, align 8
  %122 = call i64 @GET_MODE(i8* %121)
  %123 = getelementptr inbounds i32, i32* %117, i64 %122
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %21, align 4
  %125 = load i32, i32* %20, align 4
  %126 = load i32, i32* %16, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %106
  %129 = load i32, i32* %21, align 4
  %130 = load i32, i32* %17, align 4
  %131 = icmp eq i32 %129, %130
  br label %132

132:                                              ; preds = %128, %106
  %133 = phi i1 [ false, %106 ], [ %131, %128 ]
  %134 = zext i1 %133 to i32
  store i32 %134, i32* %22, align 4
  %135 = load i32, i32* %20, align 4
  %136 = load i32, i32* %21, align 4
  %137 = add nsw i32 %135, %136
  %138 = load i32, i32* %16, align 4
  %139 = icmp sle i32 %137, %138
  br i1 %139, label %146, label %140

140:                                              ; preds = %132
  %141 = load i32, i32* %16, align 4
  %142 = load i32, i32* %17, align 4
  %143 = add nsw i32 %141, %142
  %144 = load i32, i32* %20, align 4
  %145 = icmp sle i32 %143, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %140, %132
  %147 = load %struct.du_chain*, %struct.du_chain** %19, align 8
  %148 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %147, i32 0, i32 3
  store %struct.du_chain** %148, %struct.du_chain*** %13, align 8
  br label %89

149:                                              ; preds = %140
  %150 = load i32, i32* %10, align 4
  %151 = load i32, i32* @mark_read, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %157, label %153

153:                                              ; preds = %149
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* @mark_access, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %196

157:                                              ; preds = %153, %149
  %158 = load i32, i32* %22, align 4
  %159 = call i32 @gcc_assert(i32 %158)
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* @NO_REGS, align 4
  %162 = icmp ne i32 %160, %161
  br i1 %162, label %163, label %195

163:                                              ; preds = %157
  %164 = call %struct.du_chain* @obstack_alloc(i32* @rename_obstack, i32 48)
  store %struct.du_chain* %164, %struct.du_chain** %19, align 8
  %165 = load %struct.du_chain*, %struct.du_chain** %19, align 8
  %166 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %165, i32 0, i32 4
  store %struct.du_chain* null, %struct.du_chain** %166, align 8
  %167 = load %struct.du_chain**, %struct.du_chain*** %13, align 8
  %168 = load %struct.du_chain*, %struct.du_chain** %167, align 8
  %169 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %168, i32 0, i32 3
  %170 = load %struct.du_chain*, %struct.du_chain** %169, align 8
  %171 = load %struct.du_chain*, %struct.du_chain** %19, align 8
  %172 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %171, i32 0, i32 3
  store %struct.du_chain* %170, %struct.du_chain** %172, align 8
  %173 = load i8**, i8*** %8, align 8
  %174 = load %struct.du_chain*, %struct.du_chain** %19, align 8
  %175 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %174, i32 0, i32 0
  store i8** %173, i8*** %175, align 8
  %176 = load i8*, i8** %7, align 8
  %177 = load %struct.du_chain*, %struct.du_chain** %19, align 8
  %178 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %177, i32 0, i32 6
  store i8* %176, i8** %178, align 8
  %179 = load i32, i32* %9, align 4
  %180 = load %struct.du_chain*, %struct.du_chain** %19, align 8
  %181 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %180, i32 0, i32 1
  store i32 %179, i32* %181, align 8
  %182 = load %struct.du_chain*, %struct.du_chain** %19, align 8
  %183 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %182, i32 0, i32 5
  store i64 0, i64* %183, align 8
  br label %184

184:                                              ; preds = %188, %163
  %185 = load %struct.du_chain**, %struct.du_chain*** %13, align 8
  %186 = load %struct.du_chain*, %struct.du_chain** %185, align 8
  %187 = icmp ne %struct.du_chain* %186, null
  br i1 %187, label %188, label %192

188:                                              ; preds = %184
  %189 = load %struct.du_chain**, %struct.du_chain*** %13, align 8
  %190 = load %struct.du_chain*, %struct.du_chain** %189, align 8
  %191 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %190, i32 0, i32 4
  store %struct.du_chain** %191, %struct.du_chain*** %13, align 8
  br label %184

192:                                              ; preds = %184
  %193 = load %struct.du_chain*, %struct.du_chain** %19, align 8
  %194 = load %struct.du_chain**, %struct.du_chain*** %13, align 8
  store %struct.du_chain* %193, %struct.du_chain** %194, align 8
  br label %273

195:                                              ; preds = %157
  br label %196

196:                                              ; preds = %195, %153
  %197 = load i32, i32* %10, align 4
  %198 = load i32, i32* @terminate_overlapping_read, align 4
  %199 = icmp ne i32 %197, %198
  br i1 %199, label %203, label %200

200:                                              ; preds = %196
  %201 = load i32, i32* %22, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %268, label %203

203:                                              ; preds = %200, %196
  %204 = load %struct.du_chain*, %struct.du_chain** %19, align 8
  %205 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %204, i32 0, i32 3
  %206 = load %struct.du_chain*, %struct.du_chain** %205, align 8
  store %struct.du_chain* %206, %struct.du_chain** %23, align 8
  %207 = load i32, i32* %10, align 4
  %208 = load i32, i32* @terminate_dead, align 4
  %209 = icmp eq i32 %207, %208
  br i1 %209, label %214, label %210

210:                                              ; preds = %203
  %211 = load i32, i32* %10, align 4
  %212 = load i32, i32* @terminate_write, align 4
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %214, label %243

214:                                              ; preds = %210, %203
  %215 = load i32, i32* %22, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %243

217:                                              ; preds = %214
  %218 = load %struct.du_chain*, %struct.du_chain** @closed_chains, align 8
  %219 = load %struct.du_chain*, %struct.du_chain** %19, align 8
  %220 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %219, i32 0, i32 3
  store %struct.du_chain* %218, %struct.du_chain** %220, align 8
  %221 = load %struct.du_chain*, %struct.du_chain** %19, align 8
  store %struct.du_chain* %221, %struct.du_chain** @closed_chains, align 8
  %222 = load i64, i64* @dump_file, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %242

224:                                              ; preds = %217
  %225 = load i64, i64* @dump_file, align 8
  %226 = load i8**, i8*** @reg_names, align 8
  %227 = load %struct.du_chain*, %struct.du_chain** %19, align 8
  %228 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %227, i32 0, i32 0
  %229 = load i8**, i8*** %228, align 8
  %230 = load i8*, i8** %229, align 8
  %231 = call i64 @REGNO(i8* %230)
  %232 = getelementptr inbounds i8*, i8** %226, i64 %231
  %233 = load i8*, i8** %232, align 8
  %234 = load i8*, i8** %7, align 8
  %235 = call i32 @INSN_UID(i8* %234)
  %236 = load i8**, i8*** @scan_actions_name, align 8
  %237 = load i32, i32* %10, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i8*, i8** %236, i64 %238
  %240 = load i8*, i8** %239, align 8
  %241 = call i32 @fprintf(i64 %225, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %233, i32 %235, i8* %240)
  br label %242

242:                                              ; preds = %224, %217
  br label %265

243:                                              ; preds = %214, %210
  %244 = load i64, i64* @dump_file, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %264

246:                                              ; preds = %243
  %247 = load i64, i64* @dump_file, align 8
  %248 = load i8**, i8*** @reg_names, align 8
  %249 = load %struct.du_chain*, %struct.du_chain** %19, align 8
  %250 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %249, i32 0, i32 0
  %251 = load i8**, i8*** %250, align 8
  %252 = load i8*, i8** %251, align 8
  %253 = call i64 @REGNO(i8* %252)
  %254 = getelementptr inbounds i8*, i8** %248, i64 %253
  %255 = load i8*, i8** %254, align 8
  %256 = load i8*, i8** %7, align 8
  %257 = call i32 @INSN_UID(i8* %256)
  %258 = load i8**, i8*** @scan_actions_name, align 8
  %259 = load i32, i32* %10, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i8*, i8** %258, i64 %260
  %262 = load i8*, i8** %261, align 8
  %263 = call i32 @fprintf(i64 %247, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %255, i32 %257, i8* %262)
  br label %264

264:                                              ; preds = %246, %243
  br label %265

265:                                              ; preds = %264, %242
  %266 = load %struct.du_chain*, %struct.du_chain** %23, align 8
  %267 = load %struct.du_chain**, %struct.du_chain*** %13, align 8
  store %struct.du_chain* %266, %struct.du_chain** %267, align 8
  br label %271

268:                                              ; preds = %200
  %269 = load %struct.du_chain*, %struct.du_chain** %19, align 8
  %270 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %269, i32 0, i32 3
  store %struct.du_chain** %270, %struct.du_chain*** %13, align 8
  br label %271

271:                                              ; preds = %268, %265
  br label %272

272:                                              ; preds = %271, %103
  br label %89

273:                                              ; preds = %70, %87, %192, %89
  ret void
}

declare dso_local i64 @GET_MODE(i8*) #1

declare dso_local i64 @REGNO(i8*) #1

declare dso_local %struct.du_chain* @obstack_alloc(i32*, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @fprintf(i64, i8*, i8*, i32, i8*) #1

declare dso_local i32 @INSN_UID(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
