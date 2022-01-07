; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_parse_neon_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_parse_neon_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neon_type = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@NEON_MAX_TYPE_ELS = common dso_local global i64 0, align 8
@NT_untyped = common dso_local global i32 0, align 4
@NT_integer = common dso_local global i32 0, align 4
@NT_float = common dso_local global i32 0, align 4
@NT_poly = common dso_local global i32 0, align 4
@NT_signed = common dso_local global i32 0, align 4
@NT_unsigned = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"unexpected character `%c' in type specifier\00", align 1
@FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"bad size %d in type specifier\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.neon_type*, i8**)* @parse_neon_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_neon_type(%struct.neon_type* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.neon_type*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.neon_type* %0, %struct.neon_type** %4, align 8
  store i8** %1, i8*** %5, align 8
  %9 = load i8**, i8*** %5, align 8
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %6, align 8
  %11 = load %struct.neon_type*, %struct.neon_type** %4, align 8
  %12 = icmp ne %struct.neon_type* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.neon_type*, %struct.neon_type** %4, align 8
  %15 = getelementptr inbounds %struct.neon_type, %struct.neon_type* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  br label %16

16:                                               ; preds = %13, %2
  br label %17

17:                                               ; preds = %123, %16
  %18 = load %struct.neon_type*, %struct.neon_type** %4, align 8
  %19 = getelementptr inbounds %struct.neon_type, %struct.neon_type* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NEON_MAX_TYPE_ELS, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %124

23:                                               ; preds = %17
  %24 = load i32, i32* @NT_untyped, align 4
  store i32 %24, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 46
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %124

30:                                               ; preds = %23
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %6, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load i8, i8* %33, align 1
  %35 = call i64 @ISDIGIT(i8 signext %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %76

38:                                               ; preds = %30
  %39 = load i8*, i8** %6, align 8
  %40 = load i8, i8* %39, align 1
  %41 = call i32 @TOLOWER(i8 signext %40)
  switch i32 %41, label %56 [
    i32 105, label %42
    i32 102, label %44
    i32 112, label %46
    i32 115, label %48
    i32 117, label %50
    i32 100, label %52
  ]

42:                                               ; preds = %38
  %43 = load i32, i32* @NT_integer, align 4
  store i32 %43, i32* %7, align 4
  br label %63

44:                                               ; preds = %38
  %45 = load i32, i32* @NT_float, align 4
  store i32 %45, i32* %7, align 4
  br label %63

46:                                               ; preds = %38
  %47 = load i32, i32* @NT_poly, align 4
  store i32 %47, i32* %7, align 4
  br label %63

48:                                               ; preds = %38
  %49 = load i32, i32* @NT_signed, align 4
  store i32 %49, i32* %7, align 4
  br label %63

50:                                               ; preds = %38
  %51 = load i32, i32* @NT_unsigned, align 4
  store i32 %51, i32* %7, align 4
  br label %63

52:                                               ; preds = %38
  %53 = load i32, i32* @NT_float, align 4
  store i32 %53, i32* %7, align 4
  store i32 64, i32* %8, align 4
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %6, align 8
  br label %97

56:                                               ; preds = %38
  %57 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %58 = load i8*, i8** %6, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = call i32 @as_bad(i32 %57, i32 %60)
  %62 = load i32, i32* @FAIL, align 4
  store i32 %62, i32* %3, align 4
  br label %135

63:                                               ; preds = %50, %48, %46, %44, %42
  %64 = load i8*, i8** %6, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %6, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @NT_float, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = load i8*, i8** %6, align 8
  %71 = load i8, i8* %70, align 1
  %72 = call i64 @ISDIGIT(i8 signext %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  store i32 32, i32* %8, align 4
  br label %96

75:                                               ; preds = %69, %63
  br label %76

76:                                               ; preds = %75, %37
  %77 = load i8*, i8** %6, align 8
  %78 = call i32 @strtoul(i8* %77, i8** %6, i32 10)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 8
  br i1 %80, label %81, label %95

81:                                               ; preds = %76
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 16
  br i1 %83, label %84, label %95

84:                                               ; preds = %81
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 32
  br i1 %86, label %87, label %95

87:                                               ; preds = %84
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 64
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @as_bad(i32 %91, i32 %92)
  %94 = load i32, i32* @FAIL, align 4
  store i32 %94, i32* %3, align 4
  br label %135

95:                                               ; preds = %87, %84, %81, %76
  br label %96

96:                                               ; preds = %95, %74
  br label %97

97:                                               ; preds = %96, %52
  %98 = load %struct.neon_type*, %struct.neon_type** %4, align 8
  %99 = icmp ne %struct.neon_type* %98, null
  br i1 %99, label %100, label %123

100:                                              ; preds = %97
  %101 = load i32, i32* %7, align 4
  %102 = load %struct.neon_type*, %struct.neon_type** %4, align 8
  %103 = getelementptr inbounds %struct.neon_type, %struct.neon_type* %102, i32 0, i32 1
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = load %struct.neon_type*, %struct.neon_type** %4, align 8
  %106 = getelementptr inbounds %struct.neon_type, %struct.neon_type* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  store i32 %101, i32* %109, align 4
  %110 = load i32, i32* %8, align 4
  %111 = load %struct.neon_type*, %struct.neon_type** %4, align 8
  %112 = getelementptr inbounds %struct.neon_type, %struct.neon_type* %111, i32 0, i32 1
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = load %struct.neon_type*, %struct.neon_type** %4, align 8
  %115 = getelementptr inbounds %struct.neon_type, %struct.neon_type* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  store i32 %110, i32* %118, align 4
  %119 = load %struct.neon_type*, %struct.neon_type** %4, align 8
  %120 = getelementptr inbounds %struct.neon_type, %struct.neon_type* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %121, 1
  store i64 %122, i64* %120, align 8
  br label %123

123:                                              ; preds = %100, %97
  br label %17

124:                                              ; preds = %29, %17
  %125 = load %struct.neon_type*, %struct.neon_type** %4, align 8
  %126 = getelementptr inbounds %struct.neon_type, %struct.neon_type* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %124
  %130 = load i32, i32* @FAIL, align 4
  store i32 %130, i32* %3, align 4
  br label %135

131:                                              ; preds = %124
  %132 = load i8*, i8** %6, align 8
  %133 = load i8**, i8*** %5, align 8
  store i8* %132, i8** %133, align 8
  %134 = load i32, i32* @SUCCESS, align 4
  store i32 %134, i32* %3, align 4
  br label %135

135:                                              ; preds = %131, %129, %90, %56
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i64 @ISDIGIT(i8 signext) #1

declare dso_local i32 @TOLOWER(i8 signext) #1

declare dso_local i32 @as_bad(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
