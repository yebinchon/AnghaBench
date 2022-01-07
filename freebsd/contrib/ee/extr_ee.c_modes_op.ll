; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_modes_op.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_modes_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@modes_menu = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@mode_strings = common dso_local global i8** null, align 8
@expand_tabs = common dso_local global i32 0, align 4
@ON = common dso_local global i8* null, align 8
@OFF = common dso_local global i8* null, align 8
@case_sen = common dso_local global i32 0, align 4
@observ_margins = common dso_local global i32 0, align 4
@auto_format = common dso_local global i32 0, align 4
@eightbit = common dso_local global i32 0, align 4
@info_window = common dso_local global i64 0, align 8
@emacs_keys_mode = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s %d\00", align 1
@right_margin = common dso_local global i32 0, align 4
@ee_chinese = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@text_win = common dso_local global i32 0, align 4
@margin_prompt = common dso_local global i32 0, align 4
@A_NC_BIG5 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @modes_op() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  br label %4

4:                                                ; preds = %234, %0
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** @modes_menu, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i64 1
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i8**, i8*** @mode_strings, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 1
  %11 = load i8*, i8** %10, align 8
  %12 = load i32, i32* @expand_tabs, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i8*, i8** @ON, align 8
  br label %18

16:                                               ; preds = %4
  %17 = load i8*, i8** @OFF, align 8
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i8* [ %15, %14 ], [ %17, %16 ]
  %20 = call i32 (i32, i8*, i8*, ...) @sprintf(i32 %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %11, i8* %19)
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @modes_menu, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 2
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i8**, i8*** @mode_strings, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 2
  %27 = load i8*, i8** %26, align 8
  %28 = load i32, i32* @case_sen, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %18
  %31 = load i8*, i8** @ON, align 8
  br label %34

32:                                               ; preds = %18
  %33 = load i8*, i8** @OFF, align 8
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i8* [ %31, %30 ], [ %33, %32 ]
  %36 = call i32 (i32, i8*, i8*, ...) @sprintf(i32 %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %27, i8* %35)
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** @modes_menu, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 3
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i8**, i8*** @mode_strings, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 3
  %43 = load i8*, i8** %42, align 8
  %44 = load i32, i32* @observ_margins, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %34
  %47 = load i8*, i8** @ON, align 8
  br label %50

48:                                               ; preds = %34
  %49 = load i8*, i8** @OFF, align 8
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i8* [ %47, %46 ], [ %49, %48 ]
  %52 = call i32 (i32, i8*, i8*, ...) @sprintf(i32 %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %43, i8* %51)
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** @modes_menu, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 4
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i8**, i8*** @mode_strings, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 4
  %59 = load i8*, i8** %58, align 8
  %60 = load i32, i32* @auto_format, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %50
  %63 = load i8*, i8** @ON, align 8
  br label %66

64:                                               ; preds = %50
  %65 = load i8*, i8** @OFF, align 8
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i8* [ %63, %62 ], [ %65, %64 ]
  %68 = call i32 (i32, i8*, i8*, ...) @sprintf(i32 %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %59, i8* %67)
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** @modes_menu, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 5
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i8**, i8*** @mode_strings, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 5
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* @eightbit, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %66
  %79 = load i8*, i8** @ON, align 8
  br label %82

80:                                               ; preds = %66
  %81 = load i8*, i8** @OFF, align 8
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i8* [ %79, %78 ], [ %81, %80 ]
  %84 = call i32 (i32, i8*, i8*, ...) @sprintf(i32 %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %75, i8* %83)
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** @modes_menu, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i64 6
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i8**, i8*** @mode_strings, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 6
  %91 = load i8*, i8** %90, align 8
  %92 = load i64, i64* @info_window, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %82
  %95 = load i8*, i8** @ON, align 8
  br label %98

96:                                               ; preds = %82
  %97 = load i8*, i8** @OFF, align 8
  br label %98

