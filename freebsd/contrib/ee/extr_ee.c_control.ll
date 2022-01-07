; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_control.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@in = common dso_local global i32 0, align 4
@ascii_code_str = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@text_win = common dso_local global i32 0, align 4
@scr_vert = common dso_local global i32 0, align 4
@scr_horz = common dso_local global i64 0, align 8
@horiz_offset = common dso_local global i64 0, align 8
@last_line = common dso_local global i64 0, align 8
@main_menu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @control() #0 {
  %1 = alloca i8*, align 8
  %2 = load i32, i32* @in, align 4
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %4, label %26

4:                                                ; preds = %0
  %5 = load i32, i32* @ascii_code_str, align 4
  %6 = load i32, i32* @TRUE, align 4
  %7 = call i8* @get_string(i32 %5, i32 %6)
  store i8* %7, i8** %1, align 8
  %8 = load i8*, i8** %1, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %4
  %13 = load i8*, i8** %1, align 8
  %14 = call i32 @atoi(i8* %13)
  store i32 %14, i32* @in, align 4
  %15 = load i32, i32* @text_win, align 4
  %16 = load i32, i32* @scr_vert, align 4
  %17 = load i64, i64* @scr_horz, align 8
  %18 = load i64, i64* @horiz_offset, align 8
  %19 = sub nsw i64 %17, %18
  %20 = call i32 @wmove(i32 %15, i32 %16, i64 %19)
  %21 = load i32, i32* @in, align 4
  %22 = call i32 @insert(i32 %21)
  br label %23

23:                                               ; preds = %12, %4
  %24 = load i8*, i8** %1, align 8
  %25 = call i32 @free(i8* %24)
  br label %192

26:                                               ; preds = %0
  %27 = load i32, i32* @in, align 4
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i32 (...) @bottom()
  br label %191

31:                                               ; preds = %26
  %32 = load i32, i32* @in, align 4
  %33 = icmp eq i32 %32, 3
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i32 (...) @command_prompt()
  br label %190

36:                                               ; preds = %31
  %37 = load i32, i32* @in, align 4
  %38 = icmp eq i32 %37, 4
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = call i32 (...) @down()
  br label %189

41:                                               ; preds = %36
  %42 = load i32, i32* @in, align 4
  %43 = icmp eq i32 %42, 5
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = call i32 (...) @search_prompt()
  br label %188

46:                                               ; preds = %41
  %47 = load i32, i32* @in, align 4
  %48 = icmp eq i32 %47, 6
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = call i32 (...) @undel_char()
  br label %187

51:                                               ; preds = %46
  %52 = load i32, i32* @in, align 4
  %53 = icmp eq i32 %52, 7
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = call i32 (...) @bol()
  br label %186

56:                                               ; preds = %51
  %57 = load i32, i32* @in, align 4
  %58 = icmp eq i32 %57, 8
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* @TRUE, align 4
  %61 = call i32 @delete(i32 %60)
  br label %185

62:                                               ; preds = %56
  %63 = load i32, i32* @in, align 4
  %64 = icmp eq i32 %63, 9
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %184

66:                                               ; preds = %62
  %67 = load i32, i32* @in, align 4
  %68 = icmp eq i32 %67, 10
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* @TRUE, align 4
  %71 = call i32 @insert_line(i32 %70)
  br label %183

72:                                               ; preds = %66
  %73 = load i32, i32* @in, align 4
  %74 = icmp eq i32 %73, 11
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = call i32 (...) @del_char()
  br label %182

77:                                               ; preds = %72
  %78 = load i32, i32* @in, align 4
  %79 = icmp eq i32 %78, 12
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, i32* @TRUE, align 4
  %82 = call i32 @left(i32 %81)
  br label %181

83:                                               ; preds = %77
  %84 = load i32, i32* @in, align 4
  %85 = icmp eq i32 %84, 13
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* @TRUE, align 4
  %88 = call i32 @insert_line(i32 %87)
  br label %180

89:                                               ; preds = %83
  %90 = load i32, i32* @in, align 4
  %91 = icmp eq i32 %90, 14
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load i64, i64* @last_line, align 8
  %94 = sub nsw i64 %93, 5
  %95 = call i32 @max(i32 5, i64 %94)
  %96 = call i32 @move_rel(i8 zeroext 100, i32 %95)
  br label %179

97:                                               ; preds = %89
  %98 = load i32, i32* @in, align 4
  %99 = icmp eq i32 %98, 15
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = call i32 (...) @eol()
  br label %178

102:                                              ; preds = %97
  %103 = load i32, i32* @in, align 4
  %104 = icmp eq i32 %103, 16
  br i1 %104, label %105, label %110

105:                                              ; preds = %102
  %106 = load i64, i64* @last_line, align 8
  %107 = sub nsw i64 %106, 5
  %108 = call i32 @max(i32 5, i64 %107)
  %109 = call i32 @move_rel(i8 zeroext 117, i32 %108)
  br label %177

110:                                              ; preds = %102
  %111 = load i32, i32* @in, align 4
  %112 = icmp eq i32 %111, 17
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  br label %176

