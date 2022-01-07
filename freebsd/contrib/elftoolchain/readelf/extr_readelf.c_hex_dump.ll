; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_hex_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_hex_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.readelf = type { i64, %struct.section* }
%struct.section = type { i8*, i64, i32 }
%struct.TYPE_4__ = type { i64, i32* }

@HEX_DUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"elf_getdata failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"\0ASection '%s' has no data to dump.\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"\0AHex dump of section '%s':\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"  0x%8.8jx \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%2.2x\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.readelf*)* @hex_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hex_dump(%struct.readelf* %0) #0 {
  %2 = alloca %struct.readelf*, align 8
  %3 = alloca %struct.section*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.readelf* %0, %struct.readelf** %2, align 8
  store i32 1, i32* %10, align 4
  br label %12

12:                                               ; preds = %168, %1
  %13 = load i32, i32* %10, align 4
  %14 = sext i32 %13 to i64
  %15 = load %struct.readelf*, %struct.readelf** %2, align 8
  %16 = getelementptr inbounds %struct.readelf, %struct.readelf* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %171

19:                                               ; preds = %12
  %20 = load %struct.readelf*, %struct.readelf** %2, align 8
  %21 = getelementptr inbounds %struct.readelf, %struct.readelf* %20, i32 0, i32 1
  %22 = load %struct.section*, %struct.section** %21, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.section, %struct.section* %22, i64 %24
  store %struct.section* %25, %struct.section** %3, align 8
  %26 = load %struct.readelf*, %struct.readelf** %2, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = load %struct.section*, %struct.section** %3, align 8
  %30 = getelementptr inbounds %struct.section, %struct.section* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load i32, i32* @HEX_DUMP, align 4
  %33 = call i32* @find_dumpop(%struct.readelf* %26, i64 %28, i8* %31, i32 %32, i32 -1)
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %19
  br label %168

36:                                               ; preds = %19
  %37 = call i32 (...) @elf_errno()
  %38 = load %struct.section*, %struct.section** %3, align 8
  %39 = getelementptr inbounds %struct.section, %struct.section* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call %struct.TYPE_4__* @elf_getdata(i32 %40, i32* null)
  store %struct.TYPE_4__* %41, %struct.TYPE_4__** %4, align 8
  %42 = icmp eq %struct.TYPE_4__* %41, null
  br i1 %42, label %43, label %58

43:                                               ; preds = %36
  %44 = load %struct.section*, %struct.section** %3, align 8
  %45 = getelementptr inbounds %struct.section, %struct.section* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call %struct.TYPE_4__* @elf_rawdata(i32 %46, i32* null)
  store %struct.TYPE_4__* %47, %struct.TYPE_4__** %4, align 8
  %48 = icmp eq %struct.TYPE_4__* %47, null
  br i1 %48, label %49, label %58

49:                                               ; preds = %43
  %50 = call i32 (...) @elf_errno()
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @elf_errmsg(i32 %54)
  %56 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %53, %49
  br label %168

58:                                               ; preds = %43, %36
  %59 = call i32 (...) @elf_errno()
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ule i64 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %58
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %64, %58
  %70 = load %struct.section*, %struct.section** %3, align 8
  %71 = getelementptr inbounds %struct.section, %struct.section* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %72)
  br label %168

74:                                               ; preds = %64
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  store i32* %77, i32** %5, align 8
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %6, align 8
  %81 = load %struct.section*, %struct.section** %3, align 8
  %82 = getelementptr inbounds %struct.section, %struct.section* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %8, align 8
  %84 = load %struct.section*, %struct.section** %3, align 8
  %85 = getelementptr inbounds %struct.section, %struct.section* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %86)
  br label %88

88:                                               ; preds = %156, %74
  %89 = load i64, i64* %6, align 8
  %90 = icmp ugt i64 %89, 0
  br i1 %90, label %91, label %167

91:                                               ; preds = %88
  %92 = load i64, i64* %8, align 8
  %93 = trunc i64 %92 to i32
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  %95 = load i64, i64* %6, align 8
  %96 = icmp ugt i64 %95, 16
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %100

98:                                               ; preds = %91
  %99 = load i64, i64* %6, align 8
  br label %100

100:                                              ; preds = %98, %97
  %101 = phi i64 [ 16, %97 ], [ %99, %98 ]
  store i64 %101, i64* %7, align 8
  store i32 0, i32* %11, align 4
  br label %102

102:                                              ; preds = %126, %100
  %103 = load i32, i32* %11, align 4
  %104 = icmp slt i32 %103, 16
  br i1 %104, label %105, label %129

105:                                              ; preds = %102
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = load i64, i64* %7, align 8
  %109 = icmp ult i64 %107, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %105
  %111 = load i32*, i32** %5, align 8
  %112 = load i32, i32* %11, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %115)
  br label %119

117:                                              ; preds = %105
  %118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %119

119:                                              ; preds = %117, %110
  %120 = load i32, i32* %11, align 4
  %121 = and i32 %120, 3
  %122 = icmp eq i32 %121, 3
  br i1 %122, label %123, label %125

123:                                              ; preds = %119
  %124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %125

125:                                              ; preds = %123, %119
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %11, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %11, align 4
  br label %102

129:                                              ; preds = %102
  store i32 0, i32* %11, align 4
  br label %130

130:                                              ; preds = %153, %129
  %131 = load i32, i32* %11, align 4
  %132 = sext i32 %131 to i64
  %133 = load i64, i64* %7, align 8
  %134 = icmp ult i64 %132, %133
  br i1 %134, label %135, label %156

135:                                              ; preds = %130
  %136 = load i32*, i32** %5, align 8
  %137 = load i32, i32* %11, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = call i64 @isprint(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %135
  %144 = load i32*, i32** %5, align 8
  %145 = load i32, i32* %11, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %148)
  br label %152

150:                                              ; preds = %135
  %151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %152

152:                                              ; preds = %150, %143
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %11, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %11, align 4
  br label %130

156:                                              ; preds = %130
  %157 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %158 = load i64, i64* %7, align 8
  %159 = load i32*, i32** %5, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 %158
  store i32* %160, i32** %5, align 8
  %161 = load i64, i64* %7, align 8
  %162 = load i64, i64* %8, align 8
  %163 = add i64 %162, %161
  store i64 %163, i64* %8, align 8
  %164 = load i64, i64* %7, align 8
  %165 = load i64, i64* %6, align 8
  %166 = sub i64 %165, %164
  store i64 %166, i64* %6, align 8
  br label %88

167:                                              ; preds = %88
  br label %168

168:                                              ; preds = %167, %69, %57, %35
  %169 = load i32, i32* %10, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %10, align 4
  br label %12

171:                                              ; preds = %12
  ret void
}

declare dso_local i32* @find_dumpop(%struct.readelf*, i64, i8*, i32, i32) #1

declare dso_local i32 @elf_errno(...) #1

declare dso_local %struct.TYPE_4__* @elf_getdata(i32, i32*) #1

declare dso_local %struct.TYPE_4__* @elf_rawdata(i32, i32*) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @isprint(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
