; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_parse_qfloat_immediate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_parse_qfloat_immediate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_LITTLENUMS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@FAIL = common dso_local global i32 0, align 4
@LITTLENUM_NUMBER_OF_BITS = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32*)* @parse_qfloat_immediate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_qfloat_immediate(i8** %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i32* %1, i32** %5, align 8
  %14 = load i8**, i8*** %4, align 8
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %6, align 8
  %16 = load i32, i32* @MAX_LITTLENUMS, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %8, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %20 = call i32 @skip_past_char(i8** %6, i8 signext 35)
  %21 = load i8*, i8** %6, align 8
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @skip_whitespace(i8* %22)
  %24 = load i8*, i8** %7, align 8
  %25 = call i64 @strncmp(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @FAIL, align 4
  store i32 %28, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %115

29:                                               ; preds = %2
  br label %30

30:                                               ; preds = %64, %29
  %31 = load i8*, i8** %7, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = load i8*, i8** %7, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 32
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load i8*, i8** %7, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 10
  br label %45

45:                                               ; preds = %40, %35, %30
  %46 = phi i1 [ false, %35 ], [ false, %30 ], [ %44, %40 ]
  br i1 %46, label %47, label %67

47:                                               ; preds = %45
  %48 = load i8*, i8** %7, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 46
  br i1 %51, label %62, label %52

52:                                               ; preds = %47
  %53 = load i8*, i8** %7, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 101
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  %58 = load i8*, i8** %7, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 69
  br i1 %61, label %62, label %63

62:                                               ; preds = %57, %52, %47
  store i32 1, i32* %10, align 4
  br label %67

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63
  %65 = load i8*, i8** %7, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %7, align 8
  br label %30

67:                                               ; preds = %62, %45
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* @FAIL, align 4
  store i32 %71, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %115

72:                                               ; preds = %67
  br label %73

73:                                               ; preds = %72
  %74 = load i8*, i8** %6, align 8
  %75 = call i8* @atof_ieee(i8* %74, i8 signext 115, i32* %19)
  store i8* %75, i8** %6, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %113

77:                                               ; preds = %73
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %78

78:                                               ; preds = %93, %77
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* @LITTLENUM_NUMBER_OF_BITS, align 4
  %81 = sdiv i32 32, %80
  %82 = icmp slt i32 %79, %81
  br i1 %82, label %83, label %96

83:                                               ; preds = %78
  %84 = load i32, i32* @LITTLENUM_NUMBER_OF_BITS, align 4
  %85 = load i32, i32* %12, align 4
  %86 = shl i32 %85, %84
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %19, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %12, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %12, align 4
  br label %93

93:                                               ; preds = %83
  %94 = load i32, i32* %13, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %13, align 4
  br label %78

96:                                               ; preds = %78
  %97 = load i32, i32* %12, align 4
  %98 = call i64 @is_quarter_float(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = load i32, i32* %12, align 4
  %102 = and i32 %101, 2147483647
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %100, %96
  %105 = load i32, i32* %12, align 4
  %106 = load i32*, i32** %5, align 8
  store i32 %105, i32* %106, align 4
  br label %109

107:                                              ; preds = %100
  %108 = load i32, i32* @FAIL, align 4
  store i32 %108, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %115

109:                                              ; preds = %104
  %110 = load i8*, i8** %6, align 8
  %111 = load i8**, i8*** %4, align 8
  store i8* %110, i8** %111, align 8
  %112 = load i32, i32* @SUCCESS, align 4
  store i32 %112, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %115

113:                                              ; preds = %73
  %114 = load i32, i32* @FAIL, align 4
  store i32 %114, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %115

115:                                              ; preds = %113, %109, %107, %70, %27
  %116 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %116)
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @skip_past_char(i8**, i8 signext) #2

declare dso_local i32 @skip_whitespace(i8*) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i8* @atof_ieee(i8*, i8 signext, i32*) #2

declare dso_local i64 @is_quarter_float(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
