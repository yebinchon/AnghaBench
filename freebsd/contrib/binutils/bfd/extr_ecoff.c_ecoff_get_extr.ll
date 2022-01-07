; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ecoff.c_ecoff_get_extr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ecoff.c_ecoff_get_extr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32 }
%struct.TYPE_24__ = type { i32, i32, %struct.TYPE_20__, i64, i64, i64 }
%struct.TYPE_20__ = type { i64, i32, i64, i32 }
%struct.TYPE_22__ = type { i32*, i64 }
%struct.ecoff_debug_info = type { i32*, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 (i32*, i32*, %struct.TYPE_24__*)* }
%struct.TYPE_17__ = type { %struct.ecoff_debug_info }

@bfd_target_ecoff_flavour = common dso_local global i64 0, align 8
@BSF_DEBUGGING = common dso_local global i32 0, align 4
@BSF_LOCAL = common dso_local global i32 0, align 4
@BSF_SECTION_SYM = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@BSF_WEAK = common dso_local global i32 0, align 4
@ifdNil = common dso_local global i32 0, align 4
@stGlobal = common dso_local global i32 0, align 4
@scAbs = common dso_local global i8* null, align 8
@indexNil = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@scUndefined = common dso_local global i64 0, align 8
@scSUndefined = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, %struct.TYPE_24__*)* @ecoff_get_extr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecoff_get_extr(%struct.TYPE_23__* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ecoff_debug_info*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %5, align 8
  %9 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %10 = call i64 @bfd_asymbol_flavour(%struct.TYPE_23__* %9)
  %11 = load i64, i64* @bfd_target_ecoff_flavour, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %15 = call %struct.TYPE_22__* @ecoffsymbol(%struct.TYPE_23__* %14)
  %16 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %78

19:                                               ; preds = %13, %2
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @BSF_DEBUGGING, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %19
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @BSF_LOCAL, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %26
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @BSF_SECTION_SYM, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33, %26, %19
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* %3, align 4
  br label %163

42:                                               ; preds = %33
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %43, i32 0, i32 5
  store i64 0, i64* %44, align 8
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %45, i32 0, i32 4
  store i64 0, i64* %46, align 8
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @BSF_WEAK, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %56, i32 0, i32 3
  store i64 0, i64* %57, align 8
  %58 = load i32, i32* @ifdNil, align 4
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @stGlobal, align 4
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 3
  store i32 %61, i32* %64, align 8
  %65 = load i8*, i8** @scAbs, align 8
  %66 = ptrtoint i8* %65 to i64
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 0
  store i64 %66, i64* %69, align 8
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 2
  store i64 0, i64* %72, align 8
  %73 = load i32, i32* @indexNil, align 4
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 1
  store i32 %73, i32* %76, align 8
  %77 = load i32, i32* @TRUE, align 4
  store i32 %77, i32* %3, align 4
  br label %163

78:                                               ; preds = %13
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %80 = call %struct.TYPE_22__* @ecoffsymbol(%struct.TYPE_23__* %79)
  store %struct.TYPE_22__* %80, %struct.TYPE_22__** %6, align 8
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i32, i32* @FALSE, align 4
  store i32 %86, i32* %3, align 4
  br label %163

87:                                               ; preds = %78
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %89 = call i32* @bfd_asymbol_bfd(%struct.TYPE_23__* %88)
  store i32* %89, i32** %7, align 8
  %90 = load i32*, i32** %7, align 8
  %91 = call %struct.TYPE_18__* @ecoff_backend(i32* %90)
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 0
  %94 = load i32 (i32*, i32*, %struct.TYPE_24__*)*, i32 (i32*, i32*, %struct.TYPE_24__*)** %93, align 8
  %95 = load i32*, i32** %7, align 8
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %100 = call i32 %94(i32* %95, i32* %98, %struct.TYPE_24__* %99)
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @scUndefined, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %114, label %107

107:                                              ; preds = %87
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @scSUndefined, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %125

114:                                              ; preds = %107, %87
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %116 = call i32 @bfd_get_section(%struct.TYPE_23__* %115)
  %117 = call i32 @bfd_is_und_section(i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %125, label %119

119:                                              ; preds = %114
  %120 = load i8*, i8** @scAbs, align 8
  %121 = ptrtoint i8* %120 to i64
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 0
  store i64 %121, i64* %124, align 8
  br label %125

125:                                              ; preds = %119, %114, %107
  %126 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, -1
  br i1 %129, label %130, label %161

130:                                              ; preds = %125
  %131 = load i32*, i32** %7, align 8
  %132 = call %struct.TYPE_17__* @ecoff_data(i32* %131)
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 0
  store %struct.ecoff_debug_info* %133, %struct.ecoff_debug_info** %8, align 8
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.ecoff_debug_info*, %struct.ecoff_debug_info** %8, align 8
  %138 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp slt i32 %136, %140
  %142 = zext i1 %141 to i32
  %143 = call i32 @BFD_ASSERT(i32 %142)
  %144 = load %struct.ecoff_debug_info*, %struct.ecoff_debug_info** %8, align 8
  %145 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = icmp ne i32* %146, null
  br i1 %147, label %148, label %160

148:                                              ; preds = %130
  %149 = load %struct.ecoff_debug_info*, %struct.ecoff_debug_info** %8, align 8
  %150 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %151, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 4
  br label %160

160:                                              ; preds = %148, %130
  br label %161

161:                                              ; preds = %160, %125
  %162 = load i32, i32* @TRUE, align 4
  store i32 %162, i32* %3, align 4
  br label %163

163:                                              ; preds = %161, %85, %42, %40
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local i64 @bfd_asymbol_flavour(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_22__* @ecoffsymbol(%struct.TYPE_23__*) #1

declare dso_local i32* @bfd_asymbol_bfd(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_18__* @ecoff_backend(i32*) #1

declare dso_local i32 @bfd_is_und_section(i32) #1

declare dso_local i32 @bfd_get_section(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_17__* @ecoff_data(i32*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
