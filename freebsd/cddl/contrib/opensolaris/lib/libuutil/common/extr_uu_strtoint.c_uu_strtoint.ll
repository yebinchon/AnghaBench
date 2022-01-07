; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libuutil/common/extr_uu_strtoint.c_uu_strtoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libuutil/common/extr_uu_strtoint.c_uu_strtoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT8_MAX = common dso_local global i8* null, align 8
@INT8_MIN = common dso_local global i8* null, align 8
@INT16_MAX = common dso_local global i8* null, align 8
@INT16_MIN = common dso_local global i8* null, align 8
@INT32_MAX = common dso_local global i8* null, align 8
@INT32_MIN = common dso_local global i8* null, align 8
@INT64_MAX = common dso_local global i8* null, align 8
@INT64_MIN = common dso_local global i8* null, align 8
@UU_ERROR_UNDERFLOW = common dso_local global i32 0, align 4
@UU_ERROR_OVERFLOW = common dso_local global i32 0, align 4
@UU_ERROR_INVALID_ARGUMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uu_strtoint(i8* %0, i8* %1, i64 %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %16 = load i8*, i8** %12, align 8
  %17 = load i8*, i8** %13, align 8
  %18 = icmp ugt i8* %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %6
  br label %125

20:                                               ; preds = %6
  %21 = load i64, i64* %10, align 8
  switch i64 %21, label %62 [
    i64 1, label %22
    i64 2, label %32
    i64 4, label %42
    i64 8, label %52
  ]

22:                                               ; preds = %20
  %23 = load i8*, i8** %13, align 8
  %24 = load i8*, i8** @INT8_MAX, align 8
  %25 = icmp ugt i8* %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i8*, i8** %12, align 8
  %28 = load i8*, i8** @INT8_MIN, align 8
  %29 = icmp ult i8* %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %22
  br label %125

31:                                               ; preds = %26
  br label %63

32:                                               ; preds = %20
  %33 = load i8*, i8** %13, align 8
  %34 = load i8*, i8** @INT16_MAX, align 8
  %35 = icmp ugt i8* %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i8*, i8** %12, align 8
  %38 = load i8*, i8** @INT16_MIN, align 8
  %39 = icmp ult i8* %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36, %32
  br label %125

41:                                               ; preds = %36
  br label %63

42:                                               ; preds = %20
  %43 = load i8*, i8** %13, align 8
  %44 = load i8*, i8** @INT32_MAX, align 8
  %45 = icmp ugt i8* %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load i8*, i8** %12, align 8
  %48 = load i8*, i8** @INT32_MIN, align 8
  %49 = icmp ult i8* %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46, %42
  br label %125

51:                                               ; preds = %46
  br label %63

52:                                               ; preds = %20
  %53 = load i8*, i8** %13, align 8
  %54 = load i8*, i8** @INT64_MAX, align 8
  %55 = icmp ugt i8* %53, %54
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i8*, i8** %12, align 8
  %58 = load i8*, i8** @INT64_MIN, align 8
  %59 = icmp ult i8* %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56, %52
  br label %125

61:                                               ; preds = %56
  br label %63

62:                                               ; preds = %20
  br label %125

63:                                               ; preds = %61, %51, %41, %31
  %64 = load i8*, i8** %12, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %82

66:                                               ; preds = %63
  %67 = load i8*, i8** %13, align 8
  %68 = icmp eq i8* %67, null
  br i1 %68, label %69, label %82

69:                                               ; preds = %66
  %70 = load i64, i64* %10, align 8
  %71 = mul i64 8, %70
  %72 = sub i64 %71, 1
  %73 = shl i64 1, %72
  %74 = sub i64 0, %73
  %75 = inttoptr i64 %74 to i8*
  store i8* %75, i8** %12, align 8
  %76 = load i64, i64* %10, align 8
  %77 = mul i64 8, %76
  %78 = sub i64 %77, 1
  %79 = shl i64 1, %78
  %80 = sub i64 %79, 1
  %81 = inttoptr i64 %80 to i8*
  store i8* %81, i8** %13, align 8
  br label %82

82:                                               ; preds = %69, %66, %63
  %83 = load i8*, i8** %8, align 8
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @strtoint(i8* %83, i64* %14, i32 %84, i32 1)
  %86 = icmp eq i32 %85, -1
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  store i32 -1, i32* %7, align 4
  br label %128

88:                                               ; preds = %82
  %89 = load i64, i64* %14, align 8
  %90 = inttoptr i64 %89 to i8*
  store i8* %90, i8** %15, align 8
  %91 = load i8*, i8** %15, align 8
  %92 = load i8*, i8** %12, align 8
  %93 = icmp ult i8* %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load i32, i32* @UU_ERROR_UNDERFLOW, align 4
  %96 = call i32 @uu_set_error(i32 %95)
  store i32 -1, i32* %7, align 4
  br label %128

97:                                               ; preds = %88
  %98 = load i8*, i8** %15, align 8
  %99 = load i8*, i8** %13, align 8
  %100 = icmp ugt i8* %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = load i32, i32* @UU_ERROR_OVERFLOW, align 4
  %103 = call i32 @uu_set_error(i32 %102)
  store i32 -1, i32* %7, align 4
  br label %128

104:                                              ; preds = %97
  br label %105

105:                                              ; preds = %104
  %106 = load i64, i64* %10, align 8
  switch i64 %106, label %123 [
    i64 1, label %107
    i64 2, label %111
    i64 4, label %115
    i64 8, label %119
  ]

107:                                              ; preds = %105
  %108 = load i8*, i8** %15, align 8
  %109 = load i8*, i8** %9, align 8
  %110 = bitcast i8* %109 to i8**
  store i8* %108, i8** %110, align 8
  store i32 0, i32* %7, align 4
  br label %128

111:                                              ; preds = %105
  %112 = load i8*, i8** %15, align 8
  %113 = load i8*, i8** %9, align 8
  %114 = bitcast i8* %113 to i8**
  store i8* %112, i8** %114, align 8
  store i32 0, i32* %7, align 4
  br label %128

115:                                              ; preds = %105
  %116 = load i8*, i8** %15, align 8
  %117 = load i8*, i8** %9, align 8
  %118 = bitcast i8* %117 to i8**
  store i8* %116, i8** %118, align 8
  store i32 0, i32* %7, align 4
  br label %128

119:                                              ; preds = %105
  %120 = load i8*, i8** %15, align 8
  %121 = load i8*, i8** %9, align 8
  %122 = bitcast i8* %121 to i8**
  store i8* %120, i8** %122, align 8
  store i32 0, i32* %7, align 4
  br label %128

123:                                              ; preds = %105
  br label %124

124:                                              ; preds = %123
  br label %125

125:                                              ; preds = %124, %62, %60, %50, %40, %30, %19
  %126 = load i32, i32* @UU_ERROR_INVALID_ARGUMENT, align 4
  %127 = call i32 @uu_set_error(i32 %126)
  store i32 -1, i32* %7, align 4
  br label %128

128:                                              ; preds = %125, %119, %115, %111, %107, %101, %94, %87
  %129 = load i32, i32* %7, align 4
  ret i32 %129
}

declare dso_local i32 @strtoint(i8*, i64*, i32, i32) #1

declare dso_local i32 @uu_set_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
