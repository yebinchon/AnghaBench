; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_ar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_ar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.readelf = type { i32, i8*, i32*, i32* }
%struct.TYPE_5__ = type { i8*, i64 }
%struct.TYPE_6__ = type { i8* }

@RE_C = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"elf_getarsym() failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Index of archive %s: (%ju entries)\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"elf_rand() failed: %s\00", align 1
@ELF_C_READ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"elf_begin() failed: %s\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"elf_getarhdr() failed: %s\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Binary %s(%s) contains:\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"\09%s\0A\00", align 1
@SARMAG = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"__.SYMDEF\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"\0AFile: %s(%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.readelf*, i32)* @dump_ar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_ar(%struct.readelf* %0, i32 %1) #0 {
  %3 = alloca %struct.readelf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.readelf* %0, %struct.readelf** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.readelf*, %struct.readelf** %3, align 8
  %13 = getelementptr inbounds %struct.readelf, %struct.readelf* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.readelf*, %struct.readelf** %3, align 8
  %16 = getelementptr inbounds %struct.readelf, %struct.readelf* %15, i32 0, i32 2
  store i32* %14, i32** %16, align 8
  %17 = load %struct.readelf*, %struct.readelf** %3, align 8
  %18 = getelementptr inbounds %struct.readelf, %struct.readelf* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @RE_C, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %132

23:                                               ; preds = %2
  %24 = load %struct.readelf*, %struct.readelf** %3, align 8
  %25 = getelementptr inbounds %struct.readelf, %struct.readelf* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = call %struct.TYPE_5__* @elf_getarsym(i32* %26, i64* %9)
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %5, align 8
  %28 = icmp eq %struct.TYPE_5__* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = call i32 @elf_errmsg(i32 -1)
  %31 = call i32 @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %133

32:                                               ; preds = %23
  %33 = load %struct.readelf*, %struct.readelf** %3, align 8
  %34 = getelementptr inbounds %struct.readelf, %struct.readelf* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = load i64, i64* %9, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = getelementptr inbounds i8, i8* %37, i64 -1
  %39 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %35, i8* %38)
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  br label %40

40:                                               ; preds = %117, %32
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %9, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %120

45:                                               ; preds = %40
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %120

54:                                               ; preds = %45
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %10, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %109

63:                                               ; preds = %54
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %10, align 8
  %70 = load %struct.readelf*, %struct.readelf** %3, align 8
  %71 = getelementptr inbounds %struct.readelf, %struct.readelf* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* %10, align 8
  %74 = call i64 @elf_rand(i32* %72, i64 %73)
  %75 = load i64, i64* %10, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %63
  %78 = call i32 @elf_errmsg(i32 -1)
  %79 = call i32 @warnx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  br label %117

80:                                               ; preds = %63
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @ELF_C_READ, align 4
  %83 = load %struct.readelf*, %struct.readelf** %3, align 8
  %84 = getelementptr inbounds %struct.readelf, %struct.readelf* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = call i8* @elf_begin(i32 %81, i32 %82, i32* %85)
  %87 = bitcast i8* %86 to i32*
  store i32* %87, i32** %8, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %80
  %90 = call i32 @elf_errmsg(i32 -1)
  %91 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  br label %117

92:                                               ; preds = %80
  %93 = load i32*, i32** %8, align 8
  %94 = call %struct.TYPE_6__* @elf_getarhdr(i32* %93)
  store %struct.TYPE_6__* %94, %struct.TYPE_6__** %6, align 8
  %95 = icmp eq %struct.TYPE_6__* %94, null
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = call i32 @elf_errmsg(i32 -1)
  %98 = call i32 @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %97)
  %99 = load i32*, i32** %8, align 8
  %100 = call i32 @elf_end(i32* %99)
  br label %117

101:                                              ; preds = %92
  %102 = load %struct.readelf*, %struct.readelf** %3, align 8
  %103 = getelementptr inbounds %struct.readelf, %struct.readelf* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %104, i8* %107)
  br label %109

109:                                              ; preds = %101, %54
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %115)
  br label %117

117:                                              ; preds = %109, %96, %89, %77
  %118 = load i32, i32* %11, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %11, align 4
  br label %40

120:                                              ; preds = %53, %40
  %121 = load %struct.readelf*, %struct.readelf** %3, align 8
  %122 = getelementptr inbounds %struct.readelf, %struct.readelf* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = load i64, i64* @SARMAG, align 8
  %125 = call i64 @elf_rand(i32* %123, i64 %124)
  %126 = load i64, i64* @SARMAG, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %120
  %129 = call i32 @elf_errmsg(i32 -1)
  %130 = call i32 @warnx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %129)
  br label %208

131:                                              ; preds = %120
  br label %132

