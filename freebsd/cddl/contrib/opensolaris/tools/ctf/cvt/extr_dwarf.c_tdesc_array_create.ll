; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_dwarf.c_tdesc_array_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_dwarf.c_tdesc_array_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, i32 }

@DW_TAG_subrange_type = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"die %llu: creating new type %u for sub-dimension\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"die %llu: unexpected non-subrange node in array\0A\00", align 1
@ARRAY = common dso_local global i32 0, align 4
@DW_AT_upper_bound = common dso_local global i32 0, align 4
@DW_AT_count = common dso_local global i32 0, align 4
@TDESC_F_RESOLVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_5__*, %struct.TYPE_5__*)* @tdesc_array_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tdesc_array_create(i32* %0, i32* %1, %struct.TYPE_5__* %2, %struct.TYPE_5__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %11, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call i32* @die_sibling(i32* %14, i32* %15)
  store i32* %16, i32** %12, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %11, align 8
  br label %50

20:                                               ; preds = %4
  %21 = load i32*, i32** %5, align 8
  %22 = load i32*, i32** %12, align 8
  %23 = call i64 @die_tag(i32* %21, i32* %22)
  %24 = load i64, i64* @DW_TAG_subrange_type, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %20
  %27 = call i8* @xcalloc(i32 24)
  %28 = bitcast i8* %27 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %11, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @mfgtid_next(i32* %29)
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = call i32 @die_off(i32* %33, i32* %34)
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @debug(i32 3, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %38)
  %40 = load i32*, i32** %5, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  call void @tdesc_array_create(i32* %40, i32* %41, %struct.TYPE_5__* %42, %struct.TYPE_5__* %43)
  br label %49

44:                                               ; preds = %20
  %45 = load i32*, i32** %5, align 8
  %46 = load i32*, i32** %12, align 8
  %47 = call i32 @die_off(i32* %45, i32* %46)
  %48 = call i32 @terminate(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %44, %26
  br label %50

50:                                               ; preds = %49, %18
  %51 = load i32, i32* @ARRAY, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  %54 = call i8* @xcalloc(i32 24)
  %55 = bitcast i8* %54 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %55, %struct.TYPE_6__** %13, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  store %struct.TYPE_6__* %55, %struct.TYPE_6__** %57, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* @DW_AT_upper_bound, align 4
  %61 = call i64 @die_unsigned(i32* %58, i32* %59, i32 %60, i8** %9, i32 0)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %50
  %64 = load i8*, i8** %9, align 8
  %65 = getelementptr i8, i8* %64, i64 1
  %66 = ptrtoint i8* %65 to i32
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  br label %109

69:                                               ; preds = %50
  %70 = load i32*, i32** %5, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* @DW_AT_upper_bound, align 4
  %73 = call i64 @die_signed(i32* %70, i32* %71, i32 %72, i8** %10, i32 0)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %69
  %76 = load i8*, i8** %10, align 8
  %77 = getelementptr i8, i8* %76, i64 1
  %78 = ptrtoint i8* %77 to i32
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  br label %108

81:                                               ; preds = %69
  %82 = load i32*, i32** %5, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* @DW_AT_count, align 4
  %85 = call i64 @die_unsigned(i32* %82, i32* %83, i32 %84, i8** %9, i32 0)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %81
  %88 = load i8*, i8** %9, align 8
  %89 = ptrtoint i8* %88 to i32
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  br label %107

92:                                               ; preds = %81
  %93 = load i32*, i32** %5, align 8
  %94 = load i32*, i32** %6, align 8
  %95 = load i32, i32* @DW_AT_count, align 4
  %96 = call i64 @die_signed(i32* %93, i32* %94, i32 %95, i8** %10, i32 0)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %92
  %99 = load i8*, i8** %10, align 8
  %100 = ptrtoint i8* %99 to i32
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  br label %106

103:                                              ; preds = %92
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  store i32 0, i32* %105, align 8
  br label %106

106:                                              ; preds = %103, %98
  br label %107

107:                                              ; preds = %106, %87
  br label %108

108:                                              ; preds = %107, %75
  br label %109

109:                                              ; preds = %108, %63
  %110 = load i32*, i32** %5, align 8
  %111 = call i32 @tdesc_intr_long(i32* %110)
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 8
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  store %struct.TYPE_5__* %114, %struct.TYPE_5__** %116, align 8
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %140

123:                                              ; preds = %109
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = mul nsw i32 %128, %131
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  %135 = load i32, i32* @TDESC_F_RESOLVED, align 4
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %123, %109
  ret void
}

declare dso_local i32* @die_sibling(i32*, i32*) #1

declare dso_local i64 @die_tag(i32*, i32*) #1

declare dso_local i8* @xcalloc(i32) #1

declare dso_local i32 @mfgtid_next(i32*) #1

declare dso_local i32 @debug(i32, i8*, i32, i32) #1

declare dso_local i32 @die_off(i32*, i32*) #1

declare dso_local i32 @terminate(i8*, i32) #1

declare dso_local i64 @die_unsigned(i32*, i32*, i32, i8**, i32) #1

declare dso_local i64 @die_signed(i32*, i32*, i32, i8**, i32) #1

declare dso_local i32 @tdesc_intr_long(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
