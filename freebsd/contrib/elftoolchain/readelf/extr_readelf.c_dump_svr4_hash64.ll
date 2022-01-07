; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_svr4_hash64.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_svr4_hash64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.readelf = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32* }
%struct.section = type { i32 }
%struct.TYPE_10__ = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [23 x i8] c"elf_rawdata failed: %s\00", align 1
@ELF_T_XWORD = common dso_local global i32 0, align 4
@EI_DATA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"gelf_xlatetom failed: %s\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c".hash section too small\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Malformed .hash section\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"calloc failed\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"Histogram for bucket list length (total of %ju buckets):\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c" Length\09Number\09\09%% of total\09Coverage\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"%7u\09%-10ju\09(%5.1f%%)\09%5.1f%%\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.readelf*, %struct.section*)* @dump_svr4_hash64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_svr4_hash64(%struct.readelf* %0, %struct.section* %1) #0 {
  %3 = alloca %struct.readelf*, align 8
  %4 = alloca %struct.section*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.readelf* %0, %struct.readelf** %3, align 8
  store %struct.section* %1, %struct.section** %4, align 8
  %19 = call i32 (...) @elf_errno()
  %20 = load %struct.section*, %struct.section** %4, align 8
  %21 = getelementptr inbounds %struct.section, %struct.section* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.TYPE_10__* @elf_rawdata(i32 %22, i32* null)
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %5, align 8
  %24 = icmp eq %struct.TYPE_10__* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %2
  %26 = call i32 (...) @elf_errno()
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* %16, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, i32* %16, align 4
  %31 = call i32 @elf_errmsg(i32 %30)
  %32 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %29, %25
  br label %230

34:                                               ; preds = %2
  %35 = load i32, i32* @ELF_T_XWORD, align 4
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %39 = call i32 @memcpy(%struct.TYPE_10__* %6, %struct.TYPE_10__* %38, i32 24)
  %40 = load %struct.readelf*, %struct.readelf** %3, align 8
  %41 = getelementptr inbounds %struct.readelf, %struct.readelf* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %44 = load %struct.readelf*, %struct.readelf** %3, align 8
  %45 = getelementptr inbounds %struct.readelf, %struct.readelf* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @EI_DATA, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.TYPE_10__* @gelf_xlatetom(i32 %42, %struct.TYPE_10__* %6, %struct.TYPE_10__* %43, i32 %50)
  %52 = icmp ne %struct.TYPE_10__* %51, %6
  br i1 %52, label %53, label %56

53:                                               ; preds = %34
  %54 = call i32 @elf_errmsg(i32 -1)
  %55 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  br label %230

56:                                               ; preds = %34
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = icmp ult i64 %59, 8
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %230

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  store i32* %65, i32** %7, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %8, align 4
  %69 = load i32*, i32** %7, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp sle i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %63
  %75 = load i32, i32* %9, align 4
  %76 = icmp sle i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %74, %63
  %78 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %230

79:                                               ; preds = %74
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %84, %85
  %87 = add nsw i32 %86, 2
  %88 = sext i32 %87 to i64
  %89 = mul i64 %88, 4
  %90 = icmp ne i64 %83, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %79
  %92 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %230

93:                                               ; preds = %79
  %94 = load i32*, i32** %7, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 2
  store i32* %95, i32** %10, align 8
  %96 = load i32*, i32** %7, align 8
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 2, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  store i32* %100, i32** %11, align 8
  store i32 0, i32* %14, align 4
  %101 = load i32, i32* %8, align 4
  %102 = call i32* @calloc(i32 %101, i32 4)
  store i32* %102, i32** %12, align 8
  %103 = icmp eq i32* %102, null
  br i1 %103, label %104, label %107