132:                                              ; preds = %131, %2
  br label %133

133:                                              ; preds = %132, %29
  %134 = load %struct.readelf*, %struct.readelf** %3, align 8
  %135 = getelementptr inbounds %struct.readelf, %struct.readelf* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @RE_C, align 4
  %138 = xor i32 %137, -1
  %139 = and i32 %136, %138
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %133
  br label %208

142:                                              ; preds = %133
  %143 = load i32, i32* @ELF_C_READ, align 4
  store i32 %143, i32* %7, align 4
  br label %144

144:                                              ; preds = %193, %142
  %145 = load i32, i32* %4, align 4
  %146 = load i32, i32* %7, align 4
  %147 = load %struct.readelf*, %struct.readelf** %3, align 8
  %148 = getelementptr inbounds %struct.readelf, %struct.readelf* %147, i32 0, i32 2
  %149 = load i32*, i32** %148, align 8
  %150 = call i8* @elf_begin(i32 %145, i32 %146, i32* %149)
  %151 = bitcast i8* %150 to i32*
  %152 = load %struct.readelf*, %struct.readelf** %3, align 8
  %153 = getelementptr inbounds %struct.readelf, %struct.readelf* %152, i32 0, i32 3
  store i32* %151, i32** %153, align 8
  %154 = icmp ne i32* %151, null
  br i1 %154, label %155, label %202

155:                                              ; preds = %144
  %156 = load %struct.readelf*, %struct.readelf** %3, align 8
  %157 = getelementptr inbounds %struct.readelf, %struct.readelf* %156, i32 0, i32 3
  %158 = load i32*, i32** %157, align 8
  %159 = call %struct.TYPE_6__* @elf_getarhdr(i32* %158)
  store %struct.TYPE_6__* %159, %struct.TYPE_6__** %6, align 8
  %160 = icmp eq %struct.TYPE_6__* %159, null
  br i1 %160, label %161, label %164

161:                                              ; preds = %155
  %162 = call i32 @elf_errmsg(i32 -1)
  %163 = call i32 @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %162)
  br label %193

164:                                              ; preds = %155
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load i8*, i8** %166, align 8
  %168 = call i64 @strcmp(i8* %167, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %182, label %170

170:                                              ; preds = %164
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  %173 = load i8*, i8** %172, align 8
  %174 = call i64 @strcmp(i8* %173, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %182, label %176

176:                                              ; preds = %170
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  %179 = load i8*, i8** %178, align 8
  %180 = call i64 @strcmp(i8* %179, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %176, %170, %164
  br label %193

183:                                              ; preds = %176
  %184 = load %struct.readelf*, %struct.readelf** %3, align 8
  %185 = getelementptr inbounds %struct.readelf, %struct.readelf* %184, i32 0, i32 1
  %186 = load i8*, i8** %185, align 8
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  %189 = load i8*, i8** %188, align 8
  %190 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8* %186, i8* %189)
  %191 = load %struct.readelf*, %struct.readelf** %3, align 8
  %192 = call i32 @dump_elf(%struct.readelf* %191)
  br label %193

193:                                              ; preds = %183, %182, %161
  %194 = load %struct.readelf*, %struct.readelf** %3, align 8
  %195 = getelementptr inbounds %struct.readelf, %struct.readelf* %194, i32 0, i32 3
  %196 = load i32*, i32** %195, align 8
  %197 = call i32 @elf_next(i32* %196)
  store i32 %197, i32* %7, align 4
  %198 = load %struct.readelf*, %struct.readelf** %3, align 8
  %199 = getelementptr inbounds %struct.readelf, %struct.readelf* %198, i32 0, i32 3
  %200 = load i32*, i32** %199, align 8
  %201 = call i32 @elf_end(i32* %200)
  br label %144

202:                                              ; preds = %144
  %203 = load %struct.readelf*, %struct.readelf** %3, align 8
  %204 = getelementptr inbounds %struct.readelf, %struct.readelf* %203, i32 0, i32 2
  %205 = load i32*, i32** %204, align 8
  %206 = load %struct.readelf*, %struct.readelf** %3, align 8
  %207 = getelementptr inbounds %struct.readelf, %struct.readelf* %206, i32 0, i32 3
  store i32* %205, i32** %207, align 8
  br label %208

208:                                              ; preds = %202, %141, %128
  ret void
}

declare dso_local %struct.TYPE_5__* @elf_getarsym(i32*, i64*) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i64 @elf_rand(i32*, i64) #1

declare dso_local i8* @elf_begin(i32, i32, i32*) #1

declare dso_local %struct.TYPE_6__* @elf_getarhdr(i32*) #1

declare dso_local i32 @elf_end(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @dump_elf(%struct.readelf*) #1

declare dso_local i32 @elf_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
