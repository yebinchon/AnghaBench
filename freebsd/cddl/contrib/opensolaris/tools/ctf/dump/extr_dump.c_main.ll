; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/dump/extr_dump.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/dump/extr_dump.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i32, i32, i32 }
%struct.TYPE_33__ = type { i32, i32, %struct.TYPE_32__*, i8*, i8* }
%struct.TYPE_31__ = type { i64, i64 }
%struct.TYPE_35__ = type { i32, %struct.TYPE_32__* }
%struct.TYPE_34__ = type { i64, i32, i32 }
%struct.stat = type { i32 }
%struct.TYPE_30__ = type { i32, i32, i32, i8*, i8* }

@EV_CURRENT = common dso_local global i32 0, align 4
@opterr = common dso_local global i64 0, align 8
@optind = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"dfhlsStu:\00", align 1
@EOF = common dso_local global i64 0, align 8
@F_DATA = common dso_local global i32 0, align 4
@flags = common dso_local global i32 0, align 4
@F_FUNC = common dso_local global i32 0, align 4
@F_HDR = common dso_local global i32 0, align 4
@F_LABEL = common dso_local global i32 0, align 4
@F_STR = common dso_local global i32 0, align 4
@F_STATS = common dso_local global i32 0, align 4
@F_TYPES = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@optopt = common dso_local global i8 0, align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"illegal option -- %c\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@F_ALLMSK = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"failed to open %s\00", align 1
@ELF_C_READ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c".SUNW_ctf\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"%s does not contain .SUNW_ctf data\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c".symtab\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"failed to fstat %s\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global %struct.TYPE_32__* null, align 8
@.str.7 = private unnamed_addr constant [18 x i8] c"failed to mmap %s\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"%s does not contain a CTF preamble\0A\00", align 1
@CTF_MAGIC = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [40 x i8] c"%s does not appear to contain CTF data\0A\00", align 1
@CTF_VERSION = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [38 x i8] c"%s does not contain a v%d CTF header\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"%s contains unsupported CTF version %d\0A\00", align 1
@CTF_F_COMPRESS = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [40 x i8] c"failed to allocate decompression buffer\00", align 1
@Z_OK = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [31 x i8] c"failed to initialize zlib: %s\0A\00", align 1
@Z_FINISH = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [35 x i8] c"failed to decompress CTF data: %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"failed to finish decompression: %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [44 x i8] c"CTF data is corrupt -- short decompression\0A\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [33 x i8] c"failed to write CTF data to '%s'\00", align 1
@E_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_33__, align 8
  %13 = alloca %struct.TYPE_31__*, align 8
  %14 = alloca %struct.TYPE_32__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_35__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_34__, align 8
  %21 = alloca %struct.TYPE_34__, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.stat, align 4
  %24 = alloca i8*, align 8
  %25 = alloca %struct.TYPE_30__, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_32__, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store %struct.TYPE_32__* null, %struct.TYPE_32__** %14, align 8
  %29 = load i32, i32* @EV_CURRENT, align 4
  %30 = call i32 @elf_version(i32 %29)
  store i64 0, i64* @opterr, align 8
  br label %31

31:                                               ; preds = %106, %2
  %32 = load i32, i32* @optind, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %109

35:                                               ; preds = %31
  br label %36

