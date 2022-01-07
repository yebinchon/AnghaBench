; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_util.c_dlg_draw_box2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_util.c_dlg_draw_box2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACS_ULCORNER = common dso_local global i32 0, align 4
@ACS_LLCORNER = common dso_local global i32 0, align 4
@ACS_URCORNER = common dso_local global i32 0, align 4
@ACS_LRCORNER = common dso_local global i32 0, align 4
@ACS_HLINE = common dso_local global i32 0, align 4
@ACS_VLINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dlg_draw_box2(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8 signext %5, i8 signext %6, i8 signext %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8, align 1
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8 %5, i8* %14, align 1
  store i8 %6, i8* %15, align 1
  store i8 %7, i8* %16, align 1
  %20 = load i32*, i32** %9, align 8
  %21 = call signext i8 @dlg_get_attrs(i32* %20)
  store i8 %21, i8* %19, align 1
  %22 = load i32*, i32** %9, align 8
  %23 = call i32 @dlg_attrset(i32* %22, i8 signext 0)
  store i32 0, i32* %17, align 4
  br label %24

24:                                               ; preds = %186, %8
  %25 = load i32, i32* %17, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %189

28:                                               ; preds = %24
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %17, align 4
  %32 = add nsw i32 %30, %31
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @wmove(i32* %29, i32 %32, i32 %33)
  store i32 0, i32* %18, align 4
  br label %35

35:                                               ; preds = %182, %28
  %36 = load i32, i32* %18, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %185

39:                                               ; preds = %35
  %40 = load i32, i32* %17, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %55, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %18, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %42
  %46 = load i32*, i32** %9, align 8
  %47 = load i8, i8* %15, align 1
  %48 = sext i8 %47 to i32
  %49 = load i32, i32* @ACS_ULCORNER, align 4
  %50 = call signext i8 @dlg_boxchar(i32 %49)
  %51 = sext i8 %50 to i32
  %52 = or i32 %48, %51
  %53 = trunc i32 %52 to i8
  %54 = call i32 @waddch(i32* %46, i8 signext %53)
  br label %181

55:                                               ; preds = %42, %39
  %56 = load i32, i32* %17, align 4
  %57 = load i32, i32* %12, align 4
  %58 = sub nsw i32 %57, 1
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %55
  %61 = load i32, i32* %18, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %60
  %64 = load i32*, i32** %9, align 8
  %65 = load i8, i8* %15, align 1
  %66 = sext i8 %65 to i32
  %67 = load i32, i32* @ACS_LLCORNER, align 4
  %68 = call signext i8 @dlg_boxchar(i32 %67)
  %69 = sext i8 %68 to i32
  %70 = or i32 %66, %69
  %71 = trunc i32 %70 to i8
  %72 = call i32 @waddch(i32* %64, i8 signext %71)
  br label %180

73:                                               ; preds = %60, %55
  %74 = load i32, i32* %17, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %91, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %18, align 4
  %78 = load i32, i32* %13, align 4
  %79 = sub nsw i32 %78, 1
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %81, label %91

81:                                               ; preds = %76
  %82 = load i32*, i32** %9, align 8
  %83 = load i8, i8* %16, align 1
  %84 = sext i8 %83 to i32
  %85 = load i32, i32* @ACS_URCORNER, align 4
  %86 = call signext i8 @dlg_boxchar(i32 %85)
  %87 = sext i8 %86 to i32
  %88 = or i32 %84, %87
  %89 = trunc i32 %88 to i8
  %90 = call i32 @waddch(i32* %82, i8 signext %89)
  br label %179

91:                                               ; preds = %76, %73
  %92 = load i32, i32* %17, align 4
  %93 = load i32, i32* %12, align 4
  %94 = sub nsw i32 %93, 1
  %95 = icmp eq i32 %92, %94
  br i1 %95, label %96, label %111

96:                                               ; preds = %91
  %97 = load i32, i32* %18, align 4
  %98 = load i32, i32* %13, align 4
  %99 = sub nsw i32 %98, 1
  %100 = icmp eq i32 %97, %99
  br i1 %100, label %101, label %111

101:                                              ; preds = %96
  %102 = load i32*, i32** %9, align 8
  %103 = load i8, i8* %16, align 1
  %104 = sext i8 %103 to i32
  %105 = load i32, i32* @ACS_LRCORNER, align 4
  %106 = call signext i8 @dlg_boxchar(i32 %105)
  %107 = sext i8 %106 to i32
  %108 = or i32 %104, %107
  %109 = trunc i32 %108 to i8
  %110 = call i32 @waddch(i32* %102, i8 signext %109)
  br label %178

111:                                              ; preds = %96, %91
  %112 = load i32, i32* %17, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %124, label %114

114:                                              ; preds = %111
  %115 = load i32*, i32** %9, align 8
  %116 = load i8, i8* %15, align 1
  %117 = sext i8 %116 to i32
  %118 = load i32, i32* @ACS_HLINE, align 4
  %119 = call signext i8 @dlg_boxchar(i32 %118)
  %120 = sext i8 %119 to i32
  %121 = or i32 %117, %120
  %122 = trunc i32 %121 to i8
  %123 = call i32 @waddch(i32* %115, i8 signext %122)
  br label %177

124:                                              ; preds = %111
  %125 = load i32, i32* %17, align 4
  %126 = load i32, i32* %12, align 4
  %127 = sub nsw i32 %126, 1
  %128 = icmp eq i32 %125, %127
  br i1 %128, label %129, label %139

129:                                              ; preds = %124
  %130 = load i32*, i32** %9, align 8
  %131 = load i8, i8* %16, align 1
  %132 = sext i8 %131 to i32
  %133 = load i32, i32* @ACS_HLINE, align 4
  %134 = call signext i8 @dlg_boxchar(i32 %133)
  %135 = sext i8 %134 to i32
  %136 = or i32 %132, %135
  %137 = trunc i32 %136 to i8
  %138 = call i32 @waddch(i32* %130, i8 signext %137)
  br label %176

139:                                              ; preds = %124
  %140 = load i32, i32* %18, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %152, label %142

142:                                              ; preds = %139
  %143 = load i32*, i32** %9, align 8
  %144 = load i8, i8* %15, align 1
  %145 = sext i8 %144 to i32
  %146 = load i32, i32* @ACS_VLINE, align 4
  %147 = call signext i8 @dlg_boxchar(i32 %146)
  %148 = sext i8 %147 to i32
  %149 = or i32 %145, %148
  %150 = trunc i32 %149 to i8
  %151 = call i32 @waddch(i32* %143, i8 signext %150)
  br label %175

152:                                              ; preds = %139
  %153 = load i32, i32* %18, align 4
  %154 = load i32, i32* %13, align 4
  %155 = sub nsw i32 %154, 1
  %156 = icmp eq i32 %153, %155
  br i1 %156, label %157, label %167

157:                                              ; preds = %152
  %158 = load i32*, i32** %9, align 8
  %159 = load i8, i8* %16, align 1
  %160 = sext i8 %159 to i32
  %161 = load i32, i32* @ACS_VLINE, align 4
  %162 = call signext i8 @dlg_boxchar(i32 %161)
  %163 = sext i8 %162 to i32
  %164 = or i32 %160, %163
  %165 = trunc i32 %164 to i8
  %166 = call i32 @waddch(i32* %158, i8 signext %165)
  br label %174

167:                                              ; preds = %152
  %168 = load i32*, i32** %9, align 8
  %169 = load i8, i8* %14, align 1
  %170 = sext i8 %169 to i32
  %171 = or i32 %170, 32
  %172 = trunc i32 %171 to i8
  %173 = call i32 @waddch(i32* %168, i8 signext %172)
  br label %174

174:                                              ; preds = %167, %157
  br label %175

175:                                              ; preds = %174, %142
  br label %176

176:                                              ; preds = %175, %129
  br label %177

177:                                              ; preds = %176, %114
  br label %178

178:                                              ; preds = %177, %101
  br label %179

179:                                              ; preds = %178, %81
  br label %180

180:                                              ; preds = %179, %63
  br label %181

181:                                              ; preds = %180, %45
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %18, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %18, align 4
  br label %35

185:                                              ; preds = %35
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %17, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %17, align 4
  br label %24

189:                                              ; preds = %24
  %190 = load i32*, i32** %9, align 8
  %191 = load i8, i8* %19, align 1
  %192 = call i32 @dlg_attrset(i32* %190, i8 signext %191)
  ret void
}

declare dso_local signext i8 @dlg_get_attrs(i32*) #1

declare dso_local i32 @dlg_attrset(i32*, i8 signext) #1

declare dso_local i32 @wmove(i32*, i32, i32) #1

declare dso_local i32 @waddch(i32*, i8 signext) #1

declare dso_local signext i8 @dlg_boxchar(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
