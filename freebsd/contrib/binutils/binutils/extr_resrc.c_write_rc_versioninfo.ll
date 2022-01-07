; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resrc.c_write_rc_versioninfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resrc.c_write_rc_versioninfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_16__*, %struct.TYPE_17__* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_12__, %struct.TYPE_16__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i64, i64, %struct.TYPE_14__* }
%struct.TYPE_10__ = type { %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_15__* }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [29 x i8] c" FILEVERSION %u, %u, %u, %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c" PRODUCTVERSION %u, %u, %u, %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c" FILEFLAGSMASK 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c" FILEFLAGS 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c" FILEOS 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c" FILETYPE 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c" FILESUBTYPE 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"/* Date: %u, %u.  */\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"BEGIN\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"  BLOCK \22StringFileInfo\22\0A\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"  BEGIN\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"    BLOCK \00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"    BEGIN\0A\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"      VALUE \00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"    END\0A\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"  END\0A\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"  BLOCK \22VarFileInfo\22\0A\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"    VALUE \00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c", 0x%x, %d\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"\0A  END\0A\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"END\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_13__*)* @write_rc_versioninfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_rc_versioninfo(i32* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  store %struct.TYPE_17__* %11, %struct.TYPE_17__** %5, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %16, %2
  %22 = load i32*, i32** %3, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = ashr i32 %25, 16
  %27 = and i32 %26, 65535
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, 65535
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = ashr i32 %34, 16
  %36 = and i32 %35, 65535
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 65535
  %41 = call i32 (i32*, i8*, ...) @fprintf(i32* %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %31, i32 %36, i32 %40)
  br label %42

42:                                               ; preds = %21, %16
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %73

52:                                               ; preds = %47, %42
  %53 = load i32*, i32** %3, align 8
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = ashr i32 %56, 16
  %58 = and i32 %57, 65535
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %61, 65535
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = ashr i32 %65, 16
  %67 = and i32 %66, 65535
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 65535
  %72 = call i32 (i32*, i8*, ...) @fprintf(i32* %53, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %62, i32 %67, i32 %71)
  br label %73

