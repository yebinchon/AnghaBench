; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_sugar.c_dt_sugar_visit_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_sugar.c_dt_sugar_visit_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_8__*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, i32, %struct.TYPE_10__*, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }

@DT_TOK_LBRAC = common dso_local global i32 0, align 4
@D_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"bad node %p, kind %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_10__*)* @dt_sugar_visit_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_sugar_visit_all(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %250 [
    i32 145, label %11
    i32 140, label %11
    i32 131, label %11
    i32 130, label %11
    i32 129, label %11
    i32 134, label %11
    i32 135, label %11
    i32 143, label %11
    i32 144, label %12
    i32 138, label %27
    i32 137, label %32
    i32 136, label %65
    i32 147, label %78
    i32 146, label %78
    i32 149, label %83
    i32 148, label %108
    i32 141, label %147
    i32 139, label %157
    i32 128, label %168
    i32 132, label %183
    i32 133, label %198
    i32 142, label %213
  ]

11:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  br label %259

12:                                               ; preds = %2
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 19
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %5, align 8
  br label %16

16:                                               ; preds = %22, %12
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %18 = icmp ne %struct.TYPE_10__* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  call void @dt_sugar_visit_all(%struct.TYPE_9__* %20, %struct.TYPE_10__* %21)
  br label %22

22:                                               ; preds = %19
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  store %struct.TYPE_10__* %25, %struct.TYPE_10__** %5, align 8
  br label %16

26:                                               ; preds = %16
  br label %259

27:                                               ; preds = %2
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 18
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  call void @dt_sugar_visit_all(%struct.TYPE_9__* %28, %struct.TYPE_10__* %31)
  br label %259

32:                                               ; preds = %2
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 16
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  call void @dt_sugar_visit_all(%struct.TYPE_9__* %33, %struct.TYPE_10__* %36)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 15
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  call void @dt_sugar_visit_all(%struct.TYPE_9__* %37, %struct.TYPE_10__* %40)
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 17
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @DT_TOK_LBRAC, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %64

46:                                               ; preds = %32
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 15
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  store %struct.TYPE_10__* %49, %struct.TYPE_10__** %6, align 8
  br label %50

50:                                               ; preds = %55, %46
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = icmp ne %struct.TYPE_10__* %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  call void @dt_sugar_visit_all(%struct.TYPE_9__* %56, %struct.TYPE_10__* %59)
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  store %struct.TYPE_10__* %62, %struct.TYPE_10__** %6, align 8
  br label %50

63:                                               ; preds = %50
  br label %64

64:                                               ; preds = %63, %32
  br label %259

65:                                               ; preds = %2
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 14
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  call void @dt_sugar_visit_all(%struct.TYPE_9__* %66, %struct.TYPE_10__* %69)
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 16
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  call void @dt_sugar_visit_all(%struct.TYPE_9__* %70, %struct.TYPE_10__* %73)
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 15
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  call void @dt_sugar_visit_all(%struct.TYPE_9__* %74, %struct.TYPE_10__* %77)
  br label %259

78:                                               ; preds = %2, %2
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 14
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  call void @dt_sugar_visit_all(%struct.TYPE_9__* %79, %struct.TYPE_10__* %82)
  br label %259

83:                                               ; preds = %2
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 13
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  store %struct.TYPE_10__* %86, %struct.TYPE_10__** %5, align 8
  br label %87

87:                                               ; preds = %93, %83
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %89 = icmp ne %struct.TYPE_10__* %88, null
  br i1 %89, label %90, label %97

90:                                               ; preds = %87
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  call void @dt_sugar_visit_all(%struct.TYPE_9__* %91, %struct.TYPE_10__* %92)
  br label %93

93:                                               ; preds = %90
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %95, align 8
  store %struct.TYPE_10__* %96, %struct.TYPE_10__** %5, align 8
  br label %87

97:                                               ; preds = %87
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 12
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %99, align 8
  %101 = icmp ne %struct.TYPE_10__* %100, null
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 12
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  call void @dt_sugar_visit_all(%struct.TYPE_9__* %103, %struct.TYPE_10__* %106)
  br label %107

107:                                              ; preds = %102, %97
  br label %259

108:                                              ; preds = %2
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 11
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  store %struct.TYPE_10__* %111, %struct.TYPE_10__** %5, align 8
  br label %112

112:                                              ; preds = %118, %108
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %114 = icmp ne %struct.TYPE_10__* %113, null
  br i1 %114, label %115, label %122

115:                                              ; preds = %112
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  call void @dt_sugar_visit_all(%struct.TYPE_9__* %116, %struct.TYPE_10__* %117)
  br label %118

118:                                              ; preds = %115
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %120, align 8
  store %struct.TYPE_10__* %121, %struct.TYPE_10__** %5, align 8
  br label %112

122:                                              ; preds = %112
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 10
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %124, align 8
  %126 = icmp ne %struct.TYPE_10__* %125, null
  br i1 %126, label %127, label %132

127:                                              ; preds = %122
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 10
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %130, align 8
  call void @dt_sugar_visit_all(%struct.TYPE_9__* %128, %struct.TYPE_10__* %131)
  br label %132

132:                                              ; preds = %127, %122
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 9
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %134, align 8
  store %struct.TYPE_10__* %135, %struct.TYPE_10__** %5, align 8
  br label %136

136:                                              ; preds = %142, %132
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %138 = icmp ne %struct.TYPE_10__* %137, null
  br i1 %138, label %139, label %146

