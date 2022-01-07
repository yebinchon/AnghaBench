; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_read_cxx_defaults.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_read_cxx_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee_info = type { %struct.TYPE_8__, %struct.TYPE_6__, i8* }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64* }

@.str = private unnamed_addr constant [37 x i8] c"C++ default values not in a function\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"unrecognized C++ default type\00", align 1
@DEBUG_TYPE_NULL = common dso_local global i64 0, align 8
@DEBUG_KIND_POINTER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"reference parameter is not a pointer\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee_info*, i32**, i64)* @ieee_read_cxx_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee_read_cxx_defaults(%struct.ieee_info* %0, i32** %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee_info*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.ieee_info* %0, %struct.ieee_info** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i64 %2, i64* %7, align 8
  %20 = load i32**, i32*** %6, align 8
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %8, align 8
  %22 = load %struct.ieee_info*, %struct.ieee_info** %5, align 8
  %23 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = load %struct.ieee_info*, %struct.ieee_info** %5, align 8
  %27 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = icmp ule %struct.TYPE_7__* %25, %29
  br i1 %30, label %40, label %31

31:                                               ; preds = %3
  %32 = load %struct.ieee_info*, %struct.ieee_info** %5, align 8
  %33 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i64 -1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %46

40:                                               ; preds = %31, %3
  %41 = load %struct.ieee_info*, %struct.ieee_info** %5, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %44 = call i32 @ieee_error(%struct.ieee_info* %41, i32* %42, i32 %43)
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %4, align 4
  br label %194

46:                                               ; preds = %31
  %47 = load %struct.ieee_info*, %struct.ieee_info** %5, align 8
  %48 = load i32**, i32*** %6, align 8
  %49 = call i32 @ieee_require_atn65(%struct.ieee_info* %47, i32** %48, i8** %9, i64* %10)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.ieee_info*, %struct.ieee_info** %5, align 8
  %53 = load i32**, i32*** %6, align 8
  %54 = call i32 @ieee_require_asn(%struct.ieee_info* %52, i32** %53, i32* %11)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %51, %46
  %57 = load i32, i32* @FALSE, align 4
  store i32 %57, i32* %4, align 4
  br label %194

58:                                               ; preds = %51
  %59 = load i64, i64* %7, align 8
  %60 = sub i64 %59, 2
  store i64 %60, i64* %7, align 8
  br label %61

61:                                               ; preds = %103, %58
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %11, align 4
  %64 = icmp sgt i32 %62, 0
  br i1 %64, label %65, label %104

65:                                               ; preds = %61
  %66 = load %struct.ieee_info*, %struct.ieee_info** %5, align 8
  %67 = load i32**, i32*** %6, align 8
  %68 = call i32 @ieee_require_asn(%struct.ieee_info* %66, i32** %67, i32* %12)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* @FALSE, align 4
  store i32 %71, i32* %4, align 4
  br label %194

72:                                               ; preds = %65
  %73 = load i64, i64* %7, align 8
  %74 = add i64 %73, -1
  store i64 %74, i64* %7, align 8
  %75 = load i32, i32* %12, align 4
  switch i32 %75, label %97 [
    i32 0, label %76
    i32 4, label %76
    i32 1, label %77
    i32 2, label %77
    i32 3, label %87
    i32 7, label %87
  ]

76:                                               ; preds = %72, %72
  br label %103

77:                                               ; preds = %72, %72
  %78 = load %struct.ieee_info*, %struct.ieee_info** %5, align 8
  %79 = load i32**, i32*** %6, align 8
  %80 = call i32 @ieee_require_asn(%struct.ieee_info* %78, i32** %79, i32* %13)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %77
  %83 = load i32, i32* @FALSE, align 4
  store i32 %83, i32* %4, align 4
  br label %194

84:                                               ; preds = %77
  %85 = load i64, i64* %7, align 8
  %86 = add i64 %85, -1
  store i64 %86, i64* %7, align 8
  br label %103

87:                                               ; preds = %72, %72
  %88 = load %struct.ieee_info*, %struct.ieee_info** %5, align 8
  %89 = load i32**, i32*** %6, align 8
  %90 = call i32 @ieee_require_atn65(%struct.ieee_info* %88, i32** %89, i8** %14, i64* %15)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %87
  %93 = load i32, i32* @FALSE, align 4
  store i32 %93, i32* %4, align 4
  br label %194

94:                                               ; preds = %87
  %95 = load i64, i64* %7, align 8
  %96 = add i64 %95, -1
  store i64 %96, i64* %7, align 8
  br label %103

97:                                               ; preds = %72
  %98 = load %struct.ieee_info*, %struct.ieee_info** %5, align 8
  %99 = load i32*, i32** %8, align 8
  %100 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %101 = call i32 @ieee_error(%struct.ieee_info* %98, i32* %99, i32 %100)
  %102 = load i32, i32* @FALSE, align 4
  store i32 %102, i32* %4, align 4
  br label %194