104:                                              ; preds = %93
  %105 = load i32, i32* @EXIT_FAILURE, align 4
  %106 = call i32 @errx(i32 %105, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %107

107:                                              ; preds = %104, %93
  store i32 0, i32* %17, align 4
  br label %108

108:                                              ; preds = %150, %107
  %109 = load i32, i32* %17, align 4
  %110 = load i32, i32* %8, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %153

112:                                              ; preds = %108
  %113 = load i32*, i32** %10, align 8
  %114 = load i32, i32* %17, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %18, align 4
  br label %118

118:                                              ; preds = %143, %112
  %119 = load i32, i32* %18, align 4
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %118
  %122 = load i32, i32* %18, align 4
  %123 = load i32, i32* %9, align 4
  %124 = icmp slt i32 %122, %123
  br label %125

125:                                              ; preds = %121, %118
  %126 = phi i1 [ false, %118 ], [ %124, %121 ]
  br i1 %126, label %127, label %149

127:                                              ; preds = %125
  %128 = load i32*, i32** %12, align 8
  %129 = load i32, i32* %17, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 4
  %134 = load i32, i32* %14, align 4
  %135 = icmp sgt i32 %133, %134
  br i1 %135, label %136, label %142

136:                                              ; preds = %127
  %137 = load i32*, i32** %12, align 8
  %138 = load i32, i32* %17, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %14, align 4
  br label %142

142:                                              ; preds = %136, %127
  br label %143

143:                                              ; preds = %142
  %144 = load i32*, i32** %11, align 8
  %145 = load i32, i32* %18, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %18, align 4
  br label %118

149:                                              ; preds = %125
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %17, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %17, align 4
  br label %108

153:                                              ; preds = %108
  %154 = load i32, i32* %14, align 4
  %155 = add nsw i32 %154, 1
  %156 = call i32* @calloc(i32 %155, i32 4)
  store i32* %156, i32** %13, align 8
  %157 = icmp eq i32* %156, null
  br i1 %157, label %158, label %161

158:                                              ; preds = %153
  %159 = load i32, i32* @EXIT_FAILURE, align 4
  %160 = call i32 @errx(i32 %159, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %161

161:                                              ; preds = %158, %153
  store i32 0, i32* %17, align 4
  br label %162

162:                                              ; preds = %177, %161
  %163 = load i32, i32* %17, align 4
  %164 = load i32, i32* %8, align 4
  %165 = icmp slt i32 %163, %164
  br i1 %165, label %166, label %180

166:                                              ; preds = %162
  %167 = load i32*, i32** %13, align 8
  %168 = load i32*, i32** %12, align 8
  %169 = load i32, i32* %17, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %167, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %174, align 4
  br label %177

177:                                              ; preds = %166
  %178 = load i32, i32* %17, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %17, align 4
  br label %162

180:                                              ; preds = %162
  %181 = load i32, i32* %8, align 4
  %182 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0), i32 %181)
  %183 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %15, align 4
  store i32 0, i32* %17, align 4
  br label %184

184:                                              ; preds = %222, %180
  %185 = load i32, i32* %17, align 4
  %186 = load i32, i32* %14, align 4
  %187 = icmp sle i32 %185, %186
  br i1 %187, label %188, label %225

188:                                              ; preds = %184
  %189 = load i32*, i32** %13, align 8
  %190 = load i32, i32* %17, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* %17, align 4
  %195 = mul nsw i32 %193, %194
  %196 = load i32, i32* %15, align 4
  %197 = add nsw i32 %196, %195
  store i32 %197, i32* %15, align 4
  %198 = load i32, i32* %17, align 4
  %199 = load i32*, i32** %13, align 8
  %200 = load i32, i32* %17, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = load i32*, i32** %13, align 8
  %205 = load i32, i32* %17, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = sitofp i32 %208 to double
  %210 = fmul double %209, 1.000000e+02
  %211 = load i32, i32* %8, align 4
  %212 = sitofp i32 %211 to double
  %213 = fdiv double %210, %212
  %214 = load i32, i32* %15, align 4
  %215 = sitofp i32 %214 to double
  %216 = fmul double %215, 1.000000e+02
  %217 = load i32, i32* %9, align 4
  %218 = sub nsw i32 %217, 1
  %219 = sitofp i32 %218 to double
  %220 = fdiv double %216, %219
  %221 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %198, i32 %203, double %213, double %220)
  br label %222

222:                                              ; preds = %188
  %223 = load i32, i32* %17, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %17, align 4
  br label %184

225:                                              ; preds = %184
  %226 = load i32*, i32** %13, align 8
  %227 = call i32 @free(i32* %226)
  %228 = load i32*, i32** %12, align 8
  %229 = call i32 @free(i32* %228)
  br label %230

230:                                              ; preds = %225, %91, %77, %61, %53, %33
  ret void
}

declare dso_local i32 @elf_errno(...) #1

declare dso_local %struct.TYPE_10__* @elf_rawdata(i32, i32*) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_10__*, %struct.TYPE_10__*, i32) #1

declare dso_local %struct.TYPE_10__* @gelf_xlatetom(i32, %struct.TYPE_10__*, %struct.TYPE_10__*, i32) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
