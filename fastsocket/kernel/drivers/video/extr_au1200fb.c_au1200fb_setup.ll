; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_au1200fb.c_au1200fb_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_au1200fb.c_au1200fb_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@known_lcd_panels = common dso_local global %struct.TYPE_3__* null, align 8
@DRIVER_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"panel:\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"bs\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Panel %s not supported!\00", align 1
@panel_index = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"nohwcursor\00", align 1
@nohwcursor = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"Unsupported option \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @au1200fb_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au1200fb_setup() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* null, i8** %1, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @known_lcd_panels, align 8
  %9 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %8)
  store i32 %9, i32* %3, align 4
  store i32 -1, i32* %4, align 4
  %10 = load i32, i32* @DRIVER_NAME, align 4
  %11 = call i32 @fb_get_options(i32 %10, i8** %1)
  %12 = load i8*, i8** %1, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %87

14:                                               ; preds = %0
  br label %15

15:                                               ; preds = %85, %14
  %16 = call i8* @strsep(i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %16, i8** %2, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %86

18:                                               ; preds = %15
  %19 = load i8*, i8** %2, align 8
  %20 = call i64 @strncmp(i8* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %76, label %22

22:                                               ; preds = %18
  %23 = load i8*, i8** %2, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 6
  store i8* %24, i8** %2, align 8
  %25 = load i8*, i8** %2, align 8
  %26 = call i64 @simple_strtol(i8* %25, i8** %7, i32 0)
  store i64 %26, i64* %6, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load i64, i64* %6, align 8
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %4, align 4
  br label %63

34:                                               ; preds = %22
  %35 = load i8*, i8** %2, align 8
  %36 = call i64 @strcmp(i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = call i32 @board_au1200fb_panel()
  store i32 %39, i32* %4, align 4
  br label %62

40:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %58, %40
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %3, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %61

45:                                               ; preds = %41
  %46 = load i8*, i8** %2, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** @known_lcd_panels, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i64 @strcmp(i8* %46, i8* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %45
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %4, align 4
  br label %61

57:                                               ; preds = %45
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %41

61:                                               ; preds = %55, %41
  br label %62

62:                                               ; preds = %61, %38
  br label %63

63:                                               ; preds = %62, %31
  %64 = load i32, i32* %4, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* %3, align 4
  %69 = icmp sge i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %66, %63
  %71 = load i8*, i8** %2, align 8
  %72 = call i32 @print_warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %71)
  br label %75

73:                                               ; preds = %66
  %74 = load i32, i32* %4, align 4
  store i32 %74, i32* @panel_index, align 4
  br label %75

75:                                               ; preds = %73, %70
  br label %85

76:                                               ; preds = %18
  %77 = load i8*, i8** %2, align 8
  %78 = call i64 @strncmp(i8* %77, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 10)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i32 1, i32* @nohwcursor, align 4
  br label %84

81:                                               ; preds = %76
  %82 = load i8*, i8** %2, align 8
  %83 = call i32 @print_warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8* %82)
  br label %84

84:                                               ; preds = %81, %80
  br label %85

85:                                               ; preds = %84, %75
  br label %15

86:                                               ; preds = %15
  br label %87

87:                                               ; preds = %86, %0
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @fb_get_options(i32, i8**) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @simple_strtol(i8*, i8**, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @board_au1200fb_panel() #1

declare dso_local i32 @print_warn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
