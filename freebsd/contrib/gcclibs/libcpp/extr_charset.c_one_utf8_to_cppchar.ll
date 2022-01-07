; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_charset.c_one_utf8_to_cppchar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_charset.c_one_utf8_to_cppchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@one_utf8_to_cppchar.masks = internal constant [6 x i32] [i32 127, i32 31, i32 15, i32 7, i32 2, i32 1], align 16
@one_utf8_to_cppchar.patns = internal constant [6 x i32] [i32 0, i32 192, i32 224, i32 240, i32 248, i32 252], align 16
@EINVAL = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i64*, i32*)* @one_utf8_to_cppchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @one_utf8_to_cppchar(i32** %0, i64* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32**, i32*** %5, align 8
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %9, align 8
  %15 = load i64*, i64** %6, align 8
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %16, 1
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %4, align 4
  br label %156

20:                                               ; preds = %3
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 128
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load i32, i32* %8, align 4
  %27 = load i32*, i32** %7, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i64*, i64** %6, align 8
  %29 = load i64, i64* %28, align 8
  %30 = sub i64 %29, 1
  store i64 %30, i64* %28, align 8
  %31 = load i32**, i32*** %5, align 8
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  store i32* %33, i32** %31, align 8
  store i32 0, i32* %4, align 4
  br label %156

34:                                               ; preds = %20
  store i64 2, i64* %10, align 8
  br label %35

35:                                               ; preds = %53, %34
  %36 = load i64, i64* %10, align 8
  %37 = icmp ult i64 %36, 7
  br i1 %37, label %38, label %56

38:                                               ; preds = %35
  %39 = load i32, i32* %8, align 4
  %40 = load i64, i64* %10, align 8
  %41 = sub i64 %40, 1
  %42 = getelementptr inbounds [6 x i32], [6 x i32]* @one_utf8_to_cppchar.masks, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = xor i32 %43, -1
  %45 = and i32 %39, %44
  %46 = load i64, i64* %10, align 8
  %47 = sub i64 %46, 1
  %48 = getelementptr inbounds [6 x i32], [6 x i32]* @one_utf8_to_cppchar.patns, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %45, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %38
  br label %58

52:                                               ; preds = %38
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %10, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %10, align 8
  br label %35

56:                                               ; preds = %35
  %57 = load i32, i32* @EILSEQ, align 4
  store i32 %57, i32* %4, align 4
  br label %156

58:                                               ; preds = %51
  %59 = load i64*, i64** %6, align 8
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %10, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* @EINVAL, align 4
  store i32 %64, i32* %4, align 4
  br label %156

65:                                               ; preds = %58
  %66 = load i32, i32* %8, align 4
  %67 = load i64, i64* %10, align 8
  %68 = sub i64 %67, 1
  %69 = getelementptr inbounds [6 x i32], [6 x i32]* @one_utf8_to_cppchar.masks, i64 0, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %66, %70
  store i32 %71, i32* %8, align 4
  %72 = load i32*, i32** %9, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %9, align 8
  store i64 1, i64* %11, align 8
  br label %74

74:                                               ; preds = %93, %65
  %75 = load i64, i64* %11, align 8
  %76 = load i64, i64* %10, align 8
  %77 = icmp ult i64 %75, %76
  br i1 %77, label %78, label %96

78:                                               ; preds = %74
  %79 = load i32*, i32** %9, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %9, align 8
  %81 = load i32, i32* %79, align 4
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = and i32 %82, 192
  %84 = icmp ne i32 %83, 128
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i32, i32* @EILSEQ, align 4
  store i32 %86, i32* %4, align 4
  br label %156

87:                                               ; preds = %78
  %88 = load i32, i32* %8, align 4
  %89 = shl i32 %88, 6
  %90 = load i32, i32* %12, align 4
  %91 = and i32 %90, 63
  %92 = add nsw i32 %89, %91
  store i32 %92, i32* %8, align 4
  br label %93

93:                                               ; preds = %87
  %94 = load i64, i64* %11, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %11, align 8
  br label %74

96:                                               ; preds = %74
  %97 = load i32, i32* %8, align 4
  %98 = icmp sle i32 %97, 127
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = load i64, i64* %10, align 8
  %101 = icmp ugt i64 %100, 1
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = load i32, i32* @EILSEQ, align 4
  store i32 %103, i32* %4, align 4
  br label %156

104:                                              ; preds = %99, %96
  %105 = load i32, i32* %8, align 4
  %106 = icmp sle i32 %105, 2047
  br i1 %106, label %107, label %112

107:                                              ; preds = %104
  %108 = load i64, i64* %10, align 8
  %109 = icmp ugt i64 %108, 2
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = load i32, i32* @EILSEQ, align 4
  store i32 %111, i32* %4, align 4
  br label %156

112:                                              ; preds = %107, %104
  %113 = load i32, i32* %8, align 4
  %114 = icmp sle i32 %113, 65535
  br i1 %114, label %115, label %120

115:                                              ; preds = %112
  %116 = load i64, i64* %10, align 8
  %117 = icmp ugt i64 %116, 3
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = load i32, i32* @EILSEQ, align 4
  store i32 %119, i32* %4, align 4
  br label %156

120:                                              ; preds = %115, %112
  %121 = load i32, i32* %8, align 4
  %122 = icmp sle i32 %121, 2097151
  br i1 %122, label %123, label %128

123:                                              ; preds = %120
  %124 = load i64, i64* %10, align 8
  %125 = icmp ugt i64 %124, 4
  br i1 %125, label %126, label %128

126:                                              ; preds = %123
  %127 = load i32, i32* @EILSEQ, align 4
  store i32 %127, i32* %4, align 4
  br label %156

128:                                              ; preds = %123, %120
  %129 = load i32, i32* %8, align 4
  %130 = icmp sle i32 %129, 67108863
  br i1 %130, label %131, label %136

131:                                              ; preds = %128
  %132 = load i64, i64* %10, align 8
  %133 = icmp ugt i64 %132, 5
  br i1 %133, label %134, label %136

134:                                              ; preds = %131
  %135 = load i32, i32* @EILSEQ, align 4
  store i32 %135, i32* %4, align 4
  br label %156

136:                                              ; preds = %131, %128
  %137 = load i32, i32* %8, align 4
  %138 = icmp sgt i32 %137, 2147483647
  br i1 %138, label %145, label %139

139:                                              ; preds = %136
  %140 = load i32, i32* %8, align 4
  %141 = icmp sge i32 %140, 55296
  br i1 %141, label %142, label %147

142:                                              ; preds = %139
  %143 = load i32, i32* %8, align 4
  %144 = icmp sle i32 %143, 57343
  br i1 %144, label %145, label %147

145:                                              ; preds = %142, %136
  %146 = load i32, i32* @EILSEQ, align 4
  store i32 %146, i32* %4, align 4
  br label %156

147:                                              ; preds = %142, %139
  %148 = load i32, i32* %8, align 4
  %149 = load i32*, i32** %7, align 8
  store i32 %148, i32* %149, align 4
  %150 = load i32*, i32** %9, align 8
  %151 = load i32**, i32*** %5, align 8
  store i32* %150, i32** %151, align 8
  %152 = load i64, i64* %10, align 8
  %153 = load i64*, i64** %6, align 8
  %154 = load i64, i64* %153, align 8
  %155 = sub i64 %154, %152
  store i64 %155, i64* %153, align 8
  store i32 0, i32* %4, align 4
  br label %156

156:                                              ; preds = %147, %145, %134, %126, %118, %110, %102, %85, %63, %56, %25, %18
  %157 = load i32, i32* %4, align 4
  ret i32 %157
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
