; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_au1200fb.c_au1200_setpanel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_au1200fb.c_au1200_setpanel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.panel_settings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 (...)*, i32, i32, i32, i32 (...)* }
%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }

@lcd = common dso_local global %struct.TYPE_10__* null, align 8
@LCD_SCREEN_SEN = common dso_local global i32 0, align 4
@LCD_INT_SS = common dso_local global i32 0, align 4
@LCD_INT_SD = common dso_local global i32 0, align 4
@panel = common dso_local global %struct.panel_settings* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"Panel(%s), %dx%d\0A\00", align 1
@LCD_CLKCONTROL_EXT = common dso_local global i32 0, align 4
@SYS_AUXPLL = common dso_local global i32 0, align 4
@SYS_CLKSRC = common dso_local global i32 0, align 4
@win = common dso_local global %struct.TYPE_9__* null, align 8
@fbdev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.panel_settings*)* @au1200_setpanel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au1200_setpanel(%struct.panel_settings* %0) #0 {
  %2 = alloca %struct.panel_settings*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.panel_settings* %0, %struct.panel_settings** %2, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %3, align 4
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  store i32 0, i32* %9, align 8
  %10 = call i32 (...) @au_sync()
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @LCD_SCREEN_SEN, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %62

17:                                               ; preds = %1
  %18 = load i32, i32* @LCD_INT_SS, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  br label %21

21:                                               ; preds = %28, %17
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @LCD_INT_SS, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = call i32 (...) @au_sync()
  br label %21

30:                                               ; preds = %21
  %31 = load i32, i32* @LCD_SCREEN_SEN, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %44, %30
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = call i32 (...) @au_sync()
  br label %44

44:                                               ; preds = %37
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @LCD_INT_SD, align 4
  %49 = and i32 %47, %48
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %37, label %51

51:                                               ; preds = %44
  %52 = load %struct.panel_settings*, %struct.panel_settings** @panel, align 8
  %53 = getelementptr inbounds %struct.panel_settings, %struct.panel_settings* %52, i32 0, i32 14
  %54 = load i32 (...)*, i32 (...)** %53, align 8
  %55 = icmp ne i32 (...)* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.panel_settings*, %struct.panel_settings** @panel, align 8
  %58 = getelementptr inbounds %struct.panel_settings, %struct.panel_settings* %57, i32 0, i32 14
  %59 = load i32 (...)*, i32 (...)** %58, align 8
  %60 = call i32 (...) %59()
  br label %61

61:                                               ; preds = %56, %51
  br label %62

62:                                               ; preds = %61, %1
  %63 = load %struct.panel_settings*, %struct.panel_settings** %2, align 8
  %64 = icmp eq %struct.panel_settings* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %199

66:                                               ; preds = %62
  %67 = load %struct.panel_settings*, %struct.panel_settings** %2, align 8
  store %struct.panel_settings* %67, %struct.panel_settings** @panel, align 8
  %68 = load %struct.panel_settings*, %struct.panel_settings** @panel, align 8
  %69 = getelementptr inbounds %struct.panel_settings, %struct.panel_settings* %68, i32 0, i32 13
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.panel_settings*, %struct.panel_settings** @panel, align 8
  %72 = getelementptr inbounds %struct.panel_settings, %struct.panel_settings* %71, i32 0, i32 12
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.panel_settings*, %struct.panel_settings** @panel, align 8
  %75 = getelementptr inbounds %struct.panel_settings, %struct.panel_settings* %74, i32 0, i32 11
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %73, i32 %76)
  %78 = load %struct.panel_settings*, %struct.panel_settings** @panel, align 8
  %79 = getelementptr inbounds %struct.panel_settings, %struct.panel_settings* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @LCD_CLKCONTROL_EXT, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %101, label %84

