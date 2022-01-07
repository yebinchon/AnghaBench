; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_dump_ee_conf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_dump_ee_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c".init.ee\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"~/.init.ee\00", align 1
@config_dump_menu = common dso_local global i32 0, align 4
@com_win = common dso_local global i32 0, align 4
@conf_not_saved_msg = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"%s.old\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@conf_dump_err_msg = common dso_local global i32 0, align 4
@init_strings = common dso_local global i32 0, align 4
@Echo = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@case_sen = common dso_local global i64 0, align 8
@CASE = common dso_local global i8* null, align 8
@NOCASE = common dso_local global i8* null, align 8
@expand_tabs = common dso_local global i64 0, align 8
@EXPAND = common dso_local global i8* null, align 8
@NOEXPAND = common dso_local global i8* null, align 8
@info_window = common dso_local global i64 0, align 8
@INFO = common dso_local global i8* null, align 8
@NOINFO = common dso_local global i8* null, align 8
@observ_margins = common dso_local global i64 0, align 8
@MARGINS = common dso_local global i8* null, align 8
@NOMARGINS = common dso_local global i8* null, align 8
@auto_format = common dso_local global i64 0, align 8
@AUTOFORMAT = common dso_local global i8* null, align 8
@NOAUTOFORMAT = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@PRINTCOMMAND = common dso_local global i8* null, align 8
@print_command = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [7 x i8] c"%s %d\0A\00", align 1
@RIGHTMARGIN = common dso_local global i8* null, align 8
@right_margin = common dso_local global i32 0, align 4
@nohighlight = common dso_local global i64 0, align 8
@NOHIGHLIGHT = common dso_local global i8* null, align 8
@HIGHLIGHT = common dso_local global i8* null, align 8
@eightbit = common dso_local global i64 0, align 8
@EIGHTBIT = common dso_local global i8* null, align 8
@NOEIGHTBIT = common dso_local global i8* null, align 8
@emacs_keys_mode = common dso_local global i64 0, align 8
@EMACS_string = common dso_local global i8* null, align 8
@NOEMACS_string = common dso_local global i8* null, align 8
@ee_chinese = common dso_local global i64 0, align 8
@chinese_cmd = common dso_local global i8* null, align 8
@nochinese_cmd = common dso_local global i8* null, align 8
@conf_dump_success_msg = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_ee_conf() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [512 x i8], align 16
  %6 = alloca %struct.stat, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* null, i32** %2, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  store i32 0, i32* %9, align 4
  %10 = call i64 (...) @restrict_mode()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  br label %219

