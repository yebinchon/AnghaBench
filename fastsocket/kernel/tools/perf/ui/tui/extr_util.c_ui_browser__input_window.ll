; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/tui/extr_util.c_ui_browser__input_window.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/tui/extr_util.c_ui_browser__input_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ui_browser__input_window.buf = internal global [50 x i8] zeroinitializer, align 16
@SLtt_Screen_Rows = common dso_local global i32 0, align 4
@SLtt_Screen_Cols = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@K_TIMER = common dso_local global i32 0, align 4
@K_ENTER = common dso_local global i32 0, align 4
@K_ESC = common dso_local global i32 0, align 4
@K_BKSPC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"maximum size of symbol name reached!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ui_browser__input_window(i8* %0, i8* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 60, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %19 = load i8*, i8** %7, align 8
  store i8* %19, i8** %17, align 8
  br label %20

20:                                               ; preds = %5, %48
  %21 = load i8*, i8** %17, align 8
  %22 = call i8* @strchr(i8* %21, i8 signext 10)
  store i8* %22, i8** %18, align 8
  %23 = load i8*, i8** %18, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i8*, i8** %17, align 8
  %27 = call i8* @strchr(i8* %26, i8 signext 0)
  store i8* %27, i8** %18, align 8
  br label %28

28:                                               ; preds = %25, %20
  %29 = load i8*, i8** %18, align 8
  %30 = load i8*, i8** %17, align 8
  %31 = ptrtoint i8* %29 to i64
  %32 = ptrtoint i8* %30 to i64
  %33 = sub i64 %31, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %15, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32, i32* %13, align 4
  store i32 %39, i32* %15, align 4
  br label %40

40:                                               ; preds = %38, %28
  %41 = load i32, i32* %16, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %16, align 4
  %43 = load i8*, i8** %18, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %51

48:                                               ; preds = %40
  %49 = load i8*, i8** %18, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  store i8* %50, i8** %17, align 8
  br label %20

51:                                               ; preds = %47
  %52 = load i32, i32* %15, align 4
  %53 = add nsw i32 %52, 2
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %16, align 4
  %55 = add nsw i32 %54, 8
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* @SLtt_Screen_Rows, align 4
  %57 = sdiv i32 %56, 2
  %58 = load i32, i32* %16, align 4
  %59 = sdiv i32 %58, 2
  %60 = sub nsw i32 %57, %59
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* @SLtt_Screen_Cols, align 4
  %62 = sdiv i32 %61, 2
  %63 = load i32, i32* %15, align 4
  %64 = sdiv i32 %63, 2
  %65 = sub nsw i32 %62, %64
  store i32 %65, i32* %11, align 4
  %66 = call i32 @SLsmg_set_color(i32 0)
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %16, align 4
  %71 = load i32, i32* %15, align 4
  %72 = call i32 @SLsmg_draw_box(i32 %67, i32 %68, i32 %70, i32 %71)
  %73 = load i8*, i8** %6, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %82

75:                                               ; preds = %51
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  %79 = call i32 @SLsmg_gotorc(i32 %76, i32 %78)
  %80 = load i8*, i8** %6, align 8
  %81 = call i32 @SLsmg_write_string(i8* %80)
  br label %82

82:                                               ; preds = %75, %51
  %83 = load i32, i32* %12, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @SLsmg_gotorc(i32 %84, i32 %85)
  %87 = load i32, i32* %16, align 4
  %88 = sub nsw i32 %87, 7
  store i32 %88, i32* %16, align 4
  %89 = load i32, i32* %15, align 4
  %90 = sub nsw i32 %89, 2
  store i32 %90, i32* %15, align 4
  %91 = load i8*, i8** %7, align 8
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %16, align 4
  %95 = load i32, i32* %15, align 4
  %96 = call i32 @SLsmg_write_wrapped_string(i8* %91, i32 %92, i32 %93, i32 %94, i32 %95, i32 1)
  %97 = load i32, i32* %16, align 4
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %12, align 4
  store i32 5, i32* %13, align 4
  br label %100

100:                                              ; preds = %104, %82
  %101 = load i32, i32* %13, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %13, align 4
  %103 = icmp ne i32 %101, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %100
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %13, align 4
  %107 = add nsw i32 %105, %106
  %108 = sub nsw i32 %107, 1
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @SLsmg_gotorc(i32 %108, i32 %109)
  %111 = load i32, i32* %15, align 4
  %112 = call i32 @SLsmg_write_nstring(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %111)
  br label %100

