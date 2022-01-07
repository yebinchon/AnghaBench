; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_util.c_dlg_auto_sizefile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_util.c_dlg_auto_sizefile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64, i64 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"dlg_auto_sizefile: Cannot open input file %s\00", align 1
@SLINES = common dso_local global i32 0, align 4
@dialog_vars = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@SCOLS = common dso_local global i32 0, align 4
@TAB = common dso_local global i32 0, align 4
@dialog_state = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dlg_auto_sizefile(i8* %0, i8* %1, i32* %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %6
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @dlg_count_columns(i8* %23)
  br label %26

25:                                               ; preds = %6
  br label %26

26:                                               ; preds = %25, %22
  %27 = phi i32 [ %24, %22 ], [ 0, %25 ]
  store i32 %27, i32* %14, align 4
  store i32 4, i32* %15, align 4
  store i32 2, i32* %16, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = call i32* @fopen(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %29, i32** %19, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @dlg_exiterr(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %31, %26
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %63

42:                                               ; preds = %38, %34
  %43 = load i32, i32* @SLINES, align 4
  %44 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 3), align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 0), align 8
  br label %49

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48, %46
  %50 = phi i32 [ %47, %46 ], [ 0, %48 ]
  %51 = sub nsw i32 %43, %50
  %52 = load i32*, i32** %9, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* @SCOLS, align 4
  %54 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 3), align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 1), align 4
  br label %59

58:                                               ; preds = %49
  br label %59

59:                                               ; preds = %58, %56
  %60 = phi i32 [ %57, %56 ], [ 0, %58 ]
  %61 = sub nsw i32 %53, %60
  %62 = load i32*, i32** %10, align 8
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %59, %38
  %64 = load i32*, i32** %9, align 8
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %90

67:                                               ; preds = %63
  %68 = load i32*, i32** %10, align 8
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %90

71:                                               ; preds = %67
  %72 = load i32*, i32** %19, align 8
  %73 = call i32 @fclose(i32* %72)
  %74 = load i32*, i32** %10, align 8
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @SCOLS, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load i32, i32* @SCOLS, align 4
  %80 = load i32*, i32** %10, align 8
  store i32 %79, i32* %80, align 4
  br label %81

81:                                               ; preds = %78, %71
  %82 = load i32*, i32** %9, align 8
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @SLINES, align 4
  %85 = icmp sgt i32 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i32, i32* @SLINES, align 4
  %88 = load i32*, i32** %9, align 8
  store i32 %87, i32* %88, align 4
  br label %89

89:                                               ; preds = %86, %81
  br label %162

90:                                               ; preds = %67, %63
  br label %91

91:                                               ; preds = %140, %90
  %92 = load i32*, i32** %19, align 8
  %93 = call i32 @feof(i32* %92)
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  br i1 %95, label %96, label %143

96:                                               ; preds = %91
  %97 = load i32*, i32** %19, align 8
  %98 = call i64 @ferror(i32* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  br label %143

101:                                              ; preds = %96
  store i64 0, i64* %17, align 8
  br label %102

102:                                              ; preds = %131, %101
  %103 = load i32*, i32** %19, align 8
  %104 = call i32 @getc(i32* %103)
  store i32 %104, i32* %18, align 4
  %105 = icmp ne i32 %104, 10
  br i1 %105, label %106, label %111

106:                                              ; preds = %102
  %107 = load i32*, i32** %19, align 8
  %108 = call i32 @feof(i32* %107)
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  br label %111

111:                                              ; preds = %106, %102
  %112 = phi i1 [ false, %102 ], [ %110, %106 ]
  br i1 %112, label %113, label %132

113:                                              ; preds = %111
  %114 = load i32, i32* %18, align 4
  %115 = load i32, i32* @TAB, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %128

117:                                              ; preds = %113
  %118 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 2), align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %117
  %121 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dialog_state, i32 0, i32 0), align 8
  %122 = load i64, i64* %17, align 8
  %123 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dialog_state, i32 0, i32 0), align 8
  %124 = srem i64 %122, %123
  %125 = sub nsw i64 %121, %124
  %126 = load i64, i64* %17, align 8
  %127 = add nsw i64 %126, %125
  store i64 %127, i64* %17, align 8
  br label %131

128:                                              ; preds = %117, %113
  %129 = load i64, i64* %17, align 8
  %130 = add nsw i64 %129, 1
  store i64 %130, i64* %17, align 8
  br label %131

131:                                              ; preds = %128, %120
  br label %102

132:                                              ; preds = %111
  %133 = load i64, i64* %17, align 8
  %134 = load i32, i32* %14, align 4
  %135 = sext i32 %134 to i64
  %136 = icmp sgt i64 %133, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load i64, i64* %17, align 8
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %14, align 4
  br label %140

140:                                              ; preds = %137, %132
  %141 = load i32, i32* %13, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %13, align 4
  br label %91

143:                                              ; preds = %100, %91
  %144 = load i32, i32* @SLINES, align 4
  %145 = load i32, i32* %13, align 4
  %146 = load i32, i32* %16, align 4
  %147 = add nsw i32 %145, %146
  %148 = load i32, i32* %11, align 4
  %149 = add nsw i32 %147, %148
  %150 = call i32 @MIN(i32 %144, i32 %149)
  %151 = load i32*, i32** %9, align 8
  store i32 %150, i32* %151, align 4
  %152 = load i32, i32* @SCOLS, align 4
  %153 = load i32, i32* %14, align 4
  %154 = load i32, i32* %15, align 4
  %155 = add nsw i32 %153, %154
  %156 = load i32, i32* %12, align 4
  %157 = call i32 @MAX(i32 %155, i32 %156)
  %158 = call i32 @MIN(i32 %152, i32 %157)
  %159 = load i32*, i32** %10, align 8
  store i32 %158, i32* %159, align 4
  %160 = load i32*, i32** %19, align 8
  %161 = call i32 @fclose(i32* %160)
  br label %162

162:                                              ; preds = %143, %89
  ret void
}

declare dso_local i32 @dlg_count_columns(i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @dlg_exiterr(i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @getc(i32*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
