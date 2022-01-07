; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_mconf.c_conf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_mconf.c_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menu = type { %struct.TYPE_2__*, i8*, %struct.symbol* }
%struct.TYPE_2__ = type { i32 }
%struct.symbol = type { i32 }

@current_menu = common dso_local global %struct.menu* null, align 8
@child_count = common dso_local global i32 0, align 4
@rootmenu = common dso_local global %struct.menu zeroinitializer, align 8
@.str = private unnamed_addr constant [5 x i8] c"--- \00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"    Load an Alternate Configuration File\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"    Save an Alternate Configuration File\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Main Menu\00", align 1
@menu_instructions = common dso_local global i8* null, align 8
@KEY_ESC = common dso_local global i32 0, align 4
@ERRDISPLAYTOOSMALL = common dso_local global i32 0, align 4
@single_menu_mode = common dso_local global i32 0, align 4
@yes = common dso_local global i32 0, align 4
@P_MENU = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"README\00", align 1
@mconf_readme = common dso_local global i8* null, align 8
@mod = common dso_local global i32 0, align 4
@setmod_text = common dso_local global i32 0, align 4
@no = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.menu*)* @conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @conf(%struct.menu* %0) #0 {
  %2 = alloca %struct.menu*, align 8
  %3 = alloca %struct.menu*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.symbol*, align 8
  %6 = alloca %struct.menu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.menu* %0, %struct.menu** %2, align 8
  %9 = load %struct.menu*, %struct.menu** %2, align 8
  %10 = call i8* @menu_get_prompt(%struct.menu* %9)
  store i8* %10, i8** %4, align 8
  store %struct.menu* null, %struct.menu** %6, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %1, %61, %65, %191
  %12 = call i32 (...) @item_reset()
  %13 = load %struct.menu*, %struct.menu** %2, align 8
  store %struct.menu* %13, %struct.menu** @current_menu, align 8
  %14 = load %struct.menu*, %struct.menu** %2, align 8
  %15 = call i32 @build_conf(%struct.menu* %14)
  %16 = load i32, i32* @child_count, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  br label %192