113:                                              ; preds = %100
  %114 = load i32, i32* %12, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %12, align 4
  %116 = load i32, i32* %11, align 4
  %117 = add nsw i32 %116, 1
  %118 = load i32, i32* %15, align 4
  %119 = sub nsw i32 %118, 2
  %120 = call i32 @SLsmg_draw_box(i32 %114, i32 %117, i32 3, i32 %119)
  %121 = load i32, i32* %12, align 4
  %122 = add nsw i32 %121, 3
  %123 = load i32, i32* %11, align 4
  %124 = call i32 @SLsmg_gotorc(i32 %122, i32 %123)
  %125 = load i8*, i8** %9, align 8
  %126 = load i32, i32* %15, align 4
  %127 = call i32 @SLsmg_write_nstring(i8* %125, i32 %126)
  %128 = call i32 (...) @SLsmg_refresh()
  %129 = load i32, i32* %11, align 4
  %130 = add nsw i32 %129, 2
  store i32 %130, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @ui__getch(i32 %131)
  store i32 %132, i32* %14, align 4
  br label %133

133:                                              ; preds = %186, %113
  %134 = load i32, i32* %14, align 4
  %135 = load i32, i32* @K_TIMER, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %145

137:                                              ; preds = %133
  %138 = load i32, i32* %14, align 4
  %139 = load i32, i32* @K_ENTER, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %137
  %142 = load i32, i32* %14, align 4
  %143 = load i32, i32* @K_ESC, align 4
  %144 = icmp ne i32 %142, %143
  br label %145

145:                                              ; preds = %141, %137, %133
  %146 = phi i1 [ false, %137 ], [ false, %133 ], [ %144, %141 ]
  br i1 %146, label %147, label %189

147:                                              ; preds = %145
  %148 = load i32, i32* %14, align 4
  %149 = load i32, i32* @K_BKSPC, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %163

151:                                              ; preds = %147
  %152 = load i32, i32* %13, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %151
  br label %186

155:                                              ; preds = %151
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* %13, align 4
  %159 = add nsw i32 %158, -1
  store i32 %159, i32* %13, align 4
  %160 = add nsw i32 %157, %159
  %161 = call i32 @SLsmg_gotorc(i32 %156, i32 %160)
  %162 = call i32 @SLsmg_write_char(i32 32)
  br label %177

163:                                              ; preds = %147
  %164 = load i32, i32* %14, align 4
  %165 = trunc i32 %164 to i8
  %166 = load i32, i32* %13, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [50 x i8], [50 x i8]* @ui_browser__input_window.buf, i64 0, i64 %167
  store i8 %165, i8* %168, align 1
  %169 = load i32, i32* %12, align 4
  %170 = load i32, i32* %11, align 4
  %171 = load i32, i32* %13, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %13, align 4
  %173 = add nsw i32 %170, %171
  %174 = call i32 @SLsmg_gotorc(i32 %169, i32 %173)
  %175 = load i32, i32* %14, align 4
  %176 = call i32 @SLsmg_write_char(i32 %175)
  br label %177

177:                                              ; preds = %163, %155
  %178 = call i32 (...) @SLsmg_refresh()
  %179 = load i32, i32* %13, align 4
  %180 = sext i32 %179 to i64
  %181 = icmp eq i64 %180, 49
  br i1 %181, label %182, label %185

182:                                              ; preds = %177
  %183 = call i32 @ui_helpline__push(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %184 = load i32, i32* @K_ENTER, align 4
  store i32 %184, i32* %14, align 4
  br label %189

185:                                              ; preds = %177
  br label %186

186:                                              ; preds = %185, %154
  %187 = load i32, i32* %10, align 4
  %188 = call i32 @ui__getch(i32 %187)
  store i32 %188, i32* %14, align 4
  br label %133

189:                                              ; preds = %182, %145
  %190 = load i32, i32* %13, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [50 x i8], [50 x i8]* @ui_browser__input_window.buf, i64 0, i64 %191
  store i8 0, i8* %192, align 1
  %193 = load i8*, i8** %8, align 8
  %194 = load i32, i32* %13, align 4
  %195 = add nsw i32 %194, 1
  %196 = call i32 @strncpy(i8* %193, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @ui_browser__input_window.buf, i64 0, i64 0), i32 %195)
  %197 = load i32, i32* %14, align 4
  ret i32 %197
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @SLsmg_set_color(i32) #1

declare dso_local i32 @SLsmg_draw_box(i32, i32, i32, i32) #1

declare dso_local i32 @SLsmg_gotorc(i32, i32) #1

declare dso_local i32 @SLsmg_write_string(i8*) #1

declare dso_local i32 @SLsmg_write_wrapped_string(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SLsmg_write_nstring(i8*, i32) #1

declare dso_local i32 @SLsmg_refresh(...) #1

declare dso_local i32 @ui__getch(i32) #1

declare dso_local i32 @SLsmg_write_char(i32) #1

declare dso_local i32 @ui_helpline__push(i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
