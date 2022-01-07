; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/basic/extr_docproc.c_parse_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/basic/extr_docproc.c_parse_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXLINESZ = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @parse_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_file(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32, i32* @MAXLINESZ, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  br label %10

10:                                               ; preds = %157, %1
  %11 = load i32, i32* @MAXLINESZ, align 4
  %12 = load i32*, i32** %2, align 8
  %13 = call i64 @fgets(i8* %9, i32 %11, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %158

15:                                               ; preds = %10
  %16 = getelementptr inbounds i8, i8* %9, i64 0
  %17 = load i8, i8* %16, align 16
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 33
  br i1 %19, label %20, label %155

20:                                               ; preds = %15
  %21 = getelementptr inbounds i8, i8* %9, i64 2
  store i8* %21, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %9, i64 1
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  switch i32 %24, label %152 [
    i32 69, label %25
    i32 73, label %46
    i32 68, label %67
    i32 70, label %88
    i32 80, label %120
  ]

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %39, %25
  %27 = load i8*, i8** %5, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load i8*, i8** %5, align 8
  %33 = load i8, i8* %32, align 1
  %34 = call i32 @isspace(i8 signext %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %31, %26
  %38 = phi i1 [ false, %26 ], [ %36, %31 ]
  br i1 %38, label %39, label %42

39:                                               ; preds = %37
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %5, align 8
  br label %26

42:                                               ; preds = %37
  %43 = load i8*, i8** %5, align 8
  store i8 0, i8* %43, align 1
  %44 = getelementptr inbounds i8, i8* %9, i64 2
  %45 = call i32 @externalfunctions(i8* %44)
  br label %154

46:                                               ; preds = %20
  br label %47

47:                                               ; preds = %60, %46
  %48 = load i8*, i8** %5, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load i8*, i8** %5, align 8
  %54 = load i8, i8* %53, align 1
  %55 = call i32 @isspace(i8 signext %54)
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  br label %58

58:                                               ; preds = %52, %47
  %59 = phi i1 [ false, %47 ], [ %57, %52 ]
  br i1 %59, label %60, label %63

60:                                               ; preds = %58
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %5, align 8
  br label %47

63:                                               ; preds = %58
  %64 = load i8*, i8** %5, align 8
  store i8 0, i8* %64, align 1
  %65 = getelementptr inbounds i8, i8* %9, i64 2
  %66 = call i32 @internalfunctions(i8* %65)
  br label %154

67:                                               ; preds = %20
  br label %68

68:                                               ; preds = %81, %67
  %69 = load i8*, i8** %5, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load i8*, i8** %5, align 8
  %75 = load i8, i8* %74, align 1
  %76 = call i32 @isspace(i8 signext %75)
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  br label %79

79:                                               ; preds = %73, %68
  %80 = phi i1 [ false, %68 ], [ %78, %73 ]
  br i1 %80, label %81, label %84

81:                                               ; preds = %79
  %82 = load i8*, i8** %5, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %5, align 8
  br label %68

84:                                               ; preds = %79
  %85 = load i8*, i8** %5, align 8
  store i8 0, i8* %85, align 1
  %86 = getelementptr inbounds i8, i8* %9, i64 2
  %87 = call i32 @symbolsonly(i8* %86)
  br label %154

88:                                               ; preds = %20
  br label %89

89:                                               ; preds = %102, %88
  %90 = load i8*, i8** %5, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load i8*, i8** %5, align 8
  %96 = load i8, i8* %95, align 1
  %97 = call i32 @isspace(i8 signext %96)
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  br label %100

100:                                              ; preds = %94, %89
  %101 = phi i1 [ false, %89 ], [ %99, %94 ]
  br i1 %101, label %102, label %105

102:                                              ; preds = %100
  %103 = load i8*, i8** %5, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %5, align 8
  br label %89

105:                                              ; preds = %100
  %106 = load i8*, i8** %5, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %5, align 8
  store i8 0, i8* %106, align 1
  br label %108

108:                                              ; preds = %113, %105
  %109 = load i8*, i8** %5, align 8
  %110 = load i8, i8* %109, align 1
  %111 = call i32 @isspace(i8 signext %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load i8*, i8** %5, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %5, align 8
  br label %108

116:                                              ; preds = %108
  %117 = getelementptr inbounds i8, i8* %9, i64 2
  %118 = load i8*, i8** %5, align 8
  %119 = call i32 @singlefunctions(i8* %117, i8* %118)
  br label %154

120:                                              ; preds = %20
  br label %121

121:                                              ; preds = %134, %120
  %122 = load i8*, i8** %5, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %121
  %127 = load i8*, i8** %5, align 8
  %128 = load i8, i8* %127, align 1
  %129 = call i32 @isspace(i8 signext %128)
  %130 = icmp ne i32 %129, 0
  %131 = xor i1 %130, true
  br label %132

132:                                              ; preds = %126, %121
  %133 = phi i1 [ false, %121 ], [ %131, %126 ]
  br i1 %133, label %134, label %137

134:                                              ; preds = %132
  %135 = load i8*, i8** %5, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %5, align 8
  br label %121

137:                                              ; preds = %132
  %138 = load i8*, i8** %5, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %5, align 8
  store i8 0, i8* %138, align 1
  br label %140

140:                                              ; preds = %145, %137
  %141 = load i8*, i8** %5, align 8
  %142 = load i8, i8* %141, align 1
  %143 = call i32 @isspace(i8 signext %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %140
  %146 = load i8*, i8** %5, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** %5, align 8
  br label %140

148:                                              ; preds = %140
  %149 = getelementptr inbounds i8, i8* %9, i64 2
  %150 = load i8*, i8** %5, align 8
  %151 = call i32 @docsection(i8* %149, i8* %150)
  br label %154

152:                                              ; preds = %20
  %153 = call i32 @defaultline(i8* %9)
  br label %154

154:                                              ; preds = %152, %148, %116, %84, %63, %42
  br label %157

155:                                              ; preds = %15
  %156 = call i32 @defaultline(i8* %9)
  br label %157

157:                                              ; preds = %155, %154
  br label %10

158:                                              ; preds = %10
  %159 = load i32, i32* @stdout, align 4
  %160 = call i32 @fflush(i32 %159)
  %161 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %161)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @fgets(i8*, i32, i32*) #2

declare dso_local i32 @isspace(i8 signext) #2

declare dso_local i32 @externalfunctions(i8*) #2

declare dso_local i32 @internalfunctions(i8*) #2

declare dso_local i32 @symbolsonly(i8*) #2

declare dso_local i32 @singlefunctions(i8*, i8*) #2

declare dso_local i32 @docsection(i8*, i8*) #2

declare dso_local i32 @defaultline(i8*) #2

declare dso_local i32 @fflush(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
