; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libgomp/extr_env.c_parse_affinity.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libgomp/extr_env.c_parse_affinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"GOMP_CPU_AFFINITY\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"not enough memory to store GOMP_CPU_AFFINITY list\00", align 1
@gomp_cpu_affinity = common dso_local global i16* null, align 8
@gomp_cpu_affinity_len = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [56 x i8] c"Invalid value for enviroment variable GOMP_CPU_AFFINITY\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @parse_affinity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_affinity() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i16*, align 8
  store i16* null, i16** %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %12 = call i8* @getenv(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i8* %12, i8** %2, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %182

16:                                               ; preds = %0
  br label %17

17:                                               ; preds = %176, %16
  br label %18

18:                                               ; preds = %30, %17
  %19 = load i8*, i8** %2, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 32
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load i8*, i8** %2, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 9
  br label %28

28:                                               ; preds = %23, %18
  %29 = phi i1 [ true, %18 ], [ %27, %23 ]
  br i1 %29, label %30, label %33

30:                                               ; preds = %28
  %31 = load i8*, i8** %2, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %2, align 8
  br label %18

33:                                               ; preds = %28
  %34 = load i8*, i8** %2, align 8
  %35 = call i64 @strtoul(i8* %34, i8** %3, i32 0)
  store i64 %35, i64* %4, align 8
  %36 = load i64, i64* %4, align 8
  store i64 %36, i64* %5, align 8
  store i64 1, i64* %6, align 8
  %37 = load i8*, i8** %2, align 8
  %38 = load i8*, i8** %3, align 8
  %39 = icmp eq i8* %37, %38
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = load i64, i64* %4, align 8
  %42 = icmp uge i64 %41, 65536
  br i1 %42, label %43, label %44

43:                                               ; preds = %40, %33
  br label %180

44:                                               ; preds = %40
  %45 = load i8*, i8** %3, align 8
  store i8* %45, i8** %2, align 8
  %46 = load i8*, i8** %2, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 45
  br i1 %49, label %50, label %88

50:                                               ; preds = %44
  %51 = load i8*, i8** %2, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %2, align 8
  %53 = call i64 @strtoul(i8* %52, i8** %3, i32 0)
  store i64 %53, i64* %5, align 8
  %54 = load i8*, i8** %2, align 8
  %55 = load i8*, i8** %3, align 8
  %56 = icmp eq i8* %54, %55
  br i1 %56, label %64, label %57

57:                                               ; preds = %50
  %58 = load i64, i64* %5, align 8
  %59 = icmp uge i64 %58, 65536
  br i1 %59, label %64, label %60

60:                                               ; preds = %57
  %61 = load i64, i64* %5, align 8
  %62 = load i64, i64* %4, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60, %57, %50
  br label %180

65:                                               ; preds = %60
  %66 = load i8*, i8** %3, align 8
  store i8* %66, i8** %2, align 8
  %67 = load i8*, i8** %2, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 58
  br i1 %70, label %71, label %87

71:                                               ; preds = %65
  %72 = load i8*, i8** %2, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %2, align 8
  %74 = call i64 @strtoul(i8* %73, i8** %3, i32 0)
  store i64 %74, i64* %6, align 8
  %75 = load i8*, i8** %2, align 8
  %76 = load i8*, i8** %3, align 8
  %77 = icmp eq i8* %75, %76
  br i1 %77, label %84, label %78

78:                                               ; preds = %71
  %79 = load i64, i64* %6, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = load i64, i64* %6, align 8
  %83 = icmp uge i64 %82, 65536
  br i1 %83, label %84, label %85

84:                                               ; preds = %81, %78, %71
  br label %180

85:                                               ; preds = %81
  %86 = load i8*, i8** %3, align 8
  store i8* %86, i8** %2, align 8
  br label %87

87:                                               ; preds = %85, %65
  br label %88

88:                                               ; preds = %87, %44
  %89 = load i64, i64* %5, align 8
  %90 = load i64, i64* %4, align 8
  %91 = sub i64 %89, %90
  %92 = load i64, i64* %6, align 8
  %93 = udiv i64 %91, %92
  %94 = add i64 %93, 1
  store i64 %94, i64* %10, align 8
  %95 = load i64, i64* %9, align 8
  %96 = load i64, i64* %10, align 8
  %97 = add i64 %95, %96
  %98 = load i64, i64* %8, align 8
  %99 = icmp uge i64 %97, %98
  br i1 %99, label %100, label %129

100:                                              ; preds = %88
  %101 = load i64, i64* %8, align 8
  %102 = icmp ult i64 %101, 64
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  store i64 64, i64* %8, align 8
  br label %104

104:                                              ; preds = %103, %100
  %105 = load i64, i64* %8, align 8
  %106 = load i64, i64* %10, align 8
  %107 = icmp ugt i64 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load i64, i64* %8, align 8
  %110 = shl i64 %109, 1
  store i64 %110, i64* %8, align 8
  br label %116

111:                                              ; preds = %104
  %112 = load i64, i64* %10, align 8
  %113 = mul i64 2, %112
  %114 = load i64, i64* %8, align 8
  %115 = add i64 %114, %113
  store i64 %115, i64* %8, align 8
  br label %116

116:                                              ; preds = %111, %108
  %117 = load i16*, i16** %7, align 8
  %118 = load i64, i64* %8, align 8
  %119 = mul i64 %118, 2
  %120 = call i16* @realloc(i16* %117, i64 %119)
  store i16* %120, i16** %11, align 8
  %121 = load i16*, i16** %11, align 8
  %122 = icmp eq i16* %121, null
  br i1 %122, label %123, label %127

123:                                              ; preds = %116
  %124 = load i16*, i16** %7, align 8
  %125 = call i32 @free(i16* %124)
  %126 = call i32 @gomp_error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %182

127:                                              ; preds = %116
  %128 = load i16*, i16** %11, align 8
  store i16* %128, i16** %7, align 8
  br label %129

129:                                              ; preds = %127, %88
  br label %130

130:                                              ; preds = %134, %129
  %131 = load i64, i64* %10, align 8
  %132 = add i64 %131, -1
  store i64 %132, i64* %10, align 8
  %133 = icmp ne i64 %131, 0
  br i1 %133, label %134, label %144

134:                                              ; preds = %130
  %135 = load i64, i64* %4, align 8
  %136 = trunc i64 %135 to i16
  %137 = load i16*, i16** %7, align 8
  %138 = load i64, i64* %9, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %9, align 8
  %140 = getelementptr inbounds i16, i16* %137, i64 %138
  store i16 %136, i16* %140, align 2
  %141 = load i64, i64* %6, align 8
  %142 = load i64, i64* %4, align 8
  %143 = add i64 %142, %141
  store i64 %143, i64* %4, align 8
  br label %130

144:                                              ; preds = %130
  br label %145

145:                                              ; preds = %157, %144
  %146 = load i8*, i8** %2, align 8
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp eq i32 %148, 32
  br i1 %149, label %155, label %150

150:                                              ; preds = %145
  %151 = load i8*, i8** %2, align 8
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp eq i32 %153, 9
  br label %155

155:                                              ; preds = %150, %145
  %156 = phi i1 [ true, %145 ], [ %154, %150 ]
  br i1 %156, label %157, label %160

157:                                              ; preds = %155
  %158 = load i8*, i8** %2, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** %2, align 8
  br label %145

160:                                              ; preds = %155
  %161 = load i8*, i8** %2, align 8
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp eq i32 %163, 44
  br i1 %164, label %165, label %168

165:                                              ; preds = %160
  %166 = load i8*, i8** %2, align 8
  %167 = getelementptr inbounds i8, i8* %166, i32 1
  store i8* %167, i8** %2, align 8
  br label %175

168:                                              ; preds = %160
  %169 = load i8*, i8** %2, align 8
  %170 = load i8, i8* %169, align 1
  %171 = sext i8 %170 to i32
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %168
  br label %177

174:                                              ; preds = %168
  br label %175

175:                                              ; preds = %174, %165
  br label %176

176:                                              ; preds = %175
  br i1 true, label %17, label %177

177:                                              ; preds = %176, %173
  %178 = load i16*, i16** %7, align 8
  store i16* %178, i16** @gomp_cpu_affinity, align 8
  %179 = load i64, i64* %9, align 8
  store i64 %179, i64* @gomp_cpu_affinity_len, align 8
  store i32 1, i32* %1, align 4
  br label %182

180:                                              ; preds = %84, %64, %43
  %181 = call i32 @gomp_error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %182

182:                                              ; preds = %180, %177, %123, %15
  %183 = load i32, i32* %1, align 4
  ret i32 %183
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i16* @realloc(i16*, i64) #1

declare dso_local i32 @free(i16*) #1

declare dso_local i32 @gomp_error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
