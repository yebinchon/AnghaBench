; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_parse_ieee.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_parse_ieee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee_info = type { %struct.TYPE_6__, i32*, %struct.TYPE_5__, i32*, i32*, i32*, %struct.TYPE_4__, i32, i32*, i32*, i8* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32*, i32*, i64 }
%struct.TYPE_4__ = type { i32*, i64 }

@FALSE = common dso_local global i32 0, align 4
@BUILTIN_TYPE_COUNT = common dso_local global i32 0, align 4
@DEBUG_TYPE_NULL = common dso_local global i32 0, align 4
@ieee_at_record_enum = common dso_local global i32 0, align 4
@ieee_number_repeat_end_enum = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"unexpected number\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"unexpected record type\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"blocks left on stack at end\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_ieee(i8* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee_info, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %10, i32 0, i32 10
  store i8* %16, i8** %17, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %10, i32 0, i32 9
  store i32* %18, i32** %19, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %10, i32 0, i32 8
  store i32* %20, i32** %21, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %10, i32 0, i32 1
  store i32* %25, i32** %26, align 8
  %27 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %10, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %10, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load i32, i32* @FALSE, align 4
  %33 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %10, i32 0, i32 7
  store i32 %32, i32* %33, align 8
  %34 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %10, i32 0, i32 6
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %10, i32 0, i32 6
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32* null, i32** %37, align 8
  %38 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %10, i32 0, i32 5
  store i32* null, i32** %38, align 8
  %39 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %10, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  store i64 0, i64* %40, align 8
  %41 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %10, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  store i32* null, i32** %42, align 8
  %43 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %10, i32 0, i32 4
  store i32* null, i32** %43, align 8
  %44 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %10, i32 0, i32 3
  store i32* null, i32** %44, align 8
  store i32 0, i32* %11, align 4
  br label %45

45:                                               ; preds = %57, %4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @BUILTIN_TYPE_COUNT, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %45
  %50 = load i32, i32* @DEBUG_TYPE_NULL, align 4
  %51 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %10, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %50, i32* %56, align 4
  br label %57

57:                                               ; preds = %49
  %58 = load i32, i32* %11, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %11, align 4
  br label %45

60:                                               ; preds = %45
  %61 = load i32*, i32** %8, align 8
  store i32* %61, i32** %12, align 8
  %62 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %10, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  store i32* %63, i32** %13, align 8
  br label %64

64:                                               ; preds = %129, %60
  %65 = load i32*, i32** %12, align 8
  %66 = load i32*, i32** %13, align 8
  %67 = icmp ult i32* %65, %66
  br i1 %67, label %68, label %130

68:                                               ; preds = %64
  %69 = load i32*, i32** %12, align 8
  store i32* %69, i32** %14, align 8
  %70 = load i32*, i32** %12, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %12, align 8
  %72 = load i32, i32* %70, align 4
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* @ieee_at_record_enum, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %68
  %77 = load i32, i32* %15, align 4
  %78 = shl i32 %77, 8
  %79 = load i32*, i32** %12, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %12, align 8
  %81 = load i32, i32* %79, align 4
  %82 = or i32 %78, %81
  store i32 %82, i32* %15, align 4
  br label %83

83:                                               ; preds = %76, %68
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* @ieee_number_repeat_end_enum, align 4
  %86 = icmp sle i32 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = load i32*, i32** %14, align 8
  %89 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %90 = call i32 @ieee_error(%struct.ieee_info* %10, i32* %88, i32 %89)
  %91 = load i32, i32* @FALSE, align 4
  store i32 %91, i32* %5, align 4
  br label %144

92:                                               ; preds = %83
  %93 = load i32, i32* %15, align 4
  switch i32 %93, label %94 [
    i32 131, label %99
    i32 130, label %105
    i32 129, label %111
    i32 128, label %117
    i32 132, label %123
  ]

94:                                               ; preds = %92
  %95 = load i32*, i32** %14, align 8
  %96 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %97 = call i32 @ieee_error(%struct.ieee_info* %10, i32* %95, i32 %96)
  %98 = load i32, i32* @FALSE, align 4
  store i32 %98, i32* %5, align 4
  br label %144

99:                                               ; preds = %92
  %100 = call i32 @parse_ieee_bb(%struct.ieee_info* %10, i32** %12)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %99
  %103 = load i32, i32* @FALSE, align 4
  store i32 %103, i32* %5, align 4
  br label %144

104:                                              ; preds = %99
  br label %129

105:                                              ; preds = %92
  %106 = call i32 @parse_ieee_be(%struct.ieee_info* %10, i32** %12)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %105
  %109 = load i32, i32* @FALSE, align 4
  store i32 %109, i32* %5, align 4
  br label %144

110:                                              ; preds = %105
  br label %129

111:                                              ; preds = %92
  %112 = call i32 @parse_ieee_nn(%struct.ieee_info* %10, i32** %12)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %111
  %115 = load i32, i32* @FALSE, align 4
  store i32 %115, i32* %5, align 4
  br label %144

116:                                              ; preds = %111
  br label %129

117:                                              ; preds = %92
  %118 = call i32 @parse_ieee_ty(%struct.ieee_info* %10, i32** %12)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %117
  %121 = load i32, i32* @FALSE, align 4
  store i32 %121, i32* %5, align 4
  br label %144

122:                                              ; preds = %117
  br label %129

123:                                              ; preds = %92
  %124 = call i32 @parse_ieee_atn(%struct.ieee_info* %10, i32** %12)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %123
  %127 = load i32, i32* @FALSE, align 4
  store i32 %127, i32* %5, align 4
  br label %144

128:                                              ; preds = %123
  br label %129

129:                                              ; preds = %128, %122, %116, %110, %104
  br label %64

130:                                              ; preds = %64
  %131 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %10, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %10, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %133, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %130
  %139 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %140 = call i32 @ieee_error(%struct.ieee_info* %10, i32* null, i32 %139)
  %141 = load i32, i32* @FALSE, align 4
  store i32 %141, i32* %5, align 4
  br label %144

142:                                              ; preds = %130
  %143 = load i32, i32* @TRUE, align 4
  store i32 %143, i32* %5, align 4
  br label %144

144:                                              ; preds = %142, %138, %126, %120, %114, %108, %102, %94, %87
  %145 = load i32, i32* %5, align 4
  ret i32 %145
}

declare dso_local i32 @ieee_error(%struct.ieee_info*, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @parse_ieee_bb(%struct.ieee_info*, i32**) #1

declare dso_local i32 @parse_ieee_be(%struct.ieee_info*, i32**) #1

declare dso_local i32 @parse_ieee_nn(%struct.ieee_info*, i32**) #1

declare dso_local i32 @parse_ieee_ty(%struct.ieee_info*, i32**) #1

declare dso_local i32 @parse_ieee_atn(%struct.ieee_info*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