98:                                               ; preds = %96, %94
  %99 = phi i8* [ %95, %94 ], [ %97, %96 ]
  %100 = call i32 (i32, i8*, i8*, ...) @sprintf(i32 %88, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %91, i8* %99)
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** @modes_menu, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i64 7
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i8**, i8*** @mode_strings, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 7
  %107 = load i8*, i8** %106, align 8
  %108 = load i32, i32* @emacs_keys_mode, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %98
  %111 = load i8*, i8** @ON, align 8
  br label %114

112:                                              ; preds = %98
  %113 = load i8*, i8** @OFF, align 8
  br label %114

114:                                              ; preds = %112, %110
  %115 = phi i8* [ %111, %110 ], [ %113, %112 ]
  %116 = call i32 (i32, i8*, i8*, ...) @sprintf(i32 %104, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %107, i8* %115)
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** @modes_menu, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i64 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i8**, i8*** @mode_strings, align 8
  %122 = getelementptr inbounds i8*, i8** %121, i64 8
  %123 = load i8*, i8** %122, align 8
  %124 = load i32, i32* @right_margin, align 4
  %125 = call i32 (i32, i8*, i8*, ...) @sprintf(i32 %120, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %123, i32 %124)
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** @modes_menu, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i64 9
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i8**, i8*** @mode_strings, align 8
  %131 = getelementptr inbounds i8*, i8** %130, i64 9
  %132 = load i8*, i8** %131, align 8
  %133 = load i32, i32* @ee_chinese, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %114
  %136 = load i8*, i8** @ON, align 8
  br label %139

137:                                              ; preds = %114
  %138 = load i8*, i8** @OFF, align 8
  br label %139

139:                                              ; preds = %137, %135
  %140 = phi i8* [ %136, %135 ], [ %138, %137 ]
  %141 = call i32 (i32, i8*, i8*, ...) @sprintf(i32 %129, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %132, i8* %140)
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** @modes_menu, align 8
  %143 = call i32 @menu_op(%struct.TYPE_3__* %142)
  store i32 %143, i32* %1, align 4
  %144 = load i32, i32* %1, align 4
  switch i32 %144, label %232 [
    i32 1, label %145
    i32 2, label %150
    i32 3, label %155
    i32 4, label %160
    i32 5, label %171
    i32 6, label %184
    i32 7, label %192
    i32 8, label %202
    i32 9, label %219
  ]

145:                                              ; preds = %139
  %146 = load i32, i32* @expand_tabs, align 4
  %147 = icmp ne i32 %146, 0
  %148 = xor i1 %147, true
  %149 = zext i1 %148 to i32
  store i32 %149, i32* @expand_tabs, align 4
  br label %233

150:                                              ; preds = %139
  %151 = load i32, i32* @case_sen, align 4
  %152 = icmp ne i32 %151, 0
  %153 = xor i1 %152, true
  %154 = zext i1 %153 to i32
  store i32 %154, i32* @case_sen, align 4
  br label %233

155:                                              ; preds = %139
  %156 = load i32, i32* @observ_margins, align 4
  %157 = icmp ne i32 %156, 0
  %158 = xor i1 %157, true
  %159 = zext i1 %158 to i32
  store i32 %159, i32* @observ_margins, align 4
  br label %233

160:                                              ; preds = %139
  %161 = load i32, i32* @auto_format, align 4
  %162 = icmp ne i32 %161, 0
  %163 = xor i1 %162, true
  %164 = zext i1 %163 to i32
  store i32 %164, i32* @auto_format, align 4
  %165 = load i32, i32* @auto_format, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %160
  %168 = load i8*, i8** @TRUE, align 8
  %169 = ptrtoint i8* %168 to i32
  store i32 %169, i32* @observ_margins, align 4
  br label %170

170:                                              ; preds = %167, %160
  br label %233

