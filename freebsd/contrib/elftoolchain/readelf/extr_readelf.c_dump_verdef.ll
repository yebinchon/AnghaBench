; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_verdef.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_verdef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.readelf = type { i64, i32, %struct.TYPE_9__*, %struct.section* }
%struct.TYPE_9__ = type { i8* }
%struct.section = type { i64, i8*, i32 }
%struct.symver = type { i32 }
%struct.TYPE_8__ = type { i64, i32* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i64 }
%struct.TYPE_7__ = type { i64, i32 }

@.str = private unnamed_addr constant [14 x i8] c"calloc failed\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"*local*\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"*global*\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"\0AVersion definition section (%s):\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"elf_getdata failed: %s\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"  0x%4.4lx\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c" vd_version: %u vd_flags: %d vd_ndx: %u vd_cnt: %u\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c" vda_name: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"  0x%4.4lx parent: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.readelf*, i32)* @dump_verdef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_verdef(%struct.readelf* %0, i32 %1) #0 {
  %3 = alloca %struct.readelf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.section*, align 8
  %6 = alloca %struct.symver*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.readelf* %0, %struct.readelf** %3, align 8
  store i32 %1, i32* %4, align 4
  %17 = load %struct.readelf*, %struct.readelf** %3, align 8
  %18 = getelementptr inbounds %struct.readelf, %struct.readelf* %17, i32 0, i32 3
  %19 = load %struct.section*, %struct.section** %18, align 8
  store %struct.section* %19, %struct.section** %5, align 8
  %20 = icmp eq %struct.section* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %219

22:                                               ; preds = %2
  %23 = load %struct.section*, %struct.section** %5, align 8
  %24 = getelementptr inbounds %struct.section, %struct.section* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.readelf*, %struct.readelf** %3, align 8
  %27 = getelementptr inbounds %struct.readelf, %struct.readelf* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sge i64 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %219

31:                                               ; preds = %22
  %32 = load %struct.readelf*, %struct.readelf** %3, align 8
  %33 = getelementptr inbounds %struct.readelf, %struct.readelf* %32, i32 0, i32 2
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = icmp eq %struct.TYPE_9__* %34, null
  br i1 %35, label %36, label %59

36:                                               ; preds = %31
  %37 = load %struct.readelf*, %struct.readelf** %3, align 8
  %38 = getelementptr inbounds %struct.readelf, %struct.readelf* %37, i32 0, i32 1
  store i32 16, i32* %38, align 8
  %39 = load %struct.readelf*, %struct.readelf** %3, align 8
  %40 = getelementptr inbounds %struct.readelf, %struct.readelf* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.TYPE_9__* @calloc(i32 %41, i32 8)
  %43 = load %struct.readelf*, %struct.readelf** %3, align 8
  %44 = getelementptr inbounds %struct.readelf, %struct.readelf* %43, i32 0, i32 2
  store %struct.TYPE_9__* %42, %struct.TYPE_9__** %44, align 8
  %45 = icmp eq %struct.TYPE_9__* %42, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = call i32 @warn(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %219

48:                                               ; preds = %36
  %49 = load %struct.readelf*, %struct.readelf** %3, align 8
  %50 = getelementptr inbounds %struct.readelf, %struct.readelf* %49, i32 0, i32 2
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %53, align 8
  %54 = load %struct.readelf*, %struct.readelf** %3, align 8
  %55 = getelementptr inbounds %struct.readelf, %struct.readelf* %54, i32 0, i32 2
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i64 1
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %58, align 8
  br label %59

59:                                               ; preds = %48, %31
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load %struct.section*, %struct.section** %5, align 8
  %64 = getelementptr inbounds %struct.section, %struct.section* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %65)
  br label %67

67:                                               ; preds = %62, %59
  %68 = call i32 (...) @elf_errno()
  %69 = load %struct.section*, %struct.section** %5, align 8
  %70 = getelementptr inbounds %struct.section, %struct.section* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call %struct.TYPE_8__* @elf_getdata(i32 %71, i32* null)
  store %struct.TYPE_8__* %72, %struct.TYPE_8__** %7, align 8
  %73 = icmp eq %struct.TYPE_8__* %72, null
  br i1 %73, label %74, label %83

74:                                               ; preds = %67
  %75 = call i32 (...) @elf_errno()
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %14, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i32, i32* %14, align 4
  %80 = call i32 @elf_errmsg(i32 %79)
  %81 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %78, %74
  br label %219

