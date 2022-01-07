; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_imsttfb.c_set_imstt_regvals_tvp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_imsttfb.c_set_imstt_regvals_tvp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imstt_par = type { i32*, %struct.imstt_regvals }
%struct.imstt_regvals = type { i32, i32, i32, i8**, i8** }

@TVPIRPLA = common dso_local global i8* null, align 8
@TVPADDRW = common dso_local global i64 0, align 8
@TVPIDATA = common dso_local global i64 0, align 8
@TVPIRPPD = common dso_local global i8* null, align 8
@TVPIRTCC = common dso_local global i32 0, align 4
@TVPIRMXC = common dso_local global i32 0, align 4
@TVPIRMIC = common dso_local global i32 0, align 4
@TVPIRLPD = common dso_local global i8* null, align 8
@TVPIRMLC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imstt_par*, i32)* @set_imstt_regvals_tvp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_imstt_regvals_tvp(%struct.imstt_par* %0, i32 %1) #0 {
  %3 = alloca %struct.imstt_par*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.imstt_regvals*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.imstt_par* %0, %struct.imstt_par** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %13 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %12, i32 0, i32 1
  store %struct.imstt_regvals* %13, %struct.imstt_regvals** %5, align 8
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %15 [
    i32 8, label %16
    i32 16, label %27
    i32 24, label %38
    i32 32, label %49
  ]

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %2, %15
  store i8* inttoptr (i64 128 to i8*), i8** %6, align 8
  store i8* inttoptr (i64 77 to i8*), i8** %7, align 8
  store i8* inttoptr (i64 193 to i8*), i8** %8, align 8
  %17 = load %struct.imstt_regvals*, %struct.imstt_regvals** %5, align 8
  %18 = getelementptr inbounds %struct.imstt_regvals, %struct.imstt_regvals* %17, i32 0, i32 4
  %19 = load i8**, i8*** %18, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %10, align 8
  %22 = load %struct.imstt_regvals*, %struct.imstt_regvals** %5, align 8
  %23 = getelementptr inbounds %struct.imstt_regvals, %struct.imstt_regvals* %22, i32 0, i32 3
  %24 = load i8**, i8*** %23, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %11, align 8
  br label %60

27:                                               ; preds = %2
  store i8* inttoptr (i64 68 to i8*), i8** %6, align 8
  store i8* inttoptr (i64 85 to i8*), i8** %7, align 8
  store i8* inttoptr (i64 225 to i8*), i8** %8, align 8
  %28 = load %struct.imstt_regvals*, %struct.imstt_regvals** %5, align 8
  %29 = getelementptr inbounds %struct.imstt_regvals, %struct.imstt_regvals* %28, i32 0, i32 4
  %30 = load i8**, i8*** %29, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %10, align 8
  %33 = load %struct.imstt_regvals*, %struct.imstt_regvals** %5, align 8
  %34 = getelementptr inbounds %struct.imstt_regvals, %struct.imstt_regvals* %33, i32 0, i32 3
  %35 = load i8**, i8*** %34, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 1
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %11, align 8
  br label %60

38:                                               ; preds = %2
  store i8* inttoptr (i64 94 to i8*), i8** %6, align 8
  store i8* inttoptr (i64 93 to i8*), i8** %7, align 8
  store i8* inttoptr (i64 241 to i8*), i8** %8, align 8
  %39 = load %struct.imstt_regvals*, %struct.imstt_regvals** %5, align 8
  %40 = getelementptr inbounds %struct.imstt_regvals, %struct.imstt_regvals* %39, i32 0, i32 4
  %41 = load i8**, i8*** %40, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 2
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %10, align 8
  %44 = load %struct.imstt_regvals*, %struct.imstt_regvals** %5, align 8
  %45 = getelementptr inbounds %struct.imstt_regvals, %struct.imstt_regvals* %44, i32 0, i32 3
  %46 = load i8**, i8*** %45, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 2
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %11, align 8
  br label %60

49:                                               ; preds = %2
  store i8* inttoptr (i64 70 to i8*), i8** %6, align 8
  store i8* inttoptr (i64 93 to i8*), i8** %7, align 8
  store i8* inttoptr (i64 241 to i8*), i8** %8, align 8
  %50 = load %struct.imstt_regvals*, %struct.imstt_regvals** %5, align 8
  %51 = getelementptr inbounds %struct.imstt_regvals, %struct.imstt_regvals* %50, i32 0, i32 4
  %52 = load i8**, i8*** %51, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 2
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %10, align 8
  %55 = load %struct.imstt_regvals*, %struct.imstt_regvals** %5, align 8
  %56 = getelementptr inbounds %struct.imstt_regvals, %struct.imstt_regvals* %55, i32 0, i32 3
  %57 = load i8**, i8*** %56, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 2
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %11, align 8
  br label %60

