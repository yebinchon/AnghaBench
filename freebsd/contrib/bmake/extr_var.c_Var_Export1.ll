; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_var.c_Var_Export1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_var.c_Var_Export1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@BUFSIZ = common dso_local global i32 0, align 4
@VAR_EXPORT_PARENT = common dso_local global i32 0, align 4
@VAR_GLOBAL = common dso_local global i32 0, align 4
@VAR_EXPORTED = common dso_local global i32 0, align 4
@VAR_REEXPORT = common dso_local global i32 0, align 4
@VAR_EXPORT_LITERAL = common dso_local global i32 0, align 4
@VAR_IN_USE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"${%s}\00", align 1
@VARF_WANTRES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @Var_Export1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Var_Export1(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* @BUFSIZ, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  store i8* null, i8** %9, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @VAR_EXPORT_PARENT, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %11, align 4
  %20 = load i8*, i8** %4, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 46
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %141

25:                                               ; preds = %2
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = load i8, i8* %27, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %25
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  switch i32 %34, label %36 [
    i32 64, label %35
    i32 37, label %35
    i32 42, label %35
    i32 33, label %35
  ]

35:                                               ; preds = %30, %30, %30, %30
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %141

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36, %25
  %38 = load i8*, i8** %4, align 8
  %39 = load i32, i32* @VAR_GLOBAL, align 4
  %40 = call %struct.TYPE_3__* @VarFind(i8* %38, i32 %39, i32 0)
  store %struct.TYPE_3__* %40, %struct.TYPE_3__** %8, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %42 = icmp eq %struct.TYPE_3__* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %141

44:                                               ; preds = %37
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %58, label %47

47:                                               ; preds = %44
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @VAR_EXPORTED, align 4
  %52 = load i32, i32* @VAR_REEXPORT, align 4
  %53 = or i32 %51, %52
  %54 = and i32 %50, %53
  %55 = load i32, i32* @VAR_EXPORTED, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %141

58:                                               ; preds = %47, %44
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = call i8* @Buf_GetAll(i32* %60, i32* null)
  store i8* %61, i8** %9, align 8
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @VAR_EXPORT_LITERAL, align 4
  %64 = and i32 %62, %63
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %106

66:                                               ; preds = %58
  %67 = load i8*, i8** %9, align 8
  %68 = call i64 @strchr(i8* %67, i8 signext 36)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %106

70:                                               ; preds = %66
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %70
  %74 = load i32, i32* @VAR_EXPORTED, align 4
  %75 = load i32, i32* @VAR_REEXPORT, align 4
  %76 = or i32 %74, %75
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  store i32 1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %141

81:                                               ; preds = %70
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @VAR_IN_USE, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %141

89:                                               ; preds = %81
  %90 = trunc i64 %14 to i32
  %91 = load i8*, i8** %4, align 8
  %92 = call i32 @snprintf(i8* %16, i32 %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %91)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = trunc i64 %14 to i32
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %105

96:                                               ; preds = %89
  %97 = load i32, i32* @VAR_GLOBAL, align 4
  %98 = load i32, i32* @VARF_WANTRES, align 4
  %99 = call i8* @Var_Subst(i32* null, i8* %16, i32 %97, i32 %98)
  store i8* %99, i8** %9, align 8
  %100 = load i8*, i8** %4, align 8
  %101 = load i8*, i8** %9, align 8
  %102 = call i32 @setenv(i8* %100, i8* %101, i32 1)
  %103 = load i8*, i8** %9, align 8
  %104 = call i32 @free(i8* %103)
  br label %105

105:                                              ; preds = %96, %89
  br label %131

106:                                              ; preds = %66, %58
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %106
  %110 = load i32, i32* @VAR_REEXPORT, align 4
  %111 = xor i32 %110, -1
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, %111
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %109, %106
  %117 = load i32, i32* %11, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %126, label %119

119:                                              ; preds = %116
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @VAR_EXPORTED, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %119, %116
  %127 = load i8*, i8** %4, align 8
  %128 = load i8*, i8** %9, align 8
  %129 = call i32 @setenv(i8* %127, i8* %128, i32 1)
  br label %130

130:                                              ; preds = %126, %119
  br label %131

131:                                              ; preds = %130, %105
  %132 = load i32, i32* %11, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %131
  %135 = load i32, i32* @VAR_EXPORTED, align 4
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %134, %131
  store i32 1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %141

141:                                              ; preds = %140, %88, %73, %57, %43, %35, %24
  %142 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %142)
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_3__* @VarFind(i8*, i32, i32) #2

declare dso_local i8* @Buf_GetAll(i32*, i32*) #2

declare dso_local i64 @strchr(i8*, i8 signext) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @Var_Subst(i32*, i8*, i32, i32) #2

declare dso_local i32 @setenv(i8*, i8*, i32) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
