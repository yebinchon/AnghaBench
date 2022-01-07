; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ee/extr_new_curse.c_Key_Get.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ee/extr_new_curse.c_Key_Get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.KEY_STACK = type { %struct.KEYS*, %struct.KEY_STACK* }
%struct.KEYS = type { i8*, i32, i8* }

@Max_Key_len = common dso_local global i32 0, align 4
@kb__ = common dso_local global i32 0, align 4
@kf63__ = common dso_local global i32 0, align 4
@ke__ = common dso_local global i32 0, align 4
@K1__ = common dso_local global i32 0, align 4
@K5__ = common dso_local global i32 0, align 4
@kcbt__ = common dso_local global i32 0, align 4
@kbeg__ = common dso_local global i32 0, align 4
@kUND__ = common dso_local global i32 0, align 4
@kf11__ = common dso_local global i32 0, align 4
@String_table = common dso_local global i8** null, align 8
@KEY_TOS = common dso_local global %struct.KEY_STACK* null, align 8
@Key_vals = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Key_Get() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.KEY_STACK*, align 8
  store i32 0, i32* @Max_Key_len, align 4
  store i32 0, i32* %1, align 4
  %5 = load i32, i32* @kb__, align 4
  store i32 %5, i32* %3, align 4
  br label %6

6:                                                ; preds = %241, %0
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @kf63__, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %246

10:                                               ; preds = %6
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @ke__, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i32, i32* @K1__, align 4
  store i32 %15, i32* %3, align 4
  br label %40

16:                                               ; preds = %10
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @K5__, align 4
  %19 = add nsw i32 %18, 1
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @kcbt__, align 4
  store i32 %22, i32* %3, align 4
  br label %39

23:                                               ; preds = %16
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @kcbt__, align 4
  %26 = add nsw i32 %25, 1
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @kbeg__, align 4
  store i32 %29, i32* %3, align 4
  br label %38

30:                                               ; preds = %23
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @kUND__, align 4
  %33 = add nsw i32 %32, 1
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @kf11__, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %35, %30
  br label %38

38:                                               ; preds = %37, %28
  br label %39

39:                                               ; preds = %38, %21
  br label %40

40:                                               ; preds = %39, %14
  %41 = load i8**, i8*** @String_table, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %241

47:                                               ; preds = %40
  %48 = load %struct.KEY_STACK*, %struct.KEY_STACK** @KEY_TOS, align 8
  %49 = icmp eq %struct.KEY_STACK* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = call i8* @malloc(i32 16)
  %52 = bitcast i8* %51 to %struct.KEY_STACK*
  store %struct.KEY_STACK* %52, %struct.KEY_STACK** @KEY_TOS, align 8
  store %struct.KEY_STACK* %52, %struct.KEY_STACK** %4, align 8
  br label %72

53:                                               ; preds = %47
  %54 = load %struct.KEY_STACK*, %struct.KEY_STACK** @KEY_TOS, align 8
  store %struct.KEY_STACK* %54, %struct.KEY_STACK** %4, align 8
  br label %55

55:                                               ; preds = %60, %53
  %56 = load %struct.KEY_STACK*, %struct.KEY_STACK** %4, align 8
  %57 = getelementptr inbounds %struct.KEY_STACK, %struct.KEY_STACK* %56, i32 0, i32 1
  %58 = load %struct.KEY_STACK*, %struct.KEY_STACK** %57, align 8
  %59 = icmp ne %struct.KEY_STACK* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load %struct.KEY_STACK*, %struct.KEY_STACK** %4, align 8
  %62 = getelementptr inbounds %struct.KEY_STACK, %struct.KEY_STACK* %61, i32 0, i32 1
  %63 = load %struct.KEY_STACK*, %struct.KEY_STACK** %62, align 8
  store %struct.KEY_STACK* %63, %struct.KEY_STACK** %4, align 8
  br label %55

