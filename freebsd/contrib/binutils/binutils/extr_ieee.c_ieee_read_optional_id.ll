; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_read_optional_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_read_optional_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee_info = type { i32* }

@FALSE = common dso_local global i32 0, align 4
@ieee_extension_length_1_enum = common dso_local global i64 0, align 8
@ieee_extension_length_2_enum = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"invalid string length\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee_info*, i32**, i8**, i64*, i32*)* @ieee_read_optional_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee_read_optional_id(%struct.ieee_info* %0, i32** %1, i8** %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee_info*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.ieee_info* %0, %struct.ieee_info** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i32**, i32*** %8, align 8
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.ieee_info*, %struct.ieee_info** %7, align 8
  %17 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp uge i32* %15, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %5
  %21 = load %struct.ieee_info*, %struct.ieee_info** %7, align 8
  %22 = call i32 @ieee_eof(%struct.ieee_info* %21)
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %6, align 4
  br label %122

24:                                               ; preds = %5
  %25 = load i32**, i32*** %8, align 8
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %12, align 4
  %28 = load i32**, i32*** %8, align 8
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %28, align 8
  %31 = load i32, i32* %12, align 4
  %32 = icmp sle i32 %31, 127
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %13, align 8
  br label %88

36:                                               ; preds = %24
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* @ieee_extension_length_1_enum, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load i32**, i32*** %8, align 8
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %13, align 8
  %46 = load i32**, i32*** %8, align 8
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %46, align 8
  br label %87

49:                                               ; preds = %36
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* @ieee_extension_length_2_enum, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %49
  %55 = load i32**, i32*** %8, align 8
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %57, 8
  %59 = load i32**, i32*** %8, align 8
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %58, %62
  %64 = sext i32 %63 to i64
  store i64 %64, i64* %13, align 8
  %65 = load i32**, i32*** %8, align 8
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  store i32* %67, i32** %65, align 8
  br label %86

68:                                               ; preds = %49
  %69 = load i32*, i32** %11, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load i32**, i32*** %8, align 8
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 -1
  store i32* %74, i32** %72, align 8
  %75 = load i32, i32* @FALSE, align 4
  %76 = load i32*, i32** %11, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* @TRUE, align 4
  store i32 %77, i32* %6, align 4
  br label %122

78:                                               ; preds = %68
  %79 = load %struct.ieee_info*, %struct.ieee_info** %7, align 8
  %80 = load i32**, i32*** %8, align 8
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 -1
  %83 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %84 = call i32 @ieee_error(%struct.ieee_info* %79, i32* %82, i32 %83)
  %85 = load i32, i32* @FALSE, align 4
  store i32 %85, i32* %6, align 4
  br label %122

86:                                               ; preds = %54
  br label %87

87:                                               ; preds = %86, %41
  br label %88

88:                                               ; preds = %87, %33
  %89 = load %struct.ieee_info*, %struct.ieee_info** %7, align 8
  %90 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32**, i32*** %8, align 8
  %93 = load i32*, i32** %92, align 8
  %94 = ptrtoint i32* %91 to i64
  %95 = ptrtoint i32* %93 to i64
  %96 = sub i64 %94, %95
  %97 = sdiv exact i64 %96, 4
  %98 = load i64, i64* %13, align 8
  %99 = icmp ult i64 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %88
  %101 = load %struct.ieee_info*, %struct.ieee_info** %7, align 8
  %102 = call i32 @ieee_eof(%struct.ieee_info* %101)
  %103 = load i32, i32* @FALSE, align 4
  store i32 %103, i32* %6, align 4
  br label %122

104:                                              ; preds = %88
  %105 = load i32**, i32*** %8, align 8
  %106 = load i32*, i32** %105, align 8
  %107 = bitcast i32* %106 to i8*
  %108 = load i8**, i8*** %9, align 8
  store i8* %107, i8** %108, align 8
  %109 = load i64, i64* %13, align 8
  %110 = load i64*, i64** %10, align 8
  store i64 %109, i64* %110, align 8
  %111 = load i64, i64* %13, align 8
  %112 = load i32**, i32*** %8, align 8
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 %111
  store i32* %114, i32** %112, align 8
  %115 = load i32*, i32** %11, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %104
  %118 = load i32, i32* @TRUE, align 4
  %119 = load i32*, i32** %11, align 8
  store i32 %118, i32* %119, align 4
  br label %120

120:                                              ; preds = %117, %104
  %121 = load i32, i32* @TRUE, align 4
  store i32 %121, i32* %6, align 4
  br label %122

122:                                              ; preds = %120, %100, %78, %71, %20
  %123 = load i32, i32* %6, align 4
  ret i32 %123
}

declare dso_local i32 @ieee_eof(%struct.ieee_info*) #1

declare dso_local i32 @ieee_error(%struct.ieee_info*, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
