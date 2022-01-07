; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_parse-options.c_parse_long_opt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_parse-options.c_parse_long_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_opt_ctx_t = type { i8**, i8*, i32 }
%struct.option = type { i64, i8* }

@OPTION_END = common dso_local global i64 0, align 8
@OPTION_ARGUMENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"takes no value\00", align 1
@OPT_UNSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"no-\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Ambiguous option: %s (could be --%s%s or --%s%s)\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parse_opt_ctx_t*, i8*, %struct.option*)* @parse_long_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_long_opt(%struct.parse_opt_ctx_t* %0, i8* %1, %struct.option* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.parse_opt_ctx_t*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.option*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.option*, align 8
  %10 = alloca %struct.option*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.parse_opt_ctx_t* %0, %struct.parse_opt_ctx_t** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.option* %2, %struct.option** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i8* @strchr(i8* %15, i8 signext 61)
  store i8* %16, i8** %8, align 8
  store %struct.option* null, %struct.option** %9, align 8
  store %struct.option* null, %struct.option** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @strlen(i8* %21)
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %20, i64 %23
  store i8* %24, i8** %8, align 8
  br label %25

25:                                               ; preds = %19, %3
  br label %26

26:                                               ; preds = %179, %25
  %27 = load %struct.option*, %struct.option** %7, align 8
  %28 = getelementptr inbounds %struct.option, %struct.option* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @OPTION_END, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %182

32:                                               ; preds = %26
  store i32 0, i32* %14, align 4
  %33 = load %struct.option*, %struct.option** %7, align 8
  %34 = getelementptr inbounds %struct.option, %struct.option* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  br label %179

38:                                               ; preds = %32
  %39 = load i8*, i8** %6, align 8
  %40 = load %struct.option*, %struct.option** %7, align 8
  %41 = getelementptr inbounds %struct.option, %struct.option* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i8* @skip_prefix(i8* %39, i8* %42)
  store i8* %43, i8** %13, align 8
  %44 = load %struct.option*, %struct.option** %7, align 8
  %45 = getelementptr inbounds %struct.option, %struct.option* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @OPTION_ARGUMENT, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %79

49:                                               ; preds = %38
  %50 = load i8*, i8** %13, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  br label %179

53:                                               ; preds = %49
  %54 = load i8*, i8** %13, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 61
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load %struct.option*, %struct.option** %7, align 8
  %60 = load i32, i32* %14, align 4
  %61 = call i32 @opterror(%struct.option* %59, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %60)
  store i32 %61, i32* %4, align 4
  br label %215

62:                                               ; preds = %53
  %63 = load i8*, i8** %13, align 8
  %64 = load i8, i8* %63, align 1
  %65 = icmp ne i8 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %179

67:                                               ; preds = %62
  %68 = load i8*, i8** %6, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 -2
  %70 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %71 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %70, i32 0, i32 0
  %72 = load i8**, i8*** %71, align 8
  %73 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %74 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 8
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i8*, i8** %72, i64 %77
  store i8* %69, i8** %78, align 8
  store i32 0, i32* %4, align 4
  br label %215

79:                                               ; preds = %38
  %80 = load i8*, i8** %13, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %159, label %82