13:                                               ; preds = %0
  %14 = load i32, i32* @config_dump_menu, align 4
  %15 = call i32 @menu_op(i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* @com_win, align 4
  %17 = call i32 @werase(i32 %16)
  %18 = load i32, i32* @com_win, align 4
  %19 = call i32 @wmove(i32 %18, i32 0, i32 0)
  %20 = load i32, i32* %9, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %13
  %23 = load i32, i32* @com_win, align 4
  %24 = load i32, i32* @conf_not_saved_msg, align 4
  %25 = call i32 (i32, i32, ...) @wprintw(i32 %23, i32 %24)
  %26 = load i32, i32* @com_win, align 4
  %27 = call i32 @wrefresh(i32 %26)
  br label %219

28:                                               ; preds = %13
  %29 = load i32, i32* %9, align 4
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i8*, i8** %4, align 8
  %33 = call i8* @resolve_name(i8* %32)
  store i8* %33, i8** %3, align 8
  br label %34

34:                                               ; preds = %31, %28
  br label %35

35:                                               ; preds = %34
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 @stat(i8* %36, %struct.stat* %6)
  %38 = icmp ne i32 %37, -1
  br i1 %38, label %39, label %52

39:                                               ; preds = %35
  %40 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %41 = load i8*, i8** %3, align 8
  %42 = call i32 @sprintf(i8* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %41)
  %43 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %44 = call i32 @unlink(i8* %43)
  %45 = load i8*, i8** %3, align 8
  %46 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %47 = call i32 @link(i8* %45, i8* %46)
  %48 = load i8*, i8** %3, align 8
  %49 = call i32 @unlink(i8* %48)
  %50 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %51 = call i32* @fopen(i8* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %51, i32** %2, align 8
  br label %52

52:                                               ; preds = %39, %35
  %53 = load i8*, i8** %3, align 8
  %54 = call i32* @fopen(i8* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %54, i32** %1, align 8
  %55 = load i32*, i32** %1, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load i32, i32* @com_win, align 4
  %59 = load i32, i32* @conf_dump_err_msg, align 4
  %60 = call i32 (i32, i32, ...) @wprintw(i32 %58, i32 %59)
  %61 = load i32, i32* @com_win, align 4
  %62 = call i32 @wrefresh(i32 %61)
  br label %219

63:                                               ; preds = %52
  %64 = load i32*, i32** %2, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %103

66:                                               ; preds = %63
  br label %67

67:                                               ; preds = %99, %66
  %68 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %69 = load i32*, i32** %2, align 8
  %70 = call i8* @fgets(i8* %68, i32 512, i32* %69)
  store i8* %70, i8** %7, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %100

72:                                               ; preds = %67
  %73 = load i8*, i8** %7, align 8
  %74 = call i32 @strlen(i8* %73)
  store i32 %74, i32* %8, align 4
  %75 = load i8*, i8** %7, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %75, i64 %78
  store i8 0, i8* %79, align 1
  %80 = load i8*, i8** %7, align 8
  %81 = load i32, i32* @init_strings, align 4
  %82 = call i32 @unique_test(i8* %80, i32 %81)
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %95

84:                                               ; preds = %72
  %85 = load i8*, i8** %7, align 8
  %86 = load i32, i32* @Echo, align 4
  %87 = load i32, i32* @FALSE, align 4
  %88 = call i64 @compare(i8* %85, i32 %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = load i32*, i32** %1, align 8
  %92 = load i8*, i8** %7, align 8
  %93 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %92)
  br label %94

94:                                               ; preds = %90, %84
  br label %99

95:                                               ; preds = %72
  %96 = load i32*, i32** %1, align 8
  %97 = load i8*, i8** %7, align 8
  %98 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %96, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %97)
  br label %99

99:                                               ; preds = %95, %94
  br label %67

100:                                              ; preds = %67
  %101 = load i32*, i32** %2, align 8
  %102 = call i32 @fclose(i32* %101)
  br label %103

103:                                              ; preds = %100, %63
  %104 = load i32*, i32** %1, align 8
  %105 = load i64, i64* @case_sen, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = load i8*, i8** @CASE, align 8
  br label %111

109:                                              ; preds = %103
  %110 = load i8*, i8** @NOCASE, align 8
  br label %111

111:                                              ; preds = %109, %107
  %112 = phi i8* [ %108, %107 ], [ %110, %109 ]
  %113 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %104, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %112)
  %114 = load i32*, i32** %1, align 8
  %115 = load i64, i64* @expand_tabs, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %111
  %118 = load i8*, i8** @EXPAND, align 8
  br label %121

119:                                              ; preds = %111
  %120 = load i8*, i8** @NOEXPAND, align 8
  br label %121

121:                                              ; preds = %119, %117
  %122 = phi i8* [ %118, %117 ], [ %120, %119 ]
  %123 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %114, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %122)
  %124 = load i32*, i32** %1, align 8
  %125 = load i64, i64* @info_window, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %121
  %128 = load i8*, i8** @INFO, align 8
  br label %131

129:                                              ; preds = %121
  %130 = load i8*, i8** @NOINFO, align 8
  br label %131

131:                                              ; preds = %129, %127
  %132 = phi i8* [ %128, %127 ], [ %130, %129 ]
  %133 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %124, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %132)
  %134 = load i32*, i32** %1, align 8
  %135 = load i64, i64* @observ_margins, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %131
  %138 = load i8*, i8** @MARGINS, align 8
  br label %141

139:                                              ; preds = %131
  %140 = load i8*, i8** @NOMARGINS, align 8
  br label %141

141:                                              ; preds = %139, %137
  %142 = phi i8* [ %138, %137 ], [ %140, %139 ]
  %143 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %134, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %142)
  %144 = load i32*, i32** %1, align 8
  %145 = load i64, i64* @auto_format, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %141
  %148 = load i8*, i8** @AUTOFORMAT, align 8
  br label %151

