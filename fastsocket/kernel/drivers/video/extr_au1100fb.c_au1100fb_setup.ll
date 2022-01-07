; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_au1100fb.c_au1100fb_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_au1100fb.c_au1100fb_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }
%struct.TYPE_5__ = type { i32, i8* }

@known_lcd_panels = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"No LCD panels supported by driver!\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"panel:\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Panel %s not supported!\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"nocursor\00", align 1
@nocursor = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"Cursor disabled\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"memory allocation failed\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"Unsupported option \22%s\22\00", align 1
@drv_info = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.8 = private unnamed_addr constant [17 x i8] c"Panel=%s Mode=%s\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"default\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @au1100fb_setup(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @known_lcd_panels, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %9)
  store i32 %10, i32* %5, align 4
  store i8* null, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp sle i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = call i32 @print_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EFAULT, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %109

17:                                               ; preds = %1
  %18 = load i8*, i8** %3, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %92

20:                                               ; preds = %17
  br label %21

21:                                               ; preds = %90, %20
  %22 = call i8* @strsep(i8** %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %22, i8** %4, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %91

24:                                               ; preds = %21
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @strncmp(i8* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 6)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %61, label %28

28:                                               ; preds = %24
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 6
  store i8* %30, i8** %4, align 8
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %50, %28
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %31
  %36 = load i8*, i8** %4, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @known_lcd_panels, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @strlen(i8* %43)
  %45 = call i32 @strncmp(i8* %36, i8* %42, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %35
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %7, align 4
  br label %53

49:                                               ; preds = %35
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %31

53:                                               ; preds = %47, %31
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp sge i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i8*, i8** %4, align 8
  %59 = call i32 @print_warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %57, %53
  br label %61

61:                                               ; preds = %60, %24
  %62 = load i8*, i8** %4, align 8
  %63 = call i32 @strncmp(i8* %62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 8)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load i8*, i8** %4, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 8
  store i8* %67, i8** %4, align 8
  store i32 1, i32* @nocursor, align 4
  %68 = call i32 (i8*, ...) @print_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %90

69:                                               ; preds = %61
  %70 = load i8*, i8** %4, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = call i64 @isdigit(i8 signext %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %69
  %76 = load i8*, i8** %4, align 8
  %77 = load i32, i32* @GFP_KERNEL, align 4
  %78 = call i8* @kstrdup(i8* %76, i32 %77)
  store i8* %78, i8** %6, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %85, label %81

81:                                               ; preds = %75
  %82 = call i32 @print_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %109

85:                                               ; preds = %75
  br label %89

86:                                               ; preds = %69
  %87 = load i8*, i8** %4, align 8
  %88 = call i32 @print_warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i8* %87)
  br label %89

89:                                               ; preds = %86, %85
  br label %90

90:                                               ; preds = %89, %65
  br label %21

91:                                               ; preds = %21
  br label %92

92:                                               ; preds = %91, %17
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @drv_info, i32 0, i32 0), align 8
  %94 = load i8*, i8** %6, align 8
  store i8* %94, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @drv_info, i32 0, i32 1), align 8
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** @known_lcd_panels, align 8
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @drv_info, i32 0, i32 0), align 8
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @drv_info, i32 0, i32 1), align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %92
  %104 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @drv_info, i32 0, i32 1), align 8
  br label %106

105:                                              ; preds = %92
  br label %106

106:                                              ; preds = %105, %103
  %107 = phi i8* [ %104, %103 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), %105 ]
  %108 = call i32 (i8*, ...) @print_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* %100, i8* %107)
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %106, %81, %13
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @print_err(i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @print_warn(i8*, i8*) #1

declare dso_local i32 @print_info(i8*, ...) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i8* @kstrdup(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