64:                                               ; preds = %55
  %65 = call i8* @malloc(i32 16)
  %66 = bitcast i8* %65 to %struct.KEY_STACK*
  %67 = load %struct.KEY_STACK*, %struct.KEY_STACK** %4, align 8
  %68 = getelementptr inbounds %struct.KEY_STACK, %struct.KEY_STACK* %67, i32 0, i32 1
  store %struct.KEY_STACK* %66, %struct.KEY_STACK** %68, align 8
  %69 = load %struct.KEY_STACK*, %struct.KEY_STACK** %4, align 8
  %70 = getelementptr inbounds %struct.KEY_STACK, %struct.KEY_STACK* %69, i32 0, i32 1
  %71 = load %struct.KEY_STACK*, %struct.KEY_STACK** %70, align 8
  store %struct.KEY_STACK* %71, %struct.KEY_STACK** %4, align 8
  br label %72

72:                                               ; preds = %64, %50
  %73 = load %struct.KEY_STACK*, %struct.KEY_STACK** %4, align 8
  %74 = getelementptr inbounds %struct.KEY_STACK, %struct.KEY_STACK* %73, i32 0, i32 1
  store %struct.KEY_STACK* null, %struct.KEY_STACK** %74, align 8
  %75 = call i8* @malloc(i32 24)
  %76 = bitcast i8* %75 to %struct.KEYS*
  %77 = load %struct.KEY_STACK*, %struct.KEY_STACK** %4, align 8
  %78 = getelementptr inbounds %struct.KEY_STACK, %struct.KEY_STACK* %77, i32 0, i32 0
  store %struct.KEYS* %76, %struct.KEYS** %78, align 8
  %79 = load i8**, i8*** @String_table, align 8
  %80 = load i32, i32* %3, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = load %struct.KEY_STACK*, %struct.KEY_STACK** %4, align 8
  %85 = getelementptr inbounds %struct.KEY_STACK, %struct.KEY_STACK* %84, i32 0, i32 0
  %86 = load %struct.KEYS*, %struct.KEYS** %85, align 8
  %87 = getelementptr inbounds %struct.KEYS, %struct.KEYS* %86, i32 0, i32 0
  store i8* %83, i8** %87, align 8
  %88 = load i8**, i8*** @String_table, align 8
  %89 = load i32, i32* %3, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %88, i64 %90
  %92 = load i8*, i8** %91, align 8
  %93 = call i8* @strlen(i8* %92)
  %94 = ptrtoint i8* %93 to i32
  %95 = load %struct.KEY_STACK*, %struct.KEY_STACK** %4, align 8
  %96 = getelementptr inbounds %struct.KEY_STACK, %struct.KEY_STACK* %95, i32 0, i32 0
  %97 = load %struct.KEYS*, %struct.KEYS** %96, align 8
  %98 = getelementptr inbounds %struct.KEYS, %struct.KEYS* %97, i32 0, i32 1
  store i32 %94, i32* %98, align 8
  %99 = load i8**, i8*** @Key_vals, align 8
  %100 = load i32, i32* %1, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8*, i8** %99, i64 %101
  %103 = load i8*, i8** %102, align 8
  %104 = load %struct.KEY_STACK*, %struct.KEY_STACK** %4, align 8
  %105 = getelementptr inbounds %struct.KEY_STACK, %struct.KEY_STACK* %104, i32 0, i32 0
  %106 = load %struct.KEYS*, %struct.KEYS** %105, align 8
  %107 = getelementptr inbounds %struct.KEYS, %struct.KEYS* %106, i32 0, i32 2
  store i8* %103, i8** %107, align 8
  %108 = load %struct.KEY_STACK*, %struct.KEY_STACK** %4, align 8
  %109 = getelementptr inbounds %struct.KEY_STACK, %struct.KEY_STACK* %108, i32 0, i32 0
  %110 = load %struct.KEYS*, %struct.KEYS** %109, align 8
  %111 = getelementptr inbounds %struct.KEYS, %struct.KEYS* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = call i8* @strlen(i8* %112)
  %114 = ptrtoint i8* %113 to i32
  store i32 %114, i32* %2, align 4
  %115 = load i32, i32* %2, align 4
  %116 = load i32, i32* @Max_Key_len, align 4
  %117 = icmp sgt i32 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %72
  %119 = load i32, i32* %2, align 4
  store i32 %119, i32* @Max_Key_len, align 4
  br label %120

120:                                              ; preds = %118, %72
  %121 = load %struct.KEY_STACK*, %struct.KEY_STACK** %4, align 8
  %122 = getelementptr inbounds %struct.KEY_STACK, %struct.KEY_STACK* %121, i32 0, i32 0
  %123 = load %struct.KEYS*, %struct.KEYS** %122, align 8
  %124 = getelementptr inbounds %struct.KEYS, %struct.KEYS* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = icmp sgt i32 %125, 1
  br i1 %126, label %127, label %240

