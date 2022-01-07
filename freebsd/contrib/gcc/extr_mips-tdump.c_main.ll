; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_mips-tdump.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_mips-tdump.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i64 }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_13__ = type { i64, i32 }

@.str = private unnamed_addr constant [7 x i8] c"alrsvt\00", align 1
@options = common dso_local global i32 0, align 4
@errors = common dso_local global i64 0, align 8
@want_aux = common dso_local global i64 0, align 8
@want_line = common dso_local global i32 0, align 4
@want_rfd = common dso_local global i32 0, align 4
@want_scope = common dso_local global i64 0, align 8
@verbose = common dso_local global i64 0, align 8
@version = common dso_local global i64 0, align 8
@tfile = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"mips-tdump (GCC) %s\0A\00", align 1
@version_string = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [51 x i8] c"Copyright (C) 2006 Free Software Foundation, Inc.\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [153 x i8] c"This is free software; see the source for copying conditions.  There is NO\0Awarranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.\0A\0A\00", align 1
@optind = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"mips-tdump (GCC) %s\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Calling Sequence:\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"\09%s [-alrst] <object-or-T-file>\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"switches:\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"\09-a Print out auxiliary table.\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"\09-l Print out line numbers.\0A\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"\09-r Print out relative file descriptors.\0A\00", align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"\09-s Print out the current scopes for an item.\0A\00", align 1
@.str.13 = private unnamed_addr constant [54 x i8] c"\09-t Assume there is no global header (ie, a T-file).\0A\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"\09-v Print program version.\0A\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@tfile_fd = common dso_local global i64 0, align 8
@sym_hdr = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@file_desc = common dso_local global %struct.TYPE_12__* null, align 8
@.str.15 = private unnamed_addr constant [46 x i8] c"\0AGlobal auxiliary entries before first file:\0A\00", align 1
@aux_symbols = common dso_local global %struct.TYPE_10__* null, align 8
@aux_used = common dso_local global i32* null, align 8
@.str.16 = private unnamed_addr constant [44 x i8] c"\0AGlobal auxiliary entries after last file:\0A\00", align 1
@.str.17 = private unnamed_addr constant [50 x i8] c"\0AThere are %lu external symbols, starting at %lu\0A\00", align 1
@e_symbols = common dso_local global %struct.TYPE_13__* null, align 8
@e_strings = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [54 x i8] c"\0AThe following auxiliary table entries were unused:\0A\0A\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"    #%-5d %11ld  0x%08lx  %s\0A\00", align 1
@TARGET_VERSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  br label %10

10:                                               ; preds = %42, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = load i32, i32* @options, align 4
  %14 = call i32 @getopt_long(i32 %11, i8** %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %13, i32* null)
  store i32 %14, i32* %7, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %43

16:                                               ; preds = %10
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %18 [
    i32 97, label %21
    i32 108, label %24
    i32 114, label %27
    i32 115, label %30
    i32 118, label %33
    i32 86, label %36
    i32 116, label %39
  ]

18:                                               ; preds = %16
  %19 = load i64, i64* @errors, align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* @errors, align 8
  br label %42

21:                                               ; preds = %16
  %22 = load i64, i64* @want_aux, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* @want_aux, align 8
  br label %42

24:                                               ; preds = %16
  %25 = load i32, i32* @want_line, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @want_line, align 4
  br label %42

27:                                               ; preds = %16
  %28 = load i32, i32* @want_rfd, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* @want_rfd, align 4
  br label %42

30:                                               ; preds = %16
  %31 = load i64, i64* @want_scope, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* @want_scope, align 8
  br label %42

33:                                               ; preds = %16
  %34 = load i64, i64* @verbose, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* @verbose, align 8
  br label %42

36:                                               ; preds = %16
  %37 = load i64, i64* @version, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* @version, align 8
  br label %42

39:                                               ; preds = %16
  %40 = load i32, i32* @tfile, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* @tfile, align 4
  br label %42

