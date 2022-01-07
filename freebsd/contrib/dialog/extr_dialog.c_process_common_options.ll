; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_dialog.c_process_common_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_dialog.c_process_common_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i32, i64, i8*, i8*, i8*, i32, i8*, i8*, i8* }

@FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"# process_common_options, offset %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"#\09argv[%d] = %s\0A\00", align 1
@dialog_vars = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@dialog_state = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@TRUE = common dso_local global i8* null, align 8
@DLG_EXIT_CANCEL = common dso_local global i32 0, align 4
@ignore_unknown = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"MaxSize: %d, %d\0A\00", align 1
@SLINES = common dso_local global i32 0, align 4
@SCOLS = common dso_local global i32 0, align 4
@process_common_options.default_1st = internal global [2 x i8] c"1\00", align 1
@DEFAULT_ASPECT_RATIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i32, i32)* @process_common_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_common_options(i32 %0, i8** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** @FALSE, align 8
  %12 = ptrtoint i8* %11 to i32
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to i8*
  %16 = call i32 @DLG_TRACE(i8* %15)
  br label %17

17:                                               ; preds = %246, %4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br label %25

25:                                               ; preds = %21, %17
  %26 = phi i1 [ false, %17 ], [ %24, %21 ]
  br i1 %26, label %27, label %247

27:                                               ; preds = %25
  %28 = load i32, i32* %7, align 4
  %29 = load i8**, i8*** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @DLG_TRACE(i8* %33)
  %35 = load i8**, i8*** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @lookupOption(i8* %39, i32 1)
  store i32 %40, i32* %10, align 4
  switch i32 %40, label %231 [
    i32 137, label %41
    i32 207, label %44
    i32 148, label %47
    i32 149, label %50
    i32 201, label %52
    i32 199, label %54
    i32 165, label %56
    i32 172, label %58
    i32 169, label %60
    i32 162, label %62
    i32 161, label %64
    i32 153, label %66
    i32 145, label %68
    i32 144, label %70
    i32 206, label %72
    i32 205, label %74
    i32 150, label %76
    i32 146, label %78
    i32 195, label %80
    i32 197, label %84
    i32 196, label %92
    i32 181, label %95
    i32 179, label %97
    i32 186, label %99
    i32 188, label %102
    i32 189, label %105
    i32 185, label %107
    i32 184, label %109
    i32 193, label %111
    i32 182, label %113
    i32 176, label %115
    i32 175, label %117
    i32 164, label %119
    i32 157, label %121
    i32 156, label %123
    i32 155, label %123
    i32 158, label %127
    i32 154, label %141
    i32 147, label %148
    i32 159, label %148
    i32 200, label %151
    i32 141, label %154
    i32 143, label %156
    i32 138, label %159
    i32 174, label %162
    i32 140, label %165
    i32 134, label %168
    i32 131, label %170
    i32 209, label %172
    i32 204, label %176
    i32 202, label %182
    i32 128, label %184
    i32 168, label %187
    i32 160, label %190
    i32 203, label %193
    i32 192, label %196
    i32 194, label %199
    i32 187, label %202
    i32 198, label %205
    i32 139, label %208
    i32 177, label %211
    i32 210, label %213
    i32 167, label %216
    i32 166, label %219
    i32 183, label %222
    i32 129, label %222
    i32 211, label %225
    i32 208, label %225
    i32 191, label %225
    i32 178, label %225
    i32 173, label %225
    i32 171, label %225
    i32 151, label %225
    i32 142, label %225
    i32 133, label %225
    i32 132, label %226
    i32 180, label %234
  ]

41:                                               ; preds = %27
  %42 = load i8**, i8*** %6, align 8
  %43 = call i8* @optionString(i8** %42, i32* %7)
  store i8* %43, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 56), align 8
  br label %240

44:                                               ; preds = %27
  %45 = load i8**, i8*** %6, align 8
  %46 = call i8* @optionString(i8** %45, i32* %7)
  store i8* %46, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 55), align 8
  br label %240

47:                                               ; preds = %27
  %48 = load i8**, i8*** %6, align 8
  %49 = call i8* @optionString(i8** %48, i32* %7)
  store i8* %49, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dialog_state, i32 0, i32 8), align 8
  br label %240

50:                                               ; preds = %27
  %51 = load i8*, i8** @TRUE, align 8
  store i8* %51, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 54), align 8
  br label %240

52:                                               ; preds = %27
  %53 = load i8*, i8** @TRUE, align 8
  store i8* %53, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 53), align 8
  br label %240

54:                                               ; preds = %27
  %55 = load i8*, i8** @TRUE, align 8
  store i8* %55, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 52), align 8
  br label %240

56:                                               ; preds = %27
  %57 = load i8*, i8** @TRUE, align 8
  store i8* %57, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 51), align 8
  br label %240