83:                                               ; preds = %67
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %219

89:                                               ; preds = %83
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  store i32* %92, i32** %10, align 8
  %93 = load i32*, i32** %10, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  store i32* %97, i32** %11, align 8
  br label %98

98:                                               ; preds = %213, %89
  %99 = load i32*, i32** %10, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 32
  %101 = load i32*, i32** %11, align 8
  %102 = icmp ule i32* %100, %101
  br i1 %102, label %103, label %219

103:                                              ; preds = %98
  %104 = load i32*, i32** %10, align 8
  %105 = ptrtoint i32* %104 to i64
  %106 = inttoptr i64 %105 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %106, %struct.TYPE_6__** %8, align 8
  %107 = load i32, i32* %4, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %132

109:                                              ; preds = %103
  %110 = load i32*, i32** %10, align 8
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = ptrtoint i32* %110 to i64
  %115 = ptrtoint i32* %113 to i64
  %116 = sub i64 %114, %115
  %117 = sdiv exact i64 %116, 4
  %118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i64 %117)
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i32 %121, i32 %124, i32 %127, i32 %130)
  br label %132

132:                                              ; preds = %109, %103
  %133 = load i32*, i32** %10, align 8
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %133, i64 %137
  store i32* %138, i32** %12, align 8
  store i32 0, i32* %16, align 4
  br label %139

139:                                              ; preds = %199, %132
  %140 = load i32*, i32** %12, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 16
  %142 = load i32*, i32** %11, align 8
  %143 = icmp ule i32* %141, %142
  br i1 %143, label %144, label %150

144:                                              ; preds = %139
  %145 = load i32, i32* %16, align 4
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = icmp slt i32 %145, %148
  br label %150

150:                                              ; preds = %144, %139
  %151 = phi i1 [ false, %139 ], [ %149, %144 ]
  br i1 %151, label %152, label %207

152:                                              ; preds = %150
  %153 = load i32*, i32** %12, align 8
  %154 = ptrtoint i32* %153 to i64
  %155 = inttoptr i64 %154 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %155, %struct.TYPE_7__** %9, align 8
  %156 = load %struct.readelf*, %struct.readelf** %3, align 8
  %157 = load %struct.section*, %struct.section** %5, align 8
  %158 = getelementptr inbounds %struct.section, %struct.section* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = call i8* @get_string(%struct.readelf* %156, i64 %159, i32 %162)
  store i8* %163, i8** %13, align 8
  %164 = load i32, i32* %16, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %178

166:                                              ; preds = %152
  %167 = load i32, i32* %4, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %166
  %170 = load i8*, i8** %13, align 8
  %171 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* %170)
  br label %172

172:                                              ; preds = %169, %166
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = load i8*, i8** %13, align 8
  %177 = call i32 @SAVE_VERSION_NAME(i32 %175, i8* %176, i32 1)
  br label %193

178:                                              ; preds = %152
  %179 = load i32, i32* %4, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %192

181:                                              ; preds = %178
  %182 = load i32*, i32** %12, align 8
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 1
  %185 = load i32*, i32** %184, align 8
  %186 = ptrtoint i32* %182 to i64
  %187 = ptrtoint i32* %185 to i64
  %188 = sub i64 %186, %187
  %189 = sdiv exact i64 %188, 4
  %190 = load i8*, i8** %13, align 8
  %191 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i64 %189, i8* %190)
  br label %192

192:                                              ; preds = %181, %178
  br label %193

193:                                              ; preds = %192, %172
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %193
  br label %207

199:                                              ; preds = %193
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i32*, i32** %12, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 %202
  store i32* %204, i32** %12, align 8
  %205 = load i32, i32* %16, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %16, align 4
  br label %139

207:                                              ; preds = %198, %150
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 5
  %210 = load i64, i64* %209, align 8
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %207
  br label %219

213:                                              ; preds = %207
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 5
  %216 = load i64, i64* %215, align 8
  %217 = load i32*, i32** %10, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 %216
  store i32* %218, i32** %10, align 8
  br label %98

219:                                              ; preds = %21, %30, %46, %82, %88, %212, %98
  ret void
}

declare dso_local %struct.TYPE_9__* @calloc(i32, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @elf_errno(...) #1

declare dso_local %struct.TYPE_8__* @elf_getdata(i32, i32*) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i8* @get_string(%struct.readelf*, i64, i32) #1

declare dso_local i32 @SAVE_VERSION_NAME(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