42:                                               ; preds = %39, %36, %33, %30, %27, %24, %21, %18
  br label %10

43:                                               ; preds = %10
  %44 = load i64, i64* @version, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load i8*, i8** @version_string, align 8
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  %49 = load i32, i32* @stdout, align 4
  %50 = call i32 @fputs(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @stdout, align 4
  %52 = call i32 @fputs(i8* getelementptr inbounds ([153 x i8], [153 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  %53 = call i32 @exit(i32 0) #3
  unreachable

54:                                               ; preds = %43
  %55 = load i32, i32* @optind, align 4
  %56 = load i32, i32* %4, align 4
  %57 = sub nsw i32 %56, 1
  %58 = icmp ne i32 %55, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i64, i64* @errors, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* @errors, align 8
  br label %62

62:                                               ; preds = %59, %54
  %63 = load i64, i64* @verbose, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load i64, i64* @errors, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %65, %62
  %69 = load i32, i32* @stderr, align 4
  %70 = load i8*, i8** @version_string, align 8
  %71 = call i32 (i32, i8*, ...) @fprintf(i32 %69, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %70)
  %72 = load i32, i32* @stderr, align 4
  %73 = call i32 @fputc(i8 signext 10, i32 %72)
  br label %74

74:                                               ; preds = %68, %65
  %75 = load i64, i64* @errors, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %101

77:                                               ; preds = %74
  %78 = load i32, i32* @stderr, align 4
  %79 = call i32 (i32, i8*, ...) @fprintf(i32 %78, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %80 = load i32, i32* @stderr, align 4
  %81 = load i8**, i8*** %5, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 (i32, i8*, ...) @fprintf(i32 %80, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* %83)
  %85 = load i32, i32* @stderr, align 4
  %86 = call i32 (i32, i8*, ...) @fprintf(i32 %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %87 = load i32, i32* @stderr, align 4
  %88 = call i32 (i32, i8*, ...) @fprintf(i32 %87, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %89 = load i32, i32* @stderr, align 4
  %90 = call i32 (i32, i8*, ...) @fprintf(i32 %89, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  %91 = load i32, i32* @stderr, align 4
  %92 = call i32 (i32, i8*, ...) @fprintf(i32 %91, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  %93 = load i32, i32* @stderr, align 4
  %94 = call i32 (i32, i8*, ...) @fprintf(i32 %93, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0))
  %95 = load i32, i32* @stderr, align 4
  %96 = call i32 (i32, i8*, ...) @fprintf(i32 %95, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.12, i64 0, i64 0))
  %97 = load i32, i32* @stderr, align 4
  %98 = call i32 (i32, i8*, ...) @fprintf(i32 %97, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i64 0, i64 0))
  %99 = load i32, i32* @stderr, align 4
  %100 = call i32 (i32, i8*, ...) @fprintf(i32 %99, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %323

101:                                              ; preds = %74
  %102 = load i8**, i8*** %5, align 8
  %103 = load i32, i32* @optind, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %102, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = load i32, i32* @O_RDONLY, align 4
  %108 = call i64 @open(i8* %106, i32 %107)
  store i64 %108, i64* @tfile_fd, align 8
  %109 = load i64, i64* @tfile_fd, align 8
  %110 = icmp slt i64 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %101
  %112 = load i8**, i8*** %5, align 8
  %113 = load i32, i32* @optind, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8*, i8** %112, i64 %114
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @perror(i8* %116)
  store i32 1, i32* %3, align 4
  br label %323

118:                                              ; preds = %101
  %119 = call i32 (...) @read_tfile()
  %120 = load i64, i64* @want_aux, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %217

122:                                              ; preds = %118
  %123 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sym_hdr, i32 0, i32 0), align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %158

125:                                              ; preds = %122
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** @file_desc, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i64 0
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %158

131:                                              ; preds = %125
  %132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %133

133:                                              ; preds = %154, %131
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** @file_desc, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i64 0
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp slt i64 %135, %139
  br i1 %140, label %141, label %157

141:                                              ; preds = %133
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** @aux_symbols, align 8
  %143 = load i32, i32* %6, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i64 %144
  %146 = load i32*, i32** @aux_used, align 8
  %147 = load i32, i32* %6, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = call i32 @print_aux(i64 %152, i32 0, i32 %150)
  br label %154

154:                                              ; preds = %141
  %155 = load i32, i32* %6, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %6, align 4
  br label %133

157:                                              ; preds = %133
  br label %158

158:                                              ; preds = %157, %125, %122
  %159 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sym_hdr, i32 0, i32 0), align 8
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  store i64 0, i64* %8, align 8
  br label %180

162:                                              ; preds = %158
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** @file_desc, align 8
  %164 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sym_hdr, i32 0, i32 0), align 8
  %165 = sub nsw i32 %164, 1
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** @file_desc, align 8
  %171 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sym_hdr, i32 0, i32 0), align 8
  %172 = sub nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = sext i32 %176 to i64
  %178 = add nsw i64 %169, %177
  %179 = sub nsw i64 %178, 1
  store i64 %179, i64* %8, align 8
  br label %180

180:                                              ; preds = %162, %161
  %181 = load i64, i64* %8, align 8
  %182 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sym_hdr, i32 0, i32 1), align 4
  %183 = sub nsw i32 %182, 1
  %184 = sext i32 %183 to i64
  %185 = icmp slt i64 %181, %184
  br i1 %185, label %186, label %216

186:                                              ; preds = %180
  %187 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.16, i64 0, i64 0))
  %188 = load i64, i64* %8, align 8
  %189 = trunc i64 %188 to i32
  store i32 %189, i32* %6, align 4
  br label %190

