; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_util.c_justify_text.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_util.c_justify_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64 }

@A_NORMAL = common dso_local global i32 0, align 4
@MARGIN = common dso_local global i32 0, align 4
@dialog_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32, i32, i32*, i32*)* @justify_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @justify_text(i32* %0, i8* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %22 = load i32, i32* @A_NORMAL, align 4
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* @MARGIN, align 4
  %24 = mul nsw i32 2, %23
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* @MARGIN, align 4
  store i32 %25, i32* %15, align 4
  store i32 2, i32* %16, align 4
  %26 = load i32, i32* @MARGIN, align 4
  %27 = mul nsw i32 2, %26
  store i32 %27, i32* %17, align 4
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %18, align 4
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_state, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_state, i32 0, i32 1), align 8
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_state, i32 0, i32 0), align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %6
  %33 = load i32*, i32** %7, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %32, %6
  %36 = load i32, i32* @MARGIN, align 4
  %37 = mul nsw i32 2, %36
  %38 = load i32, i32* %18, align 4
  %39 = sub nsw i32 %38, %37
  store i32 %39, i32* %18, align 4
  %40 = load i32, i32* @MARGIN, align 4
  %41 = mul nsw i32 2, %40
  %42 = load i32, i32* %19, align 4
  %43 = sub nsw i32 %42, %41
  store i32 %43, i32* %19, align 4
  br label %44

44:                                               ; preds = %35, %32
  %45 = load i8*, i8** %8, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %48

48:                                               ; preds = %47, %44
  %49 = load i32*, i32** %7, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* %20, align 4
  %54 = load i32, i32* %21, align 4
  %55 = call i32 @getyx(i32* %52, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %51, %48
  br label %57

57:                                               ; preds = %149, %56
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* %19, align 4
  %60 = icmp sle i32 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load i8*, i8** %8, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 0
  br label %66

66:                                               ; preds = %61, %57
  %67 = phi i1 [ false, %57 ], [ %65, %61 ]
  br i1 %67, label %68, label %153

68:                                               ; preds = %66
  %69 = load i32, i32* %17, align 4
  store i32 %69, i32* %14, align 4
  %70 = load i8*, i8** %8, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 10
  br i1 %73, label %74, label %107

74:                                               ; preds = %68
  br label %75

75:                                               ; preds = %103, %74
  %76 = load i8*, i8** %8, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 10
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* %19, align 4
  %83 = icmp slt i32 %81, %82
  br label %84

84:                                               ; preds = %80, %75
  %85 = phi i1 [ false, %75 ], [ %83, %80 ]
  br i1 %85, label %86, label %106

86:                                               ; preds = %84
  %87 = load i8*, i8** %8, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 1
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %86
  %93 = load i32, i32* %15, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %15, align 4
  %95 = load i32*, i32** %7, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load i32*, i32** %7, align 8
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* %17, align 4
  %101 = call i32 @wmove(i32* %98, i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %97, %92
  br label %103

103:                                              ; preds = %102, %86
  %104 = load i8*, i8** %8, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %8, align 8
  br label %75

106:                                              ; preds = %84
  br label %116

107:                                              ; preds = %68
  %108 = load i32*, i32** %7, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = load i32*, i32** %7, align 8
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* %17, align 4
  %114 = call i32 @wmove(i32* %111, i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %110, %107
  br label %116

116:                                              ; preds = %115, %106
  %117 = load i8*, i8** %8, align 8
  %118 = load i8, i8* %117, align 1
  %119 = icmp ne i8 %118, 0
  br i1 %119, label %120, label %134

120:                                              ; preds = %116
  %121 = load i32*, i32** %7, align 8
  %122 = load i8*, i8** %8, align 8
  %123 = load i32, i32* %17, align 4
  %124 = load i32, i32* %18, align 4
  %125 = call i8* @dlg_print_line(i32* %121, i32* %13, i8* %122, i32 %123, i32 %124, i32* %14)
  store i8* %125, i8** %8, align 8
  %126 = load i32*, i32** %7, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %133

128:                                              ; preds = %120
  %129 = load i32*, i32** %7, align 8
  %130 = load i32, i32* %20, align 4
  %131 = load i32, i32* %21, align 4
  %132 = call i32 @getyx(i32* %129, i32 %130, i32 %131)
  br label %133

133:                                              ; preds = %128, %120
  br label %134

134:                                              ; preds = %133, %116
  %135 = load i8*, i8** %8, align 8
  %136 = load i8, i8* %135, align 1
  %137 = icmp ne i8 %136, 0
  br i1 %137, label %138, label %149

138:                                              ; preds = %134
  %139 = load i32, i32* %15, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %15, align 4
  %141 = load i32*, i32** %7, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %143, label %148

143:                                              ; preds = %138
  %144 = load i32*, i32** %7, align 8
  %145 = load i32, i32* %15, align 4
  %146 = load i32, i32* %17, align 4
  %147 = call i32 @wmove(i32* %144, i32 %145, i32 %146)
  br label %148

148:                                              ; preds = %143, %138
  br label %149

149:                                              ; preds = %148, %134
  %150 = load i32, i32* %16, align 4
  %151 = load i32, i32* %14, align 4
  %152 = call i32 @MAX(i32 %150, i32 %151)
  store i32 %152, i32* %16, align 4
  br label %57

153:                                              ; preds = %66
  %154 = load i32*, i32** %7, align 8
  %155 = icmp ne i32* %154, null
  br i1 %155, label %156, label %161

156:                                              ; preds = %153
  %157 = load i32*, i32** %7, align 8
  %158 = load i32, i32* %20, align 4
  %159 = load i32, i32* %21, align 4
  %160 = call i32 @wmove(i32* %157, i32 %158, i32 %159)
  br label %161

161:                                              ; preds = %156, %153
  %162 = load i32*, i32** %11, align 8
  %163 = icmp ne i32* %162, null
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load i32, i32* %15, align 4
  %166 = load i32*, i32** %11, align 8
  store i32 %165, i32* %166, align 4
  br label %167

167:                                              ; preds = %164, %161
  %168 = load i32*, i32** %12, align 8
  %169 = icmp ne i32* %168, null
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = load i32, i32* %16, align 4
  %172 = load i32*, i32** %12, align 8
  store i32 %171, i32* %172, align 4
  br label %173

173:                                              ; preds = %170, %167
  ret void
}

declare dso_local i32 @getyx(i32*, i32, i32) #1

declare dso_local i32 @wmove(i32*, i32, i32) #1

declare dso_local i8* @dlg_print_line(i32*, i32*, i8*, i32, i32, i32*) #1

declare dso_local i32 @MAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
