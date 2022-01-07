; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfdump/extr_elfdump.c_elf_print_dynamic.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfdump/extr_elfdump.c_elf_print_dynamic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfdump = type { i64, i32, i32, i32, %struct.section* }
%struct.section = type { i64, i64, i32, i32, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@SHT_DYNAMIC = common dso_local global i64 0, align 8
@SOLARIS_FMT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Dynamic Section:  %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"     index  tag               value\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"\0Adynamic:\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"elf_getdata failed: %s\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"gelf_getdyn failed: %s\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"[%d]\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"%10s  %-16s \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"entry: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"\09d_tag: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"%#-16jx %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"\09d_val: %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"%#jx\0A\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"\09d_val: %ju\0A\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"\09d_ptr: %#jx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elfdump*)* @elf_print_dynamic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elf_print_dynamic(%struct.elfdump* %0) #0 {
  %2 = alloca %struct.elfdump*, align 8
  %3 = alloca %struct.section*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [13 x i8], align 1
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_9__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.elfdump* %0, %struct.elfdump** %2, align 8
  store %struct.section* null, %struct.section** %3, align 8
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %44, %1
  %12 = load i32, i32* %9, align 4
  %13 = sext i32 %12 to i64
  %14 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %15 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %13, %16
  br i1 %17, label %18, label %47

18:                                               ; preds = %11
  %19 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %20 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %19, i32 0, i32 4
  %21 = load %struct.section*, %struct.section** %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.section, %struct.section* %21, i64 %23
  store %struct.section* %24, %struct.section** %3, align 8
  %25 = load %struct.section*, %struct.section** %3, align 8
  %26 = getelementptr inbounds %struct.section, %struct.section* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SHT_DYNAMIC, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %18
  %31 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %32 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %31, i32 0, i32 3
  %33 = call i64 @STAILQ_EMPTY(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %30
  %36 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %37 = load %struct.section*, %struct.section** %3, align 8
  %38 = getelementptr inbounds %struct.section, %struct.section* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @find_name(%struct.elfdump* %36, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35, %30
  br label %47

43:                                               ; preds = %35, %18
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %11

47:                                               ; preds = %42, %11
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %51 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp uge i64 %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %221

55:                                               ; preds = %47
  %56 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %57 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @SOLARIS_FMT, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %55
  %63 = load %struct.section*, %struct.section** %3, align 8
  %64 = getelementptr inbounds %struct.section, %struct.section* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %70

68:                                               ; preds = %55
  %69 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %62
  %71 = call i32 (...) @elf_errno()
  %72 = load %struct.section*, %struct.section** %3, align 8
  %73 = getelementptr inbounds %struct.section, %struct.section* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = call %struct.TYPE_10__* @elf_getdata(i32 %74, i32* null)
  store %struct.TYPE_10__* %75, %struct.TYPE_10__** %6, align 8
  %76 = icmp eq %struct.TYPE_10__* %75, null
  br i1 %76, label %77, label %86

77:                                               ; preds = %70
  %78 = call i32 (...) @elf_errno()
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @elf_errmsg(i32 %82)
  %84 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %81, %77
  br label %221

86:                                               ; preds = %70
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.section*, %struct.section** %3, align 8
  %91 = getelementptr inbounds %struct.section, %struct.section* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %89, %92
  %94 = zext i1 %93 to i32
  %95 = call i32 @assert(i32 %94)
  %96 = load %struct.section*, %struct.section** %3, align 8
  %97 = call i32 @get_ent_count(%struct.section* %96, i32* %10)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %86
  br label %221

100:                                              ; preds = %86
  store i32 0, i32* %9, align 4
  br label %101

101:                                              ; preds = %218, %100
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %221

105:                                              ; preds = %101
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %107 = load i32, i32* %9, align 4
  %108 = call %struct.TYPE_9__* @gelf_getdyn(%struct.TYPE_10__* %106, i32 %107, %struct.TYPE_9__* %7)
  %109 = icmp ne %struct.TYPE_9__* %108, %7
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = call i32 @elf_errmsg(i32 -1)
  %112 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %111)
  br label %218

113:                                              ; preds = %105
  %114 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %115 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @SOLARIS_FMT, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %113
  %121 = getelementptr inbounds [13 x i8], [13 x i8]* %5, i64 0, i64 0
  %122 = load i32, i32* %9, align 4
  %123 = call i32 @snprintf(i8* %121, i32 13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %122)
  %124 = getelementptr inbounds [13 x i8], [13 x i8]* %5, i64 0, i64 0
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @d_tags(i32 %126)
  %128 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* %124, i32 %127)
  br label %137

129:                                              ; preds = %113
  %130 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %131 = load i32, i32* %9, align 4
  %132 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %131)
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @d_tags(i32 %134)
  %136 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 %135)
  br label %137

