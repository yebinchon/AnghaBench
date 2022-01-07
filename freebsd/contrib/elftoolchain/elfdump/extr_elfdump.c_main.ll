; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfdump/extr_elfdump.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfdump/extr_elfdump.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfdump = type { i32, i8*, i32*, i32, i32, i32* }
%struct.spec_name = type { i32 }

@stdout = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"acdeiGHhknN:prsSvVw:\00", align 1
@elfdump_longopts = common dso_local global i32 0, align 4
@ED_ALL = common dso_local global i8* null, align 8
@ED_SHDR = common dso_local global i32 0, align 4
@ED_DYN = common dso_local global i32 0, align 4
@ED_EHDR = common dso_local global i32 0, align 4
@ED_INTERP = common dso_local global i32 0, align 4
@ED_GOT = common dso_local global i32 0, align 4
@ED_HASH = common dso_local global i32 0, align 4
@ED_CHECKSUM = common dso_local global i32 0, align 4
@ED_NOTE = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@ED_PHDR = common dso_local global i32 0, align 4
@ED_REL = common dso_local global i32 0, align 4
@ED_SYMTAB = common dso_local global i32 0, align 4
@SOLARIS_FMT = common dso_local global i32 0, align 4
@ED_SYMVER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%s (%s)\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@optind = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"ARSYM\00", align 1
@PRINT_ARSYM = common dso_local global i32 0, align 4
@spec_name = common dso_local global i32 0, align 4
@sn_list = common dso_local global i32 0, align 4
@ONLY_ARSYM = common dso_local global i32 0, align 4
@PRINT_FILENAME = common dso_local global i32 0, align 4
@EV_CURRENT = common dso_local global i32 0, align 4
@EV_NONE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [38 x i8] c"ELF library initialization failed: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.elfdump*, align 8
  %7 = alloca %struct.elfdump, align 8
  %8 = alloca %struct.spec_name*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.elfdump* %7, %struct.elfdump** %6, align 8
  %11 = load %struct.elfdump*, %struct.elfdump** %6, align 8
  %12 = call i32 @memset(%struct.elfdump* %11, i32 0, i32 40)
  %13 = load %struct.elfdump*, %struct.elfdump** %6, align 8
  %14 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %13, i32 0, i32 4
  %15 = call i32 @STAILQ_INIT(i32* %14)
  %16 = load i32*, i32** @stdout, align 8
  %17 = load %struct.elfdump*, %struct.elfdump** %6, align 8
  %18 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %17, i32 0, i32 5
  store i32* %16, i32** %18, align 8
  br label %19

19:                                               ; preds = %134, %2
  %20 = load i32, i32* %4, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = load i32, i32* @elfdump_longopts, align 4
  %23 = call i32 @getopt_long(i32 %20, i8** %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %22, i32* null)
  store i32 %23, i32* %9, align 4
  %24 = icmp ne i32 %23, -1
  br i1 %24, label %25, label %135

25:                                               ; preds = %19
  %26 = load i32, i32* %9, align 4
  switch i32 %26, label %132 [
    i32 97, label %27
    i32 99, label %32
    i32 100, label %38
    i32 101, label %44
    i32 105, label %50
    i32 71, label %56
    i32 104, label %62
    i32 107, label %68
    i32 110, label %74
    i32 78, label %80
    i32 112, label %84
    i32 114, label %90
    i32 115, label %96
    i32 83, label %102
    i32 118, label %108
    i32 86, label %114
    i32 119, label %120
    i32 63, label %131
    i32 72, label %131
  ]

27:                                               ; preds = %25
  %28 = load i8*, i8** @ED_ALL, align 8
  %29 = ptrtoint i8* %28 to i32
  %30 = load %struct.elfdump*, %struct.elfdump** %6, align 8
  %31 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  br label %134

32:                                               ; preds = %25
  %33 = load i32, i32* @ED_SHDR, align 4
  %34 = load %struct.elfdump*, %struct.elfdump** %6, align 8
  %35 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  br label %134

38:                                               ; preds = %25
  %39 = load i32, i32* @ED_DYN, align 4
  %40 = load %struct.elfdump*, %struct.elfdump** %6, align 8
  %41 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  br label %134

44:                                               ; preds = %25
  %45 = load i32, i32* @ED_EHDR, align 4
  %46 = load %struct.elfdump*, %struct.elfdump** %6, align 8
  %47 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  br label %134

50:                                               ; preds = %25
  %51 = load i32, i32* @ED_INTERP, align 4
  %52 = load %struct.elfdump*, %struct.elfdump** %6, align 8
  %53 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  br label %134

56:                                               ; preds = %25
  %57 = load i32, i32* @ED_GOT, align 4
  %58 = load %struct.elfdump*, %struct.elfdump** %6, align 8
  %59 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  br label %134