82:                                               ; preds = %79
  %83 = load %struct.option*, %struct.option** %7, align 8
  %84 = getelementptr inbounds %struct.option, %struct.option* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = load i8*, i8** %6, align 8
  %89 = ptrtoint i8* %87 to i64
  %90 = ptrtoint i8* %88 to i64
  %91 = sub i64 %89, %90
  %92 = trunc i64 %91 to i32
  %93 = call i64 @strncmp(i8* %85, i8* %86, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %120, label %95

95:                                               ; preds = %82
  br label %96

96:                                               ; preds = %153, %124, %95
  %97 = load %struct.option*, %struct.option** %9, align 8
  %98 = icmp ne %struct.option* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load %struct.option*, %struct.option** %9, align 8
  store %struct.option* %100, %struct.option** %10, align 8
  %101 = load i32, i32* %11, align 4
  store i32 %101, i32* %12, align 4
  br label %102

102:                                              ; preds = %99, %96
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* @OPT_UNSET, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %117, label %107

107:                                              ; preds = %102
  %108 = load i8*, i8** %8, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = load i8*, i8** %8, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 1
  %115 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %116 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %115, i32 0, i32 1
  store i8* %114, i8** %116, align 8
  br label %117

117:                                              ; preds = %112, %107, %102
  %118 = load %struct.option*, %struct.option** %7, align 8
  store %struct.option* %118, %struct.option** %9, align 8
  %119 = load i32, i32* %14, align 4
  store i32 %119, i32* %11, align 4
  br label %179

120:                                              ; preds = %82
  %121 = load i8*, i8** %6, align 8
  %122 = call i32 @prefixcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %120
  %125 = load i32, i32* @OPT_UNSET, align 4
  %126 = load i32, i32* %14, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %14, align 4
  br label %96

128:                                              ; preds = %120
  %129 = load i8*, i8** %6, align 8
  %130 = call i64 @strncmp(i8* %129, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %128
  br label %179

133:                                              ; preds = %128
  %134 = load i32, i32* @OPT_UNSET, align 4
  %135 = load i32, i32* %14, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %14, align 4
  %137 = load i8*, i8** %6, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 3
  %139 = load %struct.option*, %struct.option** %7, align 8
  %140 = getelementptr inbounds %struct.option, %struct.option* %139, i32 0, i32 1
  %141 = load i8*, i8** %140, align 8
  %142 = call i8* @skip_prefix(i8* %138, i8* %141)
  store i8* %142, i8** %13, align 8
  %143 = load i8*, i8** %13, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %154, label %145

145:                                              ; preds = %133
  %146 = load %struct.option*, %struct.option** %7, align 8
  %147 = getelementptr inbounds %struct.option, %struct.option* %146, i32 0, i32 1
  %148 = load i8*, i8** %147, align 8
  %149 = load i8*, i8** %6, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 3
  %151 = call i32 @prefixcmp(i8* %148, i8* %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %145
  br label %96

154:                                              ; preds = %145, %133
  %155 = load i8*, i8** %13, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %158, label %157

157:                                              ; preds = %154
  br label %179

158:                                              ; preds = %154
  br label %159

159:                                              ; preds = %158, %79
  %160 = load i8*, i8** %13, align 8
  %161 = load i8, i8* %160, align 1
  %162 = icmp ne i8 %161, 0
  br i1 %162, label %163, label %174

163:                                              ; preds = %159
  %164 = load i8*, i8** %13, align 8
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  %167 = icmp ne i32 %166, 61
  br i1 %167, label %168, label %169

168:                                              ; preds = %163
  br label %179

169:                                              ; preds = %163
  %170 = load i8*, i8** %13, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 1
  %172 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %173 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %172, i32 0, i32 1
  store i8* %171, i8** %173, align 8
  br label %174

174:                                              ; preds = %169, %159
  %175 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %176 = load %struct.option*, %struct.option** %7, align 8
  %177 = load i32, i32* %14, align 4
  %178 = call i32 @get_value(%struct.parse_opt_ctx_t* %175, %struct.option* %176, i32 %177)
  store i32 %178, i32* %4, align 4
  br label %215

179:                                              ; preds = %168, %157, %132, %117, %66, %52, %37
  %180 = load %struct.option*, %struct.option** %7, align 8
  %181 = getelementptr inbounds %struct.option, %struct.option* %180, i32 1
  store %struct.option* %181, %struct.option** %7, align 8
  br label %26

182:                                              ; preds = %26
  %183 = load %struct.option*, %struct.option** %10, align 8
  %184 = icmp ne %struct.option* %183, null
  br i1 %184, label %185, label %206

185:                                              ; preds = %182
  %186 = load i8*, i8** %6, align 8
  %187 = load i32, i32* %12, align 4
  %188 = load i32, i32* @OPT_UNSET, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  %191 = zext i1 %190 to i64
  %192 = select i1 %190, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %193 = load %struct.option*, %struct.option** %10, align 8
  %194 = getelementptr inbounds %struct.option, %struct.option* %193, i32 0, i32 1
  %195 = load i8*, i8** %194, align 8
  %196 = load i32, i32* %11, align 4
  %197 = load i32, i32* @OPT_UNSET, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  %200 = zext i1 %199 to i64
  %201 = select i1 %199, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %202 = load %struct.option*, %struct.option** %9, align 8
  %203 = getelementptr inbounds %struct.option, %struct.option* %202, i32 0, i32 1
  %204 = load i8*, i8** %203, align 8
  %205 = call i32 @error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i8* %186, i8* %192, i8* %195, i8* %201, i8* %204)
  store i32 %205, i32* %4, align 4
  br label %215

206:                                              ; preds = %182
  %207 = load %struct.option*, %struct.option** %9, align 8
  %208 = icmp ne %struct.option* %207, null
  br i1 %208, label %209, label %214

209:                                              ; preds = %206
  %210 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %211 = load %struct.option*, %struct.option** %9, align 8
  %212 = load i32, i32* %11, align 4
  %213 = call i32 @get_value(%struct.parse_opt_ctx_t* %210, %struct.option* %211, i32 %212)
  store i32 %213, i32* %4, align 4
  br label %215

214:                                              ; preds = %206
  store i32 -2, i32* %4, align 4
  br label %215

215:                                              ; preds = %214, %209, %185, %174, %67, %58
  %216 = load i32, i32* %4, align 4
  ret i32 %216
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @skip_prefix(i8*, i8*) #1

declare dso_local i32 @opterror(%struct.option*, i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @prefixcmp(i8*, i8*) #1

declare dso_local i32 @get_value(%struct.parse_opt_ctx_t*, %struct.option*, i32) #1

declare dso_local i32 @error(i8*, i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
