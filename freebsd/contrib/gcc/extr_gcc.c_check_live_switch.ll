; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcc.c_check_live_switch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcc.c_check_live_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i64, i32 }

@switches = common dso_local global %struct.TYPE_2__* null, align 8
@n_switches = common dso_local global i32 0, align 4
@SWITCH_FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"no-\00", align 1
@SWITCH_LIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @check_live_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_live_switch(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @switches, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %6, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp sle i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %227

20:                                               ; preds = %16, %2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @switches, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %20
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @switches, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %34, 0
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %3, align 4
  br label %227

37:                                               ; preds = %20
  %38 = load i8*, i8** %6, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  switch i32 %40, label %220 [
    i32 79, label %41
    i32 87, label %77
    i32 102, label %77
    i32 109, label %77
  ]

41:                                               ; preds = %37
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %73, %41
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @n_switches, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %76

48:                                               ; preds = %44
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @switches, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 79
  br i1 %58, label %59, label %72

59:                                               ; preds = %48
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @switches, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  store i32 1, i32* %64, align 8
  %65 = load i8*, i8** @SWITCH_FALSE, align 8
  %66 = ptrtoint i8* %65 to i64
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @switches, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  store i64 %66, i64* %71, align 8
  store i32 0, i32* %3, align 4
  br label %227

72:                                               ; preds = %48
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %44

76:                                               ; preds = %44
  br label %220

77:                                               ; preds = %37, %37, %37
  %78 = load i8*, i8** %6, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = call i32 @strncmp(i8* %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %134, label %82

82:                                               ; preds = %77
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %130, %82
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @n_switches, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %133

89:                                               ; preds = %85
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** @switches, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 0
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = load i8*, i8** %6, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 0
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %98, %102
  br i1 %103, label %104, label %129

104:                                              ; preds = %89
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** @switches, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 1
  %112 = load i8*, i8** %6, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 4
  %114 = call i32 @strcmp(i8* %111, i8* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %129, label %116

116:                                              ; preds = %104
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** @switches, align 8
  %118 = load i32, i32* %4, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 2
  store i32 1, i32* %121, align 8
  %122 = load i8*, i8** @SWITCH_FALSE, align 8
  %123 = ptrtoint i8* %122 to i64
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** @switches, align 8
  %125 = load i32, i32* %4, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 1
  store i64 %123, i64* %128, align 8
  store i32 0, i32* %3, align 4
  br label %227

129:                                              ; preds = %104, %89
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %7, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %7, align 4
  br label %85

133:                                              ; preds = %85
  br label %219

134:                                              ; preds = %77
  %135 = load i32, i32* %4, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %7, align 4
  br label %137

137:                                              ; preds = %215, %134
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* @n_switches, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %218

141:                                              ; preds = %137
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** @switches, align 8
  %143 = load i32, i32* %7, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 0
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = load i8*, i8** %6, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 0
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp eq i32 %150, %154
  br i1 %155, label %156, label %214

156:                                              ; preds = %141
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** @switches, align 8
  %158 = load i32, i32* %7, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 1
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp eq i32 %165, 110
  br i1 %166, label %167, label %214

167:                                              ; preds = %156
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** @switches, align 8
  %169 = load i32, i32* %7, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 0
  %173 = load i8*, i8** %172, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 2
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp eq i32 %176, 111
  br i1 %177, label %178, label %214

178:                                              ; preds = %167
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** @switches, align 8
  %180 = load i32, i32* %7, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 0
  %184 = load i8*, i8** %183, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 3
  %186 = load i8, i8* %185, align 1
  %187 = sext i8 %186 to i32
  %188 = icmp eq i32 %187, 45
  br i1 %188, label %189, label %214

189:                                              ; preds = %178
  %190 = load %struct.TYPE_2__*, %struct.TYPE_2__** @switches, align 8
  %191 = load i32, i32* %7, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 0
  %195 = load i8*, i8** %194, align 8
  %196 = getelementptr inbounds i8, i8* %195, i64 4
  %197 = load i8*, i8** %6, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 1
  %199 = call i32 @strcmp(i8* %196, i8* %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %214, label %201

201:                                              ; preds = %189
  %202 = load %struct.TYPE_2__*, %struct.TYPE_2__** @switches, align 8
  %203 = load i32, i32* %4, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 2
  store i32 1, i32* %206, align 8
  %207 = load i8*, i8** @SWITCH_FALSE, align 8
  %208 = ptrtoint i8* %207 to i64
  %209 = load %struct.TYPE_2__*, %struct.TYPE_2__** @switches, align 8
  %210 = load i32, i32* %4, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 1
  store i64 %208, i64* %213, align 8
  store i32 0, i32* %3, align 4
  br label %227

214:                                              ; preds = %189, %178, %167, %156, %141
  br label %215

215:                                              ; preds = %214
  %216 = load i32, i32* %7, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %7, align 4
  br label %137

218:                                              ; preds = %137
  br label %219

219:                                              ; preds = %218, %133
  br label %220

220:                                              ; preds = %37, %219, %76
  %221 = load i64, i64* @SWITCH_LIVE, align 8
  %222 = load %struct.TYPE_2__*, %struct.TYPE_2__** @switches, align 8
  %223 = load i32, i32* %4, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 1
  store i64 %221, i64* %226, align 8
  store i32 1, i32* %3, align 4
  br label %227

227:                                              ; preds = %220, %201, %116, %59, %28, %19
  %228 = load i32, i32* %3, align 4
  ret i32 %228
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
