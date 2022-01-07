; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_parse.c_operator_length_standard.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_parse.c_operator_length_standard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expression = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [35 x i8] c"?error in operator_length_standard\00", align 1
@HOST_CHAR_BIT = common dso_local global i32 0, align 4
@BINOP_END = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @operator_length_standard(%struct.expression* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.expression*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.expression* %0, %struct.expression** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = call i32 @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %4
  %17 = load %struct.expression*, %struct.expression** %5, align 8
  %18 = getelementptr inbounds %struct.expression, %struct.expression* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  switch i32 %27, label %149 [
    i32 149, label %28
    i32 157, label %43
    i32 164, label %43
    i32 145, label %43
    i32 146, label %44
    i32 166, label %44
    i32 158, label %44
    i32 150, label %44
    i32 160, label %44
    i32 165, label %45
    i32 161, label %46
    i32 162, label %46
    i32 154, label %58
    i32 133, label %70
    i32 131, label %70
    i32 170, label %71
    i32 137, label %71
    i32 132, label %71
    i32 139, label %72
    i32 138, label %72
    i32 136, label %72
    i32 135, label %72
    i32 134, label %72
    i32 130, label %72
    i32 129, label %72
    i32 128, label %72
    i32 159, label %73
    i32 143, label %73
    i32 144, label %73
    i32 156, label %74
    i32 148, label %74
    i32 153, label %74
    i32 152, label %74
    i32 155, label %74
    i32 163, label %74
    i32 167, label %89
    i32 168, label %109
    i32 142, label %134
    i32 141, label %134
    i32 140, label %134
    i32 169, label %135
    i32 171, label %147
    i32 147, label %148
    i32 151, label %148
  ]

28:                                               ; preds = %16
  %29 = load %struct.expression*, %struct.expression** %5, align 8
  %30 = getelementptr inbounds %struct.expression, %struct.expression* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sub nsw i32 %32, 2
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @longest_to_int(i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, 1
  %41 = call i32 @BYTES_TO_EXP_ELEM(i32 %40)
  %42 = add nsw i32 5, %41
  store i32 %42, i32* %9, align 4
  br label %156

43:                                               ; preds = %16, %16, %16
  store i32 4, i32* %9, align 4
  br label %156

44:                                               ; preds = %16, %16, %16, %16, %16
  store i32 3, i32* %9, align 4
  br label %156

45:                                               ; preds = %16
  store i32 1, i32* %9, align 4
  store i32 2, i32* %10, align 4
  br label %156

46:                                               ; preds = %16, %16
  store i32 3, i32* %9, align 4
  %47 = load %struct.expression*, %struct.expression** %5, align 8
  %48 = getelementptr inbounds %struct.expression, %struct.expression* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sub nsw i32 %50, 2
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @longest_to_int(i32 %55)
  %57 = add nsw i32 1, %56
  store i32 %57, i32* %10, align 4
  br label %156

58:                                               ; preds = %16
  store i32 4, i32* %9, align 4
  %59 = load %struct.expression*, %struct.expression** %5, align 8
  %60 = getelementptr inbounds %struct.expression, %struct.expression* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sub nsw i32 %62, 2
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @longest_to_int(i32 %67)
  %69 = add nsw i32 1, %68
  store i32 %69, i32* %10, align 4
  br label %156

70:                                               ; preds = %16, %16
  store i32 3, i32* %9, align 4
  br label %156

71:                                               ; preds = %16, %16, %16
  store i32 3, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %156

72:                                               ; preds = %16, %16, %16, %16, %16, %16, %16, %16
  store i32 1, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %156

73:                                               ; preds = %16, %16, %16
  store i32 1, i32* %10, align 4
  br label %74

74:                                               ; preds = %16, %16, %16, %16, %16, %16, %73
  %75 = load %struct.expression*, %struct.expression** %5, align 8
  %76 = getelementptr inbounds %struct.expression, %struct.expression* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sub nsw i32 %78, 2
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @longest_to_int(i32 %83)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  %87 = call i32 @BYTES_TO_EXP_ELEM(i32 %86)
  %88 = add nsw i32 4, %87
  store i32 %88, i32* %9, align 4
  br label %156

89:                                               ; preds = %16
  %90 = load %struct.expression*, %struct.expression** %5, align 8
  %91 = getelementptr inbounds %struct.expression, %struct.expression* %90, i32 0, i32 0
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sub nsw i32 %93, 2
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @longest_to_int(i32 %98)
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* @HOST_CHAR_BIT, align 4
  %102 = add nsw i32 %100, %101
  %103 = sub nsw i32 %102, 1
  %104 = load i32, i32* @HOST_CHAR_BIT, align 4
  %105 = sdiv i32 %103, %104
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @BYTES_TO_EXP_ELEM(i32 %106)
  %108 = add nsw i32 4, %107
  store i32 %108, i32* %9, align 4
  br label %156

109:                                              ; preds = %16
  store i32 4, i32* %9, align 4
  %110 = load %struct.expression*, %struct.expression** %5, align 8
  %111 = getelementptr inbounds %struct.expression, %struct.expression* %110, i32 0, i32 0
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = load i32, i32* %6, align 4
  %114 = sub nsw i32 %113, 2
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @longest_to_int(i32 %118)
  store i32 %119, i32* %10, align 4
  %120 = load %struct.expression*, %struct.expression** %5, align 8
  %121 = getelementptr inbounds %struct.expression, %struct.expression* %120, i32 0, i32 0
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = load i32, i32* %6, align 4
  %124 = sub nsw i32 %123, 3
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @longest_to_int(i32 %128)
  %130 = load i32, i32* %10, align 4
  %131 = sub nsw i32 %130, %129
  store i32 %131, i32* %10, align 4
  %132 = load i32, i32* %10, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %10, align 4
  br label %156

134:                                              ; preds = %16, %16, %16
  store i32 3, i32* %10, align 4
  br label %156

135:                                              ; preds = %16
  store i32 3, i32* %9, align 4
  %136 = load %struct.expression*, %struct.expression** %5, align 8
  %137 = getelementptr inbounds %struct.expression, %struct.expression* %136, i32 0, i32 0
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = load i32, i32* %6, align 4
  %140 = sub nsw i32 %139, 2
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @longest_to_int(i32 %144)
  %146 = add nsw i32 1, %145
  store i32 %146, i32* %10, align 4
  br label %156

147:                                              ; preds = %16
  store i32 3, i32* %9, align 4
  store i32 2, i32* %10, align 4
  br label %156

148:                                              ; preds = %16, %16
  store i32 2, i32* %9, align 4
  br label %156

149:                                              ; preds = %16
  %150 = load i32, i32* %11, align 4
  %151 = load i64, i64* @BINOP_END, align 8
  %152 = trunc i64 %151 to i32
  %153 = icmp slt i32 %150, %152
  %154 = zext i1 %153 to i32
  %155 = add nsw i32 1, %154
  store i32 %155, i32* %10, align 4
  br label %156

156:                                              ; preds = %149, %148, %147, %135, %134, %109, %89, %74, %72, %71, %70, %58, %46, %45, %44, %43, %28
  %157 = load i32, i32* %9, align 4
  %158 = load i32*, i32** %7, align 8
  store i32 %157, i32* %158, align 4
  %159 = load i32, i32* %10, align 4
  %160 = load i32*, i32** %8, align 8
  store i32 %159, i32* %160, align 4
  ret void
}

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @longest_to_int(i32) #1

declare dso_local i32 @BYTES_TO_EXP_ELEM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
