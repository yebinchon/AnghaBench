; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_read_cxx_misc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_read_cxx_misc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee_info = type { i32* }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"unrecognized C++ misc record\00", align 1
@ieee_at_record_enum = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee_info*, i32**, i64)* @ieee_read_cxx_misc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee_read_cxx_misc(%struct.ieee_info* %0, i32** %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee_info*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.ieee_info* %0, %struct.ieee_info** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i64 %2, i64* %7, align 8
  %20 = load i32**, i32*** %6, align 8
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %8, align 8
  %22 = load %struct.ieee_info*, %struct.ieee_info** %5, align 8
  %23 = load i32**, i32*** %6, align 8
  %24 = call i32 @ieee_require_asn(%struct.ieee_info* %22, i32** %23, i32* %9)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %4, align 4
  br label %118

28:                                               ; preds = %3
  %29 = load i64, i64* %7, align 8
  %30 = add i64 %29, -1
  store i64 %30, i64* %7, align 8
  %31 = load i32, i32* %9, align 4
  switch i32 %31, label %32 [
    i32 84, label %38
    i32 77, label %47
    i32 66, label %76
    i32 122, label %85
    i32 82, label %108
  ]

32:                                               ; preds = %28
  %33 = load %struct.ieee_info*, %struct.ieee_info** %5, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %36 = call i32 @ieee_error(%struct.ieee_info* %33, i32* %34, i32 %35)
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* %4, align 4
  br label %118

38:                                               ; preds = %28
  %39 = load %struct.ieee_info*, %struct.ieee_info** %5, align 8
  %40 = load i32**, i32*** %6, align 8
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @ieee_read_cxx_class(%struct.ieee_info* %39, i32** %40, i64 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %4, align 4
  br label %118

46:                                               ; preds = %38
  br label %116

47:                                               ; preds = %28
  %48 = load %struct.ieee_info*, %struct.ieee_info** %5, align 8
  %49 = load i32**, i32*** %6, align 8
  %50 = call i32 @ieee_require_asn(%struct.ieee_info* %48, i32** %49, i32* %10)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* @FALSE, align 4
  store i32 %53, i32* %4, align 4
  br label %118

54:                                               ; preds = %47
  %55 = load i32**, i32*** %6, align 8
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.ieee_info*, %struct.ieee_info** %5, align 8
  %58 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ult i32* %56, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %54
  %62 = load i32**, i32*** %6, align 8
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @ieee_at_record_enum, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %61
  %68 = load %struct.ieee_info*, %struct.ieee_info** %5, align 8
  %69 = load i32**, i32*** %6, align 8
  %70 = call i32 @ieee_require_atn65(%struct.ieee_info* %68, i32** %69, i8** %11, i64* %12)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* @FALSE, align 4
  store i32 %73, i32* %4, align 4
  br label %118

74:                                               ; preds = %67
  br label %75

75:                                               ; preds = %74, %61, %54
  br label %116

76:                                               ; preds = %28
  %77 = load %struct.ieee_info*, %struct.ieee_info** %5, align 8
  %78 = load i32**, i32*** %6, align 8
  %79 = load i64, i64* %7, align 8
  %80 = call i32 @ieee_read_cxx_defaults(%struct.ieee_info* %77, i32** %78, i64 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %76
  %83 = load i32, i32* @FALSE, align 4
  store i32 %83, i32* %4, align 4
  br label %118

84:                                               ; preds = %76
  br label %116

85:                                               ; preds = %28
  %86 = load %struct.ieee_info*, %struct.ieee_info** %5, align 8
  %87 = load i32**, i32*** %6, align 8
  %88 = call i32 @ieee_require_atn65(%struct.ieee_info* %86, i32** %87, i8** %13, i64* %16)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %105

90:                                               ; preds = %85
  %91 = load %struct.ieee_info*, %struct.ieee_info** %5, align 8
  %92 = load i32**, i32*** %6, align 8
  %93 = call i32 @ieee_require_atn65(%struct.ieee_info* %91, i32** %92, i8** %14, i64* %17)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %90
  %96 = load %struct.ieee_info*, %struct.ieee_info** %5, align 8
  %97 = load i32**, i32*** %6, align 8
  %98 = call i32 @ieee_require_atn65(%struct.ieee_info* %96, i32** %97, i8** %15, i64* %18)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load %struct.ieee_info*, %struct.ieee_info** %5, align 8
  %102 = load i32**, i32*** %6, align 8
  %103 = call i32 @ieee_require_asn(%struct.ieee_info* %101, i32** %102, i32* %19)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %100, %95, %90, %85
  %106 = load i32, i32* @FALSE, align 4
  store i32 %106, i32* %4, align 4
  br label %118

107:                                              ; preds = %100
  br label %116

108:                                              ; preds = %28
  %109 = load %struct.ieee_info*, %struct.ieee_info** %5, align 8
  %110 = load i32**, i32*** %6, align 8
  %111 = call i32 @ieee_read_reference(%struct.ieee_info* %109, i32** %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %108
  %114 = load i32, i32* @FALSE, align 4
  store i32 %114, i32* %4, align 4
  br label %118

115:                                              ; preds = %108
  br label %116

116:                                              ; preds = %115, %107, %84, %75, %46
  %117 = load i32, i32* @TRUE, align 4
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %116, %113, %105, %82, %72, %52, %44, %32, %26
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @ieee_require_asn(%struct.ieee_info*, i32**, i32*) #1

declare dso_local i32 @ieee_error(%struct.ieee_info*, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @ieee_read_cxx_class(%struct.ieee_info*, i32**, i64) #1

declare dso_local i32 @ieee_require_atn65(%struct.ieee_info*, i32**, i8**, i64*) #1

declare dso_local i32 @ieee_read_cxx_defaults(%struct.ieee_info*, i32**, i64) #1

declare dso_local i32 @ieee_read_reference(%struct.ieee_info*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