36:                                               ; preds = %88, %35
  %37 = load i32, i32* %4, align 4
  %38 = load i8**, i8*** %5, align 8
  %39 = call i32 @getopt(i32 %37, i8** %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %39, i32* %9, align 4
  %40 = load i64, i64* @EOF, align 8
  %41 = trunc i64 %40 to i32
  %42 = icmp ne i32 %39, %41
  br i1 %42, label %43, label %89

43:                                               ; preds = %36
  %44 = load i32, i32* %9, align 4
  switch i32 %44, label %75 [
    i32 100, label %45
    i32 102, label %49
    i32 104, label %53
    i32 108, label %57
    i32 115, label %61
    i32 83, label %65
    i32 116, label %69
    i32 117, label %73
  ]

45:                                               ; preds = %43
  %46 = load i32, i32* @F_DATA, align 4
  %47 = load i32, i32* @flags, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* @flags, align 4
  br label %88

49:                                               ; preds = %43
  %50 = load i32, i32* @F_FUNC, align 4
  %51 = load i32, i32* @flags, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* @flags, align 4
  br label %88

53:                                               ; preds = %43
  %54 = load i32, i32* @F_HDR, align 4
  %55 = load i32, i32* @flags, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* @flags, align 4
  br label %88

57:                                               ; preds = %43
  %58 = load i32, i32* @F_LABEL, align 4
  %59 = load i32, i32* @flags, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* @flags, align 4
  br label %88

61:                                               ; preds = %43
  %62 = load i32, i32* @F_STR, align 4
  %63 = load i32, i32* @flags, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* @flags, align 4
  br label %88

65:                                               ; preds = %43
  %66 = load i32, i32* @F_STATS, align 4
  %67 = load i32, i32* @flags, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* @flags, align 4
  br label %88

69:                                               ; preds = %43
  %70 = load i32, i32* @F_TYPES, align 4
  %71 = load i32, i32* @flags, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* @flags, align 4
  br label %88

73:                                               ; preds = %43
  %74 = load i8*, i8** @optarg, align 8
  store i8* %74, i8** %7, align 8
  br label %88

75:                                               ; preds = %43
  %76 = load i8, i8* @optopt, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 63
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load i32, i32* @stdout, align 4
  %81 = call i32 @print_usage(i32 %80, i32 1)
  store i32 %81, i32* %3, align 4
  br label %499

82:                                               ; preds = %75
  %83 = load i8, i8* @optopt, align 1
  %84 = sext i8 %83 to i32
  %85 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* @stderr, align 4
  %87 = call i32 @print_usage(i32 %86, i32 0)
  store i32 %87, i32* %3, align 4
  br label %499

88:                                               ; preds = %73, %69, %65, %61, %57, %53, %49, %45
  br label %36

89:                                               ; preds = %36
  %90 = load i32, i32* @optind, align 4
  %91 = load i32, i32* %4, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %105

93:                                               ; preds = %89
  %94 = load i8*, i8** %6, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i32, i32* @stderr, align 4
  %98 = call i32 @print_usage(i32 %97, i32 0)
  store i32 %98, i32* %3, align 4
  br label %499

99:                                               ; preds = %93
  %100 = load i8**, i8*** %5, align 8
  %101 = load i32, i32* @optind, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %100, i64 %102
  %104 = load i8*, i8** %103, align 8
  store i8* %104, i8** %6, align 8
  br label %105

105:                                              ; preds = %99, %89
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* @optind, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* @optind, align 4
  br label %31

109:                                              ; preds = %31
  %110 = load i8*, i8** %6, align 8
  %111 = icmp eq i8* %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load i32, i32* @stderr, align 4
  %114 = call i32 @print_usage(i32 %113, i32 0)
  store i32 %114, i32* %3, align 4
  br label %499

115:                                              ; preds = %109
  %116 = load i32, i32* @flags, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %115
  %119 = load i8*, i8** %7, align 8
  %120 = icmp eq i8* %119, null
  br i1 %120, label %121, label %123

121:                                              ; preds = %118
  %122 = load i32, i32* @F_ALLMSK, align 4
  store i32 %122, i32* @flags, align 4
  br label %123

123:                                              ; preds = %121, %118, %115
  %124 = load i8*, i8** %6, align 8
  %125 = load i32, i32* @O_RDONLY, align 4
  %126 = call i32 (i8*, i32, ...) @open(i8* %124, i32 %125)
  store i32 %126, i32* %10, align 4
  %127 = icmp eq i32 %126, -1
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load i8*, i8** %6, align 8
  %130 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %129)
  br label %131

131:                                              ; preds = %128, %123
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* @ELF_C_READ, align 4
  %134 = call i32* @elf_begin(i32 %132, i32 %133, i32* null)
  store i32* %134, i32** %15, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %136, label %203

136:                                              ; preds = %131
  %137 = load i32*, i32** %15, align 8
  %138 = call i32* @gelf_getehdr(i32* %137, i32* %16)
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %203

