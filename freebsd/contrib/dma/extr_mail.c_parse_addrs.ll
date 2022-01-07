; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dma/extr_mail.c_parse_addrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dma/extr_mail.c_parse_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_state = type { i32, i32, i32, i32, i32, i8*, i64 }
%struct.queue = type { i32 }

@EX_SOFTWARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"strdup\00", align 1
@EXPAND_WILDCARD = common dso_local global i32 0, align 4
@EX_DATAERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"invalid recipient `%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parse_state*, i8*, %struct.queue*)* @parse_addrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_addrs(%struct.parse_state* %0, i8* %1, %struct.queue* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.parse_state*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.queue*, align 8
  %8 = alloca i8*, align 8
  store %struct.parse_state* %0, %struct.parse_state** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.queue* %2, %struct.queue** %7, align 8
  br label %9

9:                                                ; preds = %220, %3
  %10 = load %struct.parse_state*, %struct.parse_state** %5, align 8
  %11 = getelementptr inbounds %struct.parse_state, %struct.parse_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %49 [
    i32 130, label %13
    i32 128, label %14
    i32 131, label %30
    i32 132, label %31
    i32 129, label %48
  ]

13:                                               ; preds = %9
  store i32 -1, i32* %4, align 4
  br label %221

14:                                               ; preds = %9
  %15 = load %struct.parse_state*, %struct.parse_state** %5, align 8
  %16 = call i32 @bzero(%struct.parse_state* %15, i32 40)
  br label %17

17:                                               ; preds = %22, %14
  %18 = load i8*, i8** %6, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 58
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %6, align 8
  br label %17

25:                                               ; preds = %17
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %6, align 8
  %28 = load %struct.parse_state*, %struct.parse_state** %5, align 8
  %29 = getelementptr inbounds %struct.parse_state, %struct.parse_state* %28, i32 0, i32 0
  store i32 131, i32* %29, align 8
  br label %49

30:                                               ; preds = %9
  br label %49

31:                                               ; preds = %9
  %32 = load i8*, i8** %6, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  switch i32 %34, label %38 [
    i32 32, label %35
    i32 9, label %35
  ]

35:                                               ; preds = %31, %31
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %6, align 8
  br label %47

38:                                               ; preds = %31
  %39 = load %struct.parse_state*, %struct.parse_state** %5, align 8
  %40 = getelementptr inbounds %struct.parse_state, %struct.parse_state* %39, i32 0, i32 0
  store i32 129, i32* %40, align 8
  %41 = load %struct.parse_state*, %struct.parse_state** %5, align 8
  %42 = getelementptr inbounds %struct.parse_state, %struct.parse_state* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %190

46:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %221

47:                                               ; preds = %35
  br label %48

48:                                               ; preds = %9, %47
  store i32 0, i32* %4, align 4
  br label %221

49:                                               ; preds = %9, %30, %25
  br label %50

50:                                               ; preds = %180, %49
  %51 = load i8*, i8** %6, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %183

55:                                               ; preds = %50
  %56 = load %struct.parse_state*, %struct.parse_state** %5, align 8
  %57 = getelementptr inbounds %struct.parse_state, %struct.parse_state* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load %struct.parse_state*, %struct.parse_state** %5, align 8
  %62 = getelementptr inbounds %struct.parse_state, %struct.parse_state* %61, i32 0, i32 2
  store i32 0, i32* %62, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  switch i32 %65, label %67 [
    i32 13, label %66
    i32 10, label %66
  ]

66:                                               ; preds = %60, %60
  br label %187

67:                                               ; preds = %60
  br label %153

68:                                               ; preds = %55
  %69 = load %struct.parse_state*, %struct.parse_state** %5, align 8
  %70 = getelementptr inbounds %struct.parse_state, %struct.parse_state* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %68
  %74 = load i8*, i8** %6, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  switch i32 %76, label %84 [
    i32 34, label %77
    i32 92, label %80
    i32 13, label %83
    i32 10, label %83
  ]

77:                                               ; preds = %73
  %78 = load %struct.parse_state*, %struct.parse_state** %5, align 8
  %79 = getelementptr inbounds %struct.parse_state, %struct.parse_state* %78, i32 0, i32 3
  store i32 0, i32* %79, align 4
  br label %153

80:                                               ; preds = %73
  %81 = load %struct.parse_state*, %struct.parse_state** %5, align 8
  %82 = getelementptr inbounds %struct.parse_state, %struct.parse_state* %81, i32 0, i32 2
  store i32 1, i32* %82, align 8
  br label %153

