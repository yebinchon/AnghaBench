; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfdump/extr_elfdump.c_elf_print_symtab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfdump/extr_elfdump.c_elf_print_symtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfdump = type { i32, i64, %struct.TYPE_8__, %struct.section* }
%struct.TYPE_8__ = type { i32 }
%struct.section = type { i8*, i64, i32, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64, i64, i32, i64, i64, i32 }

@SOLARIS_FMT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"\0ASymbol Table Section:  %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"\0Asymbol table (%s):\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"elf_getdata failed: %s\00", align 1
@ELFCLASS32 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"     index    value       \00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"     index        value           \00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"size     type bind oth ver shndx       name\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"#symbol not equal to #versym\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"gelf_getsym failed: %s\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"[%d]\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"%10s  \00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"%10s      \00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"0x%8.8jx \00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"0x%8.8jx  \00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"0x%12.12jx  \00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"%s  \00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"%c  \00", align 1
@st_others = common dso_local global i8** null, align 8
@.str.17 = private unnamed_addr constant [5 x i8] c"%3u \00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"%-11.11s \00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"\0Aentry: %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"\09st_name: %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"\09st_value: %#jx\0A\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"\09st_size: %ju\0A\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"\09st_info: %s %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"\09st_shndx: %ju\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elfdump*, i32)* @elf_print_symtab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elf_print_symtab(%struct.elfdump* %0, i32 %1) #0 {
  %3 = alloca %struct.elfdump*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.section*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca [13 x i8], align 1
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_9__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.elfdump* %0, %struct.elfdump** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load %struct.elfdump*, %struct.elfdump** %3, align 8
  %16 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %15, i32 0, i32 3
  %17 = load %struct.section*, %struct.section** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.section, %struct.section* %17, i64 %19
  store %struct.section* %20, %struct.section** %5, align 8
  %21 = load %struct.elfdump*, %struct.elfdump** %3, align 8
  %22 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @SOLARIS_FMT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = load %struct.section*, %struct.section** %5, align 8
  %29 = getelementptr inbounds %struct.section, %struct.section* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %30)
  br label %37

32:                                               ; preds = %2
  %33 = load %struct.section*, %struct.section** %5, align 8
  %34 = getelementptr inbounds %struct.section, %struct.section* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  br label %37

37:                                               ; preds = %32, %27
  %38 = call i32 (...) @elf_errno()
  %39 = load %struct.section*, %struct.section** %5, align 8
  %40 = getelementptr inbounds %struct.section, %struct.section* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.TYPE_10__* @elf_getdata(i32 %41, i32* null)
  store %struct.TYPE_10__* %42, %struct.TYPE_10__** %9, align 8
  %43 = icmp eq %struct.TYPE_10__* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %37
  %45 = call i32 (...) @elf_errno()
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @elf_errmsg(i32 %49)
  %51 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %48, %44
  br label %230

53:                                               ; preds = %37
  store i8** null, i8*** %7, align 8
  store i32 0, i32* %14, align 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.section*, %struct.section** %5, align 8
  %58 = getelementptr inbounds %struct.section, %struct.section* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %56, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load %struct.section*, %struct.section** %5, align 8
  %64 = call i32 @get_ent_count(%struct.section* %63, i32* %11)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %53
  br label %230

67:                                               ; preds = %53
  %68 = load %struct.elfdump*, %struct.elfdump** %3, align 8
  %69 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @SOLARIS_FMT, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %98

74:                                               ; preds = %67
  %75 = load %struct.elfdump*, %struct.elfdump** %3, align 8
  %76 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @ELFCLASS32, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %84

82:                                               ; preds = %74
  %83 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %80
  %85 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  %86 = load %struct.elfdump*, %struct.elfdump** %3, align 8
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @get_versym(%struct.elfdump* %86, i32 %87, i8*** %7, i32* %14)
  %89 = load i8**, i8*** %7, align 8
  %90 = icmp ne i8** %89, null
  br i1 %90, label %91, label %97

91:                                               ; preds = %84
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  store i8** null, i8*** %7, align 8
  br label %97

97:                                               ; preds = %95, %91, %84
  br label %98

98:                                               ; preds = %97, %67
  store i32 0, i32* %12, align 4
  br label %99

99:                                               ; preds = %227, %98
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %230

103:                                              ; preds = %99
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %105 = load i32, i32* %12, align 4
  %106 = call %struct.TYPE_9__* @gelf_getsym(%struct.TYPE_10__* %104, i32 %105, %struct.TYPE_9__* %10)
  %107 = icmp ne %struct.TYPE_9__* %106, %10
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = call i32 @elf_errmsg(i32 -1)
  %110 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %109)
  br label %227

111:                                              ; preds = %103
  %112 = load %struct.elfdump*, %struct.elfdump** %3, align 8
  %113 = load %struct.section*, %struct.section** %5, align 8
  %114 = getelementptr inbounds %struct.section, %struct.section* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 5
  %117 = load i32, i32* %116, align 8
  %118 = call i8* @get_string(%struct.elfdump* %112, i32 %115, i32 %117)
  store i8* %118, i8** %6, align 8
  %119 = load %struct.elfdump*, %struct.elfdump** %3, align 8
  %120 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @SOLARIS_FMT, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %196