190:                                              ; preds = %212, %186
  %191 = load i32, i32* %6, align 4
  %192 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sym_hdr, i32 0, i32 1), align 4
  %193 = icmp slt i32 %191, %192
  br i1 %193, label %194, label %215

194:                                              ; preds = %190
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** @aux_symbols, align 8
  %196 = load i32, i32* %6, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i64 %197
  %199 = load i32, i32* %6, align 4
  %200 = sext i32 %199 to i64
  %201 = load i64, i64* %8, align 8
  %202 = sub nsw i64 %200, %201
  %203 = trunc i64 %202 to i32
  %204 = load i32*, i32** @aux_used, align 8
  %205 = load i32, i32* %6, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = call i32 @print_aux(i64 %210, i32 %203, i32 %208)
  br label %212

212:                                              ; preds = %194
  %213 = load i32, i32* %6, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %6, align 4
  br label %190

215:                                              ; preds = %190
  br label %216

216:                                              ; preds = %215, %180
  br label %217

217:                                              ; preds = %216, %118
  store i32 0, i32* %6, align 4
  br label %218

218:                                              ; preds = %229, %217
  %219 = load i32, i32* %6, align 4
  %220 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sym_hdr, i32 0, i32 0), align 8
  %221 = icmp slt i32 %219, %220
  br i1 %221, label %222, label %232

222:                                              ; preds = %218
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** @file_desc, align 8
  %224 = load i32, i32* %6, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i64 %225
  %227 = load i32, i32* %6, align 4
  %228 = call i32 @print_file_desc(%struct.TYPE_12__* %226, i32 %227)
  br label %229

229:                                              ; preds = %222
  %230 = load i32, i32* %6, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %6, align 4
  br label %218

232:                                              ; preds = %218
  store i64 0, i64* @want_scope, align 8
  %233 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sym_hdr, i32 0, i32 2), align 8
  %234 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sym_hdr, i32 0, i32 3), align 8
  %235 = trunc i64 %234 to i32
  %236 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.17, i64 0, i64 0), i32 %233, i32 %235)
  store i32 0, i32* %6, align 4
  br label %237

237:                                              ; preds = %276, %232
  %238 = load i32, i32* %6, align 4
  %239 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sym_hdr, i32 0, i32 2), align 8
  %240 = icmp slt i32 %238, %239
  br i1 %240, label %241, label %279