62:                                               ; preds = %25
  %63 = load i32, i32* @ED_HASH, align 4
  %64 = load %struct.elfdump*, %struct.elfdump** %6, align 8
  %65 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  br label %134

68:                                               ; preds = %25
  %69 = load i32, i32* @ED_CHECKSUM, align 4
  %70 = load %struct.elfdump*, %struct.elfdump** %6, align 8
  %71 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  br label %134

74:                                               ; preds = %25
  %75 = load i32, i32* @ED_NOTE, align 4
  %76 = load %struct.elfdump*, %struct.elfdump** %6, align 8
  %77 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 8
  br label %134

80:                                               ; preds = %25
  %81 = load %struct.elfdump*, %struct.elfdump** %6, align 8
  %82 = load i32, i32* @optarg, align 4
  %83 = call i32 @add_name(%struct.elfdump* %81, i32 %82)
  br label %134

84:                                               ; preds = %25
  %85 = load i32, i32* @ED_PHDR, align 4
  %86 = load %struct.elfdump*, %struct.elfdump** %6, align 8
  %87 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  br label %134

90:                                               ; preds = %25
  %91 = load i32, i32* @ED_REL, align 4
  %92 = load %struct.elfdump*, %struct.elfdump** %6, align 8
  %93 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  br label %134

96:                                               ; preds = %25
  %97 = load i32, i32* @ED_SYMTAB, align 4
  %98 = load %struct.elfdump*, %struct.elfdump** %6, align 8
  %99 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 8
  br label %134

102:                                              ; preds = %25
  %103 = load i32, i32* @SOLARIS_FMT, align 4
  %104 = load %struct.elfdump*, %struct.elfdump** %6, align 8
  %105 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 8
  br label %134

108:                                              ; preds = %25
  %109 = load i32, i32* @ED_SYMVER, align 4
  %110 = load %struct.elfdump*, %struct.elfdump** %6, align 8
  %111 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 8
  br label %134

114:                                              ; preds = %25
  %115 = call i8* (...) @ELFTC_GETPROGNAME()
  %116 = call i8* (...) @elftc_version()
  %117 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %115, i8* %116)
  %118 = load i32, i32* @EXIT_SUCCESS, align 4
  %119 = call i32 @exit(i32 %118) #3
  unreachable

