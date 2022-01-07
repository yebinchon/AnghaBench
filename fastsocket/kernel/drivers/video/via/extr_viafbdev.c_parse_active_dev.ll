; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_viafbdev.c_parse_active_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_viafbdev.c_parse_active_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STATE_OFF = common dso_local global i8* null, align 8
@viafb_CRT_ON = common dso_local global i8* null, align 8
@viafb_DVI_ON = common dso_local global i8* null, align 8
@viafb_LCD_ON = common dso_local global i8* null, align 8
@viafb_LCD2_ON = common dso_local global i8* null, align 8
@viafb_active_dev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"CRT+DVI\00", align 1
@STATE_ON = common dso_local global i8* null, align 8
@CRT_Device = common dso_local global i32 0, align 4
@viafb_primary_dev = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"DVI+CRT\00", align 1
@DVI_Device = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"CRT+LCD\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"LCD+CRT\00", align 1
@LCD_Device = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"DVI+LCD\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"LCD+DVI\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"LCD+LCD2\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"LCD2+LCD\00", align 1
@LCD2_Device = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"CRT\00", align 1
@viafb_SAMM_ON = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [4 x i8] c"DVI\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"LCD\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @parse_active_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_active_dev() #0 {
  %1 = load i8*, i8** @STATE_OFF, align 8
  store i8* %1, i8** @viafb_CRT_ON, align 8
  %2 = load i8*, i8** @STATE_OFF, align 8
  store i8* %2, i8** @viafb_DVI_ON, align 8
  %3 = load i8*, i8** @STATE_OFF, align 8
  store i8* %3, i8** @viafb_LCD_ON, align 8
  %4 = load i8*, i8** @STATE_OFF, align 8
  store i8* %4, i8** @viafb_LCD2_ON, align 8
  %5 = load i32, i32* @viafb_active_dev, align 4
  %6 = call i32 @strncmp(i32 %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %0
  %9 = load i8*, i8** @STATE_ON, align 8
  store i8* %9, i8** @viafb_CRT_ON, align 8
  %10 = load i8*, i8** @STATE_ON, align 8
  store i8* %10, i8** @viafb_DVI_ON, align 8
  %11 = load i32, i32* @CRT_Device, align 4
  store i32 %11, i32* @viafb_primary_dev, align 4
  br label %102

12:                                               ; preds = %0
  %13 = load i32, i32* @viafb_active_dev, align 4
  %14 = call i32 @strncmp(i32 %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load i8*, i8** @STATE_ON, align 8
  store i8* %17, i8** @viafb_CRT_ON, align 8
  %18 = load i8*, i8** @STATE_ON, align 8
  store i8* %18, i8** @viafb_DVI_ON, align 8
  %19 = load i32, i32* @DVI_Device, align 4
  store i32 %19, i32* @viafb_primary_dev, align 4
  br label %101

20:                                               ; preds = %12
  %21 = load i32, i32* @viafb_active_dev, align 4
  %22 = call i32 @strncmp(i32 %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 7)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i8*, i8** @STATE_ON, align 8
  store i8* %25, i8** @viafb_CRT_ON, align 8
  %26 = load i8*, i8** @STATE_ON, align 8
  store i8* %26, i8** @viafb_LCD_ON, align 8
  %27 = load i32, i32* @CRT_Device, align 4
  store i32 %27, i32* @viafb_primary_dev, align 4
  br label %100

28:                                               ; preds = %20
  %29 = load i32, i32* @viafb_active_dev, align 4
  %30 = call i32 @strncmp(i32 %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 7)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i8*, i8** @STATE_ON, align 8
  store i8* %33, i8** @viafb_CRT_ON, align 8
  %34 = load i8*, i8** @STATE_ON, align 8
  store i8* %34, i8** @viafb_LCD_ON, align 8
  %35 = load i32, i32* @LCD_Device, align 4
  store i32 %35, i32* @viafb_primary_dev, align 4
  br label %99

36:                                               ; preds = %28
  %37 = load i32, i32* @viafb_active_dev, align 4
  %38 = call i32 @strncmp(i32 %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 7)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i8*, i8** @STATE_ON, align 8
  store i8* %41, i8** @viafb_DVI_ON, align 8
  %42 = load i8*, i8** @STATE_ON, align 8
  store i8* %42, i8** @viafb_LCD_ON, align 8
  %43 = load i32, i32* @DVI_Device, align 4
  store i32 %43, i32* @viafb_primary_dev, align 4
  br label %98

44:                                               ; preds = %36
  %45 = load i32, i32* @viafb_active_dev, align 4
  %46 = call i32 @strncmp(i32 %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 7)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i8*, i8** @STATE_ON, align 8
  store i8* %49, i8** @viafb_DVI_ON, align 8
  %50 = load i8*, i8** @STATE_ON, align 8
  store i8* %50, i8** @viafb_LCD_ON, align 8
  %51 = load i32, i32* @LCD_Device, align 4
  store i32 %51, i32* @viafb_primary_dev, align 4
  br label %97

52:                                               ; preds = %44
  %53 = load i32, i32* @viafb_active_dev, align 4
  %54 = call i32 @strncmp(i32 %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 8)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i8*, i8** @STATE_ON, align 8
  store i8* %57, i8** @viafb_LCD_ON, align 8
  %58 = load i8*, i8** @STATE_ON, align 8
  store i8* %58, i8** @viafb_LCD2_ON, align 8
  %59 = load i32, i32* @LCD_Device, align 4
  store i32 %59, i32* @viafb_primary_dev, align 4
  br label %96

60:                                               ; preds = %52
  %61 = load i32, i32* @viafb_active_dev, align 4
  %62 = call i32 @strncmp(i32 %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 8)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = load i8*, i8** @STATE_ON, align 8
  store i8* %65, i8** @viafb_LCD_ON, align 8
  %66 = load i8*, i8** @STATE_ON, align 8
  store i8* %66, i8** @viafb_LCD2_ON, align 8
  %67 = load i32, i32* @LCD2_Device, align 4
  store i32 %67, i32* @viafb_primary_dev, align 4
  br label %95

68:                                               ; preds = %60
  %69 = load i32, i32* @viafb_active_dev, align 4
  %70 = call i32 @strncmp(i32 %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 3)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %68
  %73 = load i8*, i8** @STATE_ON, align 8
  store i8* %73, i8** @viafb_CRT_ON, align 8
  %74 = load i8*, i8** @STATE_OFF, align 8
  store i8* %74, i8** @viafb_SAMM_ON, align 8
  br label %94

75:                                               ; preds = %68
  %76 = load i32, i32* @viafb_active_dev, align 4
  %77 = call i32 @strncmp(i32 %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 3)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %75
  %80 = load i8*, i8** @STATE_ON, align 8
  store i8* %80, i8** @viafb_DVI_ON, align 8
  %81 = load i8*, i8** @STATE_OFF, align 8
  store i8* %81, i8** @viafb_SAMM_ON, align 8
  br label %93

82:                                               ; preds = %75
  %83 = load i32, i32* @viafb_active_dev, align 4
  %84 = call i32 @strncmp(i32 %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 3)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %82
  %87 = load i8*, i8** @STATE_ON, align 8
  store i8* %87, i8** @viafb_LCD_ON, align 8
  %88 = load i8*, i8** @STATE_OFF, align 8
  store i8* %88, i8** @viafb_SAMM_ON, align 8
  br label %92

89:                                               ; preds = %82
  %90 = load i8*, i8** @STATE_ON, align 8
  store i8* %90, i8** @viafb_CRT_ON, align 8
  %91 = load i8*, i8** @STATE_OFF, align 8
  store i8* %91, i8** @viafb_SAMM_ON, align 8
  br label %92

92:                                               ; preds = %89, %86
  br label %93

93:                                               ; preds = %92, %79
  br label %94

94:                                               ; preds = %93, %72
  br label %95

95:                                               ; preds = %94, %64
  br label %96

96:                                               ; preds = %95, %56
  br label %97

97:                                               ; preds = %96, %48
  br label %98

98:                                               ; preds = %97, %40
  br label %99

99:                                               ; preds = %98, %32
  br label %100

100:                                              ; preds = %99, %24
  br label %101

101:                                              ; preds = %100, %16
  br label %102

102:                                              ; preds = %101, %8
  ret void
}

declare dso_local i32 @strncmp(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
