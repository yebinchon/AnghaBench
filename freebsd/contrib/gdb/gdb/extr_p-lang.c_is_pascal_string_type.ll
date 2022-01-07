; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_p-lang.c_is_pascal_string_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_p-lang.c_is_pascal_string_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.TYPE_2__ = type { i8* }

@TYPE_CODE_STRUCT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"st\00", align 1
@TARGET_CHAR_BIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"Capacity\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_pascal_string_type(%struct.type* %0, i32* %1, i32* %2, i32* %3, i32* %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.type*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8**, align 8
  store %struct.type* %0, %struct.type** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i8** %5, i8*** %13, align 8
  %14 = load %struct.type*, %struct.type** %8, align 8
  %15 = call i64 @TYPE_CODE(%struct.type* %14)
  %16 = load i64, i64* @TYPE_CODE_STRUCT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %143

18:                                               ; preds = %6
  %19 = load %struct.type*, %struct.type** %8, align 8
  %20 = call i32 @TYPE_NFIELDS(%struct.type* %19)
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %80

22:                                               ; preds = %18
  %23 = load %struct.type*, %struct.type** %8, align 8
  %24 = call %struct.TYPE_2__* @TYPE_FIELDS(%struct.type* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @strcmp(i8* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %80

30:                                               ; preds = %22
  %31 = load %struct.type*, %struct.type** %8, align 8
  %32 = call %struct.TYPE_2__* @TYPE_FIELDS(%struct.type* %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @strcmp(i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %80

38:                                               ; preds = %30
  %39 = load i32*, i32** %9, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load %struct.type*, %struct.type** %8, align 8
  %43 = call i32 @TYPE_FIELD_BITPOS(%struct.type* %42, i32 0)
  %44 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %45 = sdiv i32 %43, %44
  %46 = load i32*, i32** %9, align 8
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %41, %38
  %48 = load i32*, i32** %10, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load %struct.type*, %struct.type** %8, align 8
  %52 = call i32 @TYPE_FIELD_TYPE(%struct.type* %51, i32 0)
  %53 = call i32 @TYPE_LENGTH(i32 %52)
  %54 = load i32*, i32** %10, align 8
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %50, %47
  %56 = load i32*, i32** %11, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load %struct.type*, %struct.type** %8, align 8
  %60 = call i32 @TYPE_FIELD_BITPOS(%struct.type* %59, i32 1)
  %61 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %62 = sdiv i32 %60, %61
  %63 = load i32*, i32** %11, align 8
  store i32 %62, i32* %63, align 4
  br label %64

64:                                               ; preds = %58, %55
  %65 = load i32*, i32** %12, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32*, i32** %12, align 8
  store i32 1, i32* %68, align 4
  br label %69

69:                                               ; preds = %67, %64
  %70 = load i8**, i8*** %13, align 8
  %71 = icmp ne i8** %70, null
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load %struct.type*, %struct.type** %8, align 8
  %74 = call %struct.TYPE_2__* @TYPE_FIELDS(%struct.type* %73)
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load i8**, i8*** %13, align 8
  store i8* %77, i8** %78, align 8
  br label %79

79:                                               ; preds = %72, %69
  store i32 2, i32* %7, align 4
  br label %144

80:                                               ; preds = %30, %22, %18
  %81 = load %struct.type*, %struct.type** %8, align 8
  %82 = call i32 @TYPE_NFIELDS(%struct.type* %81)
  %83 = icmp eq i32 %82, 3
  br i1 %83, label %84, label %142

84:                                               ; preds = %80
  %85 = load %struct.type*, %struct.type** %8, align 8
  %86 = call %struct.TYPE_2__* @TYPE_FIELDS(%struct.type* %85)
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i64 @strcmp(i8* %89, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %142

92:                                               ; preds = %84
  %93 = load %struct.type*, %struct.type** %8, align 8
  %94 = call %struct.TYPE_2__* @TYPE_FIELDS(%struct.type* %93)
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 1
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i64 @strcmp(i8* %97, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %142

100:                                              ; preds = %92
  %101 = load i32*, i32** %9, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  %104 = load %struct.type*, %struct.type** %8, align 8
  %105 = call i32 @TYPE_FIELD_BITPOS(%struct.type* %104, i32 1)
  %106 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %107 = sdiv i32 %105, %106
  %108 = load i32*, i32** %9, align 8
  store i32 %107, i32* %108, align 4
  br label %109

109:                                              ; preds = %103, %100
  %110 = load i32*, i32** %10, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = load %struct.type*, %struct.type** %8, align 8
  %114 = call i32 @TYPE_FIELD_TYPE(%struct.type* %113, i32 1)
  %115 = call i32 @TYPE_LENGTH(i32 %114)
  %116 = load i32*, i32** %10, align 8
  store i32 %115, i32* %116, align 4
  br label %117

117:                                              ; preds = %112, %109
  %118 = load i32*, i32** %11, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %126

120:                                              ; preds = %117
  %121 = load %struct.type*, %struct.type** %8, align 8
  %122 = call i32 @TYPE_FIELD_BITPOS(%struct.type* %121, i32 2)
  %123 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %124 = sdiv i32 %122, %123
  %125 = load i32*, i32** %11, align 8
  store i32 %124, i32* %125, align 4
  br label %126

126:                                              ; preds = %120, %117
  %127 = load i32*, i32** %12, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %129, label %131

129:                                              ; preds = %126
  %130 = load i32*, i32** %12, align 8
  store i32 1, i32* %130, align 4
  br label %131

131:                                              ; preds = %129, %126
  %132 = load i8**, i8*** %13, align 8
  %133 = icmp ne i8** %132, null
  br i1 %133, label %134, label %141

134:                                              ; preds = %131
  %135 = load %struct.type*, %struct.type** %8, align 8
  %136 = call %struct.TYPE_2__* @TYPE_FIELDS(%struct.type* %135)
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i64 2
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = load i8**, i8*** %13, align 8
  store i8* %139, i8** %140, align 8
  br label %141

141:                                              ; preds = %134, %131
  store i32 3, i32* %7, align 4
  br label %144

142:                                              ; preds = %92, %84, %80
  br label %143

143:                                              ; preds = %142, %6
  store i32 0, i32* %7, align 4
  br label %144

144:                                              ; preds = %143, %141, %79
  %145 = load i32, i32* %7, align 4
  ret i32 %145
}

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @TYPE_NFIELDS(%struct.type*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_2__* @TYPE_FIELDS(%struct.type*) #1

declare dso_local i32 @TYPE_FIELD_BITPOS(%struct.type*, i32) #1

declare dso_local i32 @TYPE_LENGTH(i32) #1

declare dso_local i32 @TYPE_FIELD_TYPE(%struct.type*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