84:                                               ; preds = %66
  %85 = load %struct.panel_settings*, %struct.panel_settings** @panel, align 8
  %86 = getelementptr inbounds %struct.panel_settings, %struct.panel_settings* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @SYS_AUXPLL, align 4
  %89 = call i32 @au_writel(i32 %87, i32 %88)
  %90 = load i32, i32* @SYS_CLKSRC, align 4
  %91 = call i32 @au_readl(i32 %90)
  %92 = and i32 %91, -32
  store i32 %92, i32* %4, align 4
  %93 = load %struct.panel_settings*, %struct.panel_settings** @panel, align 8
  %94 = getelementptr inbounds %struct.panel_settings, %struct.panel_settings* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %4, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* @SYS_CLKSRC, align 4
  %100 = call i32 @au_writel(i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %84, %66
  %102 = load %struct.panel_settings*, %struct.panel_settings** @panel, align 8
  %103 = getelementptr inbounds %struct.panel_settings, %struct.panel_settings* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load %struct.panel_settings*, %struct.panel_settings** @panel, align 8
  %108 = getelementptr inbounds %struct.panel_settings, %struct.panel_settings* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 4
  %112 = load %struct.panel_settings*, %struct.panel_settings** @panel, align 8
  %113 = getelementptr inbounds %struct.panel_settings, %struct.panel_settings* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 4
  store i32 %114, i32* %116, align 8
  %117 = load %struct.panel_settings*, %struct.panel_settings** @panel, align 8
  %118 = getelementptr inbounds %struct.panel_settings, %struct.panel_settings* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 5
  store i32 %119, i32* %121, align 4
  %122 = load %struct.panel_settings*, %struct.panel_settings** @panel, align 8
  %123 = getelementptr inbounds %struct.panel_settings, %struct.panel_settings* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 6
  store i32 %124, i32* %126, align 8
  %127 = load %struct.panel_settings*, %struct.panel_settings** @panel, align 8
  %128 = getelementptr inbounds %struct.panel_settings, %struct.panel_settings* %127, i32 0, i32 7
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 7
  store i32 %129, i32* %131, align 4
  %132 = load %struct.panel_settings*, %struct.panel_settings** @panel, align 8
  %133 = getelementptr inbounds %struct.panel_settings, %struct.panel_settings* %132, i32 0, i32 8
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 8
  store i32 %134, i32* %136, align 8
  %137 = load %struct.panel_settings*, %struct.panel_settings** @panel, align 8
  %138 = getelementptr inbounds %struct.panel_settings, %struct.panel_settings* %137, i32 0, i32 9
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 9
  store i32 %139, i32* %141, align 4
  %142 = call i32 (...) @au_sync()
  %143 = load i32, i32* %3, align 4
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = load i32, i32* @LCD_SCREEN_SEN, align 4
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 4
  %151 = call i32 (...) @au_sync()
  %152 = load %struct.panel_settings*, %struct.panel_settings** @panel, align 8
  %153 = getelementptr inbounds %struct.panel_settings, %struct.panel_settings* %152, i32 0, i32 10
  %154 = load i32 (...)*, i32 (...)** %153, align 8
  %155 = icmp ne i32 (...)* %154, null
  br i1 %155, label %156, label %161

156:                                              ; preds = %101
  %157 = load %struct.panel_settings*, %struct.panel_settings** @panel, align 8
  %158 = getelementptr inbounds %struct.panel_settings, %struct.panel_settings* %157, i32 0, i32 10
  %159 = load i32 (...)*, i32 (...)** %158, align 8
  %160 = call i32 (...) %159()
  br label %161

161:                                              ; preds = %156, %101
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 10
  store i32 0, i32* %163, align 8
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 2
  store i32 -1, i32* %165, align 8
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** @win, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 11
  store i32 %168, i32* %170, align 4
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** @win, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 12
  store i32 %173, i32* %175, align 8
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** @win, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 13
  store i32 %178, i32* %180, align 4
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 14
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 0
  store i32 0, i32* %183, align 8
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 14
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 1
  store i32 0, i32* %186, align 4
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 14
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 2
  store i32 0, i32* %189, align 8
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 14
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 3
  store i32 0, i32* %192, align 4
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 14
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 4
  store i32 0, i32* %195, align 8
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 14
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 5
  store i32 0, i32* %198, align 4
  br label %199

199:                                              ; preds = %161, %65
  ret void
}

declare dso_local i32 @au_sync(...) #1

declare dso_local i32 @printk(i8*, i32, i32, i32) #1

declare dso_local i32 @au_writel(i32, i32) #1

declare dso_local i32 @au_readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
