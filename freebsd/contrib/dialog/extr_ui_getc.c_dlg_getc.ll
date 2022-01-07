; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_ui_getc.c_dlg_getc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_ui_getc.c_dlg_getc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_10__ = type { i32, i32*, i32 (%struct.TYPE_10__*, i32, i32, i32*)* }

@FALSE = common dso_local global i32 0, align 4
@dialog_vars = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@WTIMEOUT_VAL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@curscr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"# dlg_getc: timeout expired\0A\00", align 1
@ESC = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@dialog_state = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"# dlg_getc: input or output is invalid\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"HELP\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlg_getc(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %19 = load i32*, i32** %3, align 8
  store i32* %19, i32** %5, align 8
  store i32 130, i32* %6, align 4
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %11, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %12, align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @dialog_vars, i32 0, i32 0), align 4
  %23 = mul nsw i32 %22, 1000
  store i32 %23, i32* %13, align 4
  %24 = call i64 @time(i64* null)
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @dialog_vars, i32 0, i32 0), align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %24, %26
  store i64 %27, i64* %14, align 8
  %28 = call i64 (...) @may_handle_inputs()
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %2
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* @WTIMEOUT_VAL, align 4
  %33 = call i32 @wtimeout(i32* %31, i32 %32)
  br label %42

34:                                               ; preds = %2
  %35 = load i32, i32* %13, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @wtimeout(i32* %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %34
  br label %42

42:                                               ; preds = %41, %30
  br label %43

43:                                               ; preds = %224, %148, %79, %54, %42
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  br i1 %46, label %47, label %225

47:                                               ; preds = %43
  %48 = load i32, i32* @FALSE, align 4
  store i32 %48, i32* %16, align 4
  %49 = load i32*, i32** %3, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @really_getch(i32* %49, i32* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* @TRUE, align 4
  store i32 %55, i32* %10, align 4
  br label %43

56:                                               ; preds = %47
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %7, align 4
  %58 = load i32*, i32** %4, align 8
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %8, align 4
  %60 = load i32*, i32** %3, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @dlg_lookup_key(i32* %60, i32 %61, i32* %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32*, i32** %4, align 8
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @dlg_trace_chr(i32 %64, i32 %66)
  %68 = call i64 @time(i64* null)
  store i64 %68, i64* %15, align 8
  %69 = load i32*, i32** %4, align 8
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %56
  %73 = load i32*, i32** %4, align 8
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %184

77:                                               ; preds = %72, %56
  %78 = load i32, i32* %6, align 4
  switch i32 %78, label %181 [
    i32 136, label %79
    i32 135, label %84
    i32 130, label %89
    i32 131, label %132
    i32 132, label %149
    i32 129, label %149
    i32 133, label %149
    i32 128, label %149
  ]

79:                                               ; preds = %77
  %80 = load i32, i32* @TRUE, align 4
  store i32 %80, i32* %11, align 4
  %81 = load i32*, i32** %3, align 8
  %82 = load i32, i32* @FALSE, align 4
  %83 = call i32 @keypad(i32* %81, i32 %82)
  br label %43

84:                                               ; preds = %77
  %85 = load i32*, i32** %3, align 8
  %86 = call i32 @touchwin(i32* %85)
  %87 = load i32, i32* @curscr, align 4
  %88 = call i32 @wrefresh(i32 %87)
  br label %183

89:                                               ; preds = %77
  %90 = load i32, i32* %13, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %89
  %93 = load i64, i64* %15, align 8
  %94 = load i64, i64* %14, align 8
  %95 = icmp sge i64 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = call i32 @DLG_TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %98 = load i32, i32* @ESC, align 4
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* @TRUE, align 4
  store i32 %99, i32* %10, align 4
  br label %131

100:                                              ; preds = %92, %89
  %101 = load i32, i32* @stdin, align 4
  %102 = call i32 @valid_file(i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @dialog_state, i32 0, i32 2), align 4
  %106 = call i32 @valid_file(i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %104, %100
  %109 = call i32 @DLG_TRACE(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %110 = load i32, i32* @ESC, align 4
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* @TRUE, align 4
  store i32 %111, i32* %10, align 4
  br label %130

112:                                              ; preds = %104
  %113 = call i32 (...) @check_inputs()
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %112
  %116 = load i32*, i32** %3, align 8
  %117 = call i32 @handle_inputs(i32* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %115
  %120 = load i32*, i32** %3, align 8
  %121 = call i32 @dlg_raise_window(i32* %120)
  br label %124

122:                                              ; preds = %115
  %123 = load i32, i32* @TRUE, align 4
  store i32 %123, i32* %10, align 4
  br label %124

124:                                              ; preds = %122, %119
  br label %129

125:                                              ; preds = %112
  %126 = load i32, i32* %13, align 4
  %127 = icmp sle i32 %126, 0
  %128 = zext i1 %127 to i32
  store i32 %128, i32* %10, align 4
  br label %129

129:                                              ; preds = %125, %124
  br label %130

130:                                              ; preds = %129, %108
  br label %131

131:                                              ; preds = %130, %96
  br label %183

132:                                              ; preds = %77
  %133 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @dialog_vars, i32 0, i32 1), align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %148

135:                                              ; preds = %132
  %136 = load i32*, i32** %3, align 8
  %137 = load i32, i32* %17, align 4
  %138 = load i32, i32* %18, align 4
  %139 = call i32 @getyx(i32* %136, i32 %137, i32 %138)
  %140 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @dialog_vars, i32 0, i32 1), align 4
  %141 = call i32 @dialog_helpfile(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %140, i32 0, i32 0)
  %142 = load i32*, i32** %3, align 8
  %143 = call i32 @dlg_raise_window(i32* %142)
  %144 = load i32*, i32** %3, align 8
  %145 = load i32, i32* %17, align 4
  %146 = load i32, i32* %18, align 4
  %147 = call i32 @wmove(i32* %144, i32 %145, i32 %146)
  br label %148

148:                                              ; preds = %135, %132
  br label %43

149:                                              ; preds = %77, %77, %77, %77
  %150 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @dialog_state, i32 0, i32 1), align 8
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %180

152:                                              ; preds = %149
  %153 = call i32 @isBeforeChr(i32 128)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %152
  %156 = call i32 @isBeforeFkey(i32 129)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %180

158:                                              ; preds = %155, %152
  %159 = call i32 @isBeforeChr(i32 128)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %158
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %163 = call %struct.TYPE_10__* @next_callback(%struct.TYPE_10__* %162)
  br label %167

164:                                              ; preds = %158
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %166 = call %struct.TYPE_10__* @prev_callback(%struct.TYPE_10__* %165)
  br label %167

167:                                              ; preds = %164, %161
  %168 = phi %struct.TYPE_10__* [ %163, %161 ], [ %166, %164 ]
  store %struct.TYPE_10__* %168, %struct.TYPE_10__** %12, align 8
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  store %struct.TYPE_10__* %169, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @dialog_state, i32 0, i32 0), align 8
  %170 = icmp ne %struct.TYPE_10__* %169, null
  br i1 %170, label %171, label %175

171:                                              ; preds = %167
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 1
  %174 = load i32*, i32** %173, align 8
  store i32* %174, i32** %3, align 8
  br label %177

175:                                              ; preds = %167
  %176 = load i32*, i32** %5, align 8
  store i32* %176, i32** %3, align 8
  br label %177

177:                                              ; preds = %175, %171
  %178 = load i32*, i32** %3, align 8
  %179 = call i32 @dlg_raise_window(i32* %178)
  br label %183

180:                                              ; preds = %155, %149
  br label %181

181:                                              ; preds = %77, %180
  %182 = load i32, i32* @TRUE, align 4
  store i32 %182, i32* %16, align 4
  br label %183

183:                                              ; preds = %181, %177, %131, %84
  br label %186

184:                                              ; preds = %72
  %185 = load i32, i32* @TRUE, align 4
  store i32 %185, i32* %16, align 4
  br label %186

186:                                              ; preds = %184, %183
  %187 = load i32, i32* %16, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %224

189:                                              ; preds = %186
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @dialog_state, i32 0, i32 0), align 8
  store %struct.TYPE_10__* %190, %struct.TYPE_10__** %12, align 8
  %191 = icmp ne %struct.TYPE_10__* %190, null
  br i1 %191, label %192, label %221

192:                                              ; preds = %189
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 2
  %195 = load i32 (%struct.TYPE_10__*, i32, i32, i32*)*, i32 (%struct.TYPE_10__*, i32, i32, i32*)** %194, align 8
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %197 = load i32, i32* %6, align 4
  %198 = load i32*, i32** %4, align 8
  %199 = load i32, i32* %198, align 4
  %200 = call i32 %195(%struct.TYPE_10__* %196, i32 %197, i32 %199, i32* %9)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %220, label %202

202:                                              ; preds = %192
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 1
  %205 = load i32*, i32** %204, align 8
  %206 = load i32*, i32** %5, align 8
  %207 = icmp eq i32* %205, %206
  br i1 %207, label %208, label %214

208:                                              ; preds = %202
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = icmp ne i32 %211, 0
  %213 = xor i1 %212, true
  br label %214

214:                                              ; preds = %208, %202
  %215 = phi i1 [ false, %202 ], [ %213, %208 ]
  %216 = zext i1 %215 to i32
  store i32 %216, i32* %10, align 4
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %218 = call i32 @dlg_remove_callback(%struct.TYPE_10__* %217)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @dialog_state, i32 0, i32 0), align 8
  %219 = load i32*, i32** %5, align 8
  store i32* %219, i32** %3, align 8
  br label %220