58:                                               ; preds = %27
  %59 = load i8*, i8** @TRUE, align 8
  store i8* %59, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 50), align 8
  br label %240

60:                                               ; preds = %27
  %61 = load i8*, i8** @TRUE, align 8
  store i8* %61, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 49), align 8
  br label %240

62:                                               ; preds = %27
  %63 = load i8*, i8** @TRUE, align 8
  store i8* %63, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 48), align 8
  br label %240

64:                                               ; preds = %27
  %65 = load i8*, i8** @TRUE, align 8
  store i8* %65, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 47), align 8
  br label %240

66:                                               ; preds = %27
  %67 = load i8*, i8** @TRUE, align 8
  store i8* %67, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 46), align 8
  br label %240

68:                                               ; preds = %27
  %69 = load i8*, i8** @TRUE, align 8
  store i8* %69, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 45), align 8
  br label %240

70:                                               ; preds = %27
  %71 = load i8*, i8** @TRUE, align 8
  store i8* %71, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 44), align 8
  br label %240

72:                                               ; preds = %27
  %73 = load i8*, i8** @TRUE, align 8
  store i8* %73, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 43), align 8
  br label %240

74:                                               ; preds = %27
  %75 = load i8*, i8** @TRUE, align 8
  store i8* %75, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 42), align 8
  br label %240

76:                                               ; preds = %27
  %77 = load i8*, i8** @TRUE, align 8
  store i8* %77, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dialog_state, i32 0, i32 7), align 8
  br label %240

78:                                               ; preds = %27
  %79 = load i8*, i8** @TRUE, align 8
  store i8* %79, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dialog_state, i32 0, i32 6), align 8
  br label %240

80:                                               ; preds = %27
  %81 = load i8*, i8** @TRUE, align 8
  %82 = ptrtoint i8* %81 to i32
  store i32 %82, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 0), align 8
  %83 = load i32, i32* @DLG_EXIT_CANCEL, align 4
  store i32 %83, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 41), align 8
  br label %240

84:                                               ; preds = %27
  %85 = load i8**, i8*** %6, align 8
  %86 = call i8* @optionString(i8** %85, i32* %7)
  %87 = call i32 @button_code(i8* %86)
  store i32 %87, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 41), align 8
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 41), align 8
  %89 = load i32, i32* @DLG_EXIT_CANCEL, align 4
  %90 = icmp eq i32 %88, %89
  %91 = zext i1 %90 to i32
  store i32 %91, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 0), align 8
  br label %240

92:                                               ; preds = %27
  %93 = load i8**, i8*** %6, align 8
  %94 = call i8* @optionString(i8** %93, i32* %7)
  store i8* %94, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 40), align 8
  br label %240

95:                                               ; preds = %27
  %96 = load i8*, i8** @TRUE, align 8
  store i8* %96, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 39), align 8
  br label %240

97:                                               ; preds = %27
  %98 = load i8*, i8** @TRUE, align 8
  store i8* %98, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 38), align 8
  br label %240

99:                                               ; preds = %27
  %100 = load i8**, i8*** %6, align 8
  %101 = call i8* @optionString(i8** %100, i32* %7)
  store i8* %101, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 37), align 8
  br label %240

102:                                              ; preds = %27
  %103 = load i8**, i8*** %6, align 8
  %104 = call i8* @optionString(i8** %103, i32* %7)
  store i8* %104, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 36), align 8
  br label %240

105:                                              ; preds = %27
  %106 = load i8*, i8** @TRUE, align 8
  store i8* %106, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 35), align 8
  br label %240

107:                                              ; preds = %27
  %108 = load i8*, i8** @TRUE, align 8
  store i8* %108, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 34), align 8
  br label %240

109:                                              ; preds = %27
  %110 = load i8*, i8** @TRUE, align 8
  store i8* %110, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 33), align 8
  br label %240

111:                                              ; preds = %27
  %112 = load i8*, i8** @TRUE, align 8
  store i8* %112, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 32), align 8
  br label %240

113:                                              ; preds = %27
  %114 = load i8*, i8** @TRUE, align 8
  store i8* %114, i8** @ignore_unknown, align 8
  br label %240

115:                                              ; preds = %27
  %116 = load i8*, i8** @TRUE, align 8
  store i8* %116, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 31), align 8
  br label %240

117:                                              ; preds = %27
  %118 = load i8*, i8** @TRUE, align 8
  store i8* %118, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 30), align 8
  br label %240

119:                                              ; preds = %27
  %120 = load i8*, i8** @FALSE, align 8
  store i8* %120, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dialog_state, i32 0, i32 6), align 8
  br label %240

121:                                              ; preds = %27
  %122 = load i8*, i8** @TRUE, align 8
  store i8* %122, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 29), align 8
  br label %240

