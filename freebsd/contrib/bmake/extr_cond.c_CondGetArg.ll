; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_cond.c_CondGetArg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_cond.c_CondGetArg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VAR_CMD = common dso_local global i32 0, align 4
@VARF_UNDEFERR = common dso_local global i32 0, align 4
@VARF_WANTRES = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@PARSE_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Missing closing parenthesis for %s()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8**, i8*)* @CondGetArg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CondGetArg(i8** %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load i8**, i8*** %5, align 8
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i8*, i8** %8, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %8, align 8
  br label %23

23:                                               ; preds = %20, %3
  %24 = load i8*, i8** %8, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i8**, i8*** %6, align 8
  store i8* null, i8** %29, align 8
  store i32 0, i32* %4, align 4
  br label %157

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %43, %30
  %32 = load i8*, i8** %8, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 32
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load i8*, i8** %8, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 9
  br label %41

41:                                               ; preds = %36, %31
  %42 = phi i1 [ true, %31 ], [ %40, %36 ]
  br i1 %42, label %43, label %46

43:                                               ; preds = %41
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %8, align 8
  br label %31

46:                                               ; preds = %41
  %47 = call i32 @Buf_Init(i32* %10, i32 16)
  store i32 0, i32* %11, align 4
  br label %48

48:                                               ; preds = %114, %80, %46
  %49 = load i8*, i8** %8, align 8
  %50 = load i8, i8* %49, align 1
  store i8 %50, i8* %12, align 1
  %51 = load i8, i8* %12, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %48
  %55 = load i8, i8* %12, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 32
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load i8, i8* %12, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 9
  br i1 %61, label %62, label %63

62:                                               ; preds = %58, %54, %48
  br label %120

63:                                               ; preds = %58
  %64 = load i8, i8* %12, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 38
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load i8, i8* %12, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 124
  br i1 %70, label %71, label %75

71:                                               ; preds = %67, %63
  %72 = load i32, i32* %11, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  br label %120

75:                                               ; preds = %71, %67
  %76 = load i8*, i8** %8, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 36
  br i1 %79, label %80, label %97

80:                                               ; preds = %75
  %81 = load i8*, i8** %8, align 8
  %82 = load i32, i32* @VAR_CMD, align 4
  %83 = load i32, i32* @VARF_UNDEFERR, align 4
  %84 = load i32, i32* @VARF_WANTRES, align 4
  %85 = or i32 %83, %84
  %86 = call i8* @Var_Parse(i8* %81, i32 %82, i32 %85, i32* %14, i8** %15)
  store i8* %86, i8** %13, align 8
  %87 = load i8*, i8** %13, align 8
  %88 = call i32 @strlen(i8* %87)
  %89 = load i8*, i8** %13, align 8
  %90 = call i32 @Buf_AddBytes(i32* %10, i32 %88, i8* %89)
  %91 = load i8*, i8** %15, align 8
  %92 = call i32 @free(i8* %91)
  %93 = load i32, i32* %14, align 4
  %94 = load i8*, i8** %8, align 8
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i8, i8* %94, i64 %95
  store i8* %96, i8** %8, align 8
  br label %48

97:                                               ; preds = %75
  %98 = load i8, i8* %12, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 40
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %11, align 4
  br label %114

104:                                              ; preds = %97
  %105 = load i8, i8* %12, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 41
  br i1 %107, label %108, label %113

108:                                              ; preds = %104
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %109, -1
  store i32 %110, i32* %11, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  br label %120

113:                                              ; preds = %108, %104
  br label %114

114:                                              ; preds = %113, %101
  %115 = load i8*, i8** %8, align 8
  %116 = load i8, i8* %115, align 1
  %117 = call i32 @Buf_AddByte(i32* %10, i8 signext %116)
  %118 = load i8*, i8** %8, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %8, align 8
  br label %48

120:                                              ; preds = %112, %74, %62
  %121 = call i8* @Buf_GetAll(i32* %10, i32* %9)
  %122 = load i8**, i8*** %6, align 8
  store i8* %121, i8** %122, align 8
  %123 = load i32, i32* @FALSE, align 4
  %124 = call i32 @Buf_Destroy(i32* %10, i32 %123)
  br label %125

125:                                              ; preds = %137, %120
  %126 = load i8*, i8** %8, align 8
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 32
  br i1 %129, label %135, label %130

130:                                              ; preds = %125
  %131 = load i8*, i8** %8, align 8
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %133, 9
  br label %135

135:                                              ; preds = %130, %125
  %136 = phi i1 [ true, %125 ], [ %134, %130 ]
  br i1 %136, label %137, label %140

137:                                              ; preds = %135
  %138 = load i8*, i8** %8, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %8, align 8
  br label %125

140:                                              ; preds = %135
  %141 = load i8*, i8** %7, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %153

143:                                              ; preds = %140
  %144 = load i8*, i8** %8, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %8, align 8
  %146 = load i8, i8* %144, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp ne i32 %147, 41
  br i1 %148, label %149, label %153

149:                                              ; preds = %143
  %150 = load i32, i32* @PARSE_WARNING, align 4
  %151 = load i8*, i8** %7, align 8
  %152 = call i32 @Parse_Error(i32 %150, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %151)
  store i32 0, i32* %4, align 4
  br label %157

153:                                              ; preds = %143, %140
  %154 = load i8*, i8** %8, align 8
  %155 = load i8**, i8*** %5, align 8
  store i8* %154, i8** %155, align 8
  %156 = load i32, i32* %9, align 4
  store i32 %156, i32* %4, align 4
  br label %157

157:                                              ; preds = %153, %149, %28
  %158 = load i32, i32* %4, align 4
  ret i32 %158
}

declare dso_local i32 @Buf_Init(i32*, i32) #1

declare dso_local i8* @Var_Parse(i8*, i32, i32, i32*, i8**) #1

declare dso_local i32 @Buf_AddBytes(i32*, i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @Buf_AddByte(i32*, i8 signext) #1

declare dso_local i8* @Buf_GetAll(i32*, i32*) #1

declare dso_local i32 @Buf_Destroy(i32*, i32) #1

declare dso_local i32 @Parse_Error(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
