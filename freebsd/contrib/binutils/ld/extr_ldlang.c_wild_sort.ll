; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_wild_sort.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_wild_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_22__, %struct.TYPE_17__ }
%struct.TYPE_22__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i8* }
%struct.TYPE_17__ = type { i64, %struct.TYPE_20__* }
%struct.TYPE_19__ = type { i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_20__* }
%struct.wildcard_list = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_21__ = type { i8*, %struct.TYPE_15__* }

@none = common dso_local global i64 0, align 8
@lang_input_section_enum = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_20__* (%struct.TYPE_19__*, %struct.wildcard_list*, %struct.TYPE_21__*, i32*)* @wild_sort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_20__* @wild_sort(%struct.TYPE_19__* %0, %struct.wildcard_list* %1, %struct.TYPE_21__* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.wildcard_list*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store %struct.wildcard_list* %1, %struct.wildcard_list** %7, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %4
  %23 = load %struct.wildcard_list*, %struct.wildcard_list** %7, align 8
  %24 = icmp eq %struct.wildcard_list* %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %22
  %26 = load %struct.wildcard_list*, %struct.wildcard_list** %7, align 8
  %27 = getelementptr inbounds %struct.wildcard_list, %struct.wildcard_list* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @none, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %25, %22
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %5, align 8
  br label %191

33:                                               ; preds = %25, %4
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %35, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = call i8* @bfd_get_section_name(%struct.TYPE_15__* %36, i32* %37)
  store i8* %38, i8** %10, align 8
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %41, align 8
  store %struct.TYPE_20__* %42, %struct.TYPE_20__** %11, align 8
  br label %43

43:                                               ; preds = %184, %33
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %45 = icmp ne %struct.TYPE_20__* %44, null
  br i1 %45, label %46, label %189

46:                                               ; preds = %43
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @lang_input_section_enum, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %184

54:                                               ; preds = %46
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 0
  store %struct.TYPE_22__* %56, %struct.TYPE_22__** %12, align 8
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %160

61:                                               ; preds = %54
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %63, align 8
  %65 = icmp ne %struct.TYPE_15__* %64, null
  br i1 %65, label %66, label %79

66:                                               ; preds = %61
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %68, align 8
  %70 = call i32* @bfd_my_archive(%struct.TYPE_15__* %69)
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %79

72:                                               ; preds = %66
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %74, align 8
  %76 = call i32* @bfd_my_archive(%struct.TYPE_15__* %75)
  %77 = call i8* @bfd_get_filename(i32* %76)
  store i8* %77, i8** %13, align 8
  %78 = load i64, i64* @TRUE, align 8
  store i64 %78, i64* %15, align 8
  br label %84

79:                                               ; preds = %66, %61
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  store i8* %82, i8** %13, align 8
  %83 = load i64, i64* @FALSE, align 8
  store i64 %83, i64* %15, align 8
  br label %84

84:                                               ; preds = %79, %72
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %88, align 8
  %90 = call i32* @bfd_my_archive(%struct.TYPE_15__* %89)
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %101

92:                                               ; preds = %84
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %96, align 8
  %98 = call i32* @bfd_my_archive(%struct.TYPE_15__* %97)
  %99 = call i8* @bfd_get_filename(i32* %98)
  store i8* %99, i8** %14, align 8
  %100 = load i64, i64* @TRUE, align 8
  store i64 %100, i64* %16, align 8
  br label %110

101:                                              ; preds = %84
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  store i8* %108, i8** %14, align 8
  %109 = load i64, i64* @FALSE, align 8
  store i64 %109, i64* %16, align 8
  br label %110

110:                                              ; preds = %101, %92
  %111 = load i8*, i8** %13, align 8
  %112 = load i8*, i8** %14, align 8
  %113 = call i32 @strcmp(i8* %111, i8* %112)
  store i32 %113, i32* %17, align 4
  %114 = load i32, i32* %17, align 4
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  br label %184

117:                                              ; preds = %110
  %118 = load i32, i32* %17, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  br label %189

121:                                              ; preds = %117
  br label %122

122:                                              ; preds = %121
  %123 = load i64, i64* %15, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %122
  %126 = load i64, i64* %16, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %159

128:                                              ; preds = %125, %122
  %129 = load i64, i64* %15, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %128
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  store i8* %134, i8** %13, align 8
  br label %135

135:                                              ; preds = %131, %128
  %136 = load i64, i64* %16, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %135
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  store i8* %145, i8** %14, align 8
  br label %146

146:                                              ; preds = %138, %135
  %147 = load i8*, i8** %13, align 8
  %148 = load i8*, i8** %14, align 8
  %149 = call i32 @strcmp(i8* %147, i8* %148)
  store i32 %149, i32* %17, align 4
  %150 = load i32, i32* %17, align 4
  %151 = icmp sgt i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  br label %184

153:                                              ; preds = %146
  %154 = load i32, i32* %17, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %153
  br label %189

157:                                              ; preds = %153
  br label %158

158:                                              ; preds = %157
  br label %159

159:                                              ; preds = %158, %125
  br label %160

160:                                              ; preds = %159, %54
  %161 = load %struct.wildcard_list*, %struct.wildcard_list** %7, align 8
  %162 = icmp ne %struct.wildcard_list* %161, null
  br i1 %162, label %163, label %183

163:                                              ; preds = %160
  %164 = load %struct.wildcard_list*, %struct.wildcard_list** %7, align 8
  %165 = getelementptr inbounds %struct.wildcard_list, %struct.wildcard_list* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @none, align 8
  %169 = icmp ne i64 %167, %168
  br i1 %169, label %170, label %183

170:                                              ; preds = %163
  %171 = load %struct.wildcard_list*, %struct.wildcard_list** %7, align 8
  %172 = getelementptr inbounds %struct.wildcard_list, %struct.wildcard_list* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i32*, i32** %9, align 8
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %177 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %177, align 8
  %179 = call i64 @compare_section(i64 %174, i32* %175, %struct.TYPE_14__* %178)
  %180 = icmp slt i64 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %170
  br label %189

182:                                              ; preds = %170
  br label %183

183:                                              ; preds = %182, %163, %160
  br label %184

184:                                              ; preds = %183, %152, %116, %53
  %185 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 1
  %188 = load %struct.TYPE_20__*, %struct.TYPE_20__** %187, align 8
  store %struct.TYPE_20__* %188, %struct.TYPE_20__** %11, align 8
  br label %43

189:                                              ; preds = %181, %156, %120, %43
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  store %struct.TYPE_20__* %190, %struct.TYPE_20__** %5, align 8
  br label %191

191:                                              ; preds = %189, %32
  %192 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  ret %struct.TYPE_20__* %192
}

declare dso_local i8* @bfd_get_section_name(%struct.TYPE_15__*, i32*) #1

declare dso_local i32* @bfd_my_archive(%struct.TYPE_15__*) #1

declare dso_local i8* @bfd_get_filename(i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @compare_section(i64, i32*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
