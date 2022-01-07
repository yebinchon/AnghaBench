; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_jobs.c_cmdputs.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_jobs.c_cmdputs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmdnleft = common dso_local global i64 0, align 8
@cmdnextc = common dso_local global i8* null, align 8
@CTLESC = common dso_local global i8 0, align 1
@CTLVAR = common dso_local global i8 0, align 1
@VSTYPE = common dso_local global i32 0, align 4
@VSLENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"}-+?=##%%\00X\00", align 1
@VSNORMAL = common dso_local global i32 0, align 4
@VSTRIMLEFTMAX = common dso_local global i32 0, align 4
@VSTRIMRIGHTMAX = common dso_local global i32 0, align 4
@CTLENDVAR = common dso_local global i8 0, align 1
@CTLBACKQ = common dso_local global i8 0, align 1
@CTLQUOTE = common dso_local global i8 0, align 1
@CTLARI = common dso_local global i8 0, align 1
@CTLENDARI = common dso_local global i8 0, align 1
@CTLQUOTEMARK = common dso_local global i8 0, align 1
@CTLQUOTEEND = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cmdputs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmdputs(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %6, align 4
  %7 = load i64, i64* @cmdnleft, align 8
  %8 = icmp sle i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %234

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8
  store i8* %11, i8** %3, align 8
  %12 = load i8*, i8** @cmdnextc, align 8
  store i8* %12, i8** %4, align 8
  br label %13

13:                                               ; preds = %231, %10
  %14 = load i8*, i8** %3, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %3, align 8
  %16 = load i8, i8* %14, align 1
  store i8 %16, i8* %5, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %232

19:                                               ; preds = %13
  %20 = load i8, i8* %5, align 1
  %21 = sext i8 %20 to i32
  %22 = load i8, i8* @CTLESC, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load i8*, i8** %3, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %3, align 8
  %28 = load i8, i8* %26, align 1
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %4, align 8
  store i8 %28, i8* %29, align 1
  br label %220

31:                                               ; preds = %19
  %32 = load i8, i8* %5, align 1
  %33 = sext i8 %32 to i32
  %34 = load i8, i8* @CTLVAR, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %64

37:                                               ; preds = %31
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %4, align 8
  store i8 36, i8* %38, align 1
  %40 = load i64, i64* @cmdnleft, align 8
  %41 = add nsw i64 %40, -1
  store i64 %41, i64* @cmdnleft, align 8
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i8*, i8** %4, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %4, align 8
  store i8 123, i8* %44, align 1
  br label %46

46:                                               ; preds = %43, %37
  %47 = load i8*, i8** %3, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %3, align 8
  %49 = load i8, i8* %47, align 1
  %50 = sext i8 %49 to i32
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @VSTYPE, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* @VSLENGTH, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %46
  %57 = load i64, i64* @cmdnleft, align 8
  %58 = add nsw i64 %57, -1
  store i64 %58, i64* @cmdnleft, align 8
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i8*, i8** %4, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %4, align 8
  store i8 35, i8* %61, align 1
  br label %63

63:                                               ; preds = %60, %56, %46
  br label %219

64:                                               ; preds = %31
  %65 = load i8, i8* %5, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 61
  br i1 %67, label %68, label %114

68:                                               ; preds = %64
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %114

71:                                               ; preds = %68
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @VSTYPE, align 4
  %74 = and i32 %72, %73
  %75 = load i32, i32* @VSNORMAL, align 4
  %76 = sub nsw i32 %74, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [12 x i8], [12 x i8]* @.str, i64 0, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = load i8*, i8** %4, align 8
  store i8 %79, i8* %80, align 1
  %81 = load i8*, i8** %4, align 8
  %82 = load i8, i8* %81, align 1
  %83 = icmp ne i8 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %71
  %85 = load i8*, i8** %4, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %4, align 8
  br label %90

87:                                               ; preds = %71
  %88 = load i64, i64* @cmdnleft, align 8
  %89 = add nsw i64 %88, 1
  store i64 %89, i64* @cmdnleft, align 8
  br label %90

90:                                               ; preds = %87, %84
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @VSTYPE, align 4
  %93 = and i32 %91, %92
  %94 = load i32, i32* @VSTRIMLEFTMAX, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %102, label %96

96:                                               ; preds = %90
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @VSTYPE, align 4
  %99 = and i32 %97, %98
  %100 = load i32, i32* @VSTRIMRIGHTMAX, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %113

102:                                              ; preds = %96, %90
  %103 = load i64, i64* @cmdnleft, align 8
  %104 = add nsw i64 %103, -1
  store i64 %104, i64* @cmdnleft, align 8
  %105 = icmp sgt i64 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %102
  %107 = load i8*, i8** %4, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 -1
  %109 = load i8, i8* %108, align 1
  %110 = load i8*, i8** %4, align 8
  store i8 %109, i8* %110, align 1
  %111 = load i8*, i8** %4, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %4, align 8
  br label %113

113:                                              ; preds = %106, %102, %96
  store i32 0, i32* %6, align 4
  br label %218

114:                                              ; preds = %68, %64
  %115 = load i8, i8* %5, align 1
  %116 = sext i8 %115 to i32
  %117 = load i8, i8* @CTLENDVAR, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %116, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %114
  %121 = load i8*, i8** %4, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %4, align 8
  store i8 125, i8* %121, align 1
  br label %217

123:                                              ; preds = %114
  %124 = load i8, i8* %5, align 1
  %125 = sext i8 %124 to i32
  %126 = load i8, i8* @CTLBACKQ, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %125, %127
  br i1 %128, label %138, label %129

129:                                              ; preds = %123
  %130 = load i8, i8* %5, align 1
  %131 = sext i8 %130 to i32
  %132 = load i8, i8* @CTLBACKQ, align 1
  %133 = sext i8 %132 to i32
  %134 = load i8, i8* @CTLQUOTE, align 1
  %135 = sext i8 %134 to i32
  %136 = add nsw i32 %133, %135
  %137 = icmp eq i32 %131, %136
  br i1 %137, label %138, label %157

138:                                              ; preds = %129, %123
  %139 = load i64, i64* @cmdnleft, align 8
  %140 = sub nsw i64 %139, 5
  store i64 %140, i64* @cmdnleft, align 8
  %141 = load i64, i64* @cmdnleft, align 8
  %142 = icmp sgt i64 %141, 0
  br i1 %142, label %143, label %156

143:                                              ; preds = %138
  %144 = load i8*, i8** %4, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %4, align 8
  store i8 36, i8* %144, align 1
  %146 = load i8*, i8** %4, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** %4, align 8
  store i8 40, i8* %146, align 1
  %148 = load i8*, i8** %4, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %149, i8** %4, align 8
  store i8 46, i8* %148, align 1
  %150 = load i8*, i8** %4, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %151, i8** %4, align 8
  store i8 46, i8* %150, align 1
  %152 = load i8*, i8** %4, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %4, align 8
  store i8 46, i8* %152, align 1
  %154 = load i8*, i8** %4, align 8
  %155 = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %155, i8** %4, align 8
  store i8 41, i8* %154, align 1
  br label %156

156:                                              ; preds = %143, %138
  br label %216

157:                                              ; preds = %129
  %158 = load i8, i8* %5, align 1
  %159 = sext i8 %158 to i32
  %160 = load i8, i8* @CTLARI, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp eq i32 %159, %161
  br i1 %162, label %163, label %178

163:                                              ; preds = %157
  %164 = load i64, i64* @cmdnleft, align 8
  %165 = sub nsw i64 %164, 2
  store i64 %165, i64* @cmdnleft, align 8
  %166 = load i64, i64* @cmdnleft, align 8
  %167 = icmp sgt i64 %166, 0
  br i1 %167, label %168, label %175

168:                                              ; preds = %163
  %169 = load i8*, i8** %4, align 8
  %170 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %170, i8** %4, align 8
  store i8 36, i8* %169, align 1
  %171 = load i8*, i8** %4, align 8
  %172 = getelementptr inbounds i8, i8* %171, i32 1
  store i8* %172, i8** %4, align 8
  store i8 40, i8* %171, align 1
  %173 = load i8*, i8** %4, align 8
  %174 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %174, i8** %4, align 8
  store i8 40, i8* %173, align 1
  br label %175

175:                                              ; preds = %168, %163
  %176 = load i8*, i8** %3, align 8
  %177 = getelementptr inbounds i8, i8* %176, i32 1
  store i8* %177, i8** %3, align 8
  br label %215

178:                                              ; preds = %157
  %179 = load i8, i8* %5, align 1
  %180 = sext i8 %179 to i32
  %181 = load i8, i8* @CTLENDARI, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp eq i32 %180, %182
  br i1 %183, label %184, label %194

184:                                              ; preds = %178
  %185 = load i64, i64* @cmdnleft, align 8
  %186 = add nsw i64 %185, -1
  store i64 %186, i64* @cmdnleft, align 8
  %187 = icmp sgt i64 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %184
  %189 = load i8*, i8** %4, align 8
  %190 = getelementptr inbounds i8, i8* %189, i32 1
  store i8* %190, i8** %4, align 8
  store i8 41, i8* %189, align 1
  %191 = load i8*, i8** %4, align 8
  %192 = getelementptr inbounds i8, i8* %191, i32 1
  store i8* %192, i8** %4, align 8
  store i8 41, i8* %191, align 1
  br label %193

193:                                              ; preds = %188, %184
  br label %214

194:                                              ; preds = %178
  %195 = load i8, i8* %5, align 1
  %196 = sext i8 %195 to i32
  %197 = load i8, i8* @CTLQUOTEMARK, align 1
  %198 = sext i8 %197 to i32
  %199 = icmp eq i32 %196, %198
  br i1 %199, label %206, label %200

200:                                              ; preds = %194
  %201 = load i8, i8* %5, align 1
  %202 = sext i8 %201 to i32
  %203 = load i8, i8* @CTLQUOTEEND, align 1
  %204 = sext i8 %203 to i32
  %205 = icmp eq i32 %202, %204
  br i1 %205, label %206, label %209

206:                                              ; preds = %200, %194
  %207 = load i64, i64* @cmdnleft, align 8
  %208 = add nsw i64 %207, 1
  store i64 %208, i64* @cmdnleft, align 8
  br label %213

209:                                              ; preds = %200
  %210 = load i8, i8* %5, align 1
  %211 = load i8*, i8** %4, align 8
  %212 = getelementptr inbounds i8, i8* %211, i32 1
  store i8* %212, i8** %4, align 8
  store i8 %210, i8* %211, align 1
  br label %213

213:                                              ; preds = %209, %206
  br label %214

214:                                              ; preds = %213, %193
  br label %215

215:                                              ; preds = %214, %175
  br label %216

216:                                              ; preds = %215, %156
  br label %217

217:                                              ; preds = %216, %120
  br label %218

218:                                              ; preds = %217, %113
  br label %219

219:                                              ; preds = %218, %63
  br label %220

220:                                              ; preds = %219, %25
  %221 = load i64, i64* @cmdnleft, align 8
  %222 = add nsw i64 %221, -1
  store i64 %222, i64* @cmdnleft, align 8
  %223 = icmp sle i64 %222, 0
  br i1 %223, label %224, label %231

224:                                              ; preds = %220
  %225 = load i8*, i8** %4, align 8
  %226 = getelementptr inbounds i8, i8* %225, i32 1
  store i8* %226, i8** %4, align 8
  store i8 46, i8* %225, align 1
  %227 = load i8*, i8** %4, align 8
  %228 = getelementptr inbounds i8, i8* %227, i32 1
  store i8* %228, i8** %4, align 8
  store i8 46, i8* %227, align 1
  %229 = load i8*, i8** %4, align 8
  %230 = getelementptr inbounds i8, i8* %229, i32 1
  store i8* %230, i8** %4, align 8
  store i8 46, i8* %229, align 1
  br label %232

231:                                              ; preds = %220
  br label %13

232:                                              ; preds = %224, %13
  %233 = load i8*, i8** %4, align 8
  store i8* %233, i8** @cmdnextc, align 8
  br label %234

234:                                              ; preds = %232, %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