140:                                              ; preds = %136
  store %struct.TYPE_35__* null, %struct.TYPE_35__** %17, align 8
  %141 = load i32*, i32** %15, align 8
  %142 = call i32* @findelfscn(i32* %141, i32* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i32* %142, i32** %18, align 8
  %143 = load i32*, i32** %18, align 8
  %144 = icmp eq i32* %143, null
  br i1 %144, label %150, label %145

145:                                              ; preds = %140
  %146 = load i32*, i32** %18, align 8
  %147 = call i8* @elf_getdata(i32* %146, i32* null)
  %148 = bitcast i8* %147 to %struct.TYPE_35__*
  store %struct.TYPE_35__* %148, %struct.TYPE_35__** %17, align 8
  %149 = icmp eq %struct.TYPE_35__* %148, null
  br i1 %149, label %150, label %153

150:                                              ; preds = %145, %140
  %151 = load i8*, i8** %6, align 8
  %152 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %151)
  br label %153

153:                                              ; preds = %150, %145
  %154 = load %struct.TYPE_35__*, %struct.TYPE_35__** %17, align 8
  %155 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_32__*, %struct.TYPE_32__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %12, i32 0, i32 2
  store %struct.TYPE_32__* %156, %struct.TYPE_32__** %157, align 8
  %158 = load %struct.TYPE_35__*, %struct.TYPE_35__** %17, align 8
  %159 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %12, i32 0, i32 0
  store i32 %160, i32* %161, align 8
  %162 = load i32*, i32** %18, align 8
  %163 = call i32* @gelf_getshdr(i32* %162, %struct.TYPE_34__* %20)
  %164 = icmp ne i32* %163, null
  br i1 %164, label %165, label %174

165:                                              ; preds = %153
  %166 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %20, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %165
  %170 = load i32*, i32** %15, align 8
  %171 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %20, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = call i32* @elf_getscn(i32* %170, i64 %172)
  store i32* %173, i32** %19, align 8
  br label %177

174:                                              ; preds = %165, %153
  %175 = load i32*, i32** %15, align 8
  %176 = call i32* @findelfscn(i32* %175, i32* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  store i32* %176, i32** %19, align 8
  br label %177

177:                                              ; preds = %174, %169
  %178 = load i32*, i32** %19, align 8
  %179 = icmp ne i32* %178, null
  br i1 %179, label %180, label %202

180:                                              ; preds = %177
  %181 = load i32*, i32** %19, align 8
  %182 = call i32* @gelf_getshdr(i32* %181, %struct.TYPE_34__* %21)
  %183 = icmp ne i32* %182, null
  br i1 %183, label %184, label %201

184:                                              ; preds = %180
  %185 = load i32*, i32** %15, align 8
  %186 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %21, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = call i32* @elf_getscn(i32* %185, i64 %187)
  store i32* %188, i32** %22, align 8
  %189 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %21, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %21, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = sdiv i32 %190, %192
  %194 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %12, i32 0, i32 1
  store i32 %193, i32* %194, align 4
  %195 = load i32*, i32** %19, align 8
  %196 = call i8* @elf_getdata(i32* %195, i32* null)
  %197 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %12, i32 0, i32 4
  store i8* %196, i8** %197, align 8
  %198 = load i32*, i32** %22, align 8
  %199 = call i8* @elf_getdata(i32* %198, i32* null)
  %200 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %12, i32 0, i32 3
  store i8* %199, i8** %200, align 8
  br label %201

201:                                              ; preds = %184, %180
  br label %202

202:                                              ; preds = %201, %177
  br label %229

203:                                              ; preds = %136, %131
  %204 = load i32, i32* %10, align 4
  %205 = call i32 @fstat(i32 %204, %struct.stat* %23)
  %206 = icmp eq i32 %205, -1
  br i1 %206, label %207, label %210

207:                                              ; preds = %203
  %208 = load i8*, i8** %6, align 8
  %209 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* %208)
  br label %210