60:                                               ; preds = %49, %38, %27, %16
  store i8* inttoptr (i64 8 to i8*), i8** %9, align 8
  %61 = load i8*, i8** @TVPIRPLA, align 8
  %62 = ptrtoint i8* %61 to i32
  %63 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %64 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* @TVPADDRW, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  store i32 %62, i32* %67, align 4
  %68 = call i32 (...) @eieio()
  %69 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %70 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* @TVPIDATA, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  store i32 0, i32* %73, align 4
  %74 = call i32 (...) @eieio()
  %75 = load i8*, i8** @TVPIRPPD, align 8
  %76 = ptrtoint i8* %75 to i32
  %77 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %78 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i64, i64* @TVPADDRW, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  store i32 %76, i32* %81, align 4
  %82 = call i32 (...) @eieio()
  %83 = load %struct.imstt_regvals*, %struct.imstt_regvals** %5, align 8
  %84 = getelementptr inbounds %struct.imstt_regvals, %struct.imstt_regvals* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %87 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i64, i64* @TVPIDATA, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  store i32 %85, i32* %90, align 4
  %91 = call i32 (...) @eieio()
  %92 = load i8*, i8** @TVPIRPPD, align 8
  %93 = ptrtoint i8* %92 to i32
  %94 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %95 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i64, i64* @TVPADDRW, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  store i32 %93, i32* %98, align 4
  %99 = call i32 (...) @eieio()
  %100 = load %struct.imstt_regvals*, %struct.imstt_regvals** %5, align 8
  %101 = getelementptr inbounds %struct.imstt_regvals, %struct.imstt_regvals* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %104 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i64, i64* @TVPIDATA, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  store i32 %102, i32* %107, align 4
  %108 = call i32 (...) @eieio()
  %109 = load i8*, i8** @TVPIRPPD, align 8
  %110 = ptrtoint i8* %109 to i32
  %111 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %112 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i64, i64* @TVPADDRW, align 8
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  store i32 %110, i32* %115, align 4
  %116 = call i32 (...) @eieio()
  %117 = load %struct.imstt_regvals*, %struct.imstt_regvals** %5, align 8
  %118 = getelementptr inbounds %struct.imstt_regvals, %struct.imstt_regvals* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %121 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i64, i64* @TVPIDATA, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  store i32 %119, i32* %124, align 4
  %125 = call i32 (...) @eieio()
  %126 = load i32, i32* @TVPIRTCC, align 4
  %127 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %128 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = load i64, i64* @TVPADDRW, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  store i32 %126, i32* %131, align 4
  %132 = call i32 (...) @eieio()
  %133 = load i8*, i8** %6, align 8
  %134 = ptrtoint i8* %133 to i32
  %135 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %136 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = load i64, i64* @TVPIDATA, align 8
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  store i32 %134, i32* %139, align 4
  %140 = call i32 (...) @eieio()
  %141 = load i32, i32* @TVPIRMXC, align 4
  %142 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %143 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = load i64, i64* @TVPADDRW, align 8
  %146 = getelementptr inbounds i32, i32* %144, i64 %145
  store i32 %141, i32* %146, align 4
  %147 = call i32 (...) @eieio()
  %148 = load i8*, i8** %7, align 8
  %149 = ptrtoint i8* %148 to i32
  %150 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %151 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = load i64, i64* @TVPIDATA, align 8
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  store i32 %149, i32* %154, align 4
  %155 = call i32 (...) @eieio()
  %156 = load i32, i32* @TVPIRMIC, align 4
  %157 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %158 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = load i64, i64* @TVPADDRW, align 8
  %161 = getelementptr inbounds i32, i32* %159, i64 %160
  store i32 %156, i32* %161, align 4
  %162 = call i32 (...) @eieio()
  %163 = load i8*, i8** %9, align 8
  %164 = ptrtoint i8* %163 to i32
  %165 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %166 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = load i64, i64* @TVPIDATA, align 8
  %169 = getelementptr inbounds i32, i32* %167, i64 %168
  store i32 %164, i32* %169, align 4
  %170 = call i32 (...) @eieio()
  %171 = load i8*, i8** @TVPIRPLA, align 8
  %172 = ptrtoint i8* %171 to i32
  %173 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %174 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = load i64, i64* @TVPADDRW, align 8
  %177 = getelementptr inbounds i32, i32* %175, i64 %176
  store i32 %172, i32* %177, align 4
  %178 = call i32 (...) @eieio()
  %179 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %180 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = load i64, i64* @TVPIDATA, align 8
  %183 = getelementptr inbounds i32, i32* %181, i64 %182
  store i32 0, i32* %183, align 4
  %184 = call i32 (...) @eieio()
  %185 = load i8*, i8** @TVPIRLPD, align 8
  %186 = ptrtoint i8* %185 to i32
  %187 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %188 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %187, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = load i64, i64* @TVPADDRW, align 8
  %191 = getelementptr inbounds i32, i32* %189, i64 %190
  store i32 %186, i32* %191, align 4
  %192 = call i32 (...) @eieio()
  %193 = load i8*, i8** %8, align 8
  %194 = ptrtoint i8* %193 to i32
  %195 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %196 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %195, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  %198 = load i64, i64* @TVPIDATA, align 8
  %199 = getelementptr inbounds i32, i32* %197, i64 %198
  store i32 %194, i32* %199, align 4
  %200 = call i32 (...) @eieio()
  %201 = load i8*, i8** @TVPIRPLA, align 8
  %202 = ptrtoint i8* %201 to i32
  %203 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %204 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %203, i32 0, i32 0
  %205 = load i32*, i32** %204, align 8
  %206 = load i64, i64* @TVPADDRW, align 8
  %207 = getelementptr inbounds i32, i32* %205, i64 %206
  store i32 %202, i32* %207, align 4
  %208 = call i32 (...) @eieio()
  %209 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %210 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %209, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = load i64, i64* @TVPIDATA, align 8
  %213 = getelementptr inbounds i32, i32* %211, i64 %212
  store i32 21, i32* %213, align 4
  %214 = call i32 (...) @eieio()
  %215 = load i32, i32* @TVPIRMLC, align 4
  %216 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %217 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %216, i32 0, i32 0
  %218 = load i32*, i32** %217, align 8
  %219 = load i64, i64* @TVPADDRW, align 8
  %220 = getelementptr inbounds i32, i32* %218, i64 %219
  store i32 %215, i32* %220, align 4
  %221 = call i32 (...) @eieio()
  %222 = load i8*, i8** %10, align 8
  %223 = ptrtoint i8* %222 to i32
  %224 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %225 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %224, i32 0, i32 0
  %226 = load i32*, i32** %225, align 8
  %227 = load i64, i64* @TVPIDATA, align 8
  %228 = getelementptr inbounds i32, i32* %226, i64 %227
  store i32 %223, i32* %228, align 4
  %229 = call i32 (...) @eieio()
  %230 = load i8*, i8** @TVPIRPLA, align 8
  %231 = ptrtoint i8* %230 to i32
  %232 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %233 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %232, i32 0, i32 0
  %234 = load i32*, i32** %233, align 8
  %235 = load i64, i64* @TVPADDRW, align 8
  %236 = getelementptr inbounds i32, i32* %234, i64 %235
  store i32 %231, i32* %236, align 4
  %237 = call i32 (...) @eieio()
  %238 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %239 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %238, i32 0, i32 0
  %240 = load i32*, i32** %239, align 8
  %241 = load i64, i64* @TVPIDATA, align 8
  %242 = getelementptr inbounds i32, i32* %240, i64 %241
  store i32 42, i32* %242, align 4
  %243 = call i32 (...) @eieio()
  %244 = load i8*, i8** @TVPIRLPD, align 8
  %245 = ptrtoint i8* %244 to i32
  %246 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %247 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %246, i32 0, i32 0
  %248 = load i32*, i32** %247, align 8
  %249 = load i64, i64* @TVPADDRW, align 8
  %250 = getelementptr inbounds i32, i32* %248, i64 %249
  store i32 %245, i32* %250, align 4
  %251 = call i32 (...) @eieio()
  %252 = load i8*, i8** %11, align 8
  %253 = ptrtoint i8* %252 to i32
  %254 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %255 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %254, i32 0, i32 0
  %256 = load i32*, i32** %255, align 8
  %257 = load i64, i64* @TVPIDATA, align 8
  %258 = getelementptr inbounds i32, i32* %256, i64 %257
  store i32 %253, i32* %258, align 4
  %259 = call i32 (...) @eieio()
  ret void
}

declare dso_local i32 @eieio(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
