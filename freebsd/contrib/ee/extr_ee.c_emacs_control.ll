; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_emacs_control.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_emacs_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@in = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@last_line = common dso_local global i64 0, align 8
@ascii_code_str = common dso_local global i32 0, align 4
@text_win = common dso_local global i32 0, align 4
@scr_vert = common dso_local global i32 0, align 4
@scr_horz = common dso_local global i64 0, align 8
@horiz_offset = common dso_local global i64 0, align 8
@main_menu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emacs_control() #0 {
  %1 = alloca i8*, align 8
  %2 = load i32, i32* @in, align 4
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 (...) @bol()
  br label %191

6:                                                ; preds = %0
  %7 = load i32, i32* @in, align 4
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load i32, i32* @TRUE, align 4
  %11 = call i32 @left(i32 %10)
  br label %190

12:                                               ; preds = %6
  %13 = load i32, i32* @in, align 4
  %14 = icmp eq i32 %13, 3
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = call i32 (...) @command_prompt()
  br label %189

17:                                               ; preds = %12
  %18 = load i32, i32* @in, align 4
  %19 = icmp eq i32 %18, 4
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = call i32 (...) @del_char()
  br label %188

22:                                               ; preds = %17
  %23 = load i32, i32* @in, align 4
  %24 = icmp eq i32 %23, 5
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i32 (...) @eol()
  br label %187

27:                                               ; preds = %22
  %28 = load i32, i32* @in, align 4
  %29 = icmp eq i32 %28, 6
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* @TRUE, align 4
  %32 = call i32 @right(i32 %31)
  br label %186

33:                                               ; preds = %27
  %34 = load i32, i32* @in, align 4
  %35 = icmp eq i32 %34, 7
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i64, i64* @last_line, align 8
  %38 = sub nsw i64 %37, 5
  %39 = call i32 @max(i32 5, i64 %38)
  %40 = call i32 @move_rel(i8 signext 117, i32 %39)
  br label %185

41:                                               ; preds = %33
  %42 = load i32, i32* @in, align 4
  %43 = icmp eq i32 %42, 8
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* @TRUE, align 4
  %46 = call i32 @delete(i32 %45)
  br label %184

47:                                               ; preds = %41
  %48 = load i32, i32* @in, align 4
  %49 = icmp eq i32 %48, 9
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  br label %183

51:                                               ; preds = %47
  %52 = load i32, i32* @in, align 4
  %53 = icmp eq i32 %52, 10
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = call i32 (...) @undel_char()
  br label %182

56:                                               ; preds = %51
  %57 = load i32, i32* @in, align 4
  %58 = icmp eq i32 %57, 11
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = call i32 (...) @del_line()
  br label %181

61:                                               ; preds = %56
  %62 = load i32, i32* @in, align 4
  %63 = icmp eq i32 %62, 12
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = call i32 (...) @undel_line()
  br label %180

66:                                               ; preds = %61
  %67 = load i32, i32* @in, align 4
  %68 = icmp eq i32 %67, 13
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* @TRUE, align 4
  %71 = call i32 @insert_line(i32 %70)
  br label %179

72:                                               ; preds = %66
  %73 = load i32, i32* @in, align 4
  %74 = icmp eq i32 %73, 14
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = call i32 (...) @down()
  br label %178

77:                                               ; preds = %72
  %78 = load i32, i32* @in, align 4
  %79 = icmp eq i32 %78, 15
  br i1 %79, label %80, label %102

80:                                               ; preds = %77
  %81 = load i32, i32* @ascii_code_str, align 4
  %82 = load i32, i32* @TRUE, align 4
  %83 = call i8* @get_string(i32 %81, i32 %82)
  store i8* %83, i8** %1, align 8
  %84 = load i8*, i8** %1, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %80
  %89 = load i8*, i8** %1, align 8
  %90 = call i32 @atoi(i8* %89)
  store i32 %90, i32* @in, align 4
  %91 = load i32, i32* @text_win, align 4
  %92 = load i32, i32* @scr_vert, align 4
  %93 = load i64, i64* @scr_horz, align 8
  %94 = load i64, i64* @horiz_offset, align 8
  %95 = sub nsw i64 %93, %94
  %96 = call i32 @wmove(i32 %91, i32 %92, i64 %95)
  %97 = load i32, i32* @in, align 4
  %98 = call i32 @insert(i32 %97)
  br label %99

99:                                               ; preds = %88, %80
  %100 = load i8*, i8** %1, align 8
  %101 = call i32 @free(i8* %100)
  br label %177

102:                                              ; preds = %77
  %103 = load i32, i32* @in, align 4
  %104 = icmp eq i32 %103, 16
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = call i32 (...) @up()
  br label %176

107:                                              ; preds = %102
  %108 = load i32, i32* @in, align 4
  %109 = icmp eq i32 %108, 17
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  br label %175

111:                                              ; preds = %107
  %112 = load i32, i32* @in, align 4
  %113 = icmp eq i32 %112, 18
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = call i32 (...) @undel_word()
  br label %174

