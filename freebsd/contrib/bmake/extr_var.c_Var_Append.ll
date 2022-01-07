; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_var.c_Var_Append.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_var.c_Var_Append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@VARF_WANTRES = common dso_local global i32 0, align 4
@VAR = common dso_local global i32 0, align 4
@debug_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"Var_Append(\22%s\22, \22%s\22, ...) name expands to empty string - ignored\0A\00", align 1
@VAR_GLOBAL = common dso_local global %struct.TYPE_12__* null, align 8
@FIND_CMD = common dso_local global i32 0, align 4
@FIND_ENV = common dso_local global i32 0, align 4
@VAR_CMD = common dso_local global %struct.TYPE_12__* null, align 8
@VAR_FROM_CMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"%s:%s = %s\0A\00", align 1
@VAR_FROM_ENV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Var_Append(i8* %0, i8* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %6, align 8
  store i8* null, i8** %9, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32* @strchr(i8* %10, i8 signext 36)
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %37

13:                                               ; preds = %3
  %14 = load i8*, i8** %4, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %16 = load i32, i32* @VARF_WANTRES, align 4
  %17 = call i8* @Var_Subst(i32* null, i8* %14, %struct.TYPE_12__* %15, i32 %16)
  store i8* %17, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %13
  %24 = load i32, i32* @VAR, align 4
  %25 = call i64 @DEBUG(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i32, i32* @debug_file, align 4
  %29 = load i8*, i8** %4, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %28, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i8* %29, i8* %30)
  br label %32

32:                                               ; preds = %27, %23
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @free(i8* %33)
  br label %118

35:                                               ; preds = %13
  %36 = load i8*, i8** %9, align 8
  store i8* %36, i8** %4, align 8
  br label %37

37:                                               ; preds = %35, %3
  %38 = load i8*, i8** %4, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** @VAR_GLOBAL, align 8
  %42 = icmp eq %struct.TYPE_12__* %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i32, i32* @FIND_CMD, align 4
  %45 = load i32, i32* @FIND_ENV, align 4
  %46 = or i32 %44, %45
  br label %48

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %47, %43
  %49 = phi i32 [ %46, %43 ], [ 0, %47 ]
  %50 = call %struct.TYPE_11__* @VarFind(i8* %38, %struct.TYPE_12__* %39, i32 %49)
  store %struct.TYPE_11__* %50, %struct.TYPE_11__** %7, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %52 = icmp eq %struct.TYPE_11__* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load i8*, i8** %4, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %57 = call i32 @Var_Set(i8* %54, i8* %55, %struct.TYPE_12__* %56, i32 0)
  br label %115

58:                                               ; preds = %48
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** @VAR_CMD, align 8
  %61 = icmp eq %struct.TYPE_12__* %59, %60
  br i1 %61, label %69, label %62

62:                                               ; preds = %58
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @VAR_FROM_CMD, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %114, label %69

69:                                               ; preds = %62, %58
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = call i32 @Buf_AddByte(i32* %71, i8 signext 32)
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  %75 = load i8*, i8** %5, align 8
  %76 = call i32 @strlen(i8* %75)
  %77 = load i8*, i8** %5, align 8
  %78 = call i32 @Buf_AddBytes(i32* %74, i32 %76, i8* %77)
  %79 = load i32, i32* @VAR, align 4
  %80 = call i64 @DEBUG(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %69
  %83 = load i32, i32* @debug_file, align 4
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = load i8*, i8** %4, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  %90 = call i8* @Buf_GetAll(i32* %89, i32* null)
  %91 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %83, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %86, i8* %87, i8* %90)
  br label %92

92:                                               ; preds = %82, %69
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @VAR_FROM_ENV, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %113

99:                                               ; preds = %92
  %100 = load i32, i32* @VAR_FROM_ENV, align 4
  %101 = xor i32 %100, -1
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, %101
  store i32 %105, i32* %103, align 4
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  %108 = load i8*, i8** %4, align 8
  %109 = call i32* @Hash_CreateEntry(i32* %107, i8* %108, i32* null)
  store i32* %109, i32** %8, align 8
  %110 = load i32*, i32** %8, align 8
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %112 = call i32 @Hash_SetValue(i32* %110, %struct.TYPE_11__* %111)
  br label %113

113:                                              ; preds = %99, %92
  br label %114

114:                                              ; preds = %113, %62
  br label %115

115:                                              ; preds = %114, %53
  %116 = load i8*, i8** %9, align 8
  %117 = call i32 @free(i8* %116)
  br label %118

118:                                              ; preds = %115, %32
  ret void
}

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i8* @Var_Subst(i32*, i8*, %struct.TYPE_12__*, i32) #1

declare dso_local i64 @DEBUG(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.TYPE_11__* @VarFind(i8*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @Var_Set(i8*, i8*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @Buf_AddByte(i32*, i8 signext) #1

declare dso_local i32 @Buf_AddBytes(i32*, i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @Buf_GetAll(i32*, i32*) #1

declare dso_local i32* @Hash_CreateEntry(i32*, i8*, i32*) #1

declare dso_local i32 @Hash_SetValue(i32*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
