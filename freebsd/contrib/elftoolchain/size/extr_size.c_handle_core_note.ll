; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/size/extr_size.c_handle_core_note.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/size/extr_size.c_handle_core_note.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32* }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_15__ = type { i32, i32, i32 }

@handle_core_note.pid = internal global i32 0, align 4
@handle_core_note.reg_pseudo = internal global i32 0, align 4
@handle_core_note.reg2_pseudo = internal global i32 0, align 4
@BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"invalid PHDR offset\00", align 1
@ELF_T_WORD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"invalid note header\00", align 1
@EI_OSABI = common dso_local global i64 0, align 8
@ELFOSABI_FREEBSD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"FreeBSD\00", align 1
@EI_CLASS = common dso_local global i64 0, align 8
@ELFCLASS32 = common dso_local global i32 0, align 4
@style = common dso_local global i32 0, align 4
@STYLE_SYSV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"%s/%d\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c".reg\00", align 1
@radix = common dso_local global i32 0, align 4
@text_size_total = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c".reg2\00", align 1
@regxfp_pseudo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_14__*, %struct.TYPE_13__*, i8**)* @handle_core_note to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_core_note(i32* %0, %struct.TYPE_14__* %1, %struct.TYPE_13__* %2, i8** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca %struct.TYPE_15__, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %7, align 8
  store i8** %3, i8*** %8, align 8
  %22 = load i32, i32* @BUF_SIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %16, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %17, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %4
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %30 = icmp eq %struct.TYPE_14__* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %33 = icmp eq %struct.TYPE_13__* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %31, %28, %4
  store i32 1, i32* %20, align 4
  br label %354

35:                                               ; preds = %31
  %36 = load i32*, i32** %5, align 8
  %37 = call i8* @elf_rawfile(i32* %36, i64* %9)
  store i8* %37, i8** %18, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %12, align 8
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* %9, align 8
  %43 = icmp uge i64 %41, %42
  br i1 %43, label %52, label %44

44:                                               ; preds = %35
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* %12, align 8
  %50 = sub i64 %48, %49
  %51 = icmp ugt i64 %47, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %44, %35
  %53 = call i32 @warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %20, align 4
  br label %354

54:                                               ; preds = %44
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = add i64 %57, %60
  store i64 %61, i64* %10, align 8
  br label %62

62:                                               ; preds = %345, %54
  %63 = load i8*, i8** %18, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load i64, i64* %12, align 8
  %67 = add i64 %66, 12
  %68 = load i64, i64* %10, align 8
  %69 = icmp ult i64 %67, %68
  br label %70

70:                                               ; preds = %65, %62
  %71 = phi i1 [ false, %62 ], [ %69, %65 ]
  br i1 %71, label %72, label %353

72:                                               ; preds = %70
  %73 = load i8*, i8** %18, align 8
  %74 = load i64, i64* %12, align 8
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  %76 = ptrtoint i8* %75 to i64
  %77 = inttoptr i64 %76 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %77, %struct.TYPE_15__** %14, align 8
  %78 = call i32 @memset(%struct.TYPE_15__* %15, i32 0, i32 12)
  %79 = load i32*, i32** %5, align 8
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %84 = load i32, i32* @ELF_T_WORD, align 4
  %85 = call i32 @xlatetom(i32* %79, %struct.TYPE_14__* %80, i32* %82, i32* %83, i32 %84, i32 4)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %105

87:                                               ; preds = %72
  %88 = load i32*, i32** %5, align 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %93 = load i32, i32* @ELF_T_WORD, align 4
  %94 = call i32 @xlatetom(i32* %88, %struct.TYPE_14__* %89, i32* %91, i32* %92, i32 %93, i32 4)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %87
  %97 = load i32*, i32** %5, align 8
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 2
  %102 = load i32, i32* @ELF_T_WORD, align 4
  %103 = call i32 @xlatetom(i32* %97, %struct.TYPE_14__* %98, i32* %100, i32* %101, i32 %102, i32 4)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %96, %87, %72
  br label %353

106:                                              ; preds = %96
  %107 = load i64, i64* %12, align 8
  %108 = add i64 %107, 12
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @ELF_ALIGN(i32 %110, i32 4)
  %112 = add i64 %108, %111
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @ELF_ALIGN(i32 %114, i32 4)
  %116 = add i64 %112, %115
  %117 = load i64, i64* %10, align 8
  %118 = icmp uge i64 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %106
  %120 = call i32 @warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %20, align 4
  br label %354

121:                                              ; preds = %106
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %123 = bitcast %struct.TYPE_15__* %122 to i8*
  %124 = getelementptr inbounds i8, i8* %123, i64 12
  store i8* %124, i8** %19, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  switch i32 %126, label %344 [
    i32 131, label %127
    i32 134, label %246
    i32 132, label %283
  ]

127:                                              ; preds = %121
  store i32 0, i32* %11, align 4
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load i64, i64* @EI_OSABI, align 8
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @ELFOSABI_FREEBSD, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %210

136:                                              ; preds = %127
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = icmp eq i32 %138, 8
  br i1 %139, label %140, label %210

140:                                              ; preds = %136
  %141 = load i8*, i8** %19, align 8
  %142 = call i32 @strcmp(i8* %141, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %210, label %144

144:                                              ; preds = %140
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = load i64, i64* @EI_CLASS, align 8
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @ELFCLASS32, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %177

153:                                              ; preds = %144
  %154 = load i8*, i8** %19, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = call i64 @ELF_ALIGN(i32 %156, i32 4)
  %158 = getelementptr inbounds i8, i8* %154, i64 %157
  %159 = getelementptr inbounds i8, i8* %158, i64 8
  %160 = ptrtoint i8* %159 to i64
  %161 = inttoptr i64 %160 to i32*
  %162 = load i32, i32* %161, align 4
  store i32 %162, i32* %11, align 4
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = call i64 @NOTE_OFFSET_32(%struct.TYPE_15__* %163, i32 %165, i32 0)
  store i64 %166, i64* %13, align 8
  %167 = load i64, i64* %13, align 8
  %168 = inttoptr i64 %167 to i32*
  %169 = load i32, i32* %168, align 4
  %170 = icmp eq i32 %169, 1
  br i1 %170, label %171, label %176

171:                                              ; preds = %153
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @PID32(%struct.TYPE_15__* %172, i32 %174, i32 24)
  store i32 %175, i32* @handle_core_note.pid, align 4
  br label %176

176:                                              ; preds = %171, %153
  br label %201

177:                                              ; preds = %144
  %178 = load i8*, i8** %19, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = call i64 @ELF_ALIGN(i32 %180, i32 8)
  %182 = getelementptr inbounds i8, i8* %178, i64 %181
  %183 = getelementptr inbounds i8, i8* %182, i64 16
  %184 = ptrtoint i8* %183 to i64
  %185 = inttoptr i64 %184 to i32*
  %186 = load i32, i32* %185, align 4
  store i32 %186, i32* %11, align 4
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = call i64 @NOTE_OFFSET_64(%struct.TYPE_15__* %187, i32 %189, i32 0)
  store i64 %190, i64* %13, align 8
  %191 = load i64, i64* %13, align 8
  %192 = inttoptr i64 %191 to i32*
  %193 = load i32, i32* %192, align 4
  %194 = icmp eq i32 %193, 1
  br i1 %194, label %195, label %200

195:                                              ; preds = %177
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @PID64(%struct.TYPE_15__* %196, i32 %198, i32 40)
  store i32 %199, i32* @handle_core_note.pid, align 4
  br label %200

200:                                              ; preds = %195, %177
  br label %201

201:                                              ; preds = %200, %176
  %202 = load i32*, i32** %5, align 8
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %204 = load i32, i32* @ELF_T_WORD, align 4
  %205 = call i32 @xlatetom(i32* %202, %struct.TYPE_14__* %203, i32* %11, i32* %11, i32 %204, i32 4)
  %206 = load i32*, i32** %5, align 8
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %208 = load i32, i32* @ELF_T_WORD, align 4
  %209 = call i32 @xlatetom(i32* %206, %struct.TYPE_14__* %207, i32* @handle_core_note.pid, i32* @handle_core_note.pid, i32 %208, i32 4)
  br label %210

210:                                              ; preds = %201, %140, %136, %127
  %211 = load i32, i32* %11, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %245

213:                                              ; preds = %210
  %214 = load i32, i32* @style, align 4
  %215 = load i32, i32* @STYLE_SYSV, align 4
  %216 = icmp eq i32 %214, %215
  br i1 %216, label %217, label %245

217:                                              ; preds = %213
  %218 = load i32, i32* @BUF_SIZE, align 4
  %219 = load i32, i32* @handle_core_note.pid, align 4
  %220 = call i32 @snprintf(i8* %25, i32 %218, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %219)
  %221 = call i32 (...) @tbl_append()
  %222 = call i32 @tbl_print(i8* %25, i32 0)
  %223 = load i32, i32* %11, align 4
  %224 = load i32, i32* @radix, align 4
  %225 = call i32 @tbl_print_num(i32 %223, i32 %224, i32 1)
  %226 = load i32, i32* @radix, align 4
  %227 = call i32 @tbl_print_num(i32 0, i32 %226, i32 2)
  %228 = load i32, i32* @handle_core_note.reg_pseudo, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %241, label %230

230:                                              ; preds = %217
  %231 = call i32 (...) @tbl_append()
  %232 = call i32 @tbl_print(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %233 = load i32, i32* %11, align 4
  %234 = load i32, i32* @radix, align 4
  %235 = call i32 @tbl_print_num(i32 %233, i32 %234, i32 1)
  %236 = load i32, i32* @radix, align 4
  %237 = call i32 @tbl_print_num(i32 0, i32 %236, i32 2)
  store i32 1, i32* @handle_core_note.reg_pseudo, align 4
  %238 = load i32, i32* %11, align 4
  %239 = load i32, i32* @text_size_total, align 4
  %240 = add nsw i32 %239, %238
  store i32 %240, i32* @text_size_total, align 4
  br label %241

241:                                              ; preds = %230, %217
  %242 = load i32, i32* %11, align 4
  %243 = load i32, i32* @text_size_total, align 4
  %244 = add nsw i32 %243, %242
  store i32 %244, i32* @text_size_total, align 4
  br label %245

245:                                              ; preds = %241, %213, %210
  br label %345

246:                                              ; preds = %121
  %247 = load i32, i32* @style, align 4
  %248 = load i32, i32* @STYLE_SYSV, align 4
  %249 = icmp eq i32 %247, %248
  br i1 %249, label %250, label %282

250:                                              ; preds = %246
  %251 = load i32, i32* @BUF_SIZE, align 4
  %252 = load i32, i32* @handle_core_note.pid, align 4
  %253 = call i32 @snprintf(i8* %25, i32 %251, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %252)
  %254 = call i32 (...) @tbl_append()
  %255 = call i32 @tbl_print(i8* %25, i32 0)
  %256 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* @radix, align 4
  %259 = call i32 @tbl_print_num(i32 %257, i32 %258, i32 1)
  %260 = load i32, i32* @radix, align 4
  %261 = call i32 @tbl_print_num(i32 0, i32 %260, i32 2)
  %262 = load i32, i32* @handle_core_note.reg2_pseudo, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %277, label %264

264:                                              ; preds = %250
  %265 = call i32 (...) @tbl_append()
  %266 = call i32 @tbl_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %267 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* @radix, align 4
  %270 = call i32 @tbl_print_num(i32 %268, i32 %269, i32 1)
  %271 = load i32, i32* @radix, align 4
  %272 = call i32 @tbl_print_num(i32 0, i32 %271, i32 2)
  store i32 1, i32* @handle_core_note.reg2_pseudo, align 4
  %273 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* @text_size_total, align 4
  %276 = add nsw i32 %275, %274
  store i32 %276, i32* @text_size_total, align 4
  br label %277

277:                                              ; preds = %264, %250
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* @text_size_total, align 4
  %281 = add nsw i32 %280, %279
  store i32 %281, i32* @text_size_total, align 4
  br label %282

282:                                              ; preds = %277, %246
  br label %345

283:                                              ; preds = %121
  %284 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = icmp eq i32 %285, 120
  br i1 %286, label %287, label %298

287:                                              ; preds = %283
  %288 = load i8*, i8** %19, align 8
  %289 = call i32 @strcmp(i8* %288, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %298, label %291

291:                                              ; preds = %287
  %292 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %293 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 2
  %294 = load i32, i32* %293, align 4
  %295 = call i64 @NOTE_OFFSET_64(%struct.TYPE_15__* %292, i32 %294, i32 33)
  %296 = call i8* @strdup(i64 %295)
  %297 = load i8**, i8*** %8, align 8
  store i8* %296, i8** %297, align 8
  br label %314

298:                                              ; preds = %287, %283
  %299 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = icmp eq i32 %300, 108
  br i1 %301, label %302, label %313

302:                                              ; preds = %298
  %303 = load i8*, i8** %19, align 8
  %304 = call i32 @strcmp(i8* %303, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %313, label %306

306:                                              ; preds = %302
  %307 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %308 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 2
  %309 = load i32, i32* %308, align 4
  %310 = call i64 @NOTE_OFFSET_32(%struct.TYPE_15__* %307, i32 %309, i32 25)
  %311 = call i8* @strdup(i64 %310)
  %312 = load i8**, i8*** %8, align 8
  store i8* %311, i8** %312, align 8
  br label %313

313:                                              ; preds = %306, %302, %298
  br label %314

314:                                              ; preds = %313, %291
  %315 = load i8**, i8*** %8, align 8
  %316 = load i8*, i8** %315, align 8
  %317 = icmp ne i8* %316, null
  br i1 %317, label %318, label %343

318:                                              ; preds = %314
  %319 = load i8**, i8*** %8, align 8
  %320 = load i8*, i8** %319, align 8
  %321 = load i8**, i8*** %8, align 8
  %322 = load i8*, i8** %321, align 8
  %323 = call i32 @strlen(i8* %322)
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i8, i8* %320, i64 %324
  store i8* %325, i8** %21, align 8
  br label %326

326:                                              ; preds = %338, %318
  %327 = load i8*, i8** %21, align 8
  %328 = load i8**, i8*** %8, align 8
  %329 = load i8*, i8** %328, align 8
  %330 = icmp ugt i8* %327, %329
  br i1 %330, label %331, label %341

331:                                              ; preds = %326
  %332 = load i8*, i8** %21, align 8
  %333 = getelementptr inbounds i8, i8* %332, i64 -1
  %334 = load i8, i8* %333, align 1
  %335 = sext i8 %334 to i32
  %336 = icmp ne i32 %335, 32
  br i1 %336, label %337, label %338

337:                                              ; preds = %331
  br label %341

338:                                              ; preds = %331
  %339 = load i8*, i8** %21, align 8
  %340 = getelementptr inbounds i8, i8* %339, i32 -1
  store i8* %340, i8** %21, align 8
  br label %326

341:                                              ; preds = %337, %326
  %342 = load i8*, i8** %21, align 8
  store i8 0, i8* %342, align 1
  br label %343

343:                                              ; preds = %341, %314
  br label %345

344:                                              ; preds = %121
  br label %345

345:                                              ; preds = %344, %343, %282, %245
  %346 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %347 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 2
  %350 = load i32, i32* %349, align 4
  %351 = load i64, i64* %12, align 8
  %352 = call i32 @NEXT_NOTE(%struct.TYPE_14__* %346, i32 %348, i32 %350, i64 %351)
  br label %62

353:                                              ; preds = %105, %70
  store i32 0, i32* %20, align 4
  br label %354

354:                                              ; preds = %353, %119, %52, %34
  %355 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %355)
  %356 = load i32, i32* %20, align 4
  switch i32 %356, label %358 [
    i32 0, label %357
    i32 1, label %357
  ]

357:                                              ; preds = %354, %354
  ret void

358:                                              ; preds = %354
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @elf_rawfile(i32*, i64*) #2

declare dso_local i32 @warnx(i8*) #2

declare dso_local i32 @memset(%struct.TYPE_15__*, i32, i32) #2

declare dso_local i32 @xlatetom(i32*, %struct.TYPE_14__*, i32*, i32*, i32, i32) #2

declare dso_local i64 @ELF_ALIGN(i32, i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i64 @NOTE_OFFSET_32(%struct.TYPE_15__*, i32, i32) #2

declare dso_local i32 @PID32(%struct.TYPE_15__*, i32, i32) #2

declare dso_local i64 @NOTE_OFFSET_64(%struct.TYPE_15__*, i32, i32) #2

declare dso_local i32 @PID64(%struct.TYPE_15__*, i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #2

declare dso_local i32 @tbl_append(...) #2

declare dso_local i32 @tbl_print(i8*, i32) #2

declare dso_local i32 @tbl_print_num(i32, i32, i32) #2

declare dso_local i8* @strdup(i64) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @NEXT_NOTE(%struct.TYPE_14__*, i32, i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
