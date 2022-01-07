; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_local_alignment.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_local_alignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_64BIT = common dso_local global i64 0, align 8
@INTEGER_CST = common dso_local global i64 0, align 8
@ARRAY_TYPE = common dso_local global i64 0, align 8
@DFmode = common dso_local global i64 0, align 8
@COMPLEX_TYPE = common dso_local global i64 0, align 8
@DCmode = common dso_local global i64 0, align 8
@XCmode = common dso_local global i64 0, align 8
@RECORD_TYPE = common dso_local global i64 0, align 8
@UNION_TYPE = common dso_local global i64 0, align 8
@QUAL_UNION_TYPE = common dso_local global i64 0, align 8
@REAL_TYPE = common dso_local global i64 0, align 8
@VECTOR_TYPE = common dso_local global i64 0, align 8
@INTEGER_TYPE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ix86_local_alignment(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i64, i64* @TARGET_64BIT, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %37

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8
  %10 = call i64 @AGGREGATE_TYPE_P(i64 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %8
  %13 = load i64, i64* %4, align 8
  %14 = call i64 @TYPE_SIZE(i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %12
  %17 = load i64, i64* %4, align 8
  %18 = call i64 @TYPE_SIZE(i64 %17)
  %19 = call i64 @TREE_CODE(i64 %18)
  %20 = load i64, i64* @INTEGER_CST, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %16
  %23 = load i64, i64* %4, align 8
  %24 = call i64 @TYPE_SIZE(i64 %23)
  %25 = call i32 @TREE_INT_CST_LOW(i64 %24)
  %26 = icmp sge i32 %25, 128
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load i64, i64* %4, align 8
  %29 = call i64 @TYPE_SIZE(i64 %28)
  %30 = call i64 @TREE_INT_CST_HIGH(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27, %22
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 128
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 128, i32* %3, align 4
  br label %166

36:                                               ; preds = %32, %27, %16, %12, %8
  br label %37

37:                                               ; preds = %36, %2
  %38 = load i64, i64* %4, align 8
  %39 = call i64 @TREE_CODE(i64 %38)
  %40 = load i64, i64* @ARRAY_TYPE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %63

42:                                               ; preds = %37
  %43 = load i64, i64* %4, align 8
  %44 = call i64 @TREE_TYPE(i64 %43)
  %45 = call i64 @TYPE_MODE(i64 %44)
  %46 = load i64, i64* @DFmode, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %49, 64
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 64, i32* %3, align 4
  br label %166

52:                                               ; preds = %48, %42
  %53 = load i64, i64* %4, align 8
  %54 = call i64 @TREE_TYPE(i64 %53)
  %55 = call i64 @TYPE_MODE(i64 %54)
  %56 = call i64 @ALIGN_MODE_128(i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load i32, i32* %5, align 4
  %60 = icmp slt i32 %59, 128
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i32 128, i32* %3, align 4
  br label %166

62:                                               ; preds = %58, %52
  br label %164

63:                                               ; preds = %37
  %64 = load i64, i64* %4, align 8
  %65 = call i64 @TREE_CODE(i64 %64)
  %66 = load i64, i64* @COMPLEX_TYPE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %87

68:                                               ; preds = %63
  %69 = load i64, i64* %4, align 8
  %70 = call i64 @TYPE_MODE(i64 %69)
  %71 = load i64, i64* @DCmode, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load i32, i32* %5, align 4
  %75 = icmp slt i32 %74, 64
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i32 64, i32* %3, align 4
  br label %166

77:                                               ; preds = %73, %68
  %78 = load i64, i64* %4, align 8
  %79 = call i64 @TYPE_MODE(i64 %78)
  %80 = load i64, i64* @XCmode, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load i32, i32* %5, align 4
  %84 = icmp slt i32 %83, 128
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i32 128, i32* %3, align 4
  br label %166

86:                                               ; preds = %82, %77
  br label %163

87:                                               ; preds = %63
  %88 = load i64, i64* %4, align 8
  %89 = call i64 @TREE_CODE(i64 %88)
  %90 = load i64, i64* @RECORD_TYPE, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %102, label %92

92:                                               ; preds = %87
  %93 = load i64, i64* %4, align 8
  %94 = call i64 @TREE_CODE(i64 %93)
  %95 = load i64, i64* @UNION_TYPE, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %102, label %97

97:                                               ; preds = %92
  %98 = load i64, i64* %4, align 8
  %99 = call i64 @TREE_CODE(i64 %98)
  %100 = load i64, i64* @QUAL_UNION_TYPE, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %127

102:                                              ; preds = %97, %92, %87
  %103 = load i64, i64* %4, align 8
  %104 = call i64 @TYPE_FIELDS(i64 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %127

106:                                              ; preds = %102
  %107 = load i64, i64* %4, align 8
  %108 = call i64 @TYPE_FIELDS(i64 %107)
  %109 = call i64 @DECL_MODE(i64 %108)
  %110 = load i64, i64* @DFmode, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %106
  %113 = load i32, i32* %5, align 4
  %114 = icmp slt i32 %113, 64
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  store i32 64, i32* %3, align 4
  br label %166

116:                                              ; preds = %112, %106
  %117 = load i64, i64* %4, align 8
  %118 = call i64 @TYPE_FIELDS(i64 %117)
  %119 = call i64 @DECL_MODE(i64 %118)
  %120 = call i64 @ALIGN_MODE_128(i64 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  %123 = load i32, i32* %5, align 4
  %124 = icmp slt i32 %123, 128
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  store i32 128, i32* %3, align 4
  br label %166

126:                                              ; preds = %122, %116
  br label %162

127:                                              ; preds = %102, %97
  %128 = load i64, i64* %4, align 8
  %129 = call i64 @TREE_CODE(i64 %128)
  %130 = load i64, i64* @REAL_TYPE, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %142, label %132

132:                                              ; preds = %127
  %133 = load i64, i64* %4, align 8
  %134 = call i64 @TREE_CODE(i64 %133)
  %135 = load i64, i64* @VECTOR_TYPE, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %142, label %137

137:                                              ; preds = %132
  %138 = load i64, i64* %4, align 8
  %139 = call i64 @TREE_CODE(i64 %138)
  %140 = load i64, i64* @INTEGER_TYPE, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %161

142:                                              ; preds = %137, %132, %127
  %143 = load i64, i64* %4, align 8
  %144 = call i64 @TYPE_MODE(i64 %143)
  %145 = load i64, i64* @DFmode, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %142
  %148 = load i32, i32* %5, align 4
  %149 = icmp slt i32 %148, 64
  br i1 %149, label %150, label %151

150:                                              ; preds = %147
  store i32 64, i32* %3, align 4
  br label %166

151:                                              ; preds = %147, %142
  %152 = load i64, i64* %4, align 8
  %153 = call i64 @TYPE_MODE(i64 %152)
  %154 = call i64 @ALIGN_MODE_128(i64 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %151
  %157 = load i32, i32* %5, align 4
  %158 = icmp slt i32 %157, 128
  br i1 %158, label %159, label %160

159:                                              ; preds = %156
  store i32 128, i32* %3, align 4
  br label %166

160:                                              ; preds = %156, %151
  br label %161

161:                                              ; preds = %160, %137
  br label %162

162:                                              ; preds = %161, %126
  br label %163

163:                                              ; preds = %162, %86
  br label %164

164:                                              ; preds = %163, %62
  %165 = load i32, i32* %5, align 4
  store i32 %165, i32* %3, align 4
  br label %166

166:                                              ; preds = %164, %159, %150, %125, %115, %85, %76, %61, %51, %35
  %167 = load i32, i32* %3, align 4
  ret i32 %167
}

declare dso_local i64 @AGGREGATE_TYPE_P(i64) #1

declare dso_local i64 @TYPE_SIZE(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @TREE_INT_CST_LOW(i64) #1

declare dso_local i64 @TREE_INT_CST_HIGH(i64) #1

declare dso_local i64 @TYPE_MODE(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @ALIGN_MODE_128(i64) #1

declare dso_local i64 @TYPE_FIELDS(i64) #1

declare dso_local i64 @DECL_MODE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