137:                                              ; preds = %129, %120
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  switch i32 %139, label %207 [
    i32 153, label %140
    i32 139, label %140
    i32 141, label %140
    i32 140, label %140
    i32 149, label %170
    i32 147, label %170
    i32 144, label %170
    i32 145, label %170
    i32 146, label %170
    i32 138, label %170
    i32 135, label %170
    i32 142, label %170
    i32 143, label %170
    i32 150, label %170
    i32 132, label %170
    i32 131, label %170
    i32 130, label %170
    i32 129, label %170
    i32 128, label %170
    i32 151, label %188
    i32 156, label %188
    i32 157, label %188
    i32 137, label %188
    i32 134, label %188
    i32 155, label %188
    i32 158, label %188
    i32 148, label %188
    i32 154, label %188
    i32 159, label %188
    i32 152, label %206
    i32 136, label %206
    i32 133, label %206
  ]

140:                                              ; preds = %137, %137, %137, %137
  %141 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %142 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.section*, %struct.section** %3, align 8
  %145 = getelementptr inbounds %struct.section, %struct.section* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i8* @elf_strptr(i32 %143, i32 %146, i32 %149)
  store i8* %150, i8** %4, align 8
  %151 = icmp eq i8* %150, null
  br i1 %151, label %152, label %153

152:                                              ; preds = %140
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), i8** %4, align 8
  br label %153

153:                                              ; preds = %152, %140
  %154 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %155 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @SOLARIS_FMT, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %153
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load i8*, i8** %4, align 8
  %165 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 %163, i8* %164)
  br label %169

166:                                              ; preds = %153
  %167 = load i8*, i8** %4, align 8
  %168 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i8* %167)
  br label %169

169:                                              ; preds = %166, %160
  br label %217

170:                                              ; preds = %137, %137, %137, %137, %137, %137, %137, %137, %137, %137, %137, %137, %137, %137, %137
  %171 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %172 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @SOLARIS_FMT, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %170
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32 %180)
  br label %187

182:                                              ; preds = %170
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i32 %185)
  br label %187

187:                                              ; preds = %182, %177
  br label %217

188:                                              ; preds = %137, %137, %137, %137, %137, %137, %137, %137, %137, %137
  %189 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %190 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @SOLARIS_FMT, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %188
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32 %198)
  br label %205

200:                                              ; preds = %188
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i32 %203)
  br label %205

205:                                              ; preds = %200, %195
  br label %217

206:                                              ; preds = %137, %137, %137
  br label %207

207:                                              ; preds = %137, %206
  %208 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %209 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @SOLARIS_FMT, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %207
  %215 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %216

216:                                              ; preds = %214, %207
  br label %217

217:                                              ; preds = %216, %205, %187, %169
  br label %218

218:                                              ; preds = %217, %110
  %219 = load i32, i32* %9, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %9, align 4
  br label %101

221:                                              ; preds = %54, %85, %99, %101
  ret void
}

declare dso_local i64 @STAILQ_EMPTY(i32*) #1

declare dso_local i64 @find_name(%struct.elfdump*, i32) #1

declare dso_local i32 @PRT(i8*, ...) #1

declare dso_local i32 @elf_errno(...) #1

declare dso_local %struct.TYPE_10__* @elf_getdata(i32, i32*) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @get_ent_count(%struct.section*, i32*) #1

declare dso_local %struct.TYPE_9__* @gelf_getdyn(%struct.TYPE_10__*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @d_tags(i32) #1

declare dso_local i8* @elf_strptr(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