123:                                              ; preds = %27, %27
  %124 = load i8**, i8*** %6, align 8
  %125 = load i32, i32* %10, align 4
  %126 = call i32 @PrintTextOnly(i8** %124, i32* %7, i32 %125)
  br label %240

127:                                              ; preds = %27
  %128 = load i32, i32* %8, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %140

130:                                              ; preds = %127
  %131 = load i8**, i8*** %6, align 8
  %132 = load i32, i32* %7, align 4
  %133 = call i32 @IgnoreNonScreen(i8** %131, i32 %132)
  %134 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dialog_state, i32 0, i32 5), align 8
  %135 = call i32 @fflush(i32 %134)
  %136 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dialog_state, i32 0, i32 5), align 8
  %137 = load i32, i32* @SLINES, align 4
  %138 = load i32, i32* @SCOLS, align 4
  %139 = call i32 @fprintf(i32 %136, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %130, %127
  br label %240

141:                                              ; preds = %27
  %142 = load i32, i32* %8, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dialog_state, i32 0, i32 5), align 8
  %146 = call i32 @PrintVersion(i32 %145)
  br label %147

147:                                              ; preds = %144, %141
  br label %240

148:                                              ; preds = %27, %27
  %149 = load i8**, i8*** %6, align 8
  %150 = call i8* @optionString(i8** %149, i32* %7)
  store i8* %150, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 28), align 8
  br label %240

151:                                              ; preds = %27
  %152 = load i8**, i8*** %6, align 8
  %153 = call i8* @optionString(i8** %152, i32* %7)
  store i8* %153, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 27), align 8
  br label %240

154:                                              ; preds = %27
  %155 = load i8*, i8** @TRUE, align 8
  store i8* %155, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 26), align 8
  br label %240

156:                                              ; preds = %27
  %157 = load i8**, i8*** %6, align 8
  %158 = call i8* @optionValue(i8** %157, i32* %7)
  store i8* %158, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 25), align 8
  br label %240

159:                                              ; preds = %27
  %160 = load i8**, i8*** %6, align 8
  %161 = call i8* @optionValue(i8** %160, i32* %7)
  store i8* %161, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 24), align 8
  br label %240

162:                                              ; preds = %27
  %163 = load i8**, i8*** %6, align 8
  %164 = call i8* @optionValue(i8** %163, i32* %7)
  store i8* %164, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 23), align 8
  br label %240

165:                                              ; preds = %27
  %166 = load i8**, i8*** %6, align 8
  %167 = call i8* @optionValue(i8** %166, i32* %7)
  store i8* %167, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dialog_state, i32 0, i32 4), align 8
  br label %240

168:                                              ; preds = %27
  %169 = load i8*, i8** @TRUE, align 8
  store i8* %169, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 22), align 8
  br label %240

170:                                              ; preds = %27
  %171 = load i8*, i8** @TRUE, align 8
  store i8* %171, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dialog_state, i32 0, i32 3), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dialog_state, i32 0, i32 0), align 8
  br label %240

172:                                              ; preds = %27
  %173 = load i8**, i8*** %6, align 8
  %174 = call i8* @optionValue(i8** %173, i32* %7)
  %175 = ptrtoint i8* %174 to i64
  store i64 %175, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dialog_state, i32 0, i32 1), align 8
  br label %240

176:                                              ; preds = %27
  %177 = load i8*, i8** @TRUE, align 8
  store i8* %177, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 8), align 8
  %178 = load i8**, i8*** %6, align 8
  %179 = call i8* @optionValue(i8** %178, i32* %7)
  store i8* %179, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 7), align 8
  %180 = load i8**, i8*** %6, align 8
  %181 = call i8* @optionValue(i8** %180, i32* %7)
  store i8* %181, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 6), align 8
  br label %240

182:                                              ; preds = %27
  %183 = load i8*, i8** @TRUE, align 8
  store i8* %183, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 21), align 8
  br label %240

184:                                              ; preds = %27
  %185 = load i8**, i8*** %6, align 8
  %186 = call i8* @optionString(i8** %185, i32* %7)
  store i8* %186, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 20), align 8
  br label %240

187:                                              ; preds = %27
  %188 = load i8**, i8*** %6, align 8
  %189 = call i8* @optionString(i8** %188, i32* %7)
  store i8* %189, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 19), align 8
  br label %240

190:                                              ; preds = %27
  %191 = load i8**, i8*** %6, align 8
  %192 = call i8* @optionString(i8** %191, i32* %7)
  store i8* %192, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 18), align 8
  br label %240

193:                                              ; preds = %27
  %194 = load i8**, i8*** %6, align 8
  %195 = call i8* @optionString(i8** %194, i32* %7)
  store i8* %195, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 17), align 8
  br label %240

