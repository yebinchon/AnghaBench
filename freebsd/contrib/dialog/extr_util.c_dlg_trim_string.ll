; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_util.c_dlg_trim_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_util.c_dlg_trim_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64, i32 }

@dialog_vars = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@TAB = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dlg_trim_string(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  store i8* %7, i8** %3, align 8
  %8 = load i8*, i8** %2, align 8
  store i8* %8, i8** %5, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_vars, i32 0, i32 3), align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i8*, i8** %2, align 8
  %13 = call i64 @strstr(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br label %15

15:                                               ; preds = %11, %1
  %16 = phi i1 [ false, %1 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %201, %15
  %19 = load i8*, i8** %5, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %202

23:                                               ; preds = %18
  %24 = load i8*, i8** %5, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = load i8, i8* @TAB, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_vars, i32 0, i32 0), align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = load i8*, i8** %5, align 8
  store i8 32, i8* %34, align 1
  br label %35

35:                                               ; preds = %33, %30, %23
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %107

38:                                               ; preds = %35
  %39 = load i8*, i8** %5, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 92
  br i1 %42, label %43, label %73

43:                                               ; preds = %38
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 110
  br i1 %48, label %49, label %73

49:                                               ; preds = %43
  %50 = load i8*, i8** %2, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %2, align 8
  store i8 10, i8* %50, align 1
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 2
  store i8* %53, i8** %5, align 8
  %54 = load i8*, i8** %5, align 8
  store i8* %54, i8** %4, align 8
  br label %55

55:                                               ; preds = %61, %49
  %56 = load i8*, i8** %4, align 8
  %57 = load i8, i8* %56, align 1
  %58 = call i32 @UCH(i8 signext %57)
  %59 = call i64 @isblank(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i8*, i8** %4, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %4, align 8
  br label %55

64:                                               ; preds = %55
  %65 = load i8*, i8** %4, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 10
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i8*, i8** %4, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  store i8* %71, i8** %5, align 8
  br label %72

72:                                               ; preds = %69, %64
  br label %106

73:                                               ; preds = %43, %38
  %74 = load i8*, i8** %5, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 10
  br i1 %77, label %78, label %99

78:                                               ; preds = %73
  %79 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_vars, i32 0, i32 1), align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = load i8*, i8** %5, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %5, align 8
  %84 = load i8, i8* %82, align 1
  %85 = load i8*, i8** %2, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %2, align 8
  store i8 %84, i8* %85, align 1
  br label %98

87:                                               ; preds = %78
  %88 = load i8*, i8** %3, align 8
  %89 = load i8*, i8** %5, align 8
  %90 = call i32 @trim_blank(i8* %88, i8* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %87
  %93 = load i8*, i8** %2, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %2, align 8
  store i8 32, i8* %93, align 1
  br label %95

95:                                               ; preds = %92, %87
  %96 = load i8*, i8** %5, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %5, align 8
  br label %98

98:                                               ; preds = %95, %81
  br label %105

99:                                               ; preds = %73
  %100 = load i8*, i8** %5, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %5, align 8
  %102 = load i8, i8* %100, align 1
  %103 = load i8*, i8** %2, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %2, align 8
  store i8 %102, i8* %103, align 1
  br label %105

105:                                              ; preds = %99, %98
  br label %106

106:                                              ; preds = %105, %72
  br label %201

107:                                              ; preds = %35
  %108 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_vars, i32 0, i32 2), align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %171

110:                                              ; preds = %107
  %111 = load i8*, i8** %5, align 8
  %112 = load i8, i8* %111, align 1
  %113 = call i32 @UCH(i8 signext %112)
  %114 = call i64 @isblank(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %132

116:                                              ; preds = %110
  %117 = load i8*, i8** %2, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 -1
  %119 = load i8, i8* %118, align 1
  %120 = call i32 @UCH(i8 signext %119)
  %121 = call i64 @isblank(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %128, label %123

123:                                              ; preds = %116
  %124 = load i8*, i8** %2, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %2, align 8
  store i8 32, i8* %124, align 1
  %126 = load i8*, i8** %5, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %5, align 8
  br label %131

128:                                              ; preds = %116
  %129 = load i8*, i8** %5, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %5, align 8
  br label %131

131:                                              ; preds = %128, %123
  br label %170

132:                                              ; preds = %110
  %133 = load i8*, i8** %5, align 8
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %135, 10
  br i1 %136, label %137, label %163

137:                                              ; preds = %132
  %138 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_vars, i32 0, i32 1), align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %137
  %141 = load i8*, i8** %5, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %5, align 8
  %143 = load i8, i8* %141, align 1
  %144 = load i8*, i8** %2, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %2, align 8
  store i8 %143, i8* %144, align 1
  br label %162

146:                                              ; preds = %137
  %147 = load i8*, i8** %2, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 -1
  %149 = load i8, i8* %148, align 1
  %150 = call i32 @UCH(i8 signext %149)
  %151 = call i64 @isblank(i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %158, label %153

153:                                              ; preds = %146
  %154 = load i8*, i8** %2, align 8
  %155 = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %155, i8** %2, align 8
  store i8 32, i8* %154, align 1
  %156 = load i8*, i8** %5, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %5, align 8
  br label %161

158:                                              ; preds = %146
  %159 = load i8*, i8** %5, align 8
  %160 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %160, i8** %5, align 8
  br label %161

161:                                              ; preds = %158, %153
  br label %162

162:                                              ; preds = %161, %140
  br label %169

163:                                              ; preds = %132
  %164 = load i8*, i8** %5, align 8
  %165 = getelementptr inbounds i8, i8* %164, i32 1
  store i8* %165, i8** %5, align 8
  %166 = load i8, i8* %164, align 1
  %167 = load i8*, i8** %2, align 8
  %168 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %168, i8** %2, align 8
  store i8 %166, i8* %167, align 1
  br label %169

169:                                              ; preds = %163, %162
  br label %170

170:                                              ; preds = %169, %131
  br label %200

171:                                              ; preds = %107
  %172 = load i8*, i8** %5, align 8
  %173 = load i8, i8* %172, align 1
  %174 = call i32 @UCH(i8 signext %173)
  %175 = call i64 @isblank(i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %193

177:                                              ; preds = %171
  %178 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_vars, i32 0, i32 0), align 8
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %193, label %180

180:                                              ; preds = %177
  %181 = load i8*, i8** %3, align 8
  %182 = load i8*, i8** %5, align 8
  %183 = call i32 @trim_blank(i8* %181, i8* %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %190, label %185

185:                                              ; preds = %180
  %186 = load i8*, i8** %5, align 8
  %187 = load i8, i8* %186, align 1
  %188 = load i8*, i8** %2, align 8
  %189 = getelementptr inbounds i8, i8* %188, i32 1
  store i8* %189, i8** %2, align 8
  store i8 %187, i8* %188, align 1
  br label %190

190:                                              ; preds = %185, %180
  %191 = load i8*, i8** %5, align 8
  %192 = getelementptr inbounds i8, i8* %191, i32 1
  store i8* %192, i8** %5, align 8
  br label %199

193:                                              ; preds = %177, %171
  %194 = load i8*, i8** %5, align 8
  %195 = getelementptr inbounds i8, i8* %194, i32 1
  store i8* %195, i8** %5, align 8
  %196 = load i8, i8* %194, align 1
  %197 = load i8*, i8** %2, align 8
  %198 = getelementptr inbounds i8, i8* %197, i32 1
  store i8* %198, i8** %2, align 8
  store i8 %196, i8* %197, align 1
  br label %199

199:                                              ; preds = %193, %190
  br label %200

200:                                              ; preds = %199, %170
  br label %201

201:                                              ; preds = %200, %106
  br label %18

202:                                              ; preds = %18
  %203 = load i8*, i8** %2, align 8
  store i8 0, i8* %203, align 1
  ret void
}

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i64 @isblank(i32) #1

declare dso_local i32 @UCH(i8 signext) #1

declare dso_local i32 @trim_blank(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
