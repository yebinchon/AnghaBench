; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_inputstr.c_dlg_show_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_inputstr.c_dlg_show_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@dialog_vars = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@TAB = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dlg_show_string(i32* %0, i8* %1, i32 %2, i8 signext %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i8, align 1
  %29 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i8 %3, i8* %13, align 1
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %30 = load i32, i32* %16, align 4
  %31 = load i32, i32* %15, align 4
  %32 = add nsw i32 %30, %31
  %33 = load i32*, i32** %10, align 8
  %34 = call i32 @getmaxx(i32* %33)
  %35 = call i32 @MIN(i32 %32, i32 %34)
  %36 = load i32, i32* %15, align 4
  %37 = sub nsw i32 %35, %36
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %17, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %9
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_vars, i32 0, i32 0), align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %54, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %18, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load i32*, i32** %10, align 8
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* %15, align 4
  %50 = call i32 @wmove(i32* %47, i32 %48, i32 %49)
  %51 = load i32*, i32** %10, align 8
  %52 = call i32 @wrefresh(i32* %51)
  br label %53

53:                                               ; preds = %46, %43
  br label %190

54:                                               ; preds = %40, %9
  %55 = load i8*, i8** %11, align 8
  %56 = call i32* @dlg_index_columns(i8* %55)
  store i32* %56, i32** %19, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = call i32* @dlg_index_wchars(i8* %57)
  store i32* %58, i32** %20, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = call i32 @dlg_count_wchars(i8* %59)
  store i32 %60, i32* %21, align 4
  %61 = load i8*, i8** %11, align 8
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %16, align 4
  %64 = call i32 @compute_edit_offset(i8* %61, i32 %62, i32 %63, i32* %25, i32* %26)
  %65 = load i32*, i32** %10, align 8
  %66 = load i8, i8* %13, align 1
  %67 = call i32 @dlg_attrset(i32* %65, i8 signext %66)
  %68 = load i32*, i32** %10, align 8
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %15, align 4
  %71 = call i32 @wmove(i32* %68, i32 %69, i32 %70)
  %72 = load i32, i32* %26, align 4
  store i32 %72, i32* %22, align 4
  store i32 0, i32* %24, align 4
  br label %73

73:                                               ; preds = %169, %54
  %74 = load i32, i32* %22, align 4
  %75 = load i32, i32* %21, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = load i32, i32* %24, align 4
  %79 = load i32, i32* %16, align 4
  %80 = icmp slt i32 %78, %79
  br label %81

81:                                               ; preds = %77, %73
  %82 = phi i1 [ false, %73 ], [ %80, %77 ]
  br i1 %82, label %83, label %172

83:                                               ; preds = %81
  %84 = load i32*, i32** %19, align 8
  %85 = load i32, i32* %22, align 4
  %86 = add nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %19, align 8
  %91 = load i32, i32* %26, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = sub nsw i32 %89, %94
  store i32 %95, i32* %27, align 4
  %96 = load i32, i32* %27, align 4
  %97 = load i32, i32* %16, align 4
  %98 = icmp sle i32 %96, %97
  br i1 %98, label %99, label %167

99:                                               ; preds = %83
  %100 = load i32*, i32** %20, align 8
  %101 = load i32, i32* %22, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %23, align 4
  br label %105

105:                                              ; preds = %162, %99
  %106 = load i32, i32* %23, align 4
  %107 = load i32*, i32** %20, align 8
  %108 = load i32, i32* %22, align 4
  %109 = add nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %107, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = icmp slt i32 %106, %112
  br i1 %113, label %114, label %165

114:                                              ; preds = %105
  %115 = load i8*, i8** %11, align 8
  %116 = load i32, i32* %23, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = call signext i8 @UCH(i8 signext %119)
  store i8 %120, i8* %28, align 1
  %121 = load i32, i32* %17, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %114
  %124 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_vars, i32 0, i32 0), align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load i32*, i32** %10, align 8
  %128 = call i32 @waddch(i32* %127, i8 signext 42)
  br label %161

129:                                              ; preds = %123, %114
  %130 = load i8, i8* %28, align 1
  %131 = sext i8 %130 to i32
  %132 = load i8, i8* @TAB, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %131, %133
  br i1 %134, label %135, label %156

135:                                              ; preds = %129
  %136 = load i32*, i32** %19, align 8
  %137 = load i32, i32* %22, align 4
  %138 = add nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load i32*, i32** %19, align 8
  %143 = load i32, i32* %22, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = sub nsw i32 %141, %146
  store i32 %147, i32* %29, align 4
  br label %148

148:                                              ; preds = %152, %135
  %149 = load i32, i32* %29, align 4
  %150 = add nsw i32 %149, -1
  store i32 %150, i32* %29, align 4
  %151 = icmp sge i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %148
  %153 = load i32*, i32** %10, align 8
  %154 = call i32 @waddch(i32* %153, i8 signext 32)
  br label %148

155:                                              ; preds = %148
  br label %160

156:                                              ; preds = %129
  %157 = load i32*, i32** %10, align 8
  %158 = load i8, i8* %28, align 1
  %159 = call i32 @waddch(i32* %157, i8 signext %158)
  br label %160

160:                                              ; preds = %156, %155
  br label %161

161:                                              ; preds = %160, %126
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %23, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %23, align 4
  br label %105

165:                                              ; preds = %105
  %166 = load i32, i32* %27, align 4
  store i32 %166, i32* %24, align 4
  br label %168

167:                                              ; preds = %83
  br label %172

168:                                              ; preds = %165
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %22, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %22, align 4
  br label %73

172:                                              ; preds = %167, %81
  br label %173

173:                                              ; preds = %178, %172
  %174 = load i32, i32* %24, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %24, align 4
  %176 = load i32, i32* %16, align 4
  %177 = icmp slt i32 %174, %176
  br i1 %177, label %178, label %181

178:                                              ; preds = %173
  %179 = load i32*, i32** %10, align 8
  %180 = call i32 @waddch(i32* %179, i8 signext 32)
  br label %173

181:                                              ; preds = %173
  %182 = load i32*, i32** %10, align 8
  %183 = load i32, i32* %14, align 4
  %184 = load i32, i32* %15, align 4
  %185 = load i32, i32* %25, align 4
  %186 = add nsw i32 %184, %185
  %187 = call i32 @wmove(i32* %182, i32 %183, i32 %186)
  %188 = load i32*, i32** %10, align 8
  %189 = call i32 @wrefresh(i32* %188)
  br label %190

190:                                              ; preds = %181, %53
  ret void
}

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @getmaxx(i32*) #1

declare dso_local i32 @wmove(i32*, i32, i32) #1

declare dso_local i32 @wrefresh(i32*) #1

declare dso_local i32* @dlg_index_columns(i8*) #1

declare dso_local i32* @dlg_index_wchars(i8*) #1

declare dso_local i32 @dlg_count_wchars(i8*) #1

declare dso_local i32 @compute_edit_offset(i8*, i32, i32, i32*, i32*) #1

declare dso_local i32 @dlg_attrset(i32*, i8 signext) #1

declare dso_local signext i8 @UCH(i8 signext) #1

declare dso_local i32 @waddch(i32*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
