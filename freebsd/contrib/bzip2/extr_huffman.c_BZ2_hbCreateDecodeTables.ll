; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bzip2/extr_huffman.c_BZ2_hbCreateDecodeTables.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bzip2/extr_huffman.c_BZ2_hbCreateDecodeTables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BZ_MAX_CODE_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BZ2_hbCreateDecodeTables(i64* %0, i64* %1, i64* %2, i64* %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i64* %0, i64** %8, align 8
  store i64* %1, i64** %9, align 8
  store i64* %2, i64** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %19 = load i64, i64* %12, align 8
  store i64 %19, i64* %16, align 8
  br label %20

20:                                               ; preds = %48, %7
  %21 = load i64, i64* %16, align 8
  %22 = load i64, i64* %13, align 8
  %23 = icmp ule i64 %21, %22
  br i1 %23, label %24, label %51

24:                                               ; preds = %20
  store i64 0, i64* %17, align 8
  br label %25

25:                                               ; preds = %44, %24
  %26 = load i64, i64* %17, align 8
  %27 = load i64, i64* %14, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %47

29:                                               ; preds = %25
  %30 = load i64*, i64** %11, align 8
  %31 = load i64, i64* %17, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %16, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %29
  %37 = load i64, i64* %17, align 8
  %38 = load i64*, i64** %10, align 8
  %39 = load i64, i64* %15, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  store i64 %37, i64* %40, align 8
  %41 = load i64, i64* %15, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %15, align 8
  br label %43

43:                                               ; preds = %36, %29
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %17, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %17, align 8
  br label %25

47:                                               ; preds = %25
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %16, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %16, align 8
  br label %20

51:                                               ; preds = %20
  store i64 0, i64* %16, align 8
  br label %52

52:                                               ; preds = %60, %51
  %53 = load i64, i64* %16, align 8
  %54 = load i64, i64* @BZ_MAX_CODE_LEN, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = load i64*, i64** %9, align 8
  %58 = load i64, i64* %16, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  store i64 0, i64* %59, align 8
  br label %60

60:                                               ; preds = %56
  %61 = load i64, i64* %16, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %16, align 8
  br label %52

63:                                               ; preds = %52
  store i64 0, i64* %16, align 8
  br label %64

64:                                               ; preds = %78, %63
  %65 = load i64, i64* %16, align 8
  %66 = load i64, i64* %14, align 8
  %67 = icmp ult i64 %65, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %64
  %69 = load i64*, i64** %9, align 8
  %70 = load i64*, i64** %11, align 8
  %71 = load i64, i64* %16, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = add i64 %73, 1
  %75 = getelementptr inbounds i64, i64* %69, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %75, align 8
  br label %78

78:                                               ; preds = %68
  %79 = load i64, i64* %16, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %16, align 8
  br label %64

81:                                               ; preds = %64
  store i64 1, i64* %16, align 8
  br label %82

82:                                               ; preds = %97, %81
  %83 = load i64, i64* %16, align 8
  %84 = load i64, i64* @BZ_MAX_CODE_LEN, align 8
  %85 = icmp ult i64 %83, %84
  br i1 %85, label %86, label %100

86:                                               ; preds = %82
  %87 = load i64*, i64** %9, align 8
  %88 = load i64, i64* %16, align 8
  %89 = sub i64 %88, 1
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = load i64*, i64** %9, align 8
  %93 = load i64, i64* %16, align 8
  %94 = getelementptr inbounds i64, i64* %92, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = add i64 %95, %91
  store i64 %96, i64* %94, align 8
  br label %97

97:                                               ; preds = %86
  %98 = load i64, i64* %16, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %16, align 8
  br label %82

100:                                              ; preds = %82
  store i64 0, i64* %16, align 8
  br label %101

101:                                              ; preds = %109, %100
  %102 = load i64, i64* %16, align 8
  %103 = load i64, i64* @BZ_MAX_CODE_LEN, align 8
  %104 = icmp ult i64 %102, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %101
  %106 = load i64*, i64** %8, align 8
  %107 = load i64, i64* %16, align 8
  %108 = getelementptr inbounds i64, i64* %106, i64 %107
  store i64 0, i64* %108, align 8
  br label %109

109:                                              ; preds = %105
  %110 = load i64, i64* %16, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %16, align 8
  br label %101

112:                                              ; preds = %101
  store i64 0, i64* %18, align 8
  %113 = load i64, i64* %12, align 8
  store i64 %113, i64* %16, align 8
  br label %114

114:                                              ; preds = %138, %112
  %115 = load i64, i64* %16, align 8
  %116 = load i64, i64* %13, align 8
  %117 = icmp ule i64 %115, %116
  br i1 %117, label %118, label %141

118:                                              ; preds = %114
  %119 = load i64*, i64** %9, align 8
  %120 = load i64, i64* %16, align 8
  %121 = add i64 %120, 1
  %122 = getelementptr inbounds i64, i64* %119, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = load i64*, i64** %9, align 8
  %125 = load i64, i64* %16, align 8
  %126 = getelementptr inbounds i64, i64* %124, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = sub i64 %123, %127
  %129 = load i64, i64* %18, align 8
  %130 = add i64 %129, %128
  store i64 %130, i64* %18, align 8
  %131 = load i64, i64* %18, align 8
  %132 = sub i64 %131, 1
  %133 = load i64*, i64** %8, align 8
  %134 = load i64, i64* %16, align 8
  %135 = getelementptr inbounds i64, i64* %133, i64 %134
  store i64 %132, i64* %135, align 8
  %136 = load i64, i64* %18, align 8
  %137 = shl i64 %136, 1
  store i64 %137, i64* %18, align 8
  br label %138

138:                                              ; preds = %118
  %139 = load i64, i64* %16, align 8
  %140 = add i64 %139, 1
  store i64 %140, i64* %16, align 8
  br label %114

141:                                              ; preds = %114
  %142 = load i64, i64* %12, align 8
  %143 = add i64 %142, 1
  store i64 %143, i64* %16, align 8
  br label %144

144:                                              ; preds = %164, %141
  %145 = load i64, i64* %16, align 8
  %146 = load i64, i64* %13, align 8
  %147 = icmp ule i64 %145, %146
  br i1 %147, label %148, label %167

148:                                              ; preds = %144
  %149 = load i64*, i64** %8, align 8
  %150 = load i64, i64* %16, align 8
  %151 = sub i64 %150, 1
  %152 = getelementptr inbounds i64, i64* %149, i64 %151
  %153 = load i64, i64* %152, align 8
  %154 = add i64 %153, 1
  %155 = shl i64 %154, 1
  %156 = load i64*, i64** %9, align 8
  %157 = load i64, i64* %16, align 8
  %158 = getelementptr inbounds i64, i64* %156, i64 %157
  %159 = load i64, i64* %158, align 8
  %160 = sub i64 %155, %159
  %161 = load i64*, i64** %9, align 8
  %162 = load i64, i64* %16, align 8
  %163 = getelementptr inbounds i64, i64* %161, i64 %162
  store i64 %160, i64* %163, align 8
  br label %164

164:                                              ; preds = %148
  %165 = load i64, i64* %16, align 8
  %166 = add i64 %165, 1
  store i64 %166, i64* %16, align 8
  br label %144

167:                                              ; preds = %144
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
