; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_dir.c_Dir_Expand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_dir.c_Dir_Expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DIR = common dso_local global i32 0, align 4
@debug_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Expanding \22%s\22... \00", align 1
@FALSE = common dso_local global i32 0, align 4
@dot = common dso_local global i32 0, align 4
@DirPrintWord = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Dir_Expand(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @DIR, align 4
  %12 = call i64 @DEBUG(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i32, i32* @debug_file, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 (i32, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %16)
  br label %18

18:                                               ; preds = %14, %3
  %19 = load i8*, i8** %4, align 8
  %20 = call i8* @strchr(i8* %19, i8 signext 123)
  store i8* %20, i8** %7, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load i8*, i8** %4, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @DirExpandCurly(i8* %24, i8* %25, i32 %26, i32 %27)
  br label %168

29:                                               ; preds = %18
  %30 = load i8*, i8** %4, align 8
  %31 = call i8* @strchr(i8* %30, i8 signext 47)
  store i8* %31, i8** %7, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %158

34:                                               ; preds = %29
  %35 = load i8*, i8** %4, align 8
  store i8* %35, i8** %7, align 8
  br label %36

36:                                               ; preds = %62, %34
  %37 = load i8*, i8** %7, align 8
  %38 = load i8, i8* %37, align 1
  %39 = icmp ne i8 %38, 0
  br i1 %39, label %40, label %65

40:                                               ; preds = %36
  %41 = load i8*, i8** %7, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 63
  br i1 %44, label %60, label %45

45:                                               ; preds = %40
  %46 = load i8*, i8** %7, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 91
  br i1 %49, label %60, label %50

50:                                               ; preds = %45
  %51 = load i8*, i8** %7, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 42
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = load i8*, i8** %7, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 123
  br i1 %59, label %60, label %61

60:                                               ; preds = %55, %50, %45, %40
  br label %65

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %61
  %63 = load i8*, i8** %7, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %7, align 8
  br label %36

65:                                               ; preds = %60, %36
  %66 = load i8*, i8** %7, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 123
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load i8*, i8** %4, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @DirExpandCurly(i8* %71, i8* %72, i32 %73, i32 %74)
  br label %178

76:                                               ; preds = %65
  %77 = load i8*, i8** %7, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %151

81:                                               ; preds = %76
  br label %82

82:                                               ; preds = %93, %81
  %83 = load i8*, i8** %7, align 8
  %84 = load i8*, i8** %4, align 8
  %85 = icmp ugt i8* %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = load i8*, i8** %7, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 47
  br label %91

91:                                               ; preds = %86, %82
  %92 = phi i1 [ false, %82 ], [ %90, %86 ]
  br i1 %92, label %93, label %96

93:                                               ; preds = %91
  %94 = load i8*, i8** %7, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 -1
  store i8* %95, i8** %7, align 8
  br label %82

96:                                               ; preds = %91
  %97 = load i8*, i8** %7, align 8
  %98 = load i8*, i8** %4, align 8
  %99 = icmp ne i8* %97, %98
  br i1 %99, label %100, label %145

100:                                              ; preds = %96
  %101 = load i8*, i8** %7, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 1
  %103 = load i8, i8* %102, align 1
  store i8 %103, i8* %9, align 1
  %104 = load i8*, i8** %7, align 8
  %105 = call i64 @UNCONST(i8* %104)
  %106 = inttoptr i64 %105 to i8*
  %107 = getelementptr inbounds i8, i8* %106, i64 1
  store i8 0, i8* %107, align 1
  %108 = load i8*, i8** %4, align 8
  %109 = load i32, i32* %5, align 4
  %110 = call i8* @Dir_FindFile(i8* %108, i32 %109)
  store i8* %110, i8** %8, align 8
  %111 = load i8, i8* %9, align 1
  %112 = load i8*, i8** %7, align 8
  %113 = call i64 @UNCONST(i8* %112)
  %114 = inttoptr i64 %113 to i8*
  %115 = getelementptr inbounds i8, i8* %114, i64 1
  store i8 %111, i8* %115, align 1
  %116 = load i8*, i8** %8, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %144

118:                                              ; preds = %100
  %119 = load i8*, i8** %8, align 8
  %120 = load i8*, i8** %8, align 8
  %121 = call i32 @strlen(i8* %120)
  %122 = sub nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %119, i64 %123
  store i8* %124, i8** %10, align 8
  %125 = load i8*, i8** %10, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 47
  br i1 %128, label %129, label %131

129:                                              ; preds = %118
  %130 = load i8*, i8** %10, align 8
  store i8 0, i8* %130, align 1
  br label %131

131:                                              ; preds = %129, %118
  %132 = load i32, i32* @FALSE, align 4
  %133 = call i32 @Lst_Init(i32 %132)
  store i32 %133, i32* %5, align 4
  %134 = load i32, i32* %5, align 4
  %135 = load i8*, i8** %8, align 8
  %136 = call i32 @Dir_AddDir(i32 %134, i8* %135)
  %137 = load i8*, i8** %7, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 1
  %139 = load i32, i32* %5, align 4
  %140 = load i32, i32* %6, align 4
  %141 = call i32 @DirExpandInt(i8* %138, i32 %139, i32 %140)
  %142 = load i32, i32* %5, align 4
  %143 = call i32 @Lst_Destroy(i32 %142, i32* null)
  br label %144

144:                                              ; preds = %131, %100
  br label %150

145:                                              ; preds = %96
  %146 = load i8*, i8** %4, align 8
  %147 = load i32, i32* %5, align 4
  %148 = load i32, i32* %6, align 4
  %149 = call i32 @DirExpandInt(i8* %146, i32 %147, i32 %148)
  br label %150

150:                                              ; preds = %145, %144
  br label %156

151:                                              ; preds = %76
  %152 = load i8*, i8** %4, align 8
  %153 = load i32, i32* %5, align 4
  %154 = load i32, i32* %6, align 4
  %155 = call i32 @DirExpandInt(i8* %152, i32 %153, i32 %154)
  br label %156

156:                                              ; preds = %151, %150
  br label %157

157:                                              ; preds = %156
  br label %167

158:                                              ; preds = %29
  %159 = load i8*, i8** %4, align 8
  %160 = load i32, i32* @dot, align 4
  %161 = load i32, i32* %6, align 4
  %162 = call i32 @DirMatchFiles(i8* %159, i32 %160, i32 %161)
  %163 = load i8*, i8** %4, align 8
  %164 = load i32, i32* %5, align 4
  %165 = load i32, i32* %6, align 4
  %166 = call i32 @DirExpandInt(i8* %163, i32 %164, i32 %165)
  br label %167

167:                                              ; preds = %158, %157
  br label %168

168:                                              ; preds = %167, %23
  %169 = load i32, i32* @DIR, align 4
  %170 = call i64 @DEBUG(i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %168
  %173 = load i32, i32* %6, align 4
  %174 = load i32, i32* @DirPrintWord, align 4
  %175 = call i32 @Lst_ForEach(i32 %173, i32 %174, i32* null)
  %176 = load i32, i32* @debug_file, align 4
  %177 = call i32 (i32, i8*, ...) @fprintf(i32 %176, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %178

178:                                              ; preds = %70, %172, %168
  ret void
}

declare dso_local i64 @DEBUG(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @DirExpandCurly(i8*, i8*, i32, i32) #1

declare dso_local i64 @UNCONST(i8*) #1

declare dso_local i8* @Dir_FindFile(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @Lst_Init(i32) #1

declare dso_local i32 @Dir_AddDir(i32, i8*) #1

declare dso_local i32 @DirExpandInt(i8*, i32, i32) #1

declare dso_local i32 @Lst_Destroy(i32, i32*) #1

declare dso_local i32 @DirMatchFiles(i8*, i32, i32) #1

declare dso_local i32 @Lst_ForEach(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