171:                                              ; preds = %139
  %172 = load i32, i32* @eightbit, align 4
  %173 = icmp ne i32 %172, 0
  %174 = xor i1 %173, true
  %175 = zext i1 %174 to i32
  store i32 %175, i32* @eightbit, align 4
  %176 = load i32, i32* @eightbit, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %180, label %178

178:                                              ; preds = %171
  %179 = load i32, i32* @FALSE, align 4
  store i32 %179, i32* @ee_chinese, align 4
  br label %180

180:                                              ; preds = %178, %171
  %181 = call i32 (...) @redraw()
  %182 = load i32, i32* @text_win, align 4
  %183 = call i32 @wnoutrefresh(i32 %182)
  br label %233

184:                                              ; preds = %139
  %185 = load i64, i64* @info_window, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %184
  %188 = call i32 (...) @no_info_window()
  br label %191

189:                                              ; preds = %184
  %190 = call i32 (...) @create_info_window()
  br label %191

191:                                              ; preds = %189, %187
  br label %233

192:                                              ; preds = %139
  %193 = load i32, i32* @emacs_keys_mode, align 4
  %194 = icmp ne i32 %193, 0
  %195 = xor i1 %194, true
  %196 = zext i1 %195 to i32
  store i32 %196, i32* @emacs_keys_mode, align 4
  %197 = load i64, i64* @info_window, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %192
  %200 = call i32 (...) @paint_info_win()
  br label %201

201:                                              ; preds = %199, %192
  br label %233

202:                                              ; preds = %139
  %203 = load i32, i32* @margin_prompt, align 4
  %204 = load i8*, i8** @TRUE, align 8
  %205 = call i8* @get_string(i32 %203, i8* %204)
  store i8* %205, i8** %3, align 8
  %206 = load i8*, i8** %3, align 8
  %207 = icmp ne i8* %206, null
  br i1 %207, label %208, label %218

208:                                              ; preds = %202
  %209 = load i8*, i8** %3, align 8
  %210 = call i32 @atoi(i8* %209)
  store i32 %210, i32* %2, align 4
  %211 = load i32, i32* %2, align 4
  %212 = icmp sgt i32 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %208
  %214 = load i32, i32* %2, align 4
  store i32 %214, i32* @right_margin, align 4
  br label %215

215:                                              ; preds = %213, %208
  %216 = load i8*, i8** %3, align 8
  %217 = call i32 @free(i8* %216)
  br label %218

218:                                              ; preds = %215, %202
  br label %233

219:                                              ; preds = %139
  %220 = load i32, i32* @ee_chinese, align 4
  %221 = icmp ne i32 %220, 0
  %222 = xor i1 %221, true
  %223 = zext i1 %222 to i32
  store i32 %223, i32* @ee_chinese, align 4
  %224 = load i32, i32* @ee_chinese, align 4
  %225 = load i32, i32* @FALSE, align 4
  %226 = icmp ne i32 %224, %225
  br i1 %226, label %227, label %230

227:                                              ; preds = %219
  %228 = load i8*, i8** @TRUE, align 8
  %229 = ptrtoint i8* %228 to i32
  store i32 %229, i32* @eightbit, align 4
  br label %230

230:                                              ; preds = %227, %219
  %231 = call i32 (...) @redraw()
  br label %233

232:                                              ; preds = %139
  br label %233

233:                                              ; preds = %232, %230, %218, %201, %191, %180, %170, %155, %150, %145
  br label %234

234:                                              ; preds = %233
  %235 = load i32, i32* %1, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %4, label %237

237:                                              ; preds = %234
  ret void
}

declare dso_local i32 @sprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @menu_op(%struct.TYPE_3__*) #1

declare dso_local i32 @redraw(...) #1

declare dso_local i32 @wnoutrefresh(i32) #1

declare dso_local i32 @no_info_window(...) #1

declare dso_local i32 @create_info_window(...) #1

declare dso_local i32 @paint_info_win(...) #1

declare dso_local i8* @get_string(i32, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