241:                                              ; preds = %237
  %242 = load %struct.TYPE_13__*, %struct.TYPE_13__** @e_symbols, align 8
  %243 = load i32, i32* %6, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 1
  %247 = load i32, i32* %6, align 4
  %248 = load i32, i32* @e_strings, align 4
  %249 = load %struct.TYPE_10__*, %struct.TYPE_10__** @aux_symbols, align 8
  %250 = load %struct.TYPE_12__*, %struct.TYPE_12__** @file_desc, align 8
  %251 = load %struct.TYPE_13__*, %struct.TYPE_13__** @e_symbols, align 8
  %252 = load i32, i32* %6, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i64 %259
  %261 = load %struct.TYPE_13__*, %struct.TYPE_13__** @e_symbols, align 8
  %262 = load i32, i32* %6, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = load %struct.TYPE_12__*, %struct.TYPE_12__** @file_desc, align 8
  %268 = load %struct.TYPE_13__*, %struct.TYPE_13__** @e_symbols, align 8
  %269 = load i32, i32* %6, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %268, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %267, i64 %273
  %275 = call i32 @print_symbol(i32* %246, i32 %247, i32 %248, %struct.TYPE_10__* %260, i64 %266, %struct.TYPE_12__* %274)
  br label %276

276:                                              ; preds = %241
  %277 = load i32, i32* %6, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %6, align 4
  br label %237

279:                                              ; preds = %237
  %280 = load i64, i64* @want_aux, align 8
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %322

282:                                              ; preds = %279
  store i32 1, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %283

283:                                              ; preds = %318, %282
  %284 = load i32, i32* %6, align 4
  %285 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sym_hdr, i32 0, i32 1), align 4
  %286 = icmp slt i32 %284, %285
  br i1 %286, label %287, label %321

287:                                              ; preds = %283
  %288 = load i32*, i32** @aux_used, align 8
  %289 = load i32, i32* %6, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %288, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %317, label %294

294:                                              ; preds = %287
  %295 = load i32, i32* %9, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %299

297:                                              ; preds = %294
  %298 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.18, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %299

299:                                              ; preds = %297, %294
  %300 = load i32, i32* %6, align 4
  %301 = load %struct.TYPE_10__*, %struct.TYPE_10__** @aux_symbols, align 8
  %302 = load i32, i32* %6, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %301, i64 %303
  %305 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %304, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  %307 = load %struct.TYPE_10__*, %struct.TYPE_10__** @aux_symbols, align 8
  %308 = load i32, i32* %6, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %307, i64 %309
  %311 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %310, i32 0, i32 0
  %312 = load i64, i64* %311, align 8
  %313 = load %struct.TYPE_10__*, %struct.TYPE_10__** @aux_symbols, align 8
  %314 = load i32, i32* %6, align 4
  %315 = call i32 @type_to_string(%struct.TYPE_10__* %313, i32 %314, i32* null)
  %316 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i64 0, i64 0), i32 %300, i64 %306, i64 %312, i32 %315)
  br label %317

317:                                              ; preds = %299, %287
  br label %318

318:                                              ; preds = %317
  %319 = load i32, i32* %6, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %6, align 4
  br label %283

321:                                              ; preds = %283
  br label %322

322:                                              ; preds = %321, %279
  store i32 0, i32* %3, align 4
  br label %323

323:                                              ; preds = %322, %111, %77
  %324 = load i32, i32* %3, align 4
  ret i32 %324
}

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fputs(i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @fputc(i8 signext, i32) #1

declare dso_local i64 @open(i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @read_tfile(...) #1

declare dso_local i32 @print_aux(i64, i32, i32) #1

declare dso_local i32 @print_file_desc(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @print_symbol(i32*, i32, i32, %struct.TYPE_10__*, i64, %struct.TYPE_12__*) #1

declare dso_local i32 @type_to_string(%struct.TYPE_10__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