116:                                              ; preds = %111
  %117 = load i32, i32* @in, align 4
  %118 = icmp eq i32 %117, 19
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  br label %173

120:                                              ; preds = %116
  %121 = load i32, i32* @in, align 4
  %122 = icmp eq i32 %121, 20
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  %124 = call i32 (...) @top()
  br label %172

125:                                              ; preds = %120
  %126 = load i32, i32* @in, align 4
  %127 = icmp eq i32 %126, 21
  br i1 %127, label %128, label %130

128:                                              ; preds = %125
  %129 = call i32 (...) @bottom()
  br label %171

130:                                              ; preds = %125
  %131 = load i32, i32* @in, align 4
  %132 = icmp eq i32 %131, 22
  br i1 %132, label %133, label %138

133:                                              ; preds = %130
  %134 = load i64, i64* @last_line, align 8
  %135 = sub nsw i64 %134, 5
  %136 = call i32 @max(i32 5, i64 %135)
  %137 = call i32 @move_rel(i8 signext 100, i32 %136)
  br label %170

138:                                              ; preds = %130
  %139 = load i32, i32* @in, align 4
  %140 = icmp eq i32 %139, 23
  br i1 %140, label %141, label %143

141:                                              ; preds = %138
  %142 = call i32 (...) @del_word()
  br label %169

143:                                              ; preds = %138
  %144 = load i32, i32* @in, align 4
  %145 = icmp eq i32 %144, 24
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load i32, i32* @TRUE, align 4
  %148 = call i32 @search(i32 %147)
  br label %168

149:                                              ; preds = %143
  %150 = load i32, i32* @in, align 4
  %151 = icmp eq i32 %150, 25
  br i1 %151, label %152, label %154

152:                                              ; preds = %149
  %153 = call i32 (...) @search_prompt()
  br label %167

154:                                              ; preds = %149
  %155 = load i32, i32* @in, align 4
  %156 = icmp eq i32 %155, 26
  br i1 %156, label %157, label %159

157:                                              ; preds = %154
  %158 = call i32 (...) @adv_word()
  br label %166

159:                                              ; preds = %154
  %160 = load i32, i32* @in, align 4
  %161 = icmp eq i32 %160, 27
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = load i32, i32* @main_menu, align 4
  %164 = call i32 @menu_op(i32 %163)
  br label %165

165:                                              ; preds = %162, %159
  br label %166

166:                                              ; preds = %165, %157
  br label %167

167:                                              ; preds = %166, %152
  br label %168

168:                                              ; preds = %167, %146
  br label %169

169:                                              ; preds = %168, %141
  br label %170

170:                                              ; preds = %169, %133
  br label %171

171:                                              ; preds = %170, %128
  br label %172

172:                                              ; preds = %171, %123
  br label %173

173:                                              ; preds = %172, %119
  br label %174

174:                                              ; preds = %173, %114
  br label %175

175:                                              ; preds = %174, %110
  br label %176

176:                                              ; preds = %175, %105
  br label %177

177:                                              ; preds = %176, %99
  br label %178

178:                                              ; preds = %177, %75
  br label %179

179:                                              ; preds = %178, %69
  br label %180

180:                                              ; preds = %179, %64
  br label %181

181:                                              ; preds = %180, %59
  br label %182

182:                                              ; preds = %181, %54
  br label %183

183:                                              ; preds = %182, %50
  br label %184

184:                                              ; preds = %183, %44
  br label %185

185:                                              ; preds = %184, %36
  br label %186

186:                                              ; preds = %185, %30
  br label %187

187:                                              ; preds = %186, %25
  br label %188

188:                                              ; preds = %187, %20
  br label %189

189:                                              ; preds = %188, %15
  br label %190

190:                                              ; preds = %189, %9
  br label %191

191:                                              ; preds = %190, %4
  ret void
}

declare dso_local i32 @bol(...) #1

declare dso_local i32 @left(i32) #1

declare dso_local i32 @command_prompt(...) #1

declare dso_local i32 @del_char(...) #1

declare dso_local i32 @eol(...) #1

declare dso_local i32 @right(i32) #1

declare dso_local i32 @move_rel(i8 signext, i32) #1

declare dso_local i32 @max(i32, i64) #1

declare dso_local i32 @delete(i32) #1

declare dso_local i32 @undel_char(...) #1

declare dso_local i32 @del_line(...) #1

declare dso_local i32 @undel_line(...) #1

declare dso_local i32 @insert_line(i32) #1

declare dso_local i32 @down(...) #1

declare dso_local i8* @get_string(i32, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @wmove(i32, i32, i64) #1

declare dso_local i32 @insert(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @up(...) #1

declare dso_local i32 @undel_word(...) #1

declare dso_local i32 @top(...) #1

declare dso_local i32 @bottom(...) #1

declare dso_local i32 @del_word(...) #1

declare dso_local i32 @search(i32) #1

declare dso_local i32 @search_prompt(...) #1

declare dso_local i32 @adv_word(...) #1

declare dso_local i32 @menu_op(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
