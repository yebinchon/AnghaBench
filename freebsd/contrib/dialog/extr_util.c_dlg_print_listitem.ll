; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_util.c_dlg_print_listitem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_util.c_dlg_print_listitem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@A_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@tag_key_selected_attr = common dso_local global i32 0, align 4
@tag_key_attr = common dso_local global i32 0, align 4
@tag_selected_attr = common dso_local global i32 0, align 4
@tag_attr = common dso_local global i32 0, align 4
@item_selected_attr = common dso_local global i32 0, align 4
@item_attr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dlg_print_listitem(i32* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca [4 x i32], align 16
  %15 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load i32, i32* @A_NORMAL, align 4
  store i32 %16, i32* %11, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %20

20:                                               ; preds = %19, %5
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %97

23:                                               ; preds = %20
  %24 = load i8*, i8** %7, align 8
  %25 = call i32* @dlg_index_wchars(i8* %24)
  store i32* %25, i32** %15, align 8
  %26 = load i32, i32* @tag_key_selected_attr, align 4
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 3
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @tag_key_attr, align 4
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 2
  store i32 %28, i32* %29, align 8
  %30 = load i32, i32* @tag_selected_attr, align 4
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 1
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @tag_attr, align 4
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  store i32 %32, i32* %33, align 16
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %23
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 3
  %39 = load i32, i32* %38, align 4
  br label %43

40:                                               ; preds = %23
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 2
  %42 = load i32, i32* %41, align 8
  br label %43

43:                                               ; preds = %40, %37
  %44 = phi i32 [ %39, %37 ], [ %42, %40 ]
  %45 = call i32 @dlg_attrset(i32* %34, i32 %44)
  %46 = load i32*, i32** %6, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = load i32*, i32** %15, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @waddnstr(i32* %46, i8* %47, i32 %50)
  %52 = load i8*, i8** %7, align 8
  %53 = call i64 @strlen(i8* %52)
  %54 = trunc i64 %53 to i32
  %55 = load i32*, i32** %15, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp sgt i32 %54, %57
  br i1 %58, label %59, label %96

59:                                               ; preds = %43
  %60 = load i8*, i8** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @dlg_limit_columns(i8* %60, i32 %61, i32 1)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp sgt i32 %63, 1
  br i1 %64, label %65, label %95

65:                                               ; preds = %59
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 1
  %71 = load i32, i32* %70, align 4
  br label %75

72:                                               ; preds = %65
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %74 = load i32, i32* %73, align 16
  br label %75

75:                                               ; preds = %72, %69
  %76 = phi i32 [ %71, %69 ], [ %74, %72 ]
  %77 = call i32 @dlg_attrset(i32* %66, i32 %76)
  %78 = load i32*, i32** %6, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = load i32*, i32** %15, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %79, i64 %83
  %85 = load i32*, i32** %15, align 8
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %15, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = sub nsw i32 %89, %92
  %94 = call i32 @waddnstr(i32* %78, i8* %84, i32 %93)
  br label %95

95:                                               ; preds = %75, %59
  br label %96

96:                                               ; preds = %95, %43
  br label %131

97:                                               ; preds = %20
  %98 = load i32, i32* @item_selected_attr, align 4
  %99 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 1
  store i32 %98, i32* %99, align 4
  %100 = load i32, i32* @item_attr, align 4
  %101 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  store i32 %100, i32* %101, align 16
  %102 = load i8*, i8** %7, align 8
  %103 = call i32* @dlg_index_columns(i8* %102)
  store i32* %103, i32** %13, align 8
  %104 = load i8*, i8** %7, align 8
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @dlg_limit_columns(i8* %104, i32 %105, i32 0)
  store i32 %106, i32* %12, align 4
  %107 = load i32, i32* %12, align 4
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %130

109:                                              ; preds = %97
  %110 = load i32*, i32** %6, align 8
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 1
  %115 = load i32, i32* %114, align 4
  br label %119

116:                                              ; preds = %109
  %117 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %118 = load i32, i32* %117, align 16
  br label %119

119:                                              ; preds = %116, %113
  %120 = phi i32 [ %115, %113 ], [ %118, %116 ]
  %121 = call i32 @dlg_attrset(i32* %110, i32 %120)
  %122 = load i32*, i32** %6, align 8
  %123 = load i8*, i8** %7, align 8
  %124 = load i32*, i32** %13, align 8
  %125 = load i32, i32* %12, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @dlg_print_text(i32* %122, i8* %123, i32 %128, i32* %11)
  br label %130

130:                                              ; preds = %119, %97
  br label %131

131:                                              ; preds = %130, %96
  ret void
}

declare dso_local i32* @dlg_index_wchars(i8*) #1

declare dso_local i32 @dlg_attrset(i32*, i32) #1

declare dso_local i32 @waddnstr(i32*, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @dlg_limit_columns(i8*, i32, i32) #1

declare dso_local i32* @dlg_index_columns(i8*) #1

declare dso_local i32 @dlg_print_text(i32*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
