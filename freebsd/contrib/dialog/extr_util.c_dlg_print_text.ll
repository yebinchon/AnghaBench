; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_util.c_dlg_print_text.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_util.c_dlg_print_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@dialog_state = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@dialog_vars = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@A_BOLD = common dso_local global i32 0, align 4
@A_REVERSE = common dso_local global i32 0, align 4
@A_UNDERLINE = common dso_local global i32 0, align 4
@A_NORMAL = common dso_local global i32 0, align 4
@A_ATTRIBUTES = common dso_local global i32 0, align 4
@TAB = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@A_COLOR = common dso_local global i32 0, align 4
@COLOR_BLACK = common dso_local global i16 0, align 2
@COLOR_WHITE = common dso_local global i16 0, align 2
@ERR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dlg_print_text(i32* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %15, align 4
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %17, align 4
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dialog_state, i32 0, i32 1), align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %10, align 4
  br label %30

25:                                               ; preds = %4
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @getyx(i32* %26, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %25, %24
  br label %31

31:                                               ; preds = %203, %30
  %32 = load i32, i32* %7, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i8*, i8** %6, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 0
  br label %39

39:                                               ; preds = %34, %31
  %40 = phi i1 [ false, %31 ], [ %38, %34 ]
  br i1 %40, label %41, label %204

41:                                               ; preds = %39
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 0), align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %95

44:                                               ; preds = %41
  br label %45

45:                                               ; preds = %91, %44
  %46 = load i8*, i8** %6, align 8
  %47 = call i64 @isOurEscape(i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %94

49:                                               ; preds = %45
  %50 = load i8*, i8** %6, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 2
  store i8* %51, i8** %6, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load i8, i8* %52, align 1
  %54 = call i32 @CharOf(i8 signext %53)
  store i32 %54, i32* %19, align 4
  switch i32 %54, label %91 [
    i32 66, label %55
    i32 98, label %61
    i32 82, label %66
    i32 114, label %72
    i32 85, label %77
    i32 117, label %83
    i32 110, label %88
  ]

55:                                               ; preds = %49
  %56 = load i32, i32* @A_BOLD, align 4
  %57 = xor i32 %56, -1
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, %57
  store i32 %60, i32* %58, align 4
  br label %91

61:                                               ; preds = %49
  %62 = load i32, i32* @A_BOLD, align 4
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %62
  store i32 %65, i32* %63, align 4
  br label %91

66:                                               ; preds = %49
  %67 = load i32, i32* @A_REVERSE, align 4
  %68 = xor i32 %67, -1
  %69 = load i32*, i32** %8, align 8
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, %68
  store i32 %71, i32* %69, align 4
  br label %91

72:                                               ; preds = %49
  %73 = load i32, i32* @A_REVERSE, align 4
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %73
  store i32 %76, i32* %74, align 4
  br label %91

77:                                               ; preds = %49
  %78 = load i32, i32* @A_UNDERLINE, align 4
  %79 = xor i32 %78, -1
  %80 = load i32*, i32** %8, align 8
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, %79
  store i32 %82, i32* %80, align 4
  br label %91

83:                                               ; preds = %49
  %84 = load i32, i32* @A_UNDERLINE, align 4
  %85 = load i32*, i32** %8, align 8
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %84
  store i32 %87, i32* %85, align 4
  br label %91

88:                                               ; preds = %49
  %89 = load i32, i32* @A_NORMAL, align 4
  %90 = load i32*, i32** %8, align 8
  store i32 %89, i32* %90, align 4
  br label %91

91:                                               ; preds = %49, %88, %83, %77, %72, %66, %61, %55
  %92 = load i8*, i8** %6, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %6, align 8
  br label %45

94:                                               ; preds = %45
  br label %95

95:                                               ; preds = %94, %41
  %96 = load i32, i32* %17, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %108, label %98

98:                                               ; preds = %95
  %99 = load i8*, i8** %6, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 10
  br i1 %102, label %108, label %103

103:                                              ; preds = %98
  %104 = load i8*, i8** %6, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %103, %98, %95
  br label %204

109:                                              ; preds = %103
  %110 = load i32*, i32** %8, align 8
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @A_ATTRIBUTES, align 4
  %113 = and i32 %111, %112
  store i32 %113, i32* %18, align 4
  %114 = load i8*, i8** %6, align 8
  %115 = load i8, i8* %114, align 1
  %116 = call i32 @CharOf(i8 signext %115)
  %117 = load i32, i32* @TAB, align 4
  %118 = icmp eq i32 %116, %117
  %119 = zext i1 %118 to i32
  store i32 %119, i32* %16, align 4
  %120 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dialog_state, i32 0, i32 1), align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %109
  %123 = load i32, i32* %13, align 4
  store i32 %123, i32* %11, align 4
  %124 = load i32, i32* %14, align 4
  store i32 %124, i32* %12, align 4
  br label %135