19:                                               ; preds = %11
  %20 = load %struct.menu*, %struct.menu** %2, align 8
  %21 = icmp eq %struct.menu* %20, @rootmenu
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = call i32 @item_make(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 @item_set_tag(i8 signext 58)
  %25 = call i8* @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %26 = call i32 @item_make(i8* %25)
  %27 = call i32 @item_set_tag(i8 signext 76)
  %28 = call i8* @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %29 = call i32 @item_make(i8* %28)
  %30 = call i32 @item_set_tag(i8 signext 83)
  br label %31

31:                                               ; preds = %22, %19
  %32 = call i32 (...) @dialog_clear()
  %33 = load i8*, i8** %4, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i8*, i8** %4, align 8
  %37 = call i8* @_(i8* %36)
  br label %40

38:                                               ; preds = %31
  %39 = call i8* @_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %35
  %41 = phi i8* [ %37, %35 ], [ %39, %38 ]
  %42 = load i8*, i8** @menu_instructions, align 8
  %43 = call i8* @_(i8* %42)
  %44 = load %struct.menu*, %struct.menu** %6, align 8
  %45 = call i32 @dialog_menu(i8* %41, i8* %43, %struct.menu* %44, i32* %8)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %57, label %48

48:                                               ; preds = %40
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @KEY_ESC, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %57, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @ERRDISPLAYTOOSMALL, align 4
  %55 = sub nsw i32 0, %54
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %52, %48, %40
  br label %192

58:                                               ; preds = %52
  %59 = call i32 (...) @item_activate_selected()
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  br label %11

62:                                               ; preds = %58
  %63 = call i64 (...) @item_tag()
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  br label %11

66:                                               ; preds = %62
  %67 = call %struct.menu* (...) @item_data()
  store %struct.menu* %67, %struct.menu** %3, align 8
  %68 = call %struct.menu* (...) @item_data()
  store %struct.menu* %68, %struct.menu** %6, align 8
  %69 = load %struct.menu*, %struct.menu** %3, align 8
  %70 = icmp ne %struct.menu* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load %struct.menu*, %struct.menu** %3, align 8
  %73 = getelementptr inbounds %struct.menu, %struct.menu* %72, i32 0, i32 2
  %74 = load %struct.symbol*, %struct.symbol** %73, align 8
  store %struct.symbol* %74, %struct.symbol** %5, align 8
  br label %76

75:                                               ; preds = %66
  store %struct.symbol* null, %struct.symbol** %5, align 8
  br label %76

76:                                               ; preds = %75, %71
  %77 = load i32, i32* %7, align 4
  switch i32 %77, label %191 [
    i32 0, label %78
    i32 2, label %129
    i32 3, label %141
    i32 4, label %160
    i32 5, label %168
    i32 6, label %176
    i32 7, label %189
  ]

78:                                               ; preds = %76
  %79 = call i64 (...) @item_tag()
  switch i64 %79, label %128 [
    i64 109, label %80
    i64 116, label %97
    i64 115, label %121
    i64 76, label %124
    i64 83, label %126
  ]

80:                                               ; preds = %78
  %81 = load i32, i32* @single_menu_mode, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %80
  %84 = load %struct.menu*, %struct.menu** %3, align 8
  %85 = getelementptr inbounds %struct.menu, %struct.menu* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = icmp ne i8* %86, null
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = sext i32 %89 to i64
  %91 = inttoptr i64 %90 to i8*
  %92 = load %struct.menu*, %struct.menu** %3, align 8
  %93 = getelementptr inbounds %struct.menu, %struct.menu* %92, i32 0, i32 1
  store i8* %91, i8** %93, align 8
  br label %96

94:                                               ; preds = %80
  %95 = load %struct.menu*, %struct.menu** %3, align 8
  call void @conf(%struct.menu* %95)
  br label %96

96:                                               ; preds = %94, %83
  br label %128

97:                                               ; preds = %78
  %98 = load %struct.symbol*, %struct.symbol** %5, align 8
  %99 = call i32 @sym_is_choice(%struct.symbol* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %97
  %102 = load %struct.symbol*, %struct.symbol** %5, align 8
  %103 = call i32 @sym_get_tristate_value(%struct.symbol* %102)
  %104 = load i32, i32* @yes, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load %struct.menu*, %struct.menu** %3, align 8
  %108 = call i32 @conf_choice(%struct.menu* %107)
  br label %120

109:                                              ; preds = %101, %97
  %110 = load %struct.menu*, %struct.menu** %3, align 8
  %111 = getelementptr inbounds %struct.menu, %struct.menu* %110, i32 0, i32 0
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @P_MENU, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %109
  %118 = load %struct.menu*, %struct.menu** %3, align 8
  call void @conf(%struct.menu* %118)
  br label %119

119:                                              ; preds = %117, %109
  br label %120

120:                                              ; preds = %119, %106
  br label %128

121:                                              ; preds = %78
  %122 = load %struct.menu*, %struct.menu** %3, align 8
  %123 = call i32 @conf_string(%struct.menu* %122)
  br label %128

124:                                              ; preds = %78
  %125 = call i32 (...) @conf_load()
  br label %128

126:                                              ; preds = %78
  %127 = call i32 (...) @conf_save()
  br label %128

128:                                              ; preds = %78, %126, %124, %121, %120, %96
  br label %191

129:                                              ; preds = %76
  %130 = load %struct.symbol*, %struct.symbol** %5, align 8
  %131 = icmp ne %struct.symbol* %130, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load %struct.menu*, %struct.menu** %3, align 8
  %134 = call i32 @show_help(%struct.menu* %133)
  br label %140

135:                                              ; preds = %129
  %136 = call i8* @_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %137 = load i8*, i8** @mconf_readme, align 8
  %138 = call i8* @_(i8* %137)
  %139 = call i32 @show_helptext(i8* %136, i8* %138)
  br label %140

140:                                              ; preds = %135, %132
  br label %191

141:                                              ; preds = %76
  %142 = call i32 @item_is_tag(i8 signext 116)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %159

144:                                              ; preds = %141
  %145 = load %struct.symbol*, %struct.symbol** %5, align 8
  %146 = load i32, i32* @yes, align 4
  %147 = call i32 @sym_set_tristate_value(%struct.symbol* %145, i32 %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %144
  br label %191

150:                                              ; preds = %144
  %151 = load %struct.symbol*, %struct.symbol** %5, align 8
  %152 = load i32, i32* @mod, align 4
  %153 = call i32 @sym_set_tristate_value(%struct.symbol* %151, i32 %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %150
  %156 = load i32, i32* @setmod_text, align 4
  %157 = call i32 @show_textbox(i32* null, i32 %156, i32 6, i32 74)
  br label %158

158:                                              ; preds = %155, %150
  br label %159

159:                                              ; preds = %158, %141
  br label %191

160:                                              ; preds = %76
  %161 = call i32 @item_is_tag(i8 signext 116)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %160
  %164 = load %struct.symbol*, %struct.symbol** %5, align 8
  %165 = load i32, i32* @no, align 4
  %166 = call i32 @sym_set_tristate_value(%struct.symbol* %164, i32 %165)
  br label %167

167:                                              ; preds = %163, %160
  br label %191

168:                                              ; preds = %76
  %169 = call i32 @item_is_tag(i8 signext 116)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %168
  %172 = load %struct.symbol*, %struct.symbol** %5, align 8
  %173 = load i32, i32* @mod, align 4
  %174 = call i32 @sym_set_tristate_value(%struct.symbol* %172, i32 %173)
  br label %175

175:                                              ; preds = %171, %168
  br label %191

176:                                              ; preds = %76
  %177 = call i32 @item_is_tag(i8 signext 116)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %176
  %180 = load %struct.symbol*, %struct.symbol** %5, align 8
  %181 = call i32 @sym_toggle_tristate_value(%struct.symbol* %180)
  br label %188

182:                                              ; preds = %176
  %183 = call i32 @item_is_tag(i8 signext 109)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %182
  %186 = load %struct.menu*, %struct.menu** %3, align 8
  call void @conf(%struct.menu* %186)
  br label %187

187:                                              ; preds = %185, %182
  br label %188

188:                                              ; preds = %187, %179
  br label %191

189:                                              ; preds = %76
  %190 = call i32 (...) @search_conf()
  br label %191

191:                                              ; preds = %76, %189, %188, %175, %167, %159, %149, %140, %128
  br label %11

192:                                              ; preds = %57, %18
  ret void
}

declare dso_local i8* @menu_get_prompt(%struct.menu*) #1

declare dso_local i32 @item_reset(...) #1

declare dso_local i32 @build_conf(%struct.menu*) #1

declare dso_local i32 @item_make(i8*) #1

declare dso_local i32 @item_set_tag(i8 signext) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @dialog_clear(...) #1

declare dso_local i32 @dialog_menu(i8*, i8*, %struct.menu*, i32*) #1

declare dso_local i32 @item_activate_selected(...) #1

declare dso_local i64 @item_tag(...) #1

declare dso_local %struct.menu* @item_data(...) #1

declare dso_local i32 @sym_is_choice(%struct.symbol*) #1

declare dso_local i32 @sym_get_tristate_value(%struct.symbol*) #1

declare dso_local i32 @conf_choice(%struct.menu*) #1

declare dso_local i32 @conf_string(%struct.menu*) #1

declare dso_local i32 @conf_load(...) #1

declare dso_local i32 @conf_save(...) #1

declare dso_local i32 @show_help(%struct.menu*) #1

declare dso_local i32 @show_helptext(i8*, i8*) #1

declare dso_local i32 @item_is_tag(i8 signext) #1

declare dso_local i32 @sym_set_tristate_value(%struct.symbol*, i32) #1

declare dso_local i32 @show_textbox(i32*, i32, i32, i32) #1

declare dso_local i32 @sym_toggle_tristate_value(%struct.symbol*) #1

declare dso_local i32 @search_conf(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