149:                                              ; preds = %141
  %150 = load i8*, i8** @NOAUTOFORMAT, align 8
  br label %151

151:                                              ; preds = %149, %147
  %152 = phi i8* [ %148, %147 ], [ %150, %149 ]
  %153 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %144, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %152)
  %154 = load i32*, i32** %1, align 8
  %155 = load i8*, i8** @PRINTCOMMAND, align 8
  %156 = load i8*, i8** @print_command, align 8
  %157 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %154, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %155, i8* %156)
  %158 = load i32*, i32** %1, align 8
  %159 = load i8*, i8** @RIGHTMARGIN, align 8
  %160 = load i32, i32* @right_margin, align 4
  %161 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %158, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %159, i32 %160)
  %162 = load i32*, i32** %1, align 8
  %163 = load i64, i64* @nohighlight, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %151
  %166 = load i8*, i8** @NOHIGHLIGHT, align 8
  br label %169

167:                                              ; preds = %151
  %168 = load i8*, i8** @HIGHLIGHT, align 8
  br label %169

169:                                              ; preds = %167, %165
  %170 = phi i8* [ %166, %165 ], [ %168, %167 ]
  %171 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %162, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %170)
  %172 = load i32*, i32** %1, align 8
  %173 = load i64, i64* @eightbit, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %169
  %176 = load i8*, i8** @EIGHTBIT, align 8
  br label %179

177:                                              ; preds = %169
  %178 = load i8*, i8** @NOEIGHTBIT, align 8
  br label %179

179:                                              ; preds = %177, %175
  %180 = phi i8* [ %176, %175 ], [ %178, %177 ]
  %181 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %172, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %180)
  %182 = load i32*, i32** %1, align 8
  %183 = load i64, i64* @emacs_keys_mode, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %179
  %186 = load i8*, i8** @EMACS_string, align 8
  br label %189

187:                                              ; preds = %179
  %188 = load i8*, i8** @NOEMACS_string, align 8
  br label %189

189:                                              ; preds = %187, %185
  %190 = phi i8* [ %186, %185 ], [ %188, %187 ]
  %191 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %182, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %190)
  %192 = load i32*, i32** %1, align 8
  %193 = load i64, i64* @ee_chinese, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %189
  %196 = load i8*, i8** @chinese_cmd, align 8
  br label %199

197:                                              ; preds = %189
  %198 = load i8*, i8** @nochinese_cmd, align 8
  br label %199

199:                                              ; preds = %197, %195
  %200 = phi i8* [ %196, %195 ], [ %198, %197 ]
  %201 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %192, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %200)
  %202 = load i32*, i32** %1, align 8
  %203 = call i32 @fclose(i32* %202)
  %204 = load i32, i32* @com_win, align 4
  %205 = load i32, i32* @conf_dump_success_msg, align 4
  %206 = load i8*, i8** %3, align 8
  %207 = call i32 (i32, i32, ...) @wprintw(i32 %204, i32 %205, i8* %206)
  %208 = load i32, i32* @com_win, align 4
  %209 = call i32 @wrefresh(i32 %208)
  %210 = load i32, i32* %9, align 4
  %211 = icmp eq i32 %210, 2
  br i1 %211, label %212, label %219

212:                                              ; preds = %199
  %213 = load i8*, i8** %3, align 8
  %214 = load i8*, i8** %4, align 8
  %215 = icmp ne i8* %213, %214
  br i1 %215, label %216, label %219

216:                                              ; preds = %212
  %217 = load i8*, i8** %3, align 8
  %218 = call i32 @free(i8* %217)
  br label %219

219:                                              ; preds = %12, %22, %57, %216, %212, %199
  ret void
}

declare dso_local i64 @restrict_mode(...) #1

declare dso_local i32 @menu_op(i32) #1

declare dso_local i32 @werase(i32) #1

declare dso_local i32 @wmove(i32, i32, i32) #1

declare dso_local i32 @wprintw(i32, i32, ...) #1

declare dso_local i32 @wrefresh(i32) #1

declare dso_local i8* @resolve_name(i8*) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @link(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i8* @fgets(i8*, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @unique_test(i8*, i32) #1

declare dso_local i64 @compare(i8*, i32, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*, ...) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
