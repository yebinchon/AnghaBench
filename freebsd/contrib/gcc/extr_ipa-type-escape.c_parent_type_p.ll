; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-type-escape.c_parent_type_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-type-escape.c_parent_type_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNION_TYPE = common dso_local global i64 0, align 8
@QUAL_UNION_TYPE = common dso_local global i64 0, align 8
@FIELD_DECL = common dso_local global i64 0, align 8
@RECORD_TYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @parent_type_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parent_type_p(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %15 = load i64, i64* %4, align 8
  %16 = call i64 @TYPE_BINFO(i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %46

18:                                               ; preds = %2
  %19 = load i64, i64* %4, align 8
  %20 = call i64 @TYPE_BINFO(i64 %19)
  store i64 %20, i64* %7, align 8
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %42, %18
  %22 = load i64, i64* %7, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i64, i64* %8, align 8
  %25 = call i64 @BINFO_BASE_ITERATE(i64 %22, i32 %23, i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %21
  %28 = load i64, i64* %8, align 8
  %29 = call i64 @BINFO_TYPE(i64 %28)
  store i64 %29, i64* %9, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 1, i32* %3, align 4
  br label %172

34:                                               ; preds = %27
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @parent_type_p(i64 %35, i64 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 1, i32* %3, align 4
  br label %172

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %40
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %21

45:                                               ; preds = %21
  br label %46

46:                                               ; preds = %45, %2
  %47 = load i64, i64* %4, align 8
  %48 = call i64 @TREE_CODE(i64 %47)
  %49 = load i64, i64* @UNION_TYPE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load i64, i64* %4, align 8
  %53 = call i64 @TREE_CODE(i64 %52)
  %54 = load i64, i64* @QUAL_UNION_TYPE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %120

56:                                               ; preds = %51, %46
  %57 = load i64, i64* %4, align 8
  %58 = call i64 @TYPE_FIELDS(i64 %57)
  store i64 %58, i64* %10, align 8
  br label %59

59:                                               ; preds = %76, %56
  %60 = load i64, i64* %10, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %79

62:                                               ; preds = %59
  %63 = load i64, i64* %10, align 8
  %64 = call i64 @TREE_CODE(i64 %63)
  %65 = load i64, i64* @FIELD_DECL, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %76

68:                                               ; preds = %62
  %69 = load i64, i64* %10, align 8
  %70 = call i64 @TREE_TYPE(i64 %69)
  store i64 %70, i64* %11, align 8
  %71 = load i64, i64* %11, align 8
  %72 = load i64, i64* %5, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  store i32 1, i32* %3, align 4
  br label %172

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %75, %67
  %77 = load i64, i64* %10, align 8
  %78 = call i64 @TREE_CHAIN(i64 %77)
  store i64 %78, i64* %10, align 8
  br label %59

79:                                               ; preds = %59
  %80 = load i64, i64* %4, align 8
  %81 = call i64 @TYPE_FIELDS(i64 %80)
  store i64 %81, i64* %10, align 8
  br label %82

82:                                               ; preds = %116, %79
  %83 = load i64, i64* %10, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %119

85:                                               ; preds = %82
  %86 = load i64, i64* %10, align 8
  %87 = call i64 @TREE_CODE(i64 %86)
  %88 = load i64, i64* @FIELD_DECL, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %116

91:                                               ; preds = %85
  %92 = load i64, i64* %10, align 8
  %93 = call i64 @TREE_TYPE(i64 %92)
  store i64 %93, i64* %12, align 8
  %94 = load i64, i64* %12, align 8
  %95 = call i64 @TREE_CODE(i64 %94)
  %96 = load i64, i64* @RECORD_TYPE, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %108, label %98

98:                                               ; preds = %91
  %99 = load i64, i64* %12, align 8
  %100 = call i64 @TREE_CODE(i64 %99)
  %101 = load i64, i64* @QUAL_UNION_TYPE, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %108, label %103

103:                                              ; preds = %98
  %104 = load i64, i64* %12, align 8
  %105 = call i64 @TREE_CODE(i64 %104)
  %106 = load i64, i64* @UNION_TYPE, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %103, %98, %91
  %109 = load i64, i64* %12, align 8
  %110 = load i64, i64* %5, align 8
  %111 = call i32 @parent_type_p(i64 %109, i64 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  store i32 1, i32* %3, align 4
  br label %172

114:                                              ; preds = %108
  br label %115

115:                                              ; preds = %114, %103
  br label %116

116:                                              ; preds = %115, %90
  %117 = load i64, i64* %10, align 8
  %118 = call i64 @TREE_CHAIN(i64 %117)
  store i64 %118, i64* %10, align 8
  br label %82

119:                                              ; preds = %82
  br label %120

120:                                              ; preds = %119, %51
  %121 = load i64, i64* %4, align 8
  %122 = call i64 @TREE_CODE(i64 %121)
  %123 = load i64, i64* @RECORD_TYPE, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %171

125:                                              ; preds = %120
  %126 = load i64, i64* %4, align 8
  %127 = call i64 @TYPE_FIELDS(i64 %126)
  store i64 %127, i64* %13, align 8
  br label %128

128:                                              ; preds = %167, %125
  %129 = load i64, i64* %13, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %170

131:                                              ; preds = %128
  %132 = load i64, i64* %13, align 8
  %133 = call i64 @TREE_CODE(i64 %132)
  %134 = load i64, i64* @FIELD_DECL, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  br label %167

137:                                              ; preds = %131
  %138 = load i64, i64* %13, align 8
  %139 = call i64 @TREE_TYPE(i64 %138)
  store i64 %139, i64* %14, align 8
  %140 = load i64, i64* %14, align 8
  %141 = load i64, i64* %5, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %137
  store i32 1, i32* %3, align 4
  br label %172

144:                                              ; preds = %137
  %145 = load i64, i64* %14, align 8
  %146 = call i64 @TREE_CODE(i64 %145)
  %147 = load i64, i64* @RECORD_TYPE, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %159, label %149

149:                                              ; preds = %144
  %150 = load i64, i64* %14, align 8
  %151 = call i64 @TREE_CODE(i64 %150)
  %152 = load i64, i64* @QUAL_UNION_TYPE, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %159, label %154

154:                                              ; preds = %149
  %155 = load i64, i64* %14, align 8
  %156 = call i64 @TREE_CODE(i64 %155)
  %157 = load i64, i64* @UNION_TYPE, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %166

159:                                              ; preds = %154, %149, %144
  %160 = load i64, i64* %14, align 8
  %161 = load i64, i64* %5, align 8
  %162 = call i32 @parent_type_p(i64 %160, i64 %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %159
  store i32 1, i32* %3, align 4
  br label %172

165:                                              ; preds = %159
  br label %170

166:                                              ; preds = %154
  br label %167

167:                                              ; preds = %166, %136
  %168 = load i64, i64* %13, align 8
  %169 = call i64 @TREE_CHAIN(i64 %168)
  store i64 %169, i64* %13, align 8
  br label %128

170:                                              ; preds = %165, %128
  br label %171

171:                                              ; preds = %170, %120
  store i32 0, i32* %3, align 4
  br label %172

172:                                              ; preds = %171, %164, %143, %113, %74, %39, %33
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i64 @TYPE_BINFO(i64) #1

declare dso_local i64 @BINFO_BASE_ITERATE(i64, i32, i64) #1

declare dso_local i64 @BINFO_TYPE(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TYPE_FIELDS(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