127:                                              ; preds = %120
  %128 = load i8**, i8*** @String_table, align 8
  %129 = load i32, i32* %3, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8*, i8** %128, i64 %130
  %132 = load i8*, i8** %131, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 1
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %135, 91
  br i1 %136, label %147, label %137

137:                                              ; preds = %127
  %138 = load i8**, i8*** @String_table, align 8
  %139 = load i32, i32* %3, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8*, i8** %138, i64 %140
  %142 = load i8*, i8** %141, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 1
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %145, 79
  br i1 %146, label %147, label %240

147:                                              ; preds = %137, %127
  %148 = call i8* @malloc(i32 16)
  %149 = bitcast i8* %148 to %struct.KEY_STACK*
  %150 = load %struct.KEY_STACK*, %struct.KEY_STACK** %4, align 8
  %151 = getelementptr inbounds %struct.KEY_STACK, %struct.KEY_STACK* %150, i32 0, i32 1
  store %struct.KEY_STACK* %149, %struct.KEY_STACK** %151, align 8
  %152 = load %struct.KEY_STACK*, %struct.KEY_STACK** %4, align 8
  %153 = getelementptr inbounds %struct.KEY_STACK, %struct.KEY_STACK* %152, i32 0, i32 1
  %154 = load %struct.KEY_STACK*, %struct.KEY_STACK** %153, align 8
  store %struct.KEY_STACK* %154, %struct.KEY_STACK** %4, align 8
  %155 = load %struct.KEY_STACK*, %struct.KEY_STACK** %4, align 8
  %156 = getelementptr inbounds %struct.KEY_STACK, %struct.KEY_STACK* %155, i32 0, i32 1
  store %struct.KEY_STACK* null, %struct.KEY_STACK** %156, align 8
  %157 = call i8* @malloc(i32 24)
  %158 = bitcast i8* %157 to %struct.KEYS*
  %159 = load %struct.KEY_STACK*, %struct.KEY_STACK** %4, align 8
  %160 = getelementptr inbounds %struct.KEY_STACK, %struct.KEY_STACK* %159, i32 0, i32 0
  store %struct.KEYS* %158, %struct.KEYS** %160, align 8
  %161 = load i8**, i8*** @String_table, align 8
  %162 = load i32, i32* %3, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8*, i8** %161, i64 %163
  %165 = load i8*, i8** %164, align 8
  %166 = call i8* @strlen(i8* %165)
  %167 = ptrtoint i8* %166 to i32
  %168 = load %struct.KEY_STACK*, %struct.KEY_STACK** %4, align 8
  %169 = getelementptr inbounds %struct.KEY_STACK, %struct.KEY_STACK* %168, i32 0, i32 0
  %170 = load %struct.KEYS*, %struct.KEYS** %169, align 8
  %171 = getelementptr inbounds %struct.KEYS, %struct.KEYS* %170, i32 0, i32 1
  store i32 %167, i32* %171, align 8
  %172 = load %struct.KEY_STACK*, %struct.KEY_STACK** %4, align 8
  %173 = getelementptr inbounds %struct.KEY_STACK, %struct.KEY_STACK* %172, i32 0, i32 0
  %174 = load %struct.KEYS*, %struct.KEYS** %173, align 8
  %175 = getelementptr inbounds %struct.KEYS, %struct.KEYS* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = add nsw i32 %176, 1
  %178 = call i8* @malloc(i32 %177)
  %179 = load %struct.KEY_STACK*, %struct.KEY_STACK** %4, align 8
  %180 = getelementptr inbounds %struct.KEY_STACK, %struct.KEY_STACK* %179, i32 0, i32 0
  %181 = load %struct.KEYS*, %struct.KEYS** %180, align 8
  %182 = getelementptr inbounds %struct.KEYS, %struct.KEYS* %181, i32 0, i32 0
  store i8* %178, i8** %182, align 8
  %183 = load %struct.KEY_STACK*, %struct.KEY_STACK** %4, align 8
  %184 = getelementptr inbounds %struct.KEY_STACK, %struct.KEY_STACK* %183, i32 0, i32 0
  %185 = load %struct.KEYS*, %struct.KEYS** %184, align 8
  %186 = getelementptr inbounds %struct.KEYS, %struct.KEYS* %185, i32 0, i32 0
  %187 = load i8*, i8** %186, align 8
  %188 = load i8**, i8*** @String_table, align 8
  %189 = load i32, i32* %3, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8*, i8** %188, i64 %190
  %192 = load i8*, i8** %191, align 8
  %193 = call i32 @strcpy(i8* %187, i8* %192)
  %194 = load i8**, i8*** @Key_vals, align 8
  %195 = load i32, i32* %1, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8*, i8** %194, i64 %196
  %198 = load i8*, i8** %197, align 8
  %199 = load %struct.KEY_STACK*, %struct.KEY_STACK** %4, align 8
  %200 = getelementptr inbounds %struct.KEY_STACK, %struct.KEY_STACK* %199, i32 0, i32 0
  %201 = load %struct.KEYS*, %struct.KEYS** %200, align 8
  %202 = getelementptr inbounds %struct.KEYS, %struct.KEYS* %201, i32 0, i32 2
  store i8* %198, i8** %202, align 8
  %203 = load %struct.KEY_STACK*, %struct.KEY_STACK** %4, align 8
  %204 = getelementptr inbounds %struct.KEY_STACK, %struct.KEY_STACK* %203, i32 0, i32 0
  %205 = load %struct.KEYS*, %struct.KEYS** %204, align 8
  %206 = getelementptr inbounds %struct.KEYS, %struct.KEYS* %205, i32 0, i32 0
  %207 = load i8*, i8** %206, align 8
  %208 = call i8* @strlen(i8* %207)
  %209 = ptrtoint i8* %208 to i32
  store i32 %209, i32* %2, align 4
  %210 = load i32, i32* %2, align 4
  %211 = load i32, i32* @Max_Key_len, align 4
  %212 = icmp sgt i32 %210, %211
  br i1 %212, label %213, label %215

