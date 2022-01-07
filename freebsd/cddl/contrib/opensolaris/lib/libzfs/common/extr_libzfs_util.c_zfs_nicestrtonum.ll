; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_util.c_zfs_nicestrtonum.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_util.c_zfs_nicestrtonum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"bad numeric value '%s'\00", align 1
@errno = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"numeric value is too large\00", align 1
@UINT64_MAX = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_nicestrtonum(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32*, i32** %7, align 8
  store i32 0, i32* %11, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp slt i32 %15, 48
  br i1 %16, label %23, label %17

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp sgt i32 %21, 57
  br i1 %22, label %23, label %39

23:                                               ; preds = %17, %3
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 46
  br i1 %28, label %29, label %39

29:                                               ; preds = %23
  %30 = load i32*, i32** %5, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* @TEXT_DOMAIN, align 4
  %35 = call i32 @dgettext(i32 %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %33, i32 %35, i8* %36)
  br label %38

38:                                               ; preds = %32, %29
  store i32 -1, i32* %4, align 4
  br label %123

39:                                               ; preds = %23, %17
  store i64 0, i64* @errno, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @strtoull(i8* %40, i8** %8, i32 10)
  %42 = load i32*, i32** %7, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i64, i64* @errno, align 8
  %44 = load i64, i64* @ERANGE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %39
  %47 = load i32*, i32** %5, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* @TEXT_DOMAIN, align 4
  %52 = call i32 @dgettext(i32 %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %53 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %50, i32 %52)
  br label %54

54:                                               ; preds = %49, %46
  store i32 -1, i32* %4, align 4
  br label %123

55:                                               ; preds = %39
  %56 = load i8*, i8** %8, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 46
  br i1 %59, label %60, label %89

60:                                               ; preds = %55
  %61 = load i8*, i8** %6, align 8
  %62 = call double @strtod(i8* %61, i8** %8)
  store double %62, double* %10, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 @str2shift(i32* %63, i8* %64)
  store i32 %65, i32* %9, align 4
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  store i32 -1, i32* %4, align 4
  br label %123

68:                                               ; preds = %60
  %69 = load i32, i32* %9, align 4
  %70 = call double @pow(i32 2, i32 %69)
  %71 = load double, double* %10, align 8
  %72 = fmul double %71, %70
  store double %72, double* %10, align 8
  %73 = load double, double* %10, align 8
  %74 = load double, double* @UINT64_MAX, align 8
  %75 = fcmp ogt double %73, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %68
  %77 = load i32*, i32** %5, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load i32*, i32** %5, align 8
  %81 = load i32, i32* @TEXT_DOMAIN, align 4
  %82 = call i32 @dgettext(i32 %81, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %83 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %80, i32 %82)
  br label %84

84:                                               ; preds = %79, %76
  store i32 -1, i32* %4, align 4
  br label %123

85:                                               ; preds = %68
  %86 = load double, double* %10, align 8
  %87 = fptosi double %86 to i32
  %88 = load i32*, i32** %7, align 8
  store i32 %87, i32* %88, align 4
  br label %122

89:                                               ; preds = %55
  %90 = load i32*, i32** %5, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = call i32 @str2shift(i32* %90, i8* %91)
  store i32 %92, i32* %9, align 4
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  store i32 -1, i32* %4, align 4
  br label %123

95:                                               ; preds = %89
  %96 = load i32, i32* %9, align 4
  %97 = icmp sge i32 %96, 64
  br i1 %97, label %108, label %98

98:                                               ; preds = %95
  %99 = load i32*, i32** %7, align 8
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %9, align 4
  %102 = shl i32 %100, %101
  %103 = load i32, i32* %9, align 4
  %104 = ashr i32 %102, %103
  %105 = load i32*, i32** %7, align 8
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %104, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %98, %95
  %109 = load i32*, i32** %5, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %116

111:                                              ; preds = %108
  %112 = load i32*, i32** %5, align 8
  %113 = load i32, i32* @TEXT_DOMAIN, align 4
  %114 = call i32 @dgettext(i32 %113, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %115 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %112, i32 %114)
  br label %116

116:                                              ; preds = %111, %108
  store i32 -1, i32* %4, align 4
  br label %123

117:                                              ; preds = %98
  %118 = load i32, i32* %9, align 4
  %119 = load i32*, i32** %7, align 8
  %120 = load i32, i32* %119, align 4
  %121 = shl i32 %120, %118
  store i32 %121, i32* %119, align 4
  br label %122

122:                                              ; preds = %117, %85
  store i32 0, i32* %4, align 4
  br label %123

123:                                              ; preds = %122, %116, %94, %84, %67, %54, %38
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local i32 @zfs_error_aux(i32*, i32, ...) #1

declare dso_local i32 @dgettext(i32, i8*) #1

declare dso_local i32 @strtoull(i8*, i8**, i32) #1

declare dso_local double @strtod(i8*, i8**) #1

declare dso_local i32 @str2shift(i32*, i8*) #1

declare dso_local double @pow(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