139:                                              ; preds = %136
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  call void @dt_sugar_visit_all(%struct.TYPE_9__* %140, %struct.TYPE_10__* %141)
  br label %142

142:                                              ; preds = %139
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %144, align 8
  store %struct.TYPE_10__* %145, %struct.TYPE_10__** %5, align 8
  br label %136

146:                                              ; preds = %136
  br label %259

147:                                              ; preds = %2
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 8
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %151, align 8
  store %struct.TYPE_11__* %152, %struct.TYPE_11__** %7, align 8
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %155, align 8
  call void @dt_sugar_visit_all(%struct.TYPE_9__* %153, %struct.TYPE_10__* %156)
  br label %259

157:                                              ; preds = %2
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 7
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %159, align 8
  %161 = icmp ne %struct.TYPE_10__* %160, null
  br i1 %161, label %162, label %167

162:                                              ; preds = %157
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 7
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %165, align 8
  call void @dt_sugar_visit_all(%struct.TYPE_9__* %163, %struct.TYPE_10__* %166)
  br label %167

167:                                              ; preds = %162, %157
  br label %259

168:                                              ; preds = %2
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 6
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %170, align 8
  store %struct.TYPE_10__* %171, %struct.TYPE_10__** %5, align 8
  br label %172

172:                                              ; preds = %178, %168
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %174 = icmp ne %struct.TYPE_10__* %173, null
  br i1 %174, label %175, label %182

175:                                              ; preds = %172
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  call void @dt_sugar_visit_all(%struct.TYPE_9__* %176, %struct.TYPE_10__* %177)
  br label %178

178:                                              ; preds = %175
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %180, align 8
  store %struct.TYPE_10__* %181, %struct.TYPE_10__** %5, align 8
  br label %172

182:                                              ; preds = %172
  br label %259

183:                                              ; preds = %2
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 5
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %185, align 8
  store %struct.TYPE_10__* %186, %struct.TYPE_10__** %5, align 8
  br label %187

187:                                              ; preds = %193, %183
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %189 = icmp ne %struct.TYPE_10__* %188, null
  br i1 %189, label %190, label %197

190:                                              ; preds = %187
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  call void @dt_sugar_visit_all(%struct.TYPE_9__* %191, %struct.TYPE_10__* %192)
  br label %193

193:                                              ; preds = %190
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 1
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %195, align 8
  store %struct.TYPE_10__* %196, %struct.TYPE_10__** %5, align 8
  br label %187

197:                                              ; preds = %187
  br label %259

198:                                              ; preds = %2
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 1
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %200, align 8
  store %struct.TYPE_10__* %201, %struct.TYPE_10__** %5, align 8
  br label %202

202:                                              ; preds = %208, %198
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %204 = icmp ne %struct.TYPE_10__* %203, null
  br i1 %204, label %205, label %212

205:                                              ; preds = %202
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  call void @dt_sugar_visit_all(%struct.TYPE_9__* %206, %struct.TYPE_10__* %207)
  br label %208

208:                                              ; preds = %205
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 1
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %210, align 8
  store %struct.TYPE_10__* %211, %struct.TYPE_10__** %5, align 8
  br label %202

212:                                              ; preds = %202
  br label %259

213:                                              ; preds = %2
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %215, align 4
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 4
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %220, align 8
  call void @dt_sugar_visit_all(%struct.TYPE_9__* %218, %struct.TYPE_10__* %221)
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 3
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %223, align 8
  store %struct.TYPE_10__* %224, %struct.TYPE_10__** %5, align 8
  br label %225

225:                                              ; preds = %231, %213
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %227 = icmp ne %struct.TYPE_10__* %226, null
  br i1 %227, label %228, label %235

228:                                              ; preds = %225
  %229 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  call void @dt_sugar_visit_all(%struct.TYPE_9__* %229, %struct.TYPE_10__* %230)
  br label %231

231:                                              ; preds = %228
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 1
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %233, align 8
  store %struct.TYPE_10__* %234, %struct.TYPE_10__** %5, align 8
  br label %225

235:                                              ; preds = %225
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 2
  %238 = load %struct.TYPE_10__*, %struct.TYPE_10__** %237, align 8
  store %struct.TYPE_10__* %238, %struct.TYPE_10__** %5, align 8
  br label %239

239:                                              ; preds = %245, %235
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %241 = icmp ne %struct.TYPE_10__* %240, null
  br i1 %241, label %242, label %249

242:                                              ; preds = %239
  %243 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  call void @dt_sugar_visit_all(%struct.TYPE_9__* %243, %struct.TYPE_10__* %244)
  br label %245

245:                                              ; preds = %242
  %246 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 1
  %248 = load %struct.TYPE_10__*, %struct.TYPE_10__** %247, align 8
  store %struct.TYPE_10__* %248, %struct.TYPE_10__** %5, align 8
  br label %239

249:                                              ; preds = %239
  br label %259

250:                                              ; preds = %2
  %251 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %252 = load i32, i32* @D_UNKNOWN, align 4
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %254 = bitcast %struct.TYPE_10__* %253 to i8*
  %255 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = call i32 @dnerror(%struct.TYPE_10__* %251, i32 %252, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %254, i32 %257)
  br label %259

259:                                              ; preds = %250, %249, %212, %197, %182, %167, %147, %146, %107, %78, %65, %64, %27, %26, %11
  ret void
}

declare dso_local i32 @dnerror(%struct.TYPE_10__*, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