213:                                              ; preds = %147
  %214 = load i32, i32* %2, align 4
  store i32 %214, i32* @Max_Key_len, align 4
  br label %215

215:                                              ; preds = %213, %147
  %216 = load i8**, i8*** @String_table, align 8
  %217 = load i32, i32* %3, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i8*, i8** %216, i64 %218
  %220 = load i8*, i8** %219, align 8
  %221 = getelementptr inbounds i8, i8* %220, i64 1
  %222 = load i8, i8* %221, align 1
  %223 = sext i8 %222 to i32
  %224 = icmp eq i32 %223, 91
  br i1 %224, label %225, label %232

225:                                              ; preds = %215
  %226 = load %struct.KEY_STACK*, %struct.KEY_STACK** %4, align 8
  %227 = getelementptr inbounds %struct.KEY_STACK, %struct.KEY_STACK* %226, i32 0, i32 0
  %228 = load %struct.KEYS*, %struct.KEYS** %227, align 8
  %229 = getelementptr inbounds %struct.KEYS, %struct.KEYS* %228, i32 0, i32 0
  %230 = load i8*, i8** %229, align 8
  %231 = getelementptr inbounds i8, i8* %230, i64 1
  store i8 79, i8* %231, align 1
  br label %239

232:                                              ; preds = %215
  %233 = load %struct.KEY_STACK*, %struct.KEY_STACK** %4, align 8
  %234 = getelementptr inbounds %struct.KEY_STACK, %struct.KEY_STACK* %233, i32 0, i32 0
  %235 = load %struct.KEYS*, %struct.KEYS** %234, align 8
  %236 = getelementptr inbounds %struct.KEYS, %struct.KEYS* %235, i32 0, i32 0
  %237 = load i8*, i8** %236, align 8
  %238 = getelementptr inbounds i8, i8* %237, i64 1
  store i8 91, i8* %238, align 1
  br label %239

239:                                              ; preds = %232, %225
  br label %240

240:                                              ; preds = %239, %137, %120
  br label %241

241:                                              ; preds = %240, %40
  %242 = load i32, i32* %3, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %3, align 4
  %244 = load i32, i32* %1, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %1, align 4
  br label %6

246:                                              ; preds = %6
  ret void
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i8* @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
