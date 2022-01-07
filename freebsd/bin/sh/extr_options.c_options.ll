; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_options.c_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_options.c_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@minusc = common dso_local global i8* null, align 8
@argptr = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [14 x i8] c"Bad -c option\00", align 1
@vflag = common dso_local global i64 0, align 8
@xflag = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @options(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i8* null, i8** @minusc, align 8
  br label %11

11:                                               ; preds = %10, %1
  br label %12

12:                                               ; preds = %136, %11
  %13 = load i8**, i8*** @argptr, align 8
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %4, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %137

16:                                               ; preds = %12
  %17 = load i8**, i8*** @argptr, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i32 1
  store i8** %18, i8*** @argptr, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %4, align 8
  %21 = load i8, i8* %19, align 1
  %22 = sext i8 %21 to i32
  store i32 %22, i32* %6, align 4
  %23 = icmp eq i32 %22, 45
  br i1 %23, label %24, label %81

24:                                               ; preds = %16
  store i32 1, i32* %5, align 4
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %138

31:                                               ; preds = %24
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 45
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %143

44:                                               ; preds = %37, %31
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 45
  br i1 %49, label %50, label %80

50:                                               ; preds = %44
  %51 = load i8*, i8** %4, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  store i8* %52, i8** %3, align 8
  br label %53

53:                                               ; preds = %65, %50
  %54 = load i8*, i8** %3, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 32
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = load i8*, i8** %3, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 9
  br label %63

63:                                               ; preds = %58, %53
  %64 = phi i1 [ true, %53 ], [ %62, %58 ]
  br i1 %64, label %65, label %68

65:                                               ; preds = %63
  %66 = load i8*, i8** %3, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %3, align 8
  br label %53

68:                                               ; preds = %63
  %69 = load i8*, i8** %3, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 35
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = load i8*, i8** %3, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73, %68
  br label %143

79:                                               ; preds = %73
  br label %80

80:                                               ; preds = %79, %44
  br label %89

81:                                               ; preds = %16
  %82 = load i32, i32* %6, align 4
  %83 = icmp eq i32 %82, 43
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  store i32 0, i32* %5, align 4
  br label %88

85:                                               ; preds = %81
  %86 = load i8**, i8*** @argptr, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i32 -1
  store i8** %87, i8*** @argptr, align 8
  br label %137

88:                                               ; preds = %84
  br label %89

89:                                               ; preds = %88, %80
  br label %90

90:                                               ; preds = %135, %89
  %91 = load i8*, i8** %4, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %4, align 8
  %93 = load i8, i8* %91, align 1
  %94 = sext i8 %93 to i32
  store i32 %94, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %136

96:                                               ; preds = %90
  %97 = load i32, i32* %6, align 4
  %98 = icmp eq i32 %97, 99
  br i1 %98, label %99, label %115

99:                                               ; preds = %96
  %100 = load i32, i32* %2, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %115

102:                                              ; preds = %99
  %103 = load i8**, i8*** @argptr, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i32 1
  store i8** %104, i8*** @argptr, align 8
  %105 = load i8*, i8** %103, align 8
  store i8* %105, i8** %7, align 8
  %106 = load i8*, i8** %7, align 8
  %107 = icmp eq i8* %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %102
  %109 = load i8*, i8** @minusc, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %108, %102
  %112 = call i32 @error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %113

113:                                              ; preds = %111, %108
  %114 = load i8*, i8** %7, align 8
  store i8* %114, i8** @minusc, align 8
  br label %135

115:                                              ; preds = %99, %96
  %116 = load i32, i32* %6, align 4
  %117 = icmp eq i32 %116, 111
  br i1 %117, label %118, label %130

118:                                              ; preds = %115
  %119 = load i8**, i8*** @argptr, align 8
  %120 = load i8*, i8** %119, align 8
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @minus_o(i8* %120, i32 %121)
  %123 = load i8**, i8*** @argptr, align 8
  %124 = load i8*, i8** %123, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %129

126:                                              ; preds = %118
  %127 = load i8**, i8*** @argptr, align 8
  %128 = getelementptr inbounds i8*, i8** %127, i32 1
  store i8** %128, i8*** @argptr, align 8
  br label %129

129:                                              ; preds = %126, %118
  br label %134

130:                                              ; preds = %115
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* %5, align 4
  %133 = call i32 @setoption(i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %130, %129
  br label %135

135:                                              ; preds = %134, %113
  br label %90

136:                                              ; preds = %90
  br label %12

137:                                              ; preds = %85, %12
  br label %182

138:                                              ; preds = %30
  %139 = load i32, i32* %2, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %138
  store i64 0, i64* @vflag, align 8
  store i64 0, i64* @xflag, align 8
  br label %182

142:                                              ; preds = %138
  br label %143

143:                                              ; preds = %142, %78, %43
  %144 = load i32, i32* %2, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %154, label %146

146:                                              ; preds = %143
  %147 = load i8**, i8*** @argptr, align 8
  %148 = load i8*, i8** %147, align 8
  %149 = icmp eq i8* %148, null
  br i1 %149, label %150, label %153

150:                                              ; preds = %146
  %151 = load i8**, i8*** @argptr, align 8
  %152 = call i32 @setparam(i32 0, i8** %151)
  br label %153

153:                                              ; preds = %150, %146
  br label %182

154:                                              ; preds = %143
  %155 = load i8**, i8*** @argptr, align 8
  %156 = load i8*, i8** %155, align 8
  store i8* %156, i8** %4, align 8
  %157 = load i8*, i8** %4, align 8
  %158 = icmp ne i8* %157, null
  br i1 %158, label %159, label %182

159:                                              ; preds = %154
  %160 = load i8*, i8** %4, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 0
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp eq i32 %163, 35
  br i1 %164, label %165, label %182

165:                                              ; preds = %159
  %166 = load i8*, i8** %4, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 1
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %182

171:                                              ; preds = %165
  br label %172

172:                                              ; preds = %176, %171
  %173 = load i8**, i8*** @argptr, align 8
  %174 = load i8*, i8** %173, align 8
  %175 = icmp ne i8* %174, null
  br i1 %175, label %176, label %179

176:                                              ; preds = %172
  %177 = load i8**, i8*** @argptr, align 8
  %178 = getelementptr inbounds i8*, i8** %177, i32 1
  store i8** %178, i8*** @argptr, align 8
  br label %172

179:                                              ; preds = %172
  %180 = load i8**, i8*** @argptr, align 8
  %181 = getelementptr inbounds i8*, i8** %180, i32 -1
  store i8** %181, i8*** @argptr, align 8
  br label %182

182:                                              ; preds = %137, %141, %153, %179, %165, %159, %154
  ret void
}

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @minus_o(i8*, i32) #1

declare dso_local i32 @setoption(i32, i32) #1

declare dso_local i32 @setparam(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
