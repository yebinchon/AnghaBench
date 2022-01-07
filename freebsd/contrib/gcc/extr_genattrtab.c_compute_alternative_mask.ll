; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_compute_alternative_mask.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_compute_alternative_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AND = common dso_local global i32 0, align 4
@NOT = common dso_local global i64 0, align 8
@EQ_ATTR = common dso_local global i64 0, align 8
@alternative_name = common dso_local global i8* null, align 8
@IOR = common dso_local global i32 0, align 4
@EQ_ATTR_ALT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @compute_alternative_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compute_alternative_mask(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @GET_CODE(i32 %7)
  %9 = load i32, i32* %5, align 4
  %10 = zext i32 %9 to i64
  %11 = icmp eq i64 %8, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @XEXP(i32 %13, i32 0)
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @compute_alternative_mask(i32 %14, i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @XEXP(i32 %17, i32 1)
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @compute_alternative_mask(i32 %18, i32 %19)
  %21 = or i32 %16, %20
  store i32 %21, i32* %3, align 4
  br label %112

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @AND, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %47

26:                                               ; preds = %22
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @GET_CODE(i32 %27)
  %29 = load i64, i64* @NOT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %26
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @XEXP(i32 %32, i32 0)
  %34 = call i64 @GET_CODE(i32 %33)
  %35 = load i64, i64* @EQ_ATTR, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %31
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @XEXP(i32 %38, i32 0)
  %40 = call i8* @XSTR(i32 %39, i32 0)
  %41 = load i8*, i8** @alternative_name, align 8
  %42 = icmp eq i8* %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @XEXP(i32 %44, i32 0)
  %46 = call i8* @XSTR(i32 %45, i32 1)
  store i8* %46, i8** %6, align 8
  br label %94

47:                                               ; preds = %37, %31, %26, %22
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @IOR, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %47
  %52 = load i32, i32* %4, align 4
  %53 = call i64 @GET_CODE(i32 %52)
  %54 = load i64, i64* @EQ_ATTR, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %51
  %57 = load i32, i32* %4, align 4
  %58 = call i8* @XSTR(i32 %57, i32 0)
  %59 = load i8*, i8** @alternative_name, align 8
  %60 = icmp eq i8* %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* %4, align 4
  %63 = call i8* @XSTR(i32 %62, i32 1)
  store i8* %63, i8** %6, align 8
  br label %93

64:                                               ; preds = %56, %51, %47
  %65 = load i32, i32* %4, align 4
  %66 = call i64 @GET_CODE(i32 %65)
  %67 = load i64, i64* @EQ_ATTR_ALT, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %92

69:                                               ; preds = %64
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @AND, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @XINT(i32 %74, i32 1)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @XINT(i32 %78, i32 0)
  store i32 %79, i32* %3, align 4
  br label %112

80:                                               ; preds = %73, %69
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @IOR, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %80
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @XINT(i32 %85, i32 1)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %84
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @XINT(i32 %89, i32 0)
  store i32 %90, i32* %3, align 4
  br label %112

91:                                               ; preds = %84, %80
  store i32 0, i32* %3, align 4
  br label %112

92:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %112

93:                                               ; preds = %61
  br label %94

94:                                               ; preds = %93, %43
  br label %95

95:                                               ; preds = %94
  %96 = load i8*, i8** %6, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 1
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %95
  %102 = load i8*, i8** %6, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 0
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = sub nsw i32 %105, 48
  %107 = shl i32 1, %106
  store i32 %107, i32* %3, align 4
  br label %112

108:                                              ; preds = %95
  %109 = load i8*, i8** %6, align 8
  %110 = call i32 @atoi(i8* %109)
  %111 = shl i32 1, %110
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %108, %101, %92, %91, %88, %77, %12
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i8* @XSTR(i32, i32) #1

declare dso_local i32 @XINT(i32, i32) #1

declare dso_local i32 @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