125:                                              ; preds = %109
  %126 = load i32, i32* %16, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %125
  %129 = load i32*, i32** %5, align 8
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* %12, align 4
  %132 = call i32 @getyx(i32* %129, i32 %130, i32 %131)
  %133 = load i32, i32* %11, align 4
  br label %134

134:                                              ; preds = %128, %125
  br label %135

135:                                              ; preds = %134, %122
  %136 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dialog_state, i32 0, i32 1), align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %163

138:                                              ; preds = %135
  %139 = load i8*, i8** %6, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %6, align 8
  %141 = load i8, i8* %139, align 1
  %142 = call i32 @CharOf(i8 signext %141)
  store i32 %142, i32* %20, align 4
  %143 = load i32, i32* %16, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %155

145:                                              ; preds = %138
  br label %146

146:                                              ; preds = %151, %145
  %147 = load i32, i32* %14, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %14, align 4
  %149 = srem i32 %147, 8
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %146
  %152 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dialog_state, i32 0, i32 0), align 8
  %153 = call i32 @fputc(i8 signext 32, i32 %152)
  br label %146

154:                                              ; preds = %146
  br label %162

155:                                              ; preds = %138
  %156 = load i32, i32* %20, align 4
  %157 = trunc i32 %156 to i8
  %158 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dialog_state, i32 0, i32 0), align 8
  %159 = call i32 @fputc(i8 signext %157, i32 %158)
  %160 = load i32, i32* %14, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %14, align 4
  br label %162

162:                                              ; preds = %155, %154
  br label %176

163:                                              ; preds = %135
  %164 = load i32*, i32** %5, align 8
  %165 = load i8*, i8** %6, align 8
  %166 = getelementptr inbounds i8, i8* %165, i32 1
  store i8* %166, i8** %6, align 8
  %167 = load i8, i8* %165, align 1
  %168 = call i32 @CharOf(i8 signext %167)
  %169 = load i32, i32* %18, align 4
  %170 = or i32 %168, %169
  %171 = call i32 @waddch(i32* %164, i32 %170)
  %172 = load i32*, i32** %5, align 8
  %173 = load i32, i32* %13, align 4
  %174 = load i32, i32* %14, align 4
  %175 = call i32 @getyx(i32* %172, i32 %173, i32 %174)
  br label %176

176:                                              ; preds = %163, %162
  %177 = load i32, i32* %16, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %189

179:                                              ; preds = %176
  %180 = load i32, i32* %13, align 4
  %181 = load i32, i32* %9, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %189

183:                                              ; preds = %179
  %184 = load i32, i32* %14, align 4
  %185 = load i32, i32* %12, align 4
  %186 = sub nsw i32 %184, %185
  %187 = load i32, i32* %15, align 4
  %188 = add nsw i32 %187, %186
  store i32 %188, i32* %15, align 4
  br label %189

189:                                              ; preds = %183, %179, %176
  %190 = load i32, i32* %13, align 4
  %191 = load i32, i32* %9, align 4
  %192 = icmp ne i32 %190, %191
  br i1 %192, label %201, label %193

193:                                              ; preds = %189
  %194 = load i32, i32* %14, align 4
  %195 = load i32, i32* %7, align 4
  %196 = load i32, i32* %15, align 4
  %197 = add nsw i32 %195, %196
  %198 = load i32, i32* %10, align 4
  %199 = add nsw i32 %197, %198
  %200 = icmp sge i32 %194, %199
  br i1 %200, label %201, label %203

201:                                              ; preds = %193, %189
  %202 = load i32, i32* @TRUE, align 4
  store i32 %202, i32* %17, align 4
  br label %203

203:                                              ; preds = %201, %193
  br label %31

204:                                              ; preds = %108, %39
  %205 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dialog_state, i32 0, i32 1), align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %204
  %208 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dialog_state, i32 0, i32 0), align 8
  %209 = call i32 @fputc(i8 signext 10, i32 %208)
  br label %210

210:                                              ; preds = %207, %204
  ret void
}

declare dso_local i32 @getyx(i32*, i32, i32) #1

declare dso_local i64 @isOurEscape(i8*) #1

declare dso_local i32 @CharOf(i8 signext) #1

declare dso_local i32 @fputc(i8 signext, i32) #1

declare dso_local i32 @waddch(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
