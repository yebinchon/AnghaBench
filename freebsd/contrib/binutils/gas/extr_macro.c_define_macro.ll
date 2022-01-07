; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_macro.c_define_macro.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_macro.c_define_macro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, i8* }
%struct.TYPE_21__ = type { i8*, i32, i8*, %struct.TYPE_20__, i32, i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c"MACRO\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ENDM\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"unexpected end of file in macro `%s' definition\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"missing `)' after formals in macro definition `%s'\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Missing macro name\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Bad parameter list for macro `%s'\00", align 1
@macro_hash = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"Macro `%s' was already defined\00", align 1
@macro_defined = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @define_macro(i32 %0, %struct.TYPE_20__* %1, %struct.TYPE_20__* %2, i32 (%struct.TYPE_20__*)* %3, i8* %4, i32 %5, i8** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca i32 (%struct.TYPE_20__*)*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8**, align 8
  %15 = alloca %struct.TYPE_21__*, align 8
  %16 = alloca %struct.TYPE_20__, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %9, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %10, align 8
  store i32 (%struct.TYPE_20__*)* %3, i32 (%struct.TYPE_20__*)** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i8** %6, i8*** %14, align 8
  store i8* null, i8** %17, align 8
  %19 = call i64 @xmalloc(i32 64)
  %20 = inttoptr i64 %19 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %20, %struct.TYPE_21__** %15, align 8
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 3
  %23 = call i32 @sb_new(%struct.TYPE_20__* %22)
  %24 = call i32 @sb_new(%struct.TYPE_20__* %16)
  %25 = load i8*, i8** %12, align 8
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* %13, align 4
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 6
  store i64 0, i64* %32, align 8
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 5
  store i64 0, i64* %34, align 8
  %35 = call i32 (...) @hash_new()
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %40 = call i32 @sb_skip_white(i32 %38, %struct.TYPE_20__* %39)
  store i32 %40, i32* %8, align 4
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 3
  %43 = load i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*)** %11, align 8
  %44 = call i32 @buffer_and_nest(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_20__* %42, i32 (%struct.TYPE_20__*)* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %7
  %47 = call i8* @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  store i8* %47, i8** %17, align 8
  br label %48

48:                                               ; preds = %46, %7
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %50 = icmp ne %struct.TYPE_20__* %49, null
  br i1 %50, label %51, label %118

51:                                               ; preds = %48
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %118

56:                                               ; preds = %51
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %58 = call i32 @sb_add_sb(%struct.TYPE_20__* %16, %struct.TYPE_20__* %57)
  %59 = call i8* @sb_terminate(%struct.TYPE_20__* %16)
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp slt i64 %63, %66
  br i1 %67, label %68, label %112

68:                                               ; preds = %56
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 40
  br i1 %77, label %78, label %112

78:                                               ; preds = %68
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %83 = call i32 @do_formals(%struct.TYPE_21__* %79, i32 %81, %struct.TYPE_20__* %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp slt i64 %85, %88
  br i1 %89, label %90, label %105

90:                                               ; preds = %78
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 41
  br i1 %99, label %100, label %105

100:                                              ; preds = %90
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %104 = call i32 @sb_skip_white(i32 %102, %struct.TYPE_20__* %103)
  store i32 %104, i32* %8, align 4
  br label %111

105:                                              ; preds = %90, %78
  %106 = load i8*, i8** %17, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %110, label %108

108:                                              ; preds = %105
  %109 = call i8* @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  store i8* %109, i8** %17, align 8
  br label %110

110:                                              ; preds = %108, %105
  br label %111

111:                                              ; preds = %110, %100
  br label %117

112:                                              ; preds = %68, %56
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %114 = load i32, i32* %8, align 4
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %116 = call i32 @do_formals(%struct.TYPE_21__* %113, i32 %114, %struct.TYPE_20__* %115)
  store i32 %116, i32* %8, align 4
  br label %117

117:                                              ; preds = %112, %111
  br label %155

118:                                              ; preds = %51, %48
  %119 = load i32, i32* %8, align 4
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %121 = call i32 @get_token(i32 %119, %struct.TYPE_20__* %120, %struct.TYPE_20__* %16)
  store i32 %121, i32* %8, align 4
  %122 = call i8* @sb_terminate(%struct.TYPE_20__* %16)
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 2
  store i8* %122, i8** %124, align 8
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %118
  %129 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  store i8* %129, i8** %17, align 8
  br label %130

130:                                              ; preds = %128, %118
  %131 = load i32, i32* %8, align 4
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %133 = call i32 @sb_skip_white(i32 %131, %struct.TYPE_20__* %132)
  store i32 %133, i32* %18, align 4
  %134 = load i32, i32* %18, align 4
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %136 = call i32 @sb_skip_comma(i32 %134, %struct.TYPE_20__* %135)
  store i32 %136, i32* %8, align 4
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* %18, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %147, label %140

140:                                              ; preds = %130
  %141 = load i32, i32* %8, align 4
  %142 = sext i32 %141 to i64
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp slt i64 %142, %145
  br i1 %146, label %147, label %152

147:                                              ; preds = %140, %130
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %149 = load i32, i32* %8, align 4
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %151 = call i32 @do_formals(%struct.TYPE_21__* %148, i32 %149, %struct.TYPE_20__* %150)
  store i32 %151, i32* %8, align 4
  br label %154

152:                                              ; preds = %140
  %153 = load i32, i32* %18, align 4
  store i32 %153, i32* %8, align 4
  br label %154

154:                                              ; preds = %152, %147
  br label %155

155:                                              ; preds = %154, %117
  %156 = load i8*, i8** %17, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %167, label %158

158:                                              ; preds = %155
  %159 = load i32, i32* %8, align 4
  %160 = sext i32 %159 to i64
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = icmp slt i64 %160, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %158
  %166 = call i8* @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  store i8* %166, i8** %17, align 8
  br label %167

167:                                              ; preds = %165, %158, %155
  store i32 0, i32* %8, align 4
  br label %168

168:                                              ; preds = %187, %167
  %169 = load i32, i32* %8, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = icmp slt i64 %170, %172
  br i1 %173, label %174, label %190

174:                                              ; preds = %168
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 1
  %176 = load i8*, i8** %175, align 8
  %177 = load i32, i32* %8, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8, i8* %176, i64 %178
  %180 = load i8, i8* %179, align 1
  %181 = call signext i8 @TOLOWER(i8 signext %180)
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 1
  %183 = load i8*, i8** %182, align 8
  %184 = load i32, i32* %8, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8, i8* %183, i64 %185
  store i8 %181, i8* %186, align 1
  br label %187

187:                                              ; preds = %174
  %188 = load i32, i32* %8, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %8, align 4
  br label %168

190:                                              ; preds = %168
  %191 = load i32, i32* @macro_hash, align 4
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i32 0, i32 2
  %194 = load i8*, i8** %193, align 8
  %195 = call i64 @hash_find(i32 %191, i8* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %190
  %198 = call i8* @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  store i8* %198, i8** %17, align 8
  br label %199

199:                                              ; preds = %197, %190
  %200 = load i8*, i8** %17, align 8
  %201 = icmp ne i8* %200, null
  br i1 %201, label %210, label %202

202:                                              ; preds = %199
  %203 = load i32, i32* @macro_hash, align 4
  %204 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %205 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %204, i32 0, i32 2
  %206 = load i8*, i8** %205, align 8
  %207 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %208 = ptrtoint %struct.TYPE_21__* %207 to i32
  %209 = call i8* @hash_jam(i32 %203, i8* %206, i32 %208)
  store i8* %209, i8** %17, align 8
  br label %210

210:                                              ; preds = %202, %199
  %211 = load i8**, i8*** %14, align 8
  %212 = icmp ne i8** %211, null
  br i1 %212, label %213, label %218

213:                                              ; preds = %210
  %214 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %215 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %214, i32 0, i32 2
  %216 = load i8*, i8** %215, align 8
  %217 = load i8**, i8*** %14, align 8
  store i8* %216, i8** %217, align 8
  br label %218

218:                                              ; preds = %213, %210
  %219 = load i8*, i8** %17, align 8
  %220 = icmp ne i8* %219, null
  br i1 %220, label %222, label %221

221:                                              ; preds = %218
  store i32 1, i32* @macro_defined, align 4
  br label %225

222:                                              ; preds = %218
  %223 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %224 = call i32 @free_macro(%struct.TYPE_21__* %223)
  br label %225

225:                                              ; preds = %222, %221
  %226 = load i8*, i8** %17, align 8
  ret i8* %226
}

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @sb_new(%struct.TYPE_20__*) #1

declare dso_local i32 @hash_new(...) #1

declare dso_local i32 @sb_skip_white(i32, %struct.TYPE_20__*) #1

declare dso_local i32 @buffer_and_nest(i8*, i8*, %struct.TYPE_20__*, i32 (%struct.TYPE_20__*)*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @sb_add_sb(%struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local i8* @sb_terminate(%struct.TYPE_20__*) #1

declare dso_local i32 @do_formals(%struct.TYPE_21__*, i32, %struct.TYPE_20__*) #1

declare dso_local i32 @get_token(i32, %struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local i32 @sb_skip_comma(i32, %struct.TYPE_20__*) #1

declare dso_local signext i8 @TOLOWER(i8 signext) #1

declare dso_local i64 @hash_find(i32, i8*) #1

declare dso_local i8* @hash_jam(i32, i8*, i32) #1

declare dso_local i32 @free_macro(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