196:                                              ; preds = %27
  %197 = load i8**, i8*** %6, align 8
  %198 = call i8* @optionString(i8** %197, i32* %7)
  store i8* %198, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 16), align 8
  br label %240

199:                                              ; preds = %27
  %200 = load i8**, i8*** %6, align 8
  %201 = call i8* @optionString(i8** %200, i32* %7)
  store i8* %201, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 15), align 8
  br label %240

202:                                              ; preds = %27
  %203 = load i8**, i8*** %6, align 8
  %204 = call i8* @optionString(i8** %203, i32* %7)
  store i8* %204, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 14), align 8
  br label %240

205:                                              ; preds = %27
  %206 = load i8**, i8*** %6, align 8
  %207 = call i8* @optionString(i8** %206, i32* %7)
  store i8* %207, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 13), align 8
  br label %240

208:                                              ; preds = %27
  %209 = load i8**, i8*** %6, align 8
  %210 = call i8* @optionString(i8** %209, i32* %7)
  store i8* %210, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 12), align 8
  br label %240

211:                                              ; preds = %27
  %212 = load i8*, i8** @TRUE, align 8
  store i8* %212, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 11), align 8
  br label %240

213:                                              ; preds = %27
  %214 = load i8*, i8** @TRUE, align 8
  store i8* %214, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 9), align 8
  %215 = load i8*, i8** @FALSE, align 8
  store i8* %215, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 10), align 8
  br label %240

216:                                              ; preds = %27
  %217 = load i8*, i8** @TRUE, align 8
  store i8* %217, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 10), align 8
  %218 = load i8*, i8** @FALSE, align 8
  store i8* %218, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 9), align 8
  br label %240

219:                                              ; preds = %27
  %220 = load i8*, i8** @TRUE, align 8
  store i8* %220, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dialog_state, i32 0, i32 2), align 8
  %221 = call i32 (...) @mouse_close()
  br label %240

222:                                              ; preds = %27, %27
  %223 = load i8**, i8*** %6, align 8
  %224 = call i8* @optionString(i8** %223, i32* %7)
  br label %225

225:                                              ; preds = %27, %27, %27, %27, %27, %27, %27, %27, %27, %222
  br label %240

226:                                              ; preds = %27
  %227 = load i8*, i8** @ignore_unknown, align 8
  %228 = icmp ne i8* %227, null
  br i1 %228, label %229, label %230

229:                                              ; preds = %226
  br label %240

230:                                              ; preds = %226
  br label %231

231:                                              ; preds = %27, %230
  %232 = load i8*, i8** @TRUE, align 8
  %233 = ptrtoint i8* %232 to i32
  store i32 %233, i32* %9, align 4
  br label %240

234:                                              ; preds = %27
  %235 = load i8*, i8** @TRUE, align 8
  store i8* %235, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 2), align 8
  %236 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 1), align 8
  %237 = icmp eq i8* %236, null
  br i1 %237, label %238, label %239

238:                                              ; preds = %234
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @process_common_options.default_1st, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 1), align 8
  br label %239

239:                                              ; preds = %238, %234
  br label %240

240:                                              ; preds = %239, %231, %229, %225, %219, %216, %213, %211, %208, %205, %202, %199, %196, %193, %190, %187, %184, %182, %176, %172, %170, %168, %165, %162, %159, %156, %154, %151, %148, %147, %140, %123, %121, %119, %117, %115, %113, %111, %109, %107, %105, %102, %99, %97, %95, %92, %84, %80, %78, %76, %74, %72, %70, %68, %66, %64, %62, %60, %58, %56, %54, %52, %50, %47, %44, %41
  %241 = load i32, i32* %9, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %246, label %243

243:                                              ; preds = %240
  %244 = load i32, i32* %7, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %7, align 4
  br label %246

246:                                              ; preds = %243, %240
  br label %17

247:                                              ; preds = %25
  %248 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dialog_state, i32 0, i32 1), align 8
  %249 = icmp eq i64 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %247
  %251 = load i64, i64* @DEFAULT_ASPECT_RATIO, align 8
  store i64 %251, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dialog_state, i32 0, i32 1), align 8
  br label %252

252:                                              ; preds = %250, %247
  %253 = load i32, i32* %7, align 4
  ret i32 %253
}

declare dso_local i32 @DLG_TRACE(i8*) #1

declare dso_local i32 @lookupOption(i8*, i32) #1

declare dso_local i8* @optionString(i8**, i32*) #1

declare dso_local i32 @button_code(i8*) #1

declare dso_local i32 @PrintTextOnly(i8**, i32*, i32) #1

declare dso_local i32 @IgnoreNonScreen(i8**, i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @PrintVersion(i32) #1

declare dso_local i8* @optionValue(i8**, i32*) #1

declare dso_local i32 @mouse_close(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
