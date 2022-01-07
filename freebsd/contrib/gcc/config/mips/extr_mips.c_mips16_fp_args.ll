; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips16_fp_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips16_fp_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_OLDABI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"mfc1\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"mtc1\00", align 1
@GP_ARG_FIRST = common dso_local global i32 0, align 4
@FP_ARG_FIRST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"\09%s\09%s,%s\0A\00", align 1
@reg_names = common dso_local global i8** null, align 8
@TARGET_64BIT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"\09d%s\09%s,%s\0A\00", align 1
@TARGET_BIG_ENDIAN = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"\09%s\09%s,%s\0A\09%s\09%s,%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @mips16_fp_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mips16_fp_args(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @TARGET_OLDABI, align 4
  %12 = call i32 @gcc_assert(i32 %11)
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %17

16:                                               ; preds = %3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %17

17:                                               ; preds = %16, %15
  %18 = load i32, i32* @GP_ARG_FIRST, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* @FP_ARG_FIRST, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %10, align 4
  br label %21

21:                                               ; preds = %148, %17
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %151

24:                                               ; preds = %21
  %25 = load i32, i32* %10, align 4
  %26 = and i32 %25, 3
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %49

28:                                               ; preds = %24
  %29 = load i32, i32* %9, align 4
  %30 = and i32 %29, 1
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %32, %28
  %36 = load i32*, i32** %4, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load i8**, i8*** @reg_names, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = load i8**, i8*** @reg_names, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 (i32*, i8*, i8*, i8*, i8*, ...) @fprintf(i32* %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %37, i8* %42, i8* %47)
  br label %143

49:                                               ; preds = %24
  %50 = load i32, i32* %10, align 4
  %51 = and i32 %50, 3
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %53, label %140

53:                                               ; preds = %49
  %54 = load i64, i64* @TARGET_64BIT, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %53
  %57 = load i32*, i32** %4, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = load i8**, i8*** @reg_names, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = load i8**, i8*** @reg_names, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %64, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 (i32*, i8*, i8*, i8*, i8*, ...) @fprintf(i32* %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %58, i8* %63, i8* %68)
  br label %139

70:                                               ; preds = %53
  %71 = load i32, i32* %9, align 4
  %72 = and i32 %71, 1
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %74, %70
  %78 = load i64, i64* @TARGET_BIG_ENDIAN, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %107

80:                                               ; preds = %77
  %81 = load i32*, i32** %4, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = load i8**, i8*** @reg_names, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %83, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = load i8**, i8*** @reg_names, align 8
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %88, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = load i8*, i8** %7, align 8
  %95 = load i8**, i8*** @reg_names, align 8
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %95, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = load i8**, i8*** @reg_names, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8*, i8** %101, i64 %103
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 (i32*, i8*, i8*, i8*, i8*, ...) @fprintf(i32* %81, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %82, i8* %87, i8* %93, i8* %94, i8* %100, i8* %105)
  br label %134

107:                                              ; preds = %77
  %108 = load i32*, i32** %4, align 8
  %109 = load i8*, i8** %7, align 8
  %110 = load i8**, i8*** @reg_names, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8*, i8** %110, i64 %112
  %114 = load i8*, i8** %113, align 8
  %115 = load i8**, i8*** @reg_names, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %115, i64 %117
  %119 = load i8*, i8** %118, align 8
  %120 = load i8*, i8** %7, align 8
  %121 = load i8**, i8*** @reg_names, align 8
  %122 = load i32, i32* %8, align 4
  %123 = add nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8*, i8** %121, i64 %124
  %126 = load i8*, i8** %125, align 8
  %127 = load i8**, i8*** @reg_names, align 8
  %128 = load i32, i32* %9, align 4
  %129 = add nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8*, i8** %127, i64 %130
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 (i32*, i8*, i8*, i8*, i8*, ...) @fprintf(i32* %108, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %109, i8* %114, i8* %119, i8* %120, i8* %126, i8* %132)
  br label %134

134:                                              ; preds = %107, %80
  %135 = load i32, i32* %8, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %8, align 4
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %9, align 4
  br label %139

139:                                              ; preds = %134, %56
  br label %142

140:                                              ; preds = %49
  %141 = call i32 (...) @gcc_unreachable()
  br label %142

142:                                              ; preds = %140, %139
  br label %143

143:                                              ; preds = %142, %35
  %144 = load i32, i32* %8, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %8, align 4
  %146 = load i32, i32* %9, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %9, align 4
  br label %148

148:                                              ; preds = %143
  %149 = load i32, i32* %10, align 4
  %150 = lshr i32 %149, 2
  store i32 %150, i32* %10, align 4
  br label %21

151:                                              ; preds = %21
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