125:                                              ; preds = %111
  %126 = getelementptr inbounds [13 x i8], [13 x i8]* %8, i64 0, i64 0
  %127 = load i32, i32* %12, align 4
  %128 = call i32 @snprintf(i8* %126, i32 13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %127)
  %129 = load %struct.elfdump*, %struct.elfdump** %3, align 8
  %130 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @ELFCLASS32, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %125
  %135 = getelementptr inbounds [13 x i8], [13 x i8]* %8, i64 0, i64 0
  %136 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* %135)
  br label %140

137:                                              ; preds = %125
  %138 = getelementptr inbounds [13 x i8], [13 x i8]* %8, i64 0, i64 0
  %139 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* %138)
  br label %140

140:                                              ; preds = %137, %134
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 4
  %142 = load i64, i64* %141, align 8
  %143 = inttoptr i64 %142 to i8*
  %144 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* %143)
  %145 = load %struct.elfdump*, %struct.elfdump** %3, align 8
  %146 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @ELFCLASS32, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %155

150:                                              ; preds = %140
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = inttoptr i64 %152 to i8*
  %154 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8* %153)
  br label %160

155:                                              ; preds = %140
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 3
  %157 = load i64, i64* %156, align 8
  %158 = inttoptr i64 %157 to i8*
  %159 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8* %158)
  br label %160

160:                                              ; preds = %155, %150
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @GELF_ST_TYPE(i32 %162)
  %164 = call i8* @st_type_S(i32 %163)
  %165 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8* %164)
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @GELF_ST_BIND(i32 %167)
  %169 = call i8* @st_bindings_S(i32 %168)
  %170 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8* %169)
  %171 = load i8**, i8*** @st_others, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = getelementptr inbounds i8*, i8** %171, i64 %173
  %175 = load i8*, i8** %174, align 8
  %176 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* %175)
  %177 = load i8**, i8*** %7, align 8
  %178 = icmp eq i8** %177, null
  br i1 %178, label %179, label %180

179:                                              ; preds = %160
  br label %186

180:                                              ; preds = %160
  %181 = load i8**, i8*** %7, align 8
  %182 = load i32, i32* %12, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8*, i8** %181, i64 %183
  %185 = load i8*, i8** %184, align 8
  br label %186

186:                                              ; preds = %180, %179
  %187 = phi i8* [ null, %179 ], [ %185, %180 ]
  %188 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8* %187)
  %189 = load %struct.elfdump*, %struct.elfdump** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = call i8* @sh_name(%struct.elfdump* %189, i64 %191)
  %193 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i8* %192)
  %194 = load i8*, i8** %6, align 8
  %195 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i8* %194)
  br label %226

196:                                              ; preds = %111
  %197 = load i32, i32* %12, align 4
  %198 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i32 %197)
  %199 = load i8*, i8** %6, align 8
  %200 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i8* %199)
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 4
  %202 = load i64, i64* %201, align 8
  %203 = inttoptr i64 %202 to i8*
  %204 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0), i8* %203)
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 3
  %206 = load i64, i64* %205, align 8
  %207 = inttoptr i64 %206 to i8*
  %208 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0), i8* %207)
  %209 = load %struct.elfdump*, %struct.elfdump** %3, align 8
  %210 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @GELF_ST_TYPE(i32 %214)
  %216 = call i32 @st_type(i32 %212, i32 %215)
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @GELF_ST_BIND(i32 %218)
  %220 = call i32 @st_bindings(i32 %219)
  %221 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 %216, i32 %220)
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = inttoptr i64 %223 to i8*
  %225 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0), i8* %224)
  br label %226

226:                                              ; preds = %196, %186
  br label %227

227:                                              ; preds = %226, %108
  %228 = load i32, i32* %12, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %12, align 4
  br label %99

230:                                              ; preds = %52, %66, %99
  ret void
}

declare dso_local i32 @PRT(i8*, ...) #1

declare dso_local i32 @elf_errno(...) #1

declare dso_local %struct.TYPE_10__* @elf_getdata(i32, i32*) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @get_ent_count(%struct.section*, i32*) #1

declare dso_local i32 @get_versym(%struct.elfdump*, i32, i8***, i32*) #1

declare dso_local %struct.TYPE_9__* @gelf_getsym(%struct.TYPE_10__*, i32, %struct.TYPE_9__*) #1

declare dso_local i8* @get_string(%struct.elfdump*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i8* @st_type_S(i32) #1

declare dso_local i32 @GELF_ST_TYPE(i32) #1

declare dso_local i8* @st_bindings_S(i32) #1

declare dso_local i32 @GELF_ST_BIND(i32) #1

declare dso_local i8* @sh_name(%struct.elfdump*, i64) #1

declare dso_local i32 @st_type(i32, i32) #1

declare dso_local i32 @st_bindings(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
