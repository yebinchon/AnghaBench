; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_write_expr_attr_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_write_expr_attr_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attr_desc = type { i64, i32 }

@EQ_ATTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"  enum attr_%s \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"  int \00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"attr_%s = get_attr_%s (insn);\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.attr_desc*)* @write_expr_attr_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_expr_attr_cache(i32 %0, %struct.attr_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.attr_desc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.attr_desc* %1, %struct.attr_desc** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @GET_CODE(i32 %11)
  %13 = load i64, i64* @EQ_ATTR, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %43

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @XSTR(i32 %16, i32 0)
  %18 = load %struct.attr_desc*, %struct.attr_desc** %5, align 8
  %19 = getelementptr inbounds %struct.attr_desc, %struct.attr_desc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %95

23:                                               ; preds = %15
  %24 = load %struct.attr_desc*, %struct.attr_desc** %5, align 8
  %25 = getelementptr inbounds %struct.attr_desc, %struct.attr_desc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load %struct.attr_desc*, %struct.attr_desc** %5, align 8
  %30 = getelementptr inbounds %struct.attr_desc, %struct.attr_desc* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %31)
  br label %35

33:                                               ; preds = %23
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %28
  %36 = load %struct.attr_desc*, %struct.attr_desc** %5, align 8
  %37 = getelementptr inbounds %struct.attr_desc, %struct.attr_desc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.attr_desc*, %struct.attr_desc** %5, align 8
  %40 = getelementptr inbounds %struct.attr_desc, %struct.attr_desc* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %38, i64 %41)
  store i32 1, i32* %3, align 4
  br label %95

43:                                               ; preds = %2
  %44 = load i32, i32* %4, align 4
  %45 = call i64 @GET_CODE(i32 %44)
  %46 = call i8* @GET_RTX_FORMAT(i64 %45)
  store i8* %46, i8** %6, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i64 @GET_CODE(i32 %47)
  %49 = call i32 @GET_RTX_LENGTH(i64 %48)
  store i32 %49, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %91, %43
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %94

54:                                               ; preds = %50
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %6, align 8
  %57 = load i8, i8* %55, align 1
  %58 = sext i8 %57 to i32
  switch i32 %58, label %90 [
    i32 101, label %59
    i32 69, label %68
  ]

59:                                               ; preds = %54
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @XEXP(i32 %60, i32 %61)
  %63 = load %struct.attr_desc*, %struct.attr_desc** %5, align 8
  %64 = call i32 @write_expr_attr_cache(i32 %62, %struct.attr_desc* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  store i32 1, i32* %3, align 4
  br label %95

67:                                               ; preds = %59
  br label %90

68:                                               ; preds = %54
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @XVECLEN(i32 %69, i32 %70)
  store i32 %71, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %72

72:                                               ; preds = %86, %68
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %89

76:                                               ; preds = %72
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @XVECEXP(i32 %77, i32 %78, i32 %79)
  %81 = load %struct.attr_desc*, %struct.attr_desc** %5, align 8
  %82 = call i32 @write_expr_attr_cache(i32 %80, %struct.attr_desc* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  store i32 1, i32* %3, align 4
  br label %95

85:                                               ; preds = %76
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %9, align 4
  br label %72

89:                                               ; preds = %72
  br label %90

90:                                               ; preds = %54, %89, %67
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %7, align 4
  br label %50

94:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %94, %84, %66, %35, %22
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i64 @XSTR(i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @GET_RTX_FORMAT(i64) #1

declare dso_local i32 @GET_RTX_LENGTH(i64) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
