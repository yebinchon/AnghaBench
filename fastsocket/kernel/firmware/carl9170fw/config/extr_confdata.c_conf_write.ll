; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/config/extr_confdata.c_conf_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/config/extr_confdata.c_conf_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.menu* }
%struct.menu = type { %struct.menu*, %struct.menu*, %struct.menu*, %struct.symbol* }
%struct.symbol = type { i32 }
%struct.stat = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"KCONFIG_OVERWRITECONFIG\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"%s.tmpconfig.%d\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@kconfig_printer_cb = common dso_local global i32 0, align 4
@rootmenu = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"\0A#\0A# %s\0A#\0A\00", align 1
@SYMBOL_CHOICE = common dso_local global i32 0, align 4
@SYMBOL_WRITE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c".old\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"configuration written to %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @conf_write(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.symbol*, align 8
  %6 = alloca %struct.menu*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.stat, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %18 = load i32, i32* @PATH_MAX, align 4
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %9, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %10, align 8
  %23 = load i32, i32* @PATH_MAX, align 4
  %24 = add nsw i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %11, align 8
  %27 = load i32, i32* @PATH_MAX, align 4
  %28 = add nsw i32 %27, 1
  %29 = zext i32 %28 to i64
  %30 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %12, align 8
  %31 = getelementptr inbounds i8, i8* %22, i64 0
  store i8 0, i8* %31, align 16
  %32 = load i8*, i8** %3, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %86

34:                                               ; preds = %1
  %35 = load i8*, i8** %3, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %86

40:                                               ; preds = %34
  %41 = load i8*, i8** %3, align 8
  %42 = call i32 @stat(i8* %41, %struct.stat* %14)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.stat, %struct.stat* %14, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @S_ISDIR(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load i8*, i8** %3, align 8
  %51 = call i32 @strcpy(i8* %22, i8* %50)
  %52 = call i32 @strcat(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %53 = call i8* (...) @conf_get_configname()
  store i8* %53, i8** %7, align 8
  br label %85

54:                                               ; preds = %44, %40
  %55 = load i8*, i8** %3, align 8
  %56 = call i8* @strrchr(i8* %55, i8 signext 47)
  store i8* %56, i8** %15, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %82

58:                                               ; preds = %54
  %59 = load i8*, i8** %15, align 8
  %60 = load i8*, i8** %3, align 8
  %61 = ptrtoint i8* %59 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  %64 = add nsw i64 %63, 1
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %16, align 4
  %66 = load i8*, i8** %3, align 8
  %67 = load i32, i32* %16, align 4
  %68 = call i32 @memcpy(i8* %22, i8* %66, i32 %67)
  %69 = load i32, i32* %16, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %22, i64 %70
  store i8 0, i8* %71, align 1
  %72 = load i8*, i8** %15, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  %74 = load i8, i8* %73, align 1
  %75 = icmp ne i8 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %58
  %77 = load i8*, i8** %15, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  store i8* %78, i8** %7, align 8
  br label %81

79:                                               ; preds = %58
  %80 = call i8* (...) @conf_get_configname()
  store i8* %80, i8** %7, align 8
  br label %81

81:                                               ; preds = %79, %76
  br label %84

82:                                               ; preds = %54
  %83 = load i8*, i8** %3, align 8
  store i8* %83, i8** %7, align 8
  br label %84

84:                                               ; preds = %82, %81
  br label %85

85:                                               ; preds = %84, %49
  br label %88

86:                                               ; preds = %34, %1
  %87 = call i8* (...) @conf_get_configname()
  store i8* %87, i8** %7, align 8
  br label %88

88:                                               ; preds = %86, %85
  %89 = load i8*, i8** %7, align 8
  %90 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %22, i8* %89)
  %91 = call i8* @getenv(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i8* %91, i8** %13, align 8
  %92 = load i8*, i8** %13, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load i8*, i8** %13, align 8
  %96 = load i8, i8* %95, align 1
  %97 = icmp ne i8 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %94, %88
  %99 = call i64 (...) @getpid()
  %100 = trunc i64 %99 to i32
  %101 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %22, i32 %100)
  %102 = call i32* @fopen(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %102, i32** %4, align 8
  br label %105

103:                                              ; preds = %94
  store i8 0, i8* %26, align 16
  %104 = call i32* @fopen(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %104, i32** %4, align 8
  br label %105

105:                                              ; preds = %103, %98
  %106 = load i32*, i32** %4, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %105
  store i32 1, i32* %2, align 4
  store i32 1, i32* %17, align 4
  br label %221

109:                                              ; preds = %105
  %110 = load i32*, i32** %4, align 8
  %111 = call i32 @conf_write_heading(i32* %110, i32* @kconfig_printer_cb, i32* null)
  %112 = call i32 (...) @conf_get_changed()
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %109
  %115 = call i32 (...) @sym_clear_all_valid()
  br label %116

116:                                              ; preds = %114, %109
  %117 = load %struct.menu*, %struct.menu** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rootmenu, i32 0, i32 0), align 8
  store %struct.menu* %117, %struct.menu** %6, align 8
  br label %118

118:                                              ; preds = %202, %172, %116
  %119 = load %struct.menu*, %struct.menu** %6, align 8
  %120 = icmp ne %struct.menu* %119, null
  br i1 %120, label %121, label %203

121:                                              ; preds = %118
  %122 = load %struct.menu*, %struct.menu** %6, align 8
  %123 = getelementptr inbounds %struct.menu, %struct.menu* %122, i32 0, i32 3
  %124 = load %struct.symbol*, %struct.symbol** %123, align 8
  store %struct.symbol* %124, %struct.symbol** %5, align 8
  %125 = load %struct.symbol*, %struct.symbol** %5, align 8
  %126 = icmp ne %struct.symbol* %125, null
  br i1 %126, label %138, label %127

127:                                              ; preds = %121
  %128 = load %struct.menu*, %struct.menu** %6, align 8
  %129 = call i32 @menu_is_visible(%struct.menu* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %127
  br label %167

132:                                              ; preds = %127
  %133 = load %struct.menu*, %struct.menu** %6, align 8
  %134 = call i8* @menu_get_prompt(%struct.menu* %133)
  store i8* %134, i8** %8, align 8
  %135 = load i32*, i32** %4, align 8
  %136 = load i8*, i8** %8, align 8
  %137 = call i32 @fprintf(i32* %135, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %136)
  br label %166

138:                                              ; preds = %121
  %139 = load %struct.symbol*, %struct.symbol** %5, align 8
  %140 = getelementptr inbounds %struct.symbol, %struct.symbol* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @SYMBOL_CHOICE, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %165, label %145

145:                                              ; preds = %138
  %146 = load %struct.symbol*, %struct.symbol** %5, align 8
  %147 = call i32 @sym_calc_value(%struct.symbol* %146)
  %148 = load %struct.symbol*, %struct.symbol** %5, align 8
  %149 = getelementptr inbounds %struct.symbol, %struct.symbol* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @SYMBOL_WRITE, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %145
  br label %167

155:                                              ; preds = %145
  %156 = load i32, i32* @SYMBOL_WRITE, align 4
  %157 = xor i32 %156, -1
  %158 = load %struct.symbol*, %struct.symbol** %5, align 8
  %159 = getelementptr inbounds %struct.symbol, %struct.symbol* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = and i32 %160, %157
  store i32 %161, i32* %159, align 4
  %162 = load i32*, i32** %4, align 8
  %163 = load %struct.symbol*, %struct.symbol** %5, align 8
  %164 = call i32 @conf_write_symbol(i32* %162, %struct.symbol* %163, i32* @kconfig_printer_cb, i32* null)
  br label %165

165:                                              ; preds = %155, %138
  br label %166

166:                                              ; preds = %165, %132
  br label %167

167:                                              ; preds = %166, %154, %131
  %168 = load %struct.menu*, %struct.menu** %6, align 8
  %169 = getelementptr inbounds %struct.menu, %struct.menu* %168, i32 0, i32 2
  %170 = load %struct.menu*, %struct.menu** %169, align 8
  %171 = icmp ne %struct.menu* %170, null
  br i1 %171, label %172, label %176

172:                                              ; preds = %167
  %173 = load %struct.menu*, %struct.menu** %6, align 8
  %174 = getelementptr inbounds %struct.menu, %struct.menu* %173, i32 0, i32 2
  %175 = load %struct.menu*, %struct.menu** %174, align 8
  store %struct.menu* %175, %struct.menu** %6, align 8
  br label %118

176:                                              ; preds = %167
  %177 = load %struct.menu*, %struct.menu** %6, align 8
  %178 = getelementptr inbounds %struct.menu, %struct.menu* %177, i32 0, i32 0
  %179 = load %struct.menu*, %struct.menu** %178, align 8
  %180 = icmp ne %struct.menu* %179, null
  br i1 %180, label %181, label %185

181:                                              ; preds = %176
  %182 = load %struct.menu*, %struct.menu** %6, align 8
  %183 = getelementptr inbounds %struct.menu, %struct.menu* %182, i32 0, i32 0
  %184 = load %struct.menu*, %struct.menu** %183, align 8
  store %struct.menu* %184, %struct.menu** %6, align 8
  br label %202

185:                                              ; preds = %176
  br label %186

186:                                              ; preds = %200, %185
  %187 = load %struct.menu*, %struct.menu** %6, align 8
  %188 = getelementptr inbounds %struct.menu, %struct.menu* %187, i32 0, i32 1
  %189 = load %struct.menu*, %struct.menu** %188, align 8
  store %struct.menu* %189, %struct.menu** %6, align 8
  %190 = icmp ne %struct.menu* %189, null
  br i1 %190, label %191, label %201

191:                                              ; preds = %186
  %192 = load %struct.menu*, %struct.menu** %6, align 8
  %193 = getelementptr inbounds %struct.menu, %struct.menu* %192, i32 0, i32 0
  %194 = load %struct.menu*, %struct.menu** %193, align 8
  %195 = icmp ne %struct.menu* %194, null
  br i1 %195, label %196, label %200

196:                                              ; preds = %191
  %197 = load %struct.menu*, %struct.menu** %6, align 8
  %198 = getelementptr inbounds %struct.menu, %struct.menu* %197, i32 0, i32 0
  %199 = load %struct.menu*, %struct.menu** %198, align 8
  store %struct.menu* %199, %struct.menu** %6, align 8
  br label %201

200:                                              ; preds = %191
  br label %186

201:                                              ; preds = %196, %186
  br label %202

202:                                              ; preds = %201, %181
  br label %118

203:                                              ; preds = %118
  %204 = load i32*, i32** %4, align 8
  %205 = call i32 @fclose(i32* %204)
  %206 = load i8, i8* %26, align 16
  %207 = icmp ne i8 %206, 0
  br i1 %207, label %208, label %217

208:                                              ; preds = %203
  %209 = load i8*, i8** %7, align 8
  %210 = call i32 @strcat(i8* %22, i8* %209)
  %211 = call i32 @strcat(i8* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %212 = call i64 @rename(i8* %30, i8* %22)
  %213 = call i64 @rename(i8* %26, i8* %30)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %208
  store i32 1, i32* %2, align 4
  store i32 1, i32* %17, align 4
  br label %221

216:                                              ; preds = %208
  br label %217

217:                                              ; preds = %216, %203
  %218 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %219 = call i32 @conf_message(i32 %218, i8* %30)
  %220 = call i32 @sym_set_change_count(i32 0)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %17, align 4
  br label %221

221:                                              ; preds = %217, %215, %108
  %222 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %222)
  %223 = load i32, i32* %2, align 4
  ret i32 %223
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @stat(i8*, %struct.stat*) #2

declare dso_local i64 @S_ISDIR(i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i8* @conf_get_configname(...) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, ...) #2

declare dso_local i8* @getenv(i8*) #2

declare dso_local i64 @getpid(...) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @conf_write_heading(i32*, i32*, i32*) #2

declare dso_local i32 @conf_get_changed(...) #2

declare dso_local i32 @sym_clear_all_valid(...) #2

declare dso_local i32 @menu_is_visible(%struct.menu*) #2

declare dso_local i8* @menu_get_prompt(%struct.menu*) #2

declare dso_local i32 @fprintf(i32*, i8*, i8*) #2

declare dso_local i32 @sym_calc_value(%struct.symbol*) #2

declare dso_local i32 @conf_write_symbol(i32*, %struct.symbol*, i32*, i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i64 @rename(i8*, i8*) #2

declare dso_local i32 @conf_message(i32, i8*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @sym_set_change_count(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