83:                                               ; preds = %73, %73
  br label %184

84:                                               ; preds = %73
  br label %153

85:                                               ; preds = %68
  %86 = load i8*, i8** %6, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  switch i32 %88, label %113 [
    i32 40, label %89
    i32 41, label %94
    i32 34, label %106
    i32 92, label %109
    i32 13, label %112
    i32 10, label %112
  ]

89:                                               ; preds = %85
  %90 = load %struct.parse_state*, %struct.parse_state** %5, align 8
  %91 = getelementptr inbounds %struct.parse_state, %struct.parse_state* %90, i32 0, i32 6
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %91, align 8
  br label %113

94:                                               ; preds = %85
  %95 = load %struct.parse_state*, %struct.parse_state** %5, align 8
  %96 = getelementptr inbounds %struct.parse_state, %struct.parse_state* %95, i32 0, i32 6
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load %struct.parse_state*, %struct.parse_state** %5, align 8
  %101 = getelementptr inbounds %struct.parse_state, %struct.parse_state* %100, i32 0, i32 6
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %102, -1
  store i64 %103, i64* %101, align 8
  br label %105

104:                                              ; preds = %94
  br label %187

105:                                              ; preds = %99
  br label %179

106:                                              ; preds = %85
  %107 = load %struct.parse_state*, %struct.parse_state** %5, align 8
  %108 = getelementptr inbounds %struct.parse_state, %struct.parse_state* %107, i32 0, i32 3
  store i32 1, i32* %108, align 4
  br label %153

109:                                              ; preds = %85
  %110 = load %struct.parse_state*, %struct.parse_state** %5, align 8
  %111 = getelementptr inbounds %struct.parse_state, %struct.parse_state* %110, i32 0, i32 2
  store i32 1, i32* %111, align 8
  br label %153

112:                                              ; preds = %85, %85
  br label %184

113:                                              ; preds = %85, %89
  %114 = load %struct.parse_state*, %struct.parse_state** %5, align 8
  %115 = getelementptr inbounds %struct.parse_state, %struct.parse_state* %114, i32 0, i32 6
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  br label %179

119:                                              ; preds = %113
  %120 = load i8*, i8** %6, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  switch i32 %122, label %152 [
    i32 32, label %123
    i32 9, label %123
    i32 60, label %124
    i32 62, label %129
    i32 58, label %140
    i32 44, label %143
    i32 59, label %143
  ]

123:                                              ; preds = %119, %119
  br label %179

124:                                              ; preds = %119
  %125 = load %struct.parse_state*, %struct.parse_state** %5, align 8
  %126 = getelementptr inbounds %struct.parse_state, %struct.parse_state* %125, i32 0, i32 4
  store i32 1, i32* %126, align 8
  %127 = load %struct.parse_state*, %struct.parse_state** %5, align 8
  %128 = getelementptr inbounds %struct.parse_state, %struct.parse_state* %127, i32 0, i32 1
  store i32 0, i32* %128, align 4
  br label %179

129:                                              ; preds = %119
  %130 = load %struct.parse_state*, %struct.parse_state** %5, align 8
  %131 = getelementptr inbounds %struct.parse_state, %struct.parse_state* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %129
  br label %187

135:                                              ; preds = %129
  %136 = load %struct.parse_state*, %struct.parse_state** %5, align 8
  %137 = getelementptr inbounds %struct.parse_state, %struct.parse_state* %136, i32 0, i32 4
  store i32 0, i32* %137, align 8
  %138 = load i8*, i8** %6, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %6, align 8
  br label %190

140:                                              ; preds = %119
  %141 = load %struct.parse_state*, %struct.parse_state** %5, align 8
  %142 = getelementptr inbounds %struct.parse_state, %struct.parse_state* %141, i32 0, i32 1
  store i32 0, i32* %142, align 4
  br label %179

143:                                              ; preds = %119, %119
  %144 = load %struct.parse_state*, %struct.parse_state** %5, align 8
  %145 = getelementptr inbounds %struct.parse_state, %struct.parse_state* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %143
  br label %179

149:                                              ; preds = %143
  %150 = load i8*, i8** %6, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %151, i8** %6, align 8
  br label %190

152:                                              ; preds = %119
  br label %153

153:                                              ; preds = %152, %109, %106, %84, %80, %77, %67
  %154 = load %struct.parse_state*, %struct.parse_state** %5, align 8
  %155 = getelementptr inbounds %struct.parse_state, %struct.parse_state* %154, i32 0, i32 6
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %153
  br label %179