210:                                              ; preds = %207, %203
  %211 = getelementptr inbounds %struct.stat, %struct.stat* %23, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %12, i32 0, i32 0
  store i32 %212, i32* %213, align 8
  %214 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %12, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @PROT_READ, align 4
  %217 = load i32, i32* @MAP_PRIVATE, align 4
  %218 = load i32, i32* %10, align 4
  %219 = call %struct.TYPE_32__* @mmap(i32* null, i32 %215, i32 %216, i32 %217, i32 %218, i32 0)
  %220 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %12, i32 0, i32 2
  store %struct.TYPE_32__* %219, %struct.TYPE_32__** %220, align 8
  %221 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %12, i32 0, i32 2
  %222 = load %struct.TYPE_32__*, %struct.TYPE_32__** %221, align 8
  %223 = load %struct.TYPE_32__*, %struct.TYPE_32__** @MAP_FAILED, align 8
  %224 = icmp eq %struct.TYPE_32__* %222, %223
  br i1 %224, label %225, label %228

225:                                              ; preds = %210
  %226 = load i8*, i8** %6, align 8
  %227 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8* %226)
  br label %228

228:                                              ; preds = %225, %210
  br label %229

229:                                              ; preds = %228, %202
  %230 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %12, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = sext i32 %231 to i64
  %233 = icmp ult i64 %232, 16
  br i1 %233, label %234, label %237

234:                                              ; preds = %229
  %235 = load i8*, i8** %6, align 8
  %236 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i8* %235)
  br label %237

237:                                              ; preds = %234, %229
  %238 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %12, i32 0, i32 2
  %239 = load %struct.TYPE_32__*, %struct.TYPE_32__** %238, align 8
  %240 = bitcast %struct.TYPE_32__* %239 to i8*
  store i8* %240, i8** %24, align 8
  %241 = load i8*, i8** %24, align 8
  %242 = bitcast i8* %241 to %struct.TYPE_31__*
  store %struct.TYPE_31__* %242, %struct.TYPE_31__** %13, align 8
  %243 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %244 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @CTF_MAGIC, align 8
  %247 = icmp ne i64 %245, %246
  br i1 %247, label %248, label %251

248:                                              ; preds = %237
  %249 = load i8*, i8** %6, align 8
  %250 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i8* %249)
  br label %251

251:                                              ; preds = %248, %237
  %252 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %253 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = load i64, i64* @CTF_VERSION, align 8
  %256 = icmp eq i64 %254, %255
  br i1 %256, label %257, label %276

257:                                              ; preds = %251
  %258 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %12, i32 0, i32 2
  %259 = load %struct.TYPE_32__*, %struct.TYPE_32__** %258, align 8
  %260 = bitcast %struct.TYPE_32__* %259 to i8*
  store i8* %260, i8** %24, align 8
  %261 = load i8*, i8** %24, align 8
  %262 = bitcast i8* %261 to %struct.TYPE_32__*
  store %struct.TYPE_32__* %262, %struct.TYPE_32__** %14, align 8
  %263 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %12, i32 0, i32 2
  %264 = load %struct.TYPE_32__*, %struct.TYPE_32__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %264, i64 12
  %266 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %12, i32 0, i32 2
  store %struct.TYPE_32__* %265, %struct.TYPE_32__** %266, align 8
  %267 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %12, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = sext i32 %268 to i64
  %270 = icmp ult i64 %269, 12
  br i1 %270, label %271, label %275

271:                                              ; preds = %257
  %272 = load i8*, i8** %6, align 8
  %273 = load i64, i64* @CTF_VERSION, align 8
  %274 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i8* %272, i64 %273)
  br label %275

275:                                              ; preds = %271, %257
  br label %282

276:                                              ; preds = %251
  %277 = load i8*, i8** %6, align 8
  %278 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %279 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %278, i32 0, i32 1
  %280 = load i64, i64* %279, align 8
  %281 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0), i8* %277, i64 %280)
  br label %282

282:                                              ; preds = %276, %275
  %283 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %284 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* @CTF_F_COMPRESS, align 4
  %287 = and i32 %285, %286
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %369

289:                                              ; preds = %282
  %290 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %291 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %294 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 4
  %296 = add nsw i32 %292, %295
  %297 = call i8* @malloc(i32 %296)
  store i8* %297, i8** %26, align 8
  %298 = icmp eq i8* %297, null
  br i1 %298, label %299, label %301

299:                                              ; preds = %289
  %300 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0))
  br label %301

