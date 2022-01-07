; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_textbox.c_read_high.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_textbox.c_read_high.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_5__ = type { i32, i64, i64, i8*, i8*, i32 }

@dialog_vars = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@TAB = common dso_local global i8 0, align 1
@dialog_state = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"Error reading file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i64)* @read_high to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_high(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %7, align 4
  %12 = load i64, i64* %4, align 8
  %13 = add i64 %12, 1
  %14 = call i8* @xalloc(i64 %13)
  store i8* %14, i8** %5, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @read(i32 %17, i8* %18, i64 %19)
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = icmp ne i32 %20, -1
  br i1 %23, label %24, label %223

24:                                               ; preds = %2
  %25 = load i8*, i8** %5, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %25, i64 %29
  store i8 0, i8* %30, align 1
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dialog_vars, i32 0, i32 0), align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %128

33:                                               ; preds = %24
  store i64 0, i64* %11, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %89, %33
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %92

42:                                               ; preds = %36
  %43 = load i8*, i8** %5, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = load i8, i8* @TAB, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %42
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @dialog_state, i32 0, i32 0), align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %11, align 8
  %58 = sub nsw i64 %56, %57
  %59 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @dialog_state, i32 0, i32 0), align 8
  %60 = srem i64 %58, %59
  %61 = sub nsw i64 %53, %60
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, %61
  store i64 %65, i64* %63, align 8
  br label %88

66:                                               ; preds = %42
  %67 = load i8*, i8** %5, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 10
  br i1 %73, label %74, label %82

74:                                               ; preds = %66
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* %76, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %11, align 8
  br label %87

82:                                               ; preds = %66
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %84, align 8
  br label %87

87:                                               ; preds = %82, %74
  br label %88

88:                                               ; preds = %87, %52
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %36

92:                                               ; preds = %36
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp sgt i64 %95, %98
  br i1 %99, label %100, label %127

100:                                              ; preds = %92
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 4
  %103 = load i8*, i8** %102, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load i8*, i8** @FALSE, align 8
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 4
  store i8* %106, i8** %108, align 8
  br label %114

109:                                              ; preds = %100
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 3
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @free(i8* %112)
  br label %114

114:                                              ; preds = %109, %105
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 2
  store i64 %117, i64* %119, align 8
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = add i64 %122, 1
  %124 = call i8* @xalloc(i64 %123)
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 3
  store i8* %124, i8** %126, align 8
  br label %127

127:                                              ; preds = %114, %92
  br label %149

128:                                              ; preds = %24
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 4
  %131 = load i8*, i8** %130, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %142

133:                                              ; preds = %128
  %134 = load i8*, i8** @FALSE, align 8
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 4
  store i8* %134, i8** %136, align 8
  %137 = load i64, i64* %4, align 8
  %138 = add i64 %137, 1
  %139 = call i8* @xalloc(i64 %138)
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 3
  store i8* %139, i8** %141, align 8
  br label %142

142:                                              ; preds = %133, %128
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = sext i32 %145 to i64
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 1
  store i64 %146, i64* %148, align 8
  br label %149

149:                                              ; preds = %142, %127
  store i32 0, i32* %8, align 4
  store i64 0, i64* %11, align 8
  br label %150

150:                                              ; preds = %215, %149
  %151 = load i32, i32* %8, align 4
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp slt i32 %151, %154
  br i1 %155, label %156, label %216

156:                                              ; preds = %150
  %157 = load i8*, i8** %5, align 8
  %158 = load i32, i32* %8, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %8, align 4
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds i8, i8* %157, i64 %160
  %162 = load i8, i8* %161, align 1
  store i8 %162, i8* %6, align 1
  %163 = sext i8 %162 to i32
  %164 = load i8, i8* @TAB, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp eq i32 %163, %165
  br i1 %166, label %167, label %198

167:                                              ; preds = %156
  %168 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dialog_vars, i32 0, i32 0), align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %198

170:                                              ; preds = %167
  %171 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @dialog_state, i32 0, i32 0), align 8
  %172 = load i32, i32* %7, align 4
  %173 = sext i32 %172 to i64
  %174 = load i64, i64* %11, align 8
  %175 = sub nsw i64 %173, %174
  %176 = trunc i64 %175 to i32
  %177 = sext i32 %176 to i64
  %178 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @dialog_state, i32 0, i32 0), align 8
  %179 = srem i64 %177, %178
  %180 = sub nsw i64 %171, %179
  %181 = trunc i64 %180 to i32
  store i32 %181, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %182

182:                                              ; preds = %194, %170
  %183 = load i32, i32* %9, align 4
  %184 = load i32, i32* %10, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %197

186:                                              ; preds = %182
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 3
  %189 = load i8*, i8** %188, align 8
  %190 = load i32, i32* %7, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %7, align 4
  %192 = sext i32 %190 to i64
  %193 = getelementptr inbounds i8, i8* %189, i64 %192
  store i8 32, i8* %193, align 1
  br label %194

194:                                              ; preds = %186
  %195 = load i32, i32* %9, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %9, align 4
  br label %182

197:                                              ; preds = %182
  br label %215

198:                                              ; preds = %167, %156
  %199 = load i8, i8* %6, align 1
  %200 = sext i8 %199 to i32
  %201 = icmp eq i32 %200, 10
  br i1 %201, label %202, label %206

202:                                              ; preds = %198
  %203 = load i32, i32* %7, align 4
  %204 = add nsw i32 %203, 1
  %205 = sext i32 %204 to i64
  store i64 %205, i64* %11, align 8
  br label %206

206:                                              ; preds = %202, %198
  %207 = load i8, i8* %6, align 1
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 3
  %210 = load i8*, i8** %209, align 8
  %211 = load i32, i32* %7, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %7, align 4
  %213 = sext i32 %211 to i64
  %214 = getelementptr inbounds i8, i8* %210, i64 %213
  store i8 %207, i8* %214, align 1
  br label %215

215:                                              ; preds = %206, %197
  br label %150

216:                                              ; preds = %150
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 3
  %219 = load i8*, i8** %218, align 8
  %220 = load i32, i32* %7, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i8, i8* %219, i64 %221
  store i8 0, i8* %222, align 1
  br label %223

223:                                              ; preds = %216, %2
  %224 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = icmp eq i64 %226, -1
  br i1 %227, label %228, label %230

228:                                              ; preds = %223
  %229 = call i32 @dlg_exiterr(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %230

230:                                              ; preds = %228, %223
  %231 = load i8*, i8** %5, align 8
  %232 = call i32 @free(i8* %231)
  ret void
}

declare dso_local i8* @xalloc(i64) #1

declare dso_local i32 @read(i32, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @dlg_exiterr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