159:                                              ; preds = %153
  %160 = load %struct.parse_state*, %struct.parse_state** %5, align 8
  %161 = getelementptr inbounds %struct.parse_state, %struct.parse_state* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %162, 1
  %164 = sext i32 %163 to i64
  %165 = icmp eq i64 %164, 8
  br i1 %165, label %166, label %167

166:                                              ; preds = %159
  br label %187

167:                                              ; preds = %159
  %168 = load i8*, i8** %6, align 8
  %169 = load i8, i8* %168, align 1
  %170 = load %struct.parse_state*, %struct.parse_state** %5, align 8
  %171 = getelementptr inbounds %struct.parse_state, %struct.parse_state* %170, i32 0, i32 5
  %172 = load i8*, i8** %171, align 8
  %173 = load %struct.parse_state*, %struct.parse_state** %5, align 8
  %174 = getelementptr inbounds %struct.parse_state, %struct.parse_state* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %174, align 4
  %177 = sext i32 %175 to i64
  %178 = getelementptr inbounds i8, i8* %172, i64 %177
  store i8 %169, i8* %178, align 1
  br label %179

179:                                              ; preds = %167, %158, %148, %140, %124, %123, %118, %105
  br label %180

180:                                              ; preds = %179
  %181 = load i8*, i8** %6, align 8
  %182 = getelementptr inbounds i8, i8* %181, i32 1
  store i8* %182, i8** %6, align 8
  br label %50

183:                                              ; preds = %50
  br label %184

184:                                              ; preds = %183, %112, %83
  %185 = load %struct.parse_state*, %struct.parse_state** %5, align 8
  %186 = getelementptr inbounds %struct.parse_state, %struct.parse_state* %185, i32 0, i32 0
  store i32 132, i32* %186, align 8
  store i32 0, i32* %4, align 4
  br label %221

187:                                              ; preds = %166, %134, %104, %66
  %188 = load %struct.parse_state*, %struct.parse_state** %5, align 8
  %189 = getelementptr inbounds %struct.parse_state, %struct.parse_state* %188, i32 0, i32 0
  store i32 129, i32* %189, align 8
  store i32 -1, i32* %4, align 4
  br label %221

190:                                              ; preds = %149, %135, %45
  %191 = load %struct.parse_state*, %struct.parse_state** %5, align 8
  %192 = getelementptr inbounds %struct.parse_state, %struct.parse_state* %191, i32 0, i32 5
  %193 = load i8*, i8** %192, align 8
  %194 = load %struct.parse_state*, %struct.parse_state** %5, align 8
  %195 = getelementptr inbounds %struct.parse_state, %struct.parse_state* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8, i8* %193, i64 %197
  store i8 0, i8* %198, align 1
  %199 = load %struct.parse_state*, %struct.parse_state** %5, align 8
  %200 = getelementptr inbounds %struct.parse_state, %struct.parse_state* %199, i32 0, i32 1
  store i32 0, i32* %200, align 4
  %201 = load %struct.parse_state*, %struct.parse_state** %5, align 8
  %202 = getelementptr inbounds %struct.parse_state, %struct.parse_state* %201, i32 0, i32 5
  %203 = load i8*, i8** %202, align 8
  %204 = call i8* @strdup(i8* %203)
  store i8* %204, i8** %8, align 8
  %205 = load i8*, i8** %8, align 8
  %206 = icmp eq i8* %205, null
  br i1 %206, label %207, label %210

207:                                              ; preds = %190
  %208 = load i32, i32* @EX_SOFTWARE, align 4
  %209 = call i32 @errlog(i32 %208, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %210

210:                                              ; preds = %207, %190
  %211 = load %struct.queue*, %struct.queue** %7, align 8
  %212 = load i8*, i8** %8, align 8
  %213 = load i32, i32* @EXPAND_WILDCARD, align 4
  %214 = call i64 @add_recp(%struct.queue* %211, i8* %212, i32 %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %210
  %217 = load i32, i32* @EX_DATAERR, align 4
  %218 = load i8*, i8** %8, align 8
  %219 = call i32 @errlogx(i32 %217, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %218)
  br label %220

220:                                              ; preds = %216, %210
  br label %9

221:                                              ; preds = %187, %184, %48, %46, %13
  %222 = load i32, i32* %4, align 4
  ret i32 %222
}

declare dso_local i32 @bzero(%struct.parse_state*, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @errlog(i32, i8*) #1

declare dso_local i64 @add_recp(%struct.queue*, i8*, i32) #1

declare dso_local i32 @errlogx(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