301:                                              ; preds = %299, %289
  %302 = call i32 @bzero(%struct.TYPE_30__* %25, i32 32)
  %303 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %12, i32 0, i32 2
  %304 = load %struct.TYPE_32__*, %struct.TYPE_32__** %303, align 8
  %305 = bitcast %struct.TYPE_32__* %304 to i8*
  %306 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %25, i32 0, i32 4
  store i8* %305, i8** %306, align 8
  %307 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %12, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %25, i32 0, i32 0
  store i32 %308, i32* %309, align 8
  %310 = load i8*, i8** %26, align 8
  %311 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %25, i32 0, i32 3
  store i8* %310, i8** %311, align 8
  %312 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %313 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 4
  %315 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %316 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %315, i32 0, i32 2
  %317 = load i32, i32* %316, align 4
  %318 = add nsw i32 %314, %317
  %319 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %25, i32 0, i32 1
  store i32 %318, i32* %319, align 4
  %320 = call i32 @inflateInit(%struct.TYPE_30__* %25)
  store i32 %320, i32* %27, align 4
  %321 = load i32, i32* @Z_OK, align 4
  %322 = icmp ne i32 %320, %321
  br i1 %322, label %323, label %327

323:                                              ; preds = %301
  %324 = load i32, i32* %27, align 4
  %325 = call i32 @zError(i32 %324)
  %326 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i32 %325)
  br label %327

327:                                              ; preds = %323, %301
  %328 = load i32, i32* @Z_FINISH, align 4
  %329 = call i32 @inflate(%struct.TYPE_30__* %25, i32 %328)
  store i32 %329, i32* %27, align 4
  %330 = load i32, i32* @Z_STREAM_END, align 4
  %331 = icmp ne i32 %329, %330
  br i1 %331, label %332, label %336

332:                                              ; preds = %327
  %333 = load i32, i32* %27, align 4
  %334 = call i32 @zError(i32 %333)
  %335 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0), i32 %334)
  br label %336

336:                                              ; preds = %332, %327
  %337 = call i32 @inflateEnd(%struct.TYPE_30__* %25)
  store i32 %337, i32* %27, align 4
  %338 = load i32, i32* @Z_OK, align 4
  %339 = icmp ne i32 %337, %338
  br i1 %339, label %340, label %344

340:                                              ; preds = %336
  %341 = load i32, i32* %27, align 4
  %342 = call i32 @zError(i32 %341)
  %343 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0), i32 %342)
  br label %344

344:                                              ; preds = %340, %336
  %345 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %25, i32 0, i32 2
  %346 = load i32, i32* %345, align 8
  %347 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %348 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 4
  %350 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %351 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %350, i32 0, i32 2
  %352 = load i32, i32* %351, align 4
  %353 = add nsw i32 %349, %352
  %354 = icmp ne i32 %346, %353
  br i1 %354, label %355, label %357

355:                                              ; preds = %344
  %356 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.16, i64 0, i64 0))
  br label %357

357:                                              ; preds = %355, %344
  %358 = load i8*, i8** %26, align 8
  %359 = bitcast i8* %358 to %struct.TYPE_32__*
  %360 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %12, i32 0, i32 2
  store %struct.TYPE_32__* %359, %struct.TYPE_32__** %360, align 8
  %361 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %362 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %361, i32 0, i32 1
  %363 = load i32, i32* %362, align 4
  %364 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %365 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %364, i32 0, i32 2
  %366 = load i32, i32* %365, align 4
  %367 = add nsw i32 %363, %366
  %368 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %12, i32 0, i32 0
  store i32 %367, i32* %368, align 8
  br label %369

369:                                              ; preds = %357, %282
  %370 = load i32, i32* @flags, align 4
  %371 = load i32, i32* @F_HDR, align 4
  %372 = and i32 %370, %371
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %379

374:                                              ; preds = %369
  %375 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %376 = call i32 @print_header(%struct.TYPE_32__* %375, %struct.TYPE_33__* %12)
  %377 = load i32, i32* %8, align 4
  %378 = or i32 %377, %376
  store i32 %378, i32* %8, align 4
  br label %379