103:                                              ; preds = %94, %84, %76
  br label %61

104:                                              ; preds = %61
  %105 = load i64, i64* %7, align 8
  %106 = icmp ugt i64 %105, 0
  br i1 %106, label %107, label %192

107:                                              ; preds = %104
  %108 = load %struct.ieee_info*, %struct.ieee_info** %5, align 8
  %109 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %108, i32 0, i32 2
  %110 = load i8*, i8** %109, align 8
  store i8* %110, i8** %16, align 8
  %111 = load %struct.ieee_info*, %struct.ieee_info** %5, align 8
  %112 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = load %struct.ieee_info*, %struct.ieee_info** %5, align 8
  %116 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i64 -1
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i64*, i64** %124, align 8
  store i64* %125, i64** %17, align 8
  br label %126

126:                                              ; preds = %190, %107
  %127 = load i64, i64* %7, align 8
  %128 = add i64 %127, -1
  store i64 %128, i64* %7, align 8
  %129 = icmp ugt i64 %127, 0
  br i1 %129, label %130, label %191

130:                                              ; preds = %126
  %131 = load %struct.ieee_info*, %struct.ieee_info** %5, align 8
  %132 = load i32**, i32*** %6, align 8
  %133 = call i32 @ieee_require_asn(%struct.ieee_info* %131, i32** %132, i32* %18)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %130
  %136 = load i32, i32* @FALSE, align 4
  store i32 %136, i32* %4, align 4
  br label %194

137:                                              ; preds = %130
  %138 = load i32, i32* %18, align 4
  %139 = add nsw i32 %138, -1
  store i32 %139, i32* %18, align 4
  %140 = load i64*, i64** %17, align 8
  %141 = icmp eq i64* %140, null
  br i1 %141, label %160, label %142

142:                                              ; preds = %137
  %143 = load i64*, i64** %17, align 8
  %144 = load i32, i32* %18, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i64, i64* %143, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %160, label %150

150:                                              ; preds = %142
  %151 = load i8*, i8** %16, align 8
  %152 = load i64*, i64** %17, align 8
  %153 = load i32, i32* %18, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i64, i64* %152, i64 %154
  %156 = load i64, i64* %155, align 8
  %157 = call i64 @debug_get_type_kind(i8* %151, i64 %156)
  %158 = load i64, i64* @DEBUG_KIND_POINTER, align 8
  %159 = icmp ne i64 %157, %158
  br i1 %159, label %160, label %166

160:                                              ; preds = %150, %142, %137
  %161 = load %struct.ieee_info*, %struct.ieee_info** %5, align 8
  %162 = load i32*, i32** %8, align 8
  %163 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %164 = call i32 @ieee_error(%struct.ieee_info* %161, i32* %162, i32 %163)
  %165 = load i32, i32* @FALSE, align 4
  store i32 %165, i32* %4, align 4
  br label %194

166:                                              ; preds = %150
  %167 = load i8*, i8** %16, align 8
  %168 = load i64*, i64** %17, align 8
  %169 = load i32, i32* %18, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i64, i64* %168, i64 %170
  %172 = load i64, i64* %171, align 8
  %173 = call i64 @debug_get_target_type(i8* %167, i64 %172)
  store i64 %173, i64* %19, align 8
  %174 = load i8*, i8** %16, align 8
  %175 = load i64, i64* %19, align 8
  %176 = call i64 @debug_make_reference_type(i8* %174, i64 %175)
  %177 = load i64*, i64** %17, align 8
  %178 = load i32, i32* %18, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i64, i64* %177, i64 %179
  store i64 %176, i64* %180, align 8
  %181 = load i64*, i64** %17, align 8
  %182 = load i32, i32* %18, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i64, i64* %181, i64 %183
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %190

188:                                              ; preds = %166
  %189 = load i32, i32* @FALSE, align 4
  store i32 %189, i32* %4, align 4
  br label %194

190:                                              ; preds = %166
  br label %126

191:                                              ; preds = %126
  br label %192

192:                                              ; preds = %191, %104
  %193 = load i32, i32* @TRUE, align 4
  store i32 %193, i32* %4, align 4
  br label %194

194:                                              ; preds = %192, %188, %160, %135, %97, %92, %82, %70, %56, %40
  %195 = load i32, i32* %4, align 4
  ret i32 %195
}

declare dso_local i32 @ieee_error(%struct.ieee_info*, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @ieee_require_atn65(%struct.ieee_info*, i32**, i8**, i64*) #1

declare dso_local i32 @ieee_require_asn(%struct.ieee_info*, i32**, i32*) #1

declare dso_local i64 @debug_get_type_kind(i8*, i64) #1

declare dso_local i64 @debug_get_target_type(i8*, i64) #1

declare dso_local i64 @debug_make_reference_type(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
