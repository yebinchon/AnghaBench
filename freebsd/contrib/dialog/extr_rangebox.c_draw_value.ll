; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_rangebox.c_draw_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_rangebox.c_draw_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }

@gauge_attr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%*d\00", align 1
@A_REVERSE = common dso_local global i32 0, align 4
@dialog_attr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"# drew %d offset %d scaled %d limit %d inc %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @draw_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_value(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %13, %16
  br i1 %17, label %18, label %178

18:                                               ; preds = %2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 9
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %5, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %25, %28
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = sub nsw i32 %30, %33
  store i32 %34, i32* %10, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @getyx(i32* %35, i32 %36, i32 %37)
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %39, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %18
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %45, %48
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = sdiv i32 %49, %52
  store i32 %53, i32* %11, align 4
  br label %70

54:                                               ; preds = %18
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = mul nsw i32 %62, %65
  store i32 %66, i32* %11, align 4
  br label %69

67:                                               ; preds = %54
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %67, %60
  br label %70

70:                                               ; preds = %69, %44
  %71 = load i32*, i32** %5, align 8
  %72 = load i32, i32* @gauge_attr, align 4
  %73 = call i32 @dlg_attrset(i32* %71, i32 %72)
  %74 = load i32*, i32** %5, align 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @wmove(i32* %74, i32 %77, i32 %80)
  store i32 0, i32* %8, align 4
  br label %82

82:                                               ; preds = %91, %70
  %83 = load i32, i32* %8, align 4
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %82
  %89 = load i32*, i32** %5, align 8
  %90 = call i32 @waddch(i32* %89, i32 32)
  br label %91

91:                                               ; preds = %88
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %8, align 4
  br label %82

94:                                               ; preds = %82
  %95 = load i32*, i32** %5, align 8
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 7
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @wmove(i32* %95, i32 %98, i32 %101)
  %103 = load i32*, i32** %5, align 8
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 8
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %4, align 4
  %108 = call i32 @wprintw(i32* %103, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %106, i32 %107)
  %109 = load i32, i32* @gauge_attr, align 4
  %110 = load i32, i32* @A_REVERSE, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %94
  %114 = load i32*, i32** %5, align 8
  %115 = load i32, i32* @A_REVERSE, align 4
  %116 = call i32 @dlg_attroff(i32* %114, i32 %115)
  br label %121

117:                                              ; preds = %94
  %118 = load i32*, i32** %5, align 8
  %119 = load i32, i32* @A_REVERSE, align 4
  %120 = call i32 @dlg_attrset(i32* %118, i32 %119)
  br label %121

121:                                              ; preds = %117, %113
  %122 = load i32*, i32** %5, align 8
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 6
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @wmove(i32* %122, i32 %125, i32 %128)
  store i32 0, i32* %8, align 4
  br label %130

130:                                              ; preds = %150, %121
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %11, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %153

134:                                              ; preds = %130
  %135 = load i32*, i32** %5, align 8
  %136 = call i32 @winch(i32* %135)
  store i32 %136, i32* %12, align 4
  %137 = load i32, i32* @gauge_attr, align 4
  %138 = load i32, i32* @A_REVERSE, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %134
  %142 = load i32, i32* @A_REVERSE, align 4
  %143 = xor i32 %142, -1
  %144 = load i32, i32* %12, align 4
  %145 = and i32 %144, %143
  store i32 %145, i32* %12, align 4
  br label %146

146:                                              ; preds = %141, %134
  %147 = load i32*, i32** %5, align 8
  %148 = load i32, i32* %12, align 4
  %149 = call i32 @waddch(i32* %147, i32 %148)
  br label %150

150:                                              ; preds = %146
  %151 = load i32, i32* %8, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %8, align 4
  br label %130

153:                                              ; preds = %130
  %154 = load i32*, i32** %5, align 8
  %155 = load i32, i32* @dialog_attr, align 4
  %156 = call i32 @dlg_attrset(i32* %154, i32 %155)
  %157 = load i32*, i32** %5, align 8
  %158 = load i32, i32* %6, align 4
  %159 = load i32, i32* %7, align 4
  %160 = call i32 @wmove(i32* %157, i32 %158, i32 %159)
  %161 = load i32, i32* %4, align 4
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 8
  %164 = load i32, i32* %4, align 4
  %165 = load i32, i32* %10, align 4
  %166 = load i32, i32* %11, align 4
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 8
  %173 = sext i32 %172 to i64
  %174 = inttoptr i64 %173 to i8*
  %175 = call i32 @DLG_TRACE(i8* %174)
  %176 = load i32*, i32** %5, align 8
  %177 = call i32 @dlg_trace_win(i32* %176)
  br label %178

178:                                              ; preds = %153, %2
  ret void
}

declare dso_local i32 @getyx(i32*, i32, i32) #1

declare dso_local i32 @dlg_attrset(i32*, i32) #1

declare dso_local i32 @wmove(i32*, i32, i32) #1

declare dso_local i32 @waddch(i32*, i32) #1

declare dso_local i32 @wprintw(i32*, i8*, i32, i32) #1

declare dso_local i32 @dlg_attroff(i32*, i32) #1

declare dso_local i32 @winch(i32*) #1

declare dso_local i32 @DLG_TRACE(i8*) #1

declare dso_local i32 @dlg_trace_win(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