114:                                              ; preds = %110
  %115 = load i32, i32* @in, align 4
  %116 = icmp eq i32 %115, 18
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load i32, i32* @TRUE, align 4
  %119 = call i32 @right(i32 %118)
  br label %175

120:                                              ; preds = %114
  %121 = load i32, i32* @in, align 4
  %122 = icmp eq i32 %121, 19
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  br label %174

124:                                              ; preds = %120
  %125 = load i32, i32* @in, align 4
  %126 = icmp eq i32 %125, 20
  br i1 %126, label %127, label %129

127:                                              ; preds = %124
  %128 = call i32 (...) @top()
  br label %173

129:                                              ; preds = %124
  %130 = load i32, i32* @in, align 4
  %131 = icmp eq i32 %130, 21
  br i1 %131, label %132, label %134

132:                                              ; preds = %129
  %133 = call i32 (...) @up()
  br label %172

134:                                              ; preds = %129
  %135 = load i32, i32* @in, align 4
  %136 = icmp eq i32 %135, 22
  br i1 %136, label %137, label %139

137:                                              ; preds = %134
  %138 = call i32 (...) @undel_word()
  br label %171

139:                                              ; preds = %134
  %140 = load i32, i32* @in, align 4
  %141 = icmp eq i32 %140, 23
  br i1 %141, label %142, label %144

142:                                              ; preds = %139
  %143 = call i32 (...) @del_word()
  br label %170

144:                                              ; preds = %139
  %145 = load i32, i32* @in, align 4
  %146 = icmp eq i32 %145, 24
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = load i32, i32* @TRUE, align 4
  %149 = call i32 @search(i32 %148)
  br label %169

150:                                              ; preds = %144
  %151 = load i32, i32* @in, align 4
  %152 = icmp eq i32 %151, 25
  br i1 %152, label %153, label %155

153:                                              ; preds = %150
  %154 = call i32 (...) @del_line()
  br label %168

155:                                              ; preds = %150
  %156 = load i32, i32* @in, align 4
  %157 = icmp eq i32 %156, 26
  br i1 %157, label %158, label %160

158:                                              ; preds = %155
  %159 = call i32 (...) @undel_line()
  br label %167

160:                                              ; preds = %155
  %161 = load i32, i32* @in, align 4
  %162 = icmp eq i32 %161, 27
  br i1 %162, label %163, label %166

163:                                              ; preds = %160
  %164 = load i32, i32* @main_menu, align 4
  %165 = call i32 @menu_op(i32 %164)
  br label %166

166:                                              ; preds = %163, %160
  br label %167

167:                                              ; preds = %166, %158
  br label %168

168:                                              ; preds = %167, %153
  br label %169

169:                                              ; preds = %168, %147
  br label %170

170:                                              ; preds = %169, %142
  br label %171

171:                                              ; preds = %170, %137
  br label %172

172:                                              ; preds = %171, %132
  br label %173

173:                                              ; preds = %172, %127
  br label %174

174:                                              ; preds = %173, %123
  br label %175

175:                                              ; preds = %174, %117
  br label %176

176:                                              ; preds = %175, %113
  br label %177

177:                                              ; preds = %176, %105
  br label %178

178:                                              ; preds = %177, %100
  br label %179

179:                                              ; preds = %178, %92
  br label %180

180:                                              ; preds = %179, %86
  br label %181

181:                                              ; preds = %180, %80
  br label %182

182:                                              ; preds = %181, %75
  br label %183

183:                                              ; preds = %182, %69
  br label %184

184:                                              ; preds = %183, %65
  br label %185

185:                                              ; preds = %184, %59
  br label %186

186:                                              ; preds = %185, %54
  br label %187

187:                                              ; preds = %186, %49
  br label %188

188:                                              ; preds = %187, %44
  br label %189

189:                                              ; preds = %188, %39
  br label %190

190:                                              ; preds = %189, %34
  br label %191

191:                                              ; preds = %190, %29
  br label %192

192:                                              ; preds = %191, %23
  ret void
}

declare dso_local i8* @get_string(i32, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @wmove(i32, i32, i64) #1

declare dso_local i32 @insert(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @bottom(...) #1

declare dso_local i32 @command_prompt(...) #1

declare dso_local i32 @down(...) #1

declare dso_local i32 @search_prompt(...) #1

declare dso_local i32 @undel_char(...) #1

declare dso_local i32 @bol(...) #1

declare dso_local i32 @delete(i32) #1

declare dso_local i32 @insert_line(i32) #1

declare dso_local i32 @del_char(...) #1

declare dso_local i32 @left(i32) #1

declare dso_local i32 @move_rel(i8 zeroext, i32) #1

declare dso_local i32 @max(i32, i64) #1

declare dso_local i32 @eol(...) #1

declare dso_local i32 @right(i32) #1

declare dso_local i32 @top(...) #1

declare dso_local i32 @up(...) #1

declare dso_local i32 @undel_word(...) #1

declare dso_local i32 @del_word(...) #1

declare dso_local i32 @search(i32) #1

declare dso_local i32 @del_line(...) #1

declare dso_local i32 @undel_line(...) #1

declare dso_local i32 @menu_op(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
