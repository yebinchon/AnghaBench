; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_evaluate_eq_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_evaluate_eq_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@true_rtx = common dso_local global i32 0, align 4
@false_rtx = common dso_local global i32 0, align 4
@EQ_ATTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"_\00", align 1
@EQ = common dso_local global i32 0, align 4
@AND = common dso_local global i32 0, align 4
@IOR = common dso_local global i32 0, align 4
@NOT = common dso_local global i32 0, align 4
@address_used = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @evaluate_eq_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evaluate_eq_attr(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca [256 x i8], align 16
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @GET_CODE(i32 %18)
  switch i32 %19, label %150 [
    i32 129, label %20
    i32 128, label %32
    i32 130, label %80
  ]

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = call i8* @XSTR(i32 %21, i32 0)
  %23 = load i32, i32* %6, align 4
  %24 = call i8* @XSTR(i32 %23, i32 1)
  %25 = call i32 @strcmp_check(i8* %22, i8* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* @true_rtx, align 4
  store i32 %28, i32* %13, align 4
  br label %31

29:                                               ; preds = %20
  %30 = load i32, i32* @false_rtx, align 4
  store i32 %30, i32* %13, align 4
  br label %31

31:                                               ; preds = %29, %27
  br label %152

32:                                               ; preds = %4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @GET_CODE(i32 %33)
  %35 = load i32, i32* @EQ_ATTR, align 4
  %36 = icmp eq i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @gcc_assert(i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = call i8* @XSTR(i32 %39, i32 0)
  %41 = call i64 @strlen(i8* %40)
  %42 = load i32, i32* %6, align 4
  %43 = call i8* @XSTR(i32 %42, i32 1)
  %44 = call i64 @strlen(i8* %43)
  %45 = add nsw i64 %41, %44
  %46 = add nsw i64 %45, 2
  %47 = icmp sle i64 %46, 256
  %48 = zext i1 %47 to i32
  %49 = call i32 @gcc_assert(i32 %48)
  %50 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %51 = load i32, i32* %6, align 4
  %52 = call i8* @XSTR(i32 %51, i32 0)
  %53 = call i32 @strcpy(i8* %50, i8* %52)
  %54 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %55 = call i32 @strcat(i8* %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %56 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %57 = load i32, i32* %6, align 4
  %58 = call i8* @XSTR(i32 %57, i32 1)
  %59 = call i32 @strcat(i8* %56, i8* %58)
  %60 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  store i8* %60, i8** %15, align 8
  br label %61

61:                                               ; preds = %70, %32
  %62 = load i8*, i8** %15, align 8
  %63 = load i8, i8* %62, align 1
  %64 = icmp ne i8 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %61
  %66 = load i8*, i8** %15, align 8
  %67 = load i8, i8* %66, align 1
  %68 = call signext i8 @TOUPPER(i8 signext %67)
  %69 = load i8*, i8** %15, align 8
  store i8 %68, i8* %69, align 1
  br label %70

70:                                               ; preds = %65
  %71 = load i8*, i8** %15, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %15, align 8
  br label %61

73:                                               ; preds = %61
  %74 = load i32, i32* @EQ, align 4
  %75 = load i32, i32* %7, align 4
  %76 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %77 = call i32 @DEF_ATTR_STRING(i8* %76)
  %78 = call i32 (i32, i32, ...) @attr_rtx(i32 128, i32 %77)
  %79 = call i32 (i32, i32, ...) @attr_rtx(i32 %74, i32 %75, i32 %78)
  store i32 %79, i32* %13, align 4
  br label %152

80:                                               ; preds = %4
  %81 = load i32, i32* @false_rtx, align 4
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* @true_rtx, align 4
  store i32 %82, i32* %11, align 4
  store i32 0, i32* %14, align 4
  br label %83

83:                                               ; preds = %129, %80
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @XVECLEN(i32 %85, i32 0)
  %87 = icmp slt i32 %84, %86
  br i1 %87, label %88, label %132

88:                                               ; preds = %83
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %14, align 4
  %91 = call i32 @XVECEXP(i32 %89, i32 0, i32 %90)
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @simplify_test_exp_in_temp(i32 %91, i32 %92, i32 %93)
  store i32 %94, i32* %17, align 4
  %95 = load i32, i32* @AND, align 4
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %17, align 4
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @insert_right_side(i32 %95, i32 %96, i32 %97, i32 %98, i32 %99)
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* @AND, align 4
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %14, align 4
  %106 = add nsw i32 %105, 1
  %107 = call i32 @XVECEXP(i32 %104, i32 0, i32 %106)
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @evaluate_eq_attr(i32 %103, i32 %107, i32 %108, i32 %109)
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @insert_right_side(i32 %101, i32 %102, i32 %110, i32 %111, i32 %112)
  store i32 %113, i32* %12, align 4
  %114 = load i32, i32* @IOR, align 4
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* %9, align 4
  %119 = call i32 @insert_right_side(i32 %114, i32 %115, i32 %116, i32 %117, i32 %118)
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* @NOT, align 4
  %121 = load i32, i32* %17, align 4
  %122 = call i32 (i32, i32, ...) @attr_rtx(i32 %120, i32 %121)
  store i32 %122, i32* %13, align 4
  %123 = load i32, i32* @AND, align 4
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @insert_right_side(i32 %123, i32 %124, i32 %125, i32 %126, i32 %127)
  store i32 %128, i32* %11, align 4
  br label %129

129:                                              ; preds = %88
  %130 = load i32, i32* %14, align 4
  %131 = add nsw i32 %130, 2
  store i32 %131, i32* %14, align 4
  br label %83

132:                                              ; preds = %83
  %133 = load i32, i32* @AND, align 4
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* %7, align 4
  %137 = call i32 @XEXP(i32 %136, i32 1)
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* %9, align 4
  %140 = call i32 @evaluate_eq_attr(i32 %135, i32 %137, i32 %138, i32 %139)
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* %9, align 4
  %143 = call i32 @insert_right_side(i32 %133, i32 %134, i32 %140, i32 %141, i32 %142)
  store i32 %143, i32* %12, align 4
  %144 = load i32, i32* @IOR, align 4
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* %12, align 4
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* %9, align 4
  %149 = call i32 @insert_right_side(i32 %144, i32 %145, i32 %146, i32 %147, i32 %148)
  store i32 %149, i32* %13, align 4
  br label %152

150:                                              ; preds = %4
  %151 = call i32 (...) @gcc_unreachable()
  br label %152

152:                                              ; preds = %150, %132, %73, %31
  store i64 0, i64* @address_used, align 8
  %153 = load i32, i32* %13, align 4
  %154 = call i32 @walk_attr_value(i32 %153)
  %155 = load i64, i64* @address_used, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %166

157:                                              ; preds = %152
  %158 = load i32, i32* %6, align 4
  %159 = call i32 @ATTR_IND_SIMPLIFIED_P(i32 %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %157
  %162 = load i32, i32* %6, align 4
  %163 = call i32 @copy_rtx_unchanging(i32 %162)
  store i32 %163, i32* %5, align 4
  br label %168

164:                                              ; preds = %157
  %165 = load i32, i32* %6, align 4
  store i32 %165, i32* %5, align 4
  br label %168

166:                                              ; preds = %152
  %167 = load i32, i32* %13, align 4
  store i32 %167, i32* %5, align 4
  br label %168

168:                                              ; preds = %166, %164, %161
  %169 = load i32, i32* %5, align 4
  ret i32 %169
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @strcmp_check(i8*, i8*) #1

declare dso_local i8* @XSTR(i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local signext i8 @TOUPPER(i8 signext) #1

declare dso_local i32 @attr_rtx(i32, i32, ...) #1

declare dso_local i32 @DEF_ATTR_STRING(i8*) #1

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @simplify_test_exp_in_temp(i32, i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

declare dso_local i32 @insert_right_side(i32, i32, i32, i32, i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @walk_attr_value(i32) #1

declare dso_local i32 @ATTR_IND_SIMPLIFIED_P(i32) #1

declare dso_local i32 @copy_rtx_unchanging(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