379:                                              ; preds = %374, %369
  %380 = load i32, i32* @flags, align 4
  %381 = load i32, i32* @F_LABEL, align 4
  %382 = and i32 %380, %381
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %389

384:                                              ; preds = %379
  %385 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %386 = call i32 @print_labeltable(%struct.TYPE_32__* %385, %struct.TYPE_33__* %12)
  %387 = load i32, i32* %8, align 4
  %388 = or i32 %387, %386
  store i32 %388, i32* %8, align 4
  br label %389

389:                                              ; preds = %384, %379
  %390 = load i32, i32* @flags, align 4
  %391 = load i32, i32* @F_DATA, align 4
  %392 = load i32, i32* @F_STATS, align 4
  %393 = or i32 %391, %392
  %394 = and i32 %390, %393
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %401

396:                                              ; preds = %389
  %397 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %398 = call i32 @read_data(%struct.TYPE_32__* %397, %struct.TYPE_33__* %12)
  %399 = load i32, i32* %8, align 4
  %400 = or i32 %399, %398
  store i32 %400, i32* %8, align 4
  br label %401

401:                                              ; preds = %396, %389
  %402 = load i32, i32* @flags, align 4
  %403 = load i32, i32* @F_FUNC, align 4
  %404 = load i32, i32* @F_STATS, align 4
  %405 = or i32 %403, %404
  %406 = and i32 %402, %405
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %413

408:                                              ; preds = %401
  %409 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %410 = call i32 @read_funcs(%struct.TYPE_32__* %409, %struct.TYPE_33__* %12)
  %411 = load i32, i32* %8, align 4
  %412 = or i32 %411, %410
  store i32 %412, i32* %8, align 4
  br label %413

413:                                              ; preds = %408, %401
  %414 = load i32, i32* @flags, align 4
  %415 = load i32, i32* @F_TYPES, align 4
  %416 = load i32, i32* @F_STATS, align 4
  %417 = or i32 %415, %416
  %418 = and i32 %414, %417
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %425

420:                                              ; preds = %413
  %421 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %422 = call i32 @read_types(%struct.TYPE_32__* %421, %struct.TYPE_33__* %12)
  %423 = load i32, i32* %8, align 4
  %424 = or i32 %423, %422
  store i32 %424, i32* %8, align 4
  br label %425

425:                                              ; preds = %420, %413
  %426 = load i32, i32* @flags, align 4
  %427 = load i32, i32* @F_STR, align 4
  %428 = load i32, i32* @F_STATS, align 4
  %429 = or i32 %427, %428
  %430 = and i32 %426, %429
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %437

432:                                              ; preds = %425
  %433 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %434 = call i32 @read_strtab(%struct.TYPE_32__* %433, %struct.TYPE_33__* %12)
  %435 = load i32, i32* %8, align 4
  %436 = or i32 %435, %434
  store i32 %436, i32* %8, align 4
  br label %437

437:                                              ; preds = %432, %425
  %438 = load i32, i32* @flags, align 4
  %439 = load i32, i32* @F_STATS, align 4
  %440 = and i32 %438, %439
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %446

442:                                              ; preds = %437
  %443 = call i32 (...) @print_stats()
  %444 = load i32, i32* %8, align 4
  %445 = or i32 %444, %443
  store i32 %445, i32* %8, align 4
  br label %446

446:                                              ; preds = %442, %437
  %447 = load i8*, i8** %7, align 8
  %448 = icmp ne i8* %447, null
  br i1 %448, label %449, label %489

449:                                              ; preds = %446
  %450 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %451 = call i32 @bcopy(%struct.TYPE_32__* %450, %struct.TYPE_32__* %28, i32 12)
  %452 = load i32, i32* @CTF_F_COMPRESS, align 4
  %453 = xor i32 %452, -1
  %454 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %28, i32 0, i32 0
  %455 = load i32, i32* %454, align 4
  %456 = and i32 %455, %453
  store i32 %456, i32* %454, align 4
  %457 = load i8*, i8** %7, align 8
  %458 = load i32, i32* @O_WRONLY, align 4
  %459 = load i32, i32* @O_CREAT, align 4
  %460 = or i32 %458, %459
  %461 = load i32, i32* @O_TRUNC, align 4
  %462 = or i32 %460, %461
  %463 = call i32 (i8*, i32, ...) @open(i8* %457, i32 %462, i32 438)
  store i32 %463, i32* %11, align 4
  %464 = icmp slt i32 %463, 0
  br i1 %464, label %480, label %465

