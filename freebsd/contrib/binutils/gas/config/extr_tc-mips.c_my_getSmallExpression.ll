; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_my_getSmallExpression.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_my_getSmallExpression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HAVE_NEWABI = common dso_local global i64 0, align 8
@expr_end = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"unclosed '('\00", align 1
@frag_now = common dso_local global i32 0, align 4
@prev_reloc_op_frag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i8*)* @my_getSmallExpression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @my_getSmallExpression(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [3 x i32], align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  store i64 -1, i64* %8, align 8
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %64, %3
  %14 = load i64, i64* %8, align 8
  %15 = add i64 %14, 1
  store i64 %15, i64* %8, align 8
  %16 = load i8*, i8** %6, align 8
  store i8* %16, i8** %12, align 8
  %17 = load i32, i32* %11, align 4
  store i32 %17, i32* %10, align 4
  br label %18

18:                                               ; preds = %44, %13
  %19 = load i8*, i8** %6, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 32
  br i1 %22, label %33, label %23

23:                                               ; preds = %18
  %24 = load i8*, i8** %6, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 9
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load i8*, i8** %6, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 40
  br label %33

33:                                               ; preds = %28, %23, %18
  %34 = phi i1 [ true, %23 ], [ true, %18 ], [ %32, %28 ]
  br i1 %34, label %35, label %45

35:                                               ; preds = %33
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %6, align 8
  %38 = load i8, i8* %36, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 40
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* %11, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %41, %35
  br label %18

45:                                               ; preds = %33
  br label %46

46:                                               ; preds = %45
  %47 = load i8*, i8** %6, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 37
  br i1 %50, label %51, label %64

51:                                               ; preds = %46
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* @HAVE_NEWABI, align 8
  %54 = icmp ne i64 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 3, i32 1
  %57 = sext i32 %56 to i64
  %58 = icmp ult i64 %52, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %51
  %60 = load i64, i64* %8, align 8
  %61 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %60
  %62 = call i64 @parse_relocation(i8** %6, i32* %61)
  %63 = icmp ne i64 %62, 0
  br label %64

64:                                               ; preds = %59, %51, %46
  %65 = phi i1 [ false, %51 ], [ false, %46 ], [ %63, %59 ]
  br i1 %65, label %13, label %66

66:                                               ; preds = %64
  %67 = load i32*, i32** %4, align 8
  %68 = load i8*, i8** %12, align 8
  %69 = call i32 @my_getExpression(i32* %67, i8* %68)
  %70 = load i8*, i8** @expr_end, align 8
  store i8* %70, i8** %6, align 8
  br label %71

71:                                               ; preds = %102, %66
  %72 = load i32, i32* %10, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %91

74:                                               ; preds = %71
  %75 = load i8*, i8** %6, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 41
  br i1 %78, label %89, label %79

79:                                               ; preds = %74
  %80 = load i8*, i8** %6, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 32
  br i1 %83, label %89, label %84

84:                                               ; preds = %79
  %85 = load i8*, i8** %6, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 9
  br label %89

89:                                               ; preds = %84, %79, %74
  %90 = phi i1 [ true, %79 ], [ true, %74 ], [ %88, %84 ]
  br label %91

91:                                               ; preds = %89, %71
  %92 = phi i1 [ false, %71 ], [ %90, %89 ]
  br i1 %92, label %93, label %103

93:                                               ; preds = %91
  %94 = load i8*, i8** %6, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %6, align 8
  %96 = load i8, i8* %94, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 41
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %10, align 4
  br label %102

102:                                              ; preds = %99, %93
  br label %71

103:                                              ; preds = %91
  %104 = load i32, i32* %10, align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = call i32 @as_bad(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %103
  %109 = load i8*, i8** %6, align 8
  store i8* %109, i8** @expr_end, align 8
  %110 = load i64, i64* %8, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %132

112:                                              ; preds = %108
  %113 = load i32, i32* @frag_now, align 4
  store i32 %113, i32* @prev_reloc_op_frag, align 4
  store i64 0, i64* %9, align 8
  br label %114

114:                                              ; preds = %128, %112
  %115 = load i64, i64* %9, align 8
  %116 = load i64, i64* %8, align 8
  %117 = icmp ult i64 %115, %116
  br i1 %117, label %118, label %131

118:                                              ; preds = %114
  %119 = load i64, i64* %8, align 8
  %120 = sub i64 %119, 1
  %121 = load i64, i64* %9, align 8
  %122 = sub i64 %120, %121
  %123 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** %5, align 8
  %126 = load i64, i64* %9, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  store i32 %124, i32* %127, align 4
  br label %128

128:                                              ; preds = %118
  %129 = load i64, i64* %9, align 8
  %130 = add i64 %129, 1
  store i64 %130, i64* %9, align 8
  br label %114

131:                                              ; preds = %114
  br label %132

132:                                              ; preds = %131, %108
  %133 = load i64, i64* %8, align 8
  ret i64 %133
}

declare dso_local i64 @parse_relocation(i8**, i32*) #1

declare dso_local i32 @my_getExpression(i32*, i8*) #1

declare dso_local i32 @as_bad(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
