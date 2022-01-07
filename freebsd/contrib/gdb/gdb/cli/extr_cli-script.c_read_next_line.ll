; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-script.c_read_next_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-script.c_read_next_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command_line = type { i32*, i64, i32, i32*, i32* }

@control_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Control nesting too deep!\0A\00", align 1
@instream = common dso_local global i64 0, align 8
@stdin = common dso_local global i64 0, align 8
@readline_hook = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"commands\00", align 1
@end_command = common dso_local global i32 0, align 4
@nop_command = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@else_command = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"while\00", align 1
@while_control = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@if_control = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"loop_break\00", align 1
@break_control = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"loop_continue\00", align 1
@continue_control = common dso_local global i32 0, align 4
@simple_control = common dso_local global i32 0, align 4
@ok_command = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.command_line**)* @read_next_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_next_line(%struct.command_line** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.command_line**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [256 x i8], align 16
  %8 = alloca i32, align 4
  store %struct.command_line** %0, %struct.command_line*** %3, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @control_level, align 4
  %10 = icmp sge i32 %9, 254
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %1
  %14 = load i64, i64* @instream, align 8
  %15 = load i64, i64* @stdin, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = load i64, i64* @instream, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %44

20:                                               ; preds = %17
  %21 = load i32*, i32** @readline_hook, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %44

23:                                               ; preds = %20, %13
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %32, %23
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @control_level, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 %30
  store i8 32, i8* %31, align 1
  br label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  br label %24

35:                                               ; preds = %24
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 %37
  store i8 62, i8* %38, align 1
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 %41
  store i8 0, i8* %42, align 1
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  store i8* %43, i8** %6, align 8
  br label %45

44:                                               ; preds = %20, %17
  store i8* null, i8** %6, align 8
  br label %45

45:                                               ; preds = %44, %35
  %46 = load i8*, i8** %6, align 8
  %47 = load i64, i64* @instream, align 8
  %48 = load i64, i64* @stdin, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i8* @command_line_input(i8* %46, i32 %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i8* %51, i8** %4, align 8
  %52 = load i8*, i8** %4, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load i32, i32* @end_command, align 4
  store i32 %55, i32* %2, align 4
  br label %268

56:                                               ; preds = %45
  br label %57

57:                                               ; preds = %69, %56
  %58 = load i8*, i8** %4, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 32
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load i8*, i8** %4, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 9
  br label %67

67:                                               ; preds = %62, %57
  %68 = phi i1 [ true, %57 ], [ %66, %62 ]
  br i1 %68, label %69, label %72

69:                                               ; preds = %67
  %70 = load i8*, i8** %4, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %4, align 8
  br label %57

72:                                               ; preds = %67
  %73 = load i8*, i8** %4, align 8
  %74 = load i8*, i8** %4, align 8
  %75 = call i32 @strlen(i8* %74)
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %73, i64 %76
  store i8* %77, i8** %5, align 8
  br label %78

78:                                               ; preds = %98, %72
  %79 = load i8*, i8** %5, align 8
  %80 = load i8*, i8** %4, align 8
  %81 = icmp ne i8* %79, %80
  br i1 %81, label %82, label %96

82:                                               ; preds = %78
  %83 = load i8*, i8** %5, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 -1
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 32
  br i1 %87, label %94, label %88

88:                                               ; preds = %82
  %89 = load i8*, i8** %5, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 -1
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 9
  br label %94

94:                                               ; preds = %88, %82
  %95 = phi i1 [ true, %82 ], [ %93, %88 ]
  br label %96

96:                                               ; preds = %94, %78
  %97 = phi i1 [ false, %78 ], [ %95, %94 ]
  br i1 %97, label %98, label %101

98:                                               ; preds = %96
  %99 = load i8*, i8** %5, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 -1
  store i8* %100, i8** %5, align 8
  br label %78

101:                                              ; preds = %96
  %102 = load i8*, i8** %5, align 8
  %103 = load i8*, i8** %4, align 8
  %104 = icmp eq i8* %102, %103
  br i1 %104, label %111, label %105

105:                                              ; preds = %101
  %106 = load i8*, i8** %4, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 0
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 35
  br i1 %110, label %111, label %113

111:                                              ; preds = %105, %101
  %112 = load i32, i32* @nop_command, align 4
  store i32 %112, i32* %2, align 4
  br label %268

113:                                              ; preds = %105
  %114 = load i8*, i8** %5, align 8
  %115 = load i8*, i8** %4, align 8
  %116 = ptrtoint i8* %114 to i64
  %117 = ptrtoint i8* %115 to i64
  %118 = sub i64 %116, %117
  %119 = icmp eq i64 %118, 3
  br i1 %119, label %120, label %126

120:                                              ; preds = %113
  %121 = load i8*, i8** %4, align 8
  %122 = call i32 @strncmp(i8* %121, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %120
  %125 = load i32, i32* @end_command, align 4
  store i32 %125, i32* %2, align 4
  br label %268

126:                                              ; preds = %120, %113
  %127 = load i8*, i8** %5, align 8
  %128 = load i8*, i8** %4, align 8
  %129 = ptrtoint i8* %127 to i64
  %130 = ptrtoint i8* %128 to i64
  %131 = sub i64 %129, %130
  %132 = icmp eq i64 %131, 4
  br i1 %132, label %133, label %139

133:                                              ; preds = %126
  %134 = load i8*, i8** %4, align 8
  %135 = call i32 @strncmp(i8* %134, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %139, label %137

137:                                              ; preds = %133
  %138 = load i32, i32* @else_command, align 4
  store i32 %138, i32* %2, align 4
  br label %268

139:                                              ; preds = %133, %126
  %140 = load i8*, i8** %5, align 8
  %141 = load i8*, i8** %4, align 8
  %142 = ptrtoint i8* %140 to i64
  %143 = ptrtoint i8* %141 to i64
  %144 = sub i64 %142, %143
  %145 = icmp sgt i64 %144, 5
  br i1 %145, label %146, label %156

146:                                              ; preds = %139
  %147 = load i8*, i8** %4, align 8
  %148 = call i32 @strncmp(i8* %147, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 5)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %156, label %150

150:                                              ; preds = %146
  %151 = load i32, i32* @while_control, align 4
  %152 = load i8*, i8** %4, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 6
  %154 = call %struct.command_line* @build_command_line(i32 %151, i8* %153)
  %155 = load %struct.command_line**, %struct.command_line*** %3, align 8
  store %struct.command_line* %154, %struct.command_line** %155, align 8
  br label %266

156:                                              ; preds = %146, %139
  %157 = load i8*, i8** %5, align 8
  %158 = load i8*, i8** %4, align 8
  %159 = ptrtoint i8* %157 to i64
  %160 = ptrtoint i8* %158 to i64
  %161 = sub i64 %159, %160
  %162 = icmp sgt i64 %161, 2
  br i1 %162, label %163, label %173

163:                                              ; preds = %156
  %164 = load i8*, i8** %4, align 8
  %165 = call i32 @strncmp(i8* %164, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 2)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %173, label %167

167:                                              ; preds = %163
  %168 = load i32, i32* @if_control, align 4
  %169 = load i8*, i8** %4, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 3
  %171 = call %struct.command_line* @build_command_line(i32 %168, i8* %170)
  %172 = load %struct.command_line**, %struct.command_line*** %3, align 8
  store %struct.command_line* %171, %struct.command_line** %172, align 8
  br label %265

173:                                              ; preds = %163, %156
  %174 = load i8*, i8** %5, align 8
  %175 = load i8*, i8** %4, align 8
  %176 = ptrtoint i8* %174 to i64
  %177 = ptrtoint i8* %175 to i64
  %178 = sub i64 %176, %177
  %179 = icmp eq i64 %178, 10
  br i1 %179, label %180, label %204

180:                                              ; preds = %173
  %181 = load i8*, i8** %4, align 8
  %182 = call i32 @strncmp(i8* %181, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 10)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %204, label %184

184:                                              ; preds = %180
  %185 = call i64 @xmalloc(i32 40)
  %186 = inttoptr i64 %185 to %struct.command_line*
  %187 = load %struct.command_line**, %struct.command_line*** %3, align 8
  store %struct.command_line* %186, %struct.command_line** %187, align 8
  %188 = load %struct.command_line**, %struct.command_line*** %3, align 8
  %189 = load %struct.command_line*, %struct.command_line** %188, align 8
  %190 = getelementptr inbounds %struct.command_line, %struct.command_line* %189, i32 0, i32 4
  store i32* null, i32** %190, align 8
  %191 = load %struct.command_line**, %struct.command_line*** %3, align 8
  %192 = load %struct.command_line*, %struct.command_line** %191, align 8
  %193 = getelementptr inbounds %struct.command_line, %struct.command_line* %192, i32 0, i32 3
  store i32* null, i32** %193, align 8
  %194 = load i32, i32* @break_control, align 4
  %195 = load %struct.command_line**, %struct.command_line*** %3, align 8
  %196 = load %struct.command_line*, %struct.command_line** %195, align 8
  %197 = getelementptr inbounds %struct.command_line, %struct.command_line* %196, i32 0, i32 2
  store i32 %194, i32* %197, align 8
  %198 = load %struct.command_line**, %struct.command_line*** %3, align 8
  %199 = load %struct.command_line*, %struct.command_line** %198, align 8
  %200 = getelementptr inbounds %struct.command_line, %struct.command_line* %199, i32 0, i32 1
  store i64 0, i64* %200, align 8
  %201 = load %struct.command_line**, %struct.command_line*** %3, align 8
  %202 = load %struct.command_line*, %struct.command_line** %201, align 8
  %203 = getelementptr inbounds %struct.command_line, %struct.command_line* %202, i32 0, i32 0
  store i32* null, i32** %203, align 8
  br label %264

204:                                              ; preds = %180, %173
  %205 = load i8*, i8** %5, align 8
  %206 = load i8*, i8** %4, align 8
  %207 = ptrtoint i8* %205 to i64
  %208 = ptrtoint i8* %206 to i64
  %209 = sub i64 %207, %208
  %210 = icmp eq i64 %209, 13
  br i1 %210, label %211, label %235

211:                                              ; preds = %204
  %212 = load i8*, i8** %4, align 8
  %213 = call i32 @strncmp(i8* %212, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 13)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %235, label %215

215:                                              ; preds = %211
  %216 = call i64 @xmalloc(i32 40)
  %217 = inttoptr i64 %216 to %struct.command_line*
  %218 = load %struct.command_line**, %struct.command_line*** %3, align 8
  store %struct.command_line* %217, %struct.command_line** %218, align 8
  %219 = load %struct.command_line**, %struct.command_line*** %3, align 8
  %220 = load %struct.command_line*, %struct.command_line** %219, align 8
  %221 = getelementptr inbounds %struct.command_line, %struct.command_line* %220, i32 0, i32 4
  store i32* null, i32** %221, align 8
  %222 = load %struct.command_line**, %struct.command_line*** %3, align 8
  %223 = load %struct.command_line*, %struct.command_line** %222, align 8
  %224 = getelementptr inbounds %struct.command_line, %struct.command_line* %223, i32 0, i32 3
  store i32* null, i32** %224, align 8
  %225 = load i32, i32* @continue_control, align 4
  %226 = load %struct.command_line**, %struct.command_line*** %3, align 8
  %227 = load %struct.command_line*, %struct.command_line** %226, align 8
  %228 = getelementptr inbounds %struct.command_line, %struct.command_line* %227, i32 0, i32 2
  store i32 %225, i32* %228, align 8
  %229 = load %struct.command_line**, %struct.command_line*** %3, align 8
  %230 = load %struct.command_line*, %struct.command_line** %229, align 8
  %231 = getelementptr inbounds %struct.command_line, %struct.command_line* %230, i32 0, i32 1
  store i64 0, i64* %231, align 8
  %232 = load %struct.command_line**, %struct.command_line*** %3, align 8
  %233 = load %struct.command_line*, %struct.command_line** %232, align 8
  %234 = getelementptr inbounds %struct.command_line, %struct.command_line* %233, i32 0, i32 0
  store i32* null, i32** %234, align 8
  br label %263

235:                                              ; preds = %211, %204
  %236 = call i64 @xmalloc(i32 40)
  %237 = inttoptr i64 %236 to %struct.command_line*
  %238 = load %struct.command_line**, %struct.command_line*** %3, align 8
  store %struct.command_line* %237, %struct.command_line** %238, align 8
  %239 = load %struct.command_line**, %struct.command_line*** %3, align 8
  %240 = load %struct.command_line*, %struct.command_line** %239, align 8
  %241 = getelementptr inbounds %struct.command_line, %struct.command_line* %240, i32 0, i32 4
  store i32* null, i32** %241, align 8
  %242 = load i8*, i8** %4, align 8
  %243 = load i8*, i8** %5, align 8
  %244 = load i8*, i8** %4, align 8
  %245 = ptrtoint i8* %243 to i64
  %246 = ptrtoint i8* %244 to i64
  %247 = sub i64 %245, %246
  %248 = trunc i64 %247 to i32
  %249 = call i32* @savestring(i8* %242, i32 %248)
  %250 = load %struct.command_line**, %struct.command_line*** %3, align 8
  %251 = load %struct.command_line*, %struct.command_line** %250, align 8
  %252 = getelementptr inbounds %struct.command_line, %struct.command_line* %251, i32 0, i32 3
  store i32* %249, i32** %252, align 8
  %253 = load i32, i32* @simple_control, align 4
  %254 = load %struct.command_line**, %struct.command_line*** %3, align 8
  %255 = load %struct.command_line*, %struct.command_line** %254, align 8
  %256 = getelementptr inbounds %struct.command_line, %struct.command_line* %255, i32 0, i32 2
  store i32 %253, i32* %256, align 8
  %257 = load %struct.command_line**, %struct.command_line*** %3, align 8
  %258 = load %struct.command_line*, %struct.command_line** %257, align 8
  %259 = getelementptr inbounds %struct.command_line, %struct.command_line* %258, i32 0, i32 1
  store i64 0, i64* %259, align 8
  %260 = load %struct.command_line**, %struct.command_line*** %3, align 8
  %261 = load %struct.command_line*, %struct.command_line** %260, align 8
  %262 = getelementptr inbounds %struct.command_line, %struct.command_line* %261, i32 0, i32 0
  store i32* null, i32** %262, align 8
  br label %263

263:                                              ; preds = %235, %215
  br label %264

264:                                              ; preds = %263, %184
  br label %265

265:                                              ; preds = %264, %167
  br label %266

266:                                              ; preds = %265, %150
  %267 = load i32, i32* @ok_command, align 4
  store i32 %267, i32* %2, align 4
  br label %268

268:                                              ; preds = %266, %137, %124, %111, %54
  %269 = load i32, i32* %2, align 4
  ret i32 %269
}

declare dso_local i32 @error(i8*) #1

declare dso_local i8* @command_line_input(i8*, i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local %struct.command_line* @build_command_line(i32, i8*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32* @savestring(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