73:                                               ; preds = %52, %47
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %73
  %79 = load i32*, i32** %3, align 8
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = call i32 (i32*, i8*, ...) @fprintf(i32* %79, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %78, %73
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 5
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %85
  %91 = load i32*, i32** %3, align 8
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 5
  %94 = load i64, i64* %93, align 8
  %95 = trunc i64 %94 to i32
  %96 = call i32 (i32*, i8*, ...) @fprintf(i32* %91, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %90, %85
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 6
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %97
  %103 = load i32*, i32** %3, align 8
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 6
  %106 = load i64, i64* %105, align 8
  %107 = trunc i64 %106 to i32
  %108 = call i32 (i32*, i8*, ...) @fprintf(i32* %103, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %102, %97
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 7
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %109
  %115 = load i32*, i32** %3, align 8
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 7
  %118 = load i64, i64* %117, align 8
  %119 = trunc i64 %118 to i32
  %120 = call i32 (i32*, i8*, ...) @fprintf(i32* %115, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %114, %109
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 8
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %121
  %127 = load i32*, i32** %3, align 8
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 8
  %130 = load i64, i64* %129, align 8
  %131 = trunc i64 %130 to i32
  %132 = call i32 (i32*, i8*, ...) @fprintf(i32* %127, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %131)
  br label %133

133:                                              ; preds = %126, %121
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 9
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %133
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 10
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %154

143:                                              ; preds = %138, %133
  %144 = load i32*, i32** %3, align 8
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 9
  %147 = load i64, i64* %146, align 8
  %148 = trunc i64 %147 to i32
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 10
  %151 = load i64, i64* %150, align 8
  %152 = trunc i64 %151 to i32
  %153 = call i32 (i32*, i8*, ...) @fprintf(i32* %144, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %148, i32 %152)
  br label %154

154:                                              ; preds = %143, %138
  %155 = load i32*, i32** %3, align 8
  %156 = call i32 (i32*, i8*, ...) @fprintf(i32* %155, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %158, align 8
  store %struct.TYPE_16__* %159, %struct.TYPE_16__** %6, align 8
  br label %160

160:                                              ; preds = %260, %154
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %162 = icmp ne %struct.TYPE_16__* %161, null
  br i1 %162, label %163, label %264

163:                                              ; preds = %160
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  switch i32 %166, label %259 [
    i32 129, label %167
    i32 128, label %219
  ]

167:                                              ; preds = %163
  %168 = load i32*, i32** %3, align 8
  %169 = call i32 (i32*, i8*, ...) @fprintf(i32* %168, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  %170 = load i32*, i32** %3, align 8
  %171 = call i32 (i32*, i8*, ...) @fprintf(i32* %170, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %172 = load i32*, i32** %3, align 8
  %173 = call i32 (i32*, i8*, ...) @fprintf(i32* %172, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  %174 = load i32*, i32** %3, align 8
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @unicode_print_quoted(i32* %174, i32 %179, i32 -1)
  %181 = load i32*, i32** %3, align 8
  %182 = call i32 (i32*, i8*, ...) @fprintf(i32* %181, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %183 = load i32*, i32** %3, align 8
  %184 = call i32 (i32*, i8*, ...) @fprintf(i32* %183, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %188, align 8
  store %struct.TYPE_15__* %189, %struct.TYPE_15__** %7, align 8
  br label %190

190:                                              ; preds = %210, %167
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %192 = icmp ne %struct.TYPE_15__* %191, null
  br i1 %192, label %193, label %214

193:                                              ; preds = %190
  %194 = load i32*, i32** %3, align 8
  %195 = call i32 (i32*, i8*, ...) @fprintf(i32* %194, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  %196 = load i32*, i32** %3, align 8
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @unicode_print_quoted(i32* %196, i32 %199, i32 -1)
  %201 = load i32*, i32** %3, align 8
  %202 = call i32 (i32*, i8*, ...) @fprintf(i32* %201, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  %203 = load i32*, i32** %3, align 8
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @unicode_print_quoted(i32* %203, i32 %206, i32 -1)
  %208 = load i32*, i32** %3, align 8
  %209 = call i32 (i32*, i8*, ...) @fprintf(i32* %208, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %210

210:                                              ; preds = %193
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 2
  %213 = load %struct.TYPE_15__*, %struct.TYPE_15__** %212, align 8
  store %struct.TYPE_15__* %213, %struct.TYPE_15__** %7, align 8
  br label %190

214:                                              ; preds = %190
  %215 = load i32*, i32** %3, align 8
  %216 = call i32 (i32*, i8*, ...) @fprintf(i32* %215, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  %217 = load i32*, i32** %3, align 8
  %218 = call i32 (i32*, i8*, ...) @fprintf(i32* %217, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  br label %259

219:                                              ; preds = %163
  %220 = load i32*, i32** %3, align 8
  %221 = call i32 (i32*, i8*, ...) @fprintf(i32* %220, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0))
  %222 = load i32*, i32** %3, align 8
  %223 = call i32 (i32*, i8*, ...) @fprintf(i32* %222, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %224 = load i32*, i32** %3, align 8
  %225 = call i32 (i32*, i8*, ...) @fprintf(i32* %224, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  %226 = load i32*, i32** %3, align 8
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @unicode_print_quoted(i32* %226, i32 %231, i32 -1)
  %233 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 0
  %237 = load %struct.TYPE_14__*, %struct.TYPE_14__** %236, align 8
  store %struct.TYPE_14__* %237, %struct.TYPE_14__** %8, align 8
  br label %238

238:                                              ; preds = %252, %219
  %239 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %240 = icmp ne %struct.TYPE_14__* %239, null
  br i1 %240, label %241, label %256

241:                                              ; preds = %238
  %242 = load i32*, i32** %3, align 8
  %243 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %244 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = trunc i64 %245 to i32
  %247 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %248 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = trunc i64 %249 to i32
  %251 = call i32 (i32*, i8*, ...) @fprintf(i32* %242, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i32 %246, i32 %250)
  br label %252

252:                                              ; preds = %241
  %253 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %254 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %253, i32 0, i32 2
  %255 = load %struct.TYPE_14__*, %struct.TYPE_14__** %254, align 8
  store %struct.TYPE_14__* %255, %struct.TYPE_14__** %8, align 8
  br label %238

256:                                              ; preds = %238
  %257 = load i32*, i32** %3, align 8
  %258 = call i32 (i32*, i8*, ...) @fprintf(i32* %257, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0))
  br label %259

259:                                              ; preds = %163, %256, %214
  br label %260

260:                                              ; preds = %259
  %261 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %261, i32 0, i32 2
  %263 = load %struct.TYPE_16__*, %struct.TYPE_16__** %262, align 8
  store %struct.TYPE_16__* %263, %struct.TYPE_16__** %6, align 8
  br label %160

264:                                              ; preds = %160
  %265 = load i32*, i32** %3, align 8
  %266 = call i32 (i32*, i8*, ...) @fprintf(i32* %265, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @unicode_print_quoted(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
