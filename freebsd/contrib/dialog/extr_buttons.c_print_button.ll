; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_buttons.c_print_button.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_buttons.c_print_button.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@button_key_active_attr = common dso_local global i32 0, align 4
@button_key_inactive_attr = common dso_local global i32 0, align 4
@button_label_active_attr = common dso_local global i32 0, align 4
@button_label_inactive_attr = common dso_local global i32 0, align 4
@button_active_attr = common dso_local global i32 0, align 4
@button_inactive_attr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"<\00", align 1
@sHAD_KEY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32, i32, i32, i32)* @print_button to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_button(i32* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
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
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 129, i32* %14, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = call i32* @dlg_index_wchars(i8* %22)
  store i32* %23, i32** %15, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @dlg_count_wchars(i8* %24)
  store i32 %25, i32* %16, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %6
  %29 = load i32, i32* @button_key_active_attr, align 4
  br label %32

30:                                               ; preds = %6
  %31 = load i32, i32* @button_key_inactive_attr, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  store i32 %33, i32* %17, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @button_label_active_attr, align 4
  br label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @button_label_inactive_attr, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  store i32 %41, i32* %18, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @wmove(i32* %42, i32 %43, i32 %44)
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load i32, i32* @button_active_attr, align 4
  br label %53

51:                                               ; preds = %40
  %52 = load i32, i32* @button_inactive_attr, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  %55 = call i32 @dlg_attrset(i32* %46, i32 %54)
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @waddstr(i32* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %18, align 4
  %60 = call i32 @dlg_attrset(i32* %58, i32 %59)
  store i32 0, i32* %13, align 4
  br label %61

61:                                               ; preds = %109, %53
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %16, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %112

65:                                               ; preds = %61
  %66 = load i32*, i32** %15, align 8
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %20, align 4
  %71 = load i32*, i32** %15, align 8
  %72 = load i32, i32* %13, align 4
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %21, align 4
  %77 = load i32, i32* %14, align 4
  switch i32 %77, label %98 [
    i32 129, label %78
    i32 128, label %93
  ]

78:                                               ; preds = %65
  %79 = load i8*, i8** %8, align 8
  %80 = load i32, i32* %20, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = call i32 @UCH(i8 signext %83)
  store i32 %84, i32* %19, align 4
  %85 = load i32, i32* %19, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %78
  %89 = load i32*, i32** %7, align 8
  %90 = load i32, i32* %17, align 4
  %91 = call i32 @dlg_attrset(i32* %89, i32 %90)
  store i32 128, i32* %14, align 4
  br label %92

92:                                               ; preds = %88, %78
  br label %99

93:                                               ; preds = %65
  %94 = load i32*, i32** %7, align 8
  %95 = load i32, i32* %18, align 4
  %96 = call i32 @dlg_attrset(i32* %94, i32 %95)
  %97 = load i32, i32* @sHAD_KEY, align 4
  store i32 %97, i32* %14, align 4
  br label %99

98:                                               ; preds = %65
  br label %99

99:                                               ; preds = %98, %93, %92
  %100 = load i32*, i32** %7, align 8
  %101 = load i8*, i8** %8, align 8
  %102 = load i32, i32* %20, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  %105 = load i32, i32* %21, align 4
  %106 = load i32, i32* %20, align 4
  %107 = sub nsw i32 %105, %106
  %108 = call i32 @waddnstr(i32* %100, i8* %104, i32 %107)
  br label %109

109:                                              ; preds = %99
  %110 = load i32, i32* %13, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %13, align 4
  br label %61

112:                                              ; preds = %61
  %113 = load i32*, i32** %7, align 8
  %114 = load i32, i32* %12, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = load i32, i32* @button_active_attr, align 4
  br label %120

118:                                              ; preds = %112
  %119 = load i32, i32* @button_inactive_attr, align 4
  br label %120

120:                                              ; preds = %118, %116
  %121 = phi i32 [ %117, %116 ], [ %119, %118 ]
  %122 = call i32 @dlg_attrset(i32* %113, i32 %121)
  %123 = load i32*, i32** %7, align 8
  %124 = call i32 @waddstr(i32* %123, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %125 = load i32*, i32** %7, align 8
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* %11, align 4
  %128 = load i8*, i8** %8, align 8
  %129 = add nsw i32 %127, ptrtoint ([2 x i8]* @.str.2 to i32)
  %130 = add nsw i32 %129, 1
  %131 = call i32 @wmove(i32* %125, i32 %126, i32 %130)
  ret void
}

declare dso_local i32* @dlg_index_wchars(i8*) #1

declare dso_local i32 @dlg_count_wchars(i8*) #1

declare dso_local i32 @wmove(i32*, i32, i32) #1

declare dso_local i32 @dlg_attrset(i32*, i32) #1

declare dso_local i32 @waddstr(i32*, i8*) #1

declare dso_local i32 @UCH(i8 signext) #1

declare dso_local i32 @waddnstr(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
