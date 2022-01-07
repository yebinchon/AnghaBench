; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-alpha.c_md_undefined_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-alpha.c_md_undefined_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@alpha_register_table = common dso_local global i32** null, align 8
@AXP_REG_FP = common dso_local global i64 0, align 8
@alpha_noat_on = common dso_local global i32 0, align 4
@AXP_REG_AT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Used $at without \22.set noat\22\00", align 1
@alpha_gp_register = common dso_local global i64 0, align 8
@AXP_REG_SP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @md_undefined_symbol(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 36
  br i1 %9, label %10, label %172

10:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %12, i8** %3, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  switch i32 %14, label %171 [
    i32 102, label %15
    i32 114, label %33
    i32 48, label %41
    i32 49, label %41
    i32 50, label %41
    i32 51, label %41
    i32 52, label %41
    i32 53, label %41
    i32 54, label %41
    i32 55, label %41
    i32 56, label %41
    i32 57, label %41
    i32 97, label %110
    i32 103, label %135
    i32 115, label %153
  ]

15:                                               ; preds = %10
  %16 = load i8*, i8** %3, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 112
  br i1 %20, label %21, label %32

21:                                               ; preds = %15
  %22 = load i8*, i8** %3, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 2
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load i32**, i32*** @alpha_register_table, align 8
  %29 = load i64, i64* @AXP_REG_FP, align 8
  %30 = getelementptr inbounds i32*, i32** %28, i64 %29
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %2, align 8
  br label %173

32:                                               ; preds = %21, %15
  store i32 32, i32* %4, align 4
  br label %33

33:                                               ; preds = %10, %32
  %34 = load i8*, i8** %3, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %3, align 8
  %36 = load i8, i8* %35, align 1
  %37 = call i32 @ISDIGIT(i8 signext %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  br label %171

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %40
  %42 = load i8*, i8** %3, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load i8*, i8** %3, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = sub nsw i32 %51, 48
  store i32 %52, i32* %5, align 4
  br label %90

53:                                               ; preds = %41
  %54 = load i8*, i8** %3, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 48
  br i1 %58, label %59, label %88

59:                                               ; preds = %53
  %60 = load i8*, i8** %3, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  %62 = load i8, i8* %61, align 1
  %63 = call i32 @ISDIGIT(i8 signext %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %88

65:                                               ; preds = %59
  %66 = load i8*, i8** %3, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 2
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %88

71:                                               ; preds = %65
  %72 = load i8*, i8** %3, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = sub nsw i32 %75, 48
  %77 = mul nsw i32 %76, 10
  %78 = load i8*, i8** %3, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = add nsw i32 %77, %81
  %83 = sub nsw i32 %82, 48
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp sge i32 %84, 32
  br i1 %85, label %86, label %87

86:                                               ; preds = %71
  br label %171

87:                                               ; preds = %71
  br label %89

88:                                               ; preds = %65, %59, %53
  br label %171

89:                                               ; preds = %87
  br label %90

90:                                               ; preds = %89, %47
  %91 = load i32, i32* @alpha_noat_on, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %102, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* %4, align 4
  %96 = add nsw i32 %94, %95
  %97 = load i32, i32* @AXP_REG_AT, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %101 = call i32 @as_warn(i32 %100)
  br label %102

102:                                              ; preds = %99, %93, %90
  %103 = load i32**, i32*** @alpha_register_table, align 8
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* %4, align 4
  %106 = add nsw i32 %104, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32*, i32** %103, i64 %107
  %109 = load i32*, i32** %108, align 8
  store i32* %109, i32** %2, align 8
  br label %173

110:                                              ; preds = %10
  %111 = load i8*, i8** %3, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 1
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 116
  br i1 %115, label %116, label %134

116:                                              ; preds = %110
  %117 = load i8*, i8** %3, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 2
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %134

122:                                              ; preds = %116
  %123 = load i32, i32* @alpha_noat_on, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %122
  %126 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %127 = call i32 @as_warn(i32 %126)
  br label %128

128:                                              ; preds = %125, %122
  %129 = load i32**, i32*** @alpha_register_table, align 8
  %130 = load i32, i32* @AXP_REG_AT, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32*, i32** %129, i64 %131
  %133 = load i32*, i32** %132, align 8
  store i32* %133, i32** %2, align 8
  br label %173

134:                                              ; preds = %116, %110
  br label %171

135:                                              ; preds = %10
  %136 = load i8*, i8** %3, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 1
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp eq i32 %139, 112
  br i1 %140, label %141, label %152

141:                                              ; preds = %135
  %142 = load i8*, i8** %3, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 2
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %141
  %148 = load i32**, i32*** @alpha_register_table, align 8
  %149 = load i64, i64* @alpha_gp_register, align 8
  %150 = getelementptr inbounds i32*, i32** %148, i64 %149
  %151 = load i32*, i32** %150, align 8
  store i32* %151, i32** %2, align 8
  br label %173

152:                                              ; preds = %141, %135
  br label %171

153:                                              ; preds = %10
  %154 = load i8*, i8** %3, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 1
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp eq i32 %157, 112
  br i1 %158, label %159, label %170

159:                                              ; preds = %153
  %160 = load i8*, i8** %3, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 2
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %159
  %166 = load i32**, i32*** @alpha_register_table, align 8
  %167 = load i64, i64* @AXP_REG_SP, align 8
  %168 = getelementptr inbounds i32*, i32** %166, i64 %167
  %169 = load i32*, i32** %168, align 8
  store i32* %169, i32** %2, align 8
  br label %173

170:                                              ; preds = %159, %153
  br label %171

171:                                              ; preds = %10, %170, %152, %134, %88, %86, %39
  br label %172

172:                                              ; preds = %171, %1
  store i32* null, i32** %2, align 8
  br label %173

173:                                              ; preds = %172, %165, %147, %128, %102, %27
  %174 = load i32*, i32** %2, align 8
  ret i32* %174
}

declare dso_local i32 @ISDIGIT(i8 signext) #1

declare dso_local i32 @as_warn(i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