120:                                              ; preds = %25
  %121 = load i32, i32* @optarg, align 4
  %122 = call i32* @fopen(i32 %121, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %123 = load %struct.elfdump*, %struct.elfdump** %6, align 8
  %124 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %123, i32 0, i32 5
  store i32* %122, i32** %124, align 8
  %125 = icmp eq i32* %122, null
  br i1 %125, label %126, label %130

126:                                              ; preds = %120
  %127 = load i32, i32* @EXIT_FAILURE, align 4
  %128 = load i32, i32* @optarg, align 4
  %129 = call i32 @err(i32 %127, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %128)
  br label %130

130:                                              ; preds = %126, %120
  br label %134

131:                                              ; preds = %25, %25
  br label %132

132:                                              ; preds = %25, %131
  %133 = call i32 (...) @usage()
  br label %134

134:                                              ; preds = %132, %130, %108, %102, %96, %90, %84, %80, %74, %68, %62, %56, %50, %44, %38, %32, %27
  br label %19

135:                                              ; preds = %19
  %136 = load i64, i64* @optind, align 8
  %137 = load i32, i32* %4, align 4
  %138 = sext i32 %137 to i64
  %139 = sub nsw i64 %138, %136
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %4, align 4
  %141 = load i64, i64* @optind, align 8
  %142 = load i8**, i8*** %5, align 8
  %143 = getelementptr inbounds i8*, i8** %142, i64 %141
  store i8** %143, i8*** %5, align 8
  %144 = load %struct.elfdump*, %struct.elfdump** %6, align 8
  %145 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %135
  %149 = load i8*, i8** @ED_ALL, align 8
  %150 = ptrtoint i8* %149 to i32
  %151 = load %struct.elfdump*, %struct.elfdump** %6, align 8
  %152 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 8
  br label %153

153:                                              ; preds = %148, %135
  store %struct.spec_name* null, %struct.spec_name** %8, align 8
  %154 = load %struct.elfdump*, %struct.elfdump** %6, align 8
  %155 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @ED_SYMTAB, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %196

160:                                              ; preds = %153
  %161 = load %struct.elfdump*, %struct.elfdump** %6, align 8
  %162 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %161, i32 0, i32 4
  %163 = call i64 @STAILQ_EMPTY(i32* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %169, label %165

165:                                              ; preds = %160
  %166 = load %struct.elfdump*, %struct.elfdump** %6, align 8
  %167 = call %struct.spec_name* @find_name(%struct.elfdump* %166, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store %struct.spec_name* %167, %struct.spec_name** %8, align 8
  %168 = icmp ne %struct.spec_name* %167, null
  br i1 %168, label %169, label %196

169:                                              ; preds = %165, %160
  %170 = load i32, i32* @PRINT_ARSYM, align 4
  %171 = load %struct.elfdump*, %struct.elfdump** %6, align 8
  %172 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 8
  %174 = or i32 %173, %170
  store i32 %174, i32* %172, align 8
  %175 = load %struct.spec_name*, %struct.spec_name** %8, align 8
  %176 = icmp ne %struct.spec_name* %175, null
  br i1 %176, label %177, label %195

177:                                              ; preds = %169
  %178 = load %struct.elfdump*, %struct.elfdump** %6, align 8
  %179 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %178, i32 0, i32 4
  %180 = load %struct.spec_name*, %struct.spec_name** %8, align 8
  %181 = load i32, i32* @spec_name, align 4
  %182 = load i32, i32* @sn_list, align 4
  %183 = call i32 @STAILQ_REMOVE(i32* %179, %struct.spec_name* %180, i32 %181, i32 %182)
  %184 = load %struct.elfdump*, %struct.elfdump** %6, align 8
  %185 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %184, i32 0, i32 4
  %186 = call i64 @STAILQ_EMPTY(i32* %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %177
  %189 = load i32, i32* @ONLY_ARSYM, align 4
  %190 = load %struct.elfdump*, %struct.elfdump** %6, align 8
  %191 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 8
  %193 = or i32 %192, %189
  store i32 %193, i32* %191, align 8
  br label %194

194:                                              ; preds = %188, %177
  br label %195

195:                                              ; preds = %194, %169
  br label %196

196:                                              ; preds = %195, %165, %153
  %197 = load i32, i32* %4, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %196
  %200 = call i32 (...) @usage()
  br label %201

201:                                              ; preds = %199, %196
  %202 = load i32, i32* %4, align 4
  %203 = icmp sgt i32 %202, 1
  br i1 %203, label %204, label %210

204:                                              ; preds = %201
  %205 = load i32, i32* @PRINT_FILENAME, align 4
  %206 = load %struct.elfdump*, %struct.elfdump** %6, align 8
  %207 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 8
  %209 = or i32 %208, %205
  store i32 %209, i32* %207, align 8
  br label %210

210:                                              ; preds = %204, %201
  %211 = load i32, i32* @EV_CURRENT, align 4
  %212 = call i64 @elf_version(i32 %211)
  %213 = load i64, i64* @EV_NONE, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %215, label %219

215:                                              ; preds = %210
  %216 = load i32, i32* @EXIT_FAILURE, align 4
  %217 = call i32 @elf_errmsg(i32 -1)
  %218 = call i32 @errx(i32 %216, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %217)
  br label %219

219:                                              ; preds = %215, %210
  store i32 0, i32* %10, align 4
  br label %220

220:                                              ; preds = %236, %219
  %221 = load i32, i32* %10, align 4
  %222 = load i32, i32* %4, align 4
  %223 = icmp slt i32 %221, %222
  br i1 %223, label %224, label %239

224:                                              ; preds = %220
  %225 = load i8**, i8*** %5, align 8
  %226 = load i32, i32* %10, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i8*, i8** %225, i64 %227
  %229 = load i8*, i8** %228, align 8
  %230 = load %struct.elfdump*, %struct.elfdump** %6, align 8
  %231 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %230, i32 0, i32 1
  store i8* %229, i8** %231, align 8
  %232 = load %struct.elfdump*, %struct.elfdump** %6, align 8
  %233 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %232, i32 0, i32 2
  store i32* null, i32** %233, align 8
  %234 = load %struct.elfdump*, %struct.elfdump** %6, align 8
  %235 = call i32 @elf_print_object(%struct.elfdump* %234)
  br label %236

236:                                              ; preds = %224
  %237 = load i32, i32* %10, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %10, align 4
  br label %220

239:                                              ; preds = %220
  %240 = load i32, i32* @EXIT_SUCCESS, align 4
  %241 = call i32 @exit(i32 %240) #3
  unreachable
}

declare dso_local i32 @memset(%struct.elfdump*, i32, i32) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #1

declare dso_local i32 @add_name(%struct.elfdump*, i32) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i8* @ELFTC_GETPROGNAME(...) #1

declare dso_local i8* @elftc_version(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @err(i32, i8*, i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @STAILQ_EMPTY(i32*) #1

declare dso_local %struct.spec_name* @find_name(%struct.elfdump*, i8*) #1

declare dso_local i32 @STAILQ_REMOVE(i32*, %struct.spec_name*, i32, i32) #1

declare dso_local i64 @elf_version(i32) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i32 @elf_print_object(%struct.elfdump*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