220:                                              ; preds = %214, %192
  br label %223

221:                                              ; preds = %189
  %222 = load i32, i32* @TRUE, align 4
  store i32 %222, i32* %10, align 4
  br label %223

223:                                              ; preds = %221, %220
  br label %224

224:                                              ; preds = %223, %186
  br label %43

225:                                              ; preds = %43
  %226 = load i32, i32* %11, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %232

228:                                              ; preds = %225
  %229 = load i32*, i32** %3, align 8
  %230 = load i32, i32* @TRUE, align 4
  %231 = call i32 @keypad(i32* %229, i32 %230)
  br label %232

232:                                              ; preds = %228, %225
  %233 = load i32, i32* %6, align 4
  ret i32 %233
}

declare dso_local i64 @time(i64*) #1

declare dso_local i64 @may_handle_inputs(...) #1

declare dso_local i32 @wtimeout(i32*, i32) #1

declare dso_local i32 @really_getch(i32*, i32*) #1

declare dso_local i32 @dlg_lookup_key(i32*, i32, i32*) #1

declare dso_local i32 @dlg_trace_chr(i32, i32) #1

declare dso_local i32 @keypad(i32*, i32) #1

declare dso_local i32 @touchwin(i32*) #1

declare dso_local i32 @wrefresh(i32) #1

declare dso_local i32 @DLG_TRACE(i8*) #1

declare dso_local i32 @valid_file(i32) #1

declare dso_local i32 @check_inputs(...) #1

declare dso_local i32 @handle_inputs(i32*) #1

declare dso_local i32 @dlg_raise_window(i32*) #1

declare dso_local i32 @getyx(i32*, i32, i32) #1

declare dso_local i32 @dialog_helpfile(i8*, i32, i32, i32) #1

declare dso_local i32 @wmove(i32*, i32, i32) #1

declare dso_local i32 @isBeforeChr(i32) #1

declare dso_local i32 @isBeforeFkey(i32) #1

declare dso_local %struct.TYPE_10__* @next_callback(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @prev_callback(%struct.TYPE_10__*) #1

declare dso_local i32 @dlg_remove_callback(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