465:                                              ; preds = %449
  %466 = load i32, i32* %11, align 4
  %467 = call i32 @write(i32 %466, %struct.TYPE_32__* %28, i32 12)
  %468 = sext i32 %467 to i64
  %469 = icmp ne i64 %468, 12
  br i1 %469, label %480, label %470

470:                                              ; preds = %465
  %471 = load i32, i32* %11, align 4
  %472 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %12, i32 0, i32 2
  %473 = load %struct.TYPE_32__*, %struct.TYPE_32__** %472, align 8
  %474 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %12, i32 0, i32 0
  %475 = load i32, i32* %474, align 8
  %476 = call i32 @write(i32 %471, %struct.TYPE_32__* %473, i32 %475)
  %477 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %12, i32 0, i32 0
  %478 = load i32, i32* %477, align 8
  %479 = icmp ne i32 %476, %478
  br i1 %479, label %480, label %486

480:                                              ; preds = %470, %465, %449
  %481 = load i8*, i8** %7, align 8
  %482 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0), i8* %481)
  %483 = load i32, i32* @E_ERROR, align 4
  %484 = load i32, i32* %8, align 4
  %485 = or i32 %484, %483
  store i32 %485, i32* %8, align 4
  br label %486

486:                                              ; preds = %480, %470
  %487 = load i32, i32* %11, align 4
  %488 = call i32 @close(i32 %487)
  br label %489

489:                                              ; preds = %486, %446
  %490 = load i32*, i32** %15, align 8
  %491 = icmp ne i32* %490, null
  br i1 %491, label %492, label %495

492:                                              ; preds = %489
  %493 = load i32*, i32** %15, align 8
  %494 = call i32 @elf_end(i32* %493)
  br label %495

495:                                              ; preds = %492, %489
  %496 = load i32, i32* %10, align 4
  %497 = call i32 @close(i32 %496)
  %498 = load i32, i32* %8, align 4
  store i32 %498, i32* %3, align 4
  br label %499

499:                                              ; preds = %495, %112, %96, %82, %79
  %500 = load i32, i32* %3, align 4
  ret i32 %500
}

declare dso_local i32 @elf_version(i32) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @print_usage(i32, i32) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i32 @open(i8*, i32, ...) #1

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i32* @elf_begin(i32, i32, i32*) #1

declare dso_local i32* @gelf_getehdr(i32*, i32*) #1

declare dso_local i32* @findelfscn(i32*, i32*, i8*) #1

declare dso_local i8* @elf_getdata(i32*, i32*) #1

declare dso_local i32* @gelf_getshdr(i32*, %struct.TYPE_34__*) #1

declare dso_local i32* @elf_getscn(i32*, i64) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local %struct.TYPE_32__* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @bzero(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @inflateInit(%struct.TYPE_30__*) #1

declare dso_local i32 @zError(i32) #1

declare dso_local i32 @inflate(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @inflateEnd(%struct.TYPE_30__*) #1

declare dso_local i32 @print_header(%struct.TYPE_32__*, %struct.TYPE_33__*) #1

declare dso_local i32 @print_labeltable(%struct.TYPE_32__*, %struct.TYPE_33__*) #1

declare dso_local i32 @read_data(%struct.TYPE_32__*, %struct.TYPE_33__*) #1

declare dso_local i32 @read_funcs(%struct.TYPE_32__*, %struct.TYPE_33__*) #1

declare dso_local i32 @read_types(%struct.TYPE_32__*, %struct.TYPE_33__*) #1

declare dso_local i32 @read_strtab(%struct.TYPE_32__*, %struct.TYPE_33__*) #1

declare dso_local i32 @print_stats(...) #1

declare dso_local i32 @bcopy(%struct.TYPE_32__*, %struct.TYPE_32__*, i32) #1

declare dso_local i32 @write(i32, %struct.TYPE_32__*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @elf_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
