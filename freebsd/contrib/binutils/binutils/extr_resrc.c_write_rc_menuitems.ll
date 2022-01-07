; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resrc.c_write_rc_menuitems.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resrc.c_write_rc_menuitems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64, i64, %struct.TYPE_3__*, i32*, %struct.TYPE_3__* }

@.str = private unnamed_addr constant [7 x i8] c"BEGIN\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"MENUITEM\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"POPUP\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c" SEPARATOR\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" \22\22\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c", %d\00", align 1
@MENUITEM_CHECKED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c", CHECKED\00", align 1
@MENUITEM_GRAYED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c", GRAYED\00", align 1
@MENUITEM_HELP = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c", HELP\00", align 1
@MENUITEM_INACTIVE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c", INACTIVE\00", align 1
@MENUITEM_MENUBARBREAK = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [15 x i8] c", MENUBARBREAK\00", align 1
@MENUITEM_MENUBREAK = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [12 x i8] c", MENUBREAK\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c", %u\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"END\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*, i32, i32)* @write_rc_menuitems to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_rc_menuitems(i32* %0, %struct.TYPE_3__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* %8, align 4
  %12 = call i32 @indent(i32* %10, i32 %11)
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 (i32*, i8*, ...) @fprintf(i32* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %9, align 8
  br label %16

16:                                               ; preds = %246, %4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %18 = icmp ne %struct.TYPE_3__* %17, null
  br i1 %18, label %19, label %250

19:                                               ; preds = %16
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %8, align 4
  %22 = add nsw i32 %21, 2
  %23 = call i32 @indent(i32* %20, i32 %22)
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = icmp eq %struct.TYPE_3__* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 (i32*, i8*, ...) @fprintf(i32* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %34

31:                                               ; preds = %19
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 (i32*, i8*, ...) @fprintf(i32* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %60, label %37

37:                                               ; preds = %34
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = icmp eq %struct.TYPE_3__* %40, null
  br i1 %41, label %42, label %60

42:                                               ; preds = %37
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 5
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %60

47:                                               ; preds = %42
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 (i32*, i8*, ...) @fprintf(i32* %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %246

60:                                               ; preds = %52, %47, %42, %37, %34
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 5
  %63 = load i32*, i32** %62, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 (i32*, i8*, ...) @fprintf(i32* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %76

68:                                               ; preds = %60
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 (i32*, i8*, ...) @fprintf(i32* %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %71 = load i32*, i32** %5, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 5
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @unicode_print_quoted(i32* %71, i32* %74, i32 -1)
  br label %76

76:                                               ; preds = %68, %65
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %152, label %79

79:                                               ; preds = %76
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 4
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = icmp eq %struct.TYPE_3__* %82, null
  br i1 %83, label %84, label %91

84:                                               ; preds = %79
  %85 = load i32*, i32** %5, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = trunc i64 %88 to i32
  %90 = call i32 (i32*, i8*, ...) @fprintf(i32* %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %84, %79
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @MENUITEM_CHECKED, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %91
  %99 = load i32*, i32** %5, align 8
  %100 = call i32 (i32*, i8*, ...) @fprintf(i32* %99, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  br label %101

101:                                              ; preds = %98, %91
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @MENUITEM_GRAYED, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %101
  %109 = load i32*, i32** %5, align 8
  %110 = call i32 (i32*, i8*, ...) @fprintf(i32* %109, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  br label %111

111:                                              ; preds = %108, %101
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @MENUITEM_HELP, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %111
  %119 = load i32*, i32** %5, align 8
  %120 = call i32 (i32*, i8*, ...) @fprintf(i32* %119, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  br label %121

121:                                              ; preds = %118, %111
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @MENUITEM_INACTIVE, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %121
  %129 = load i32*, i32** %5, align 8
  %130 = call i32 (i32*, i8*, ...) @fprintf(i32* %129, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  br label %131

131:                                              ; preds = %128, %121
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @MENUITEM_MENUBARBREAK, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %131
  %139 = load i32*, i32** %5, align 8
  %140 = call i32 (i32*, i8*, ...) @fprintf(i32* %139, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  br label %141

141:                                              ; preds = %138, %131
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @MENUITEM_MENUBREAK, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %141
  %149 = load i32*, i32** %5, align 8
  %150 = call i32 (i32*, i8*, ...) @fprintf(i32* %149, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  br label %151

151:                                              ; preds = %148, %141
  br label %230

152:                                              ; preds = %76
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %172, label %157

157:                                              ; preds = %152
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %172, label %162

162:                                              ; preds = %157
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %172, label %167

167:                                              ; preds = %162
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %229

172:                                              ; preds = %167, %162, %157, %152
  %173 = load i32*, i32** %5, align 8
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = trunc i64 %176 to i32
  %178 = call i32 (i32*, i8*, ...) @fprintf(i32* %173, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %177)
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %193, label %183

183:                                              ; preds = %172
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %193, label %188

188:                                              ; preds = %183
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 3
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %228

193:                                              ; preds = %188, %183, %172
  %194 = load i32*, i32** %5, align 8
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i32 (i32*, i8*, ...) @fprintf(i32* %194, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32 %197)
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %208, label %203

203:                                              ; preds = %193
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 3
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %227

208:                                              ; preds = %203, %193
  %209 = load i32*, i32** %5, align 8
  %210 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 2
  %212 = load i64, i64* %211, align 8
  %213 = trunc i64 %212 to i32
  %214 = call i32 (i32*, i8*, ...) @fprintf(i32* %209, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32 %213)
  %215 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i32 0, i32 3
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %226

219:                                              ; preds = %208
  %220 = load i32*, i32** %5, align 8
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 3
  %223 = load i64, i64* %222, align 8
  %224 = trunc i64 %223 to i32
  %225 = call i32 (i32*, i8*, ...) @fprintf(i32* %220, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32 %224)
  br label %226

226:                                              ; preds = %219, %208
  br label %227

227:                                              ; preds = %226, %203
  br label %228

228:                                              ; preds = %227, %188
  br label %229

229:                                              ; preds = %228, %167
  br label %230

230:                                              ; preds = %229, %151
  %231 = load i32*, i32** %5, align 8
  %232 = call i32 (i32*, i8*, ...) @fprintf(i32* %231, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %233 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 4
  %235 = load %struct.TYPE_3__*, %struct.TYPE_3__** %234, align 8
  %236 = icmp ne %struct.TYPE_3__* %235, null
  br i1 %236, label %237, label %245

237:                                              ; preds = %230
  %238 = load i32*, i32** %5, align 8
  %239 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i32 0, i32 4
  %241 = load %struct.TYPE_3__*, %struct.TYPE_3__** %240, align 8
  %242 = load i32, i32* %7, align 4
  %243 = load i32, i32* %8, align 4
  %244 = add nsw i32 %243, 2
  call void @write_rc_menuitems(i32* %238, %struct.TYPE_3__* %241, i32 %242, i32 %244)
  br label %245

245:                                              ; preds = %237, %230
  br label %246

246:                                              ; preds = %245, %57
  %247 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %248 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %247, i32 0, i32 6
  %249 = load %struct.TYPE_3__*, %struct.TYPE_3__** %248, align 8
  store %struct.TYPE_3__* %249, %struct.TYPE_3__** %9, align 8
  br label %16

250:                                              ; preds = %16
  %251 = load i32*, i32** %5, align 8
  %252 = load i32, i32* %8, align 4
  %253 = call i32 @indent(i32* %251, i32 %252)
  %254 = load i32*, i32** %5, align 8
  %255 = call i32 (i32*, i8*, ...) @fprintf(i32* %254, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  ret void
}

declare dso_local i32 @indent(i32*, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @unicode_print_quoted(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
