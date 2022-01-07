; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resbin.c_bin_to_res_menuitems.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resbin.c_bin_to_res_menuitems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.TYPE_3__*, %struct.TYPE_3__*, i64, i32*, i64, i64 }

@.str = private unnamed_addr constant [16 x i8] c"menuitem header\00", align 1
@MENUITEM_POPUP = common dso_local global i32 0, align 4
@MENUITEM_ENDMENU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_3__* (i32*, i32*, i32, i32*)* @bin_to_res_menuitems to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_3__* @bin_to_res_menuitems(i32* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca %struct.TYPE_3__**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_3__*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %10, align 8
  store %struct.TYPE_3__** %10, %struct.TYPE_3__*** %11, align 8
  %18 = load i32*, i32** %9, align 8
  store i32 0, i32* %18, align 4
  br label %19

19:                                               ; preds = %144, %4
  %20 = load i32, i32* %8, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %145

22:                                               ; preds = %19
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 4
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = call i32 @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 @toosmall(i32 %26)
  br label %28

28:                                               ; preds = %25, %22
  %29 = call i64 @res_alloc(i32 56)
  %30 = inttoptr i64 %29 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %30, %struct.TYPE_3__** %16, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 6
  store i64 0, i64* %32, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 5
  store i64 0, i64* %34, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call i64 @windres_get_16(i32* %35, i32* %36, i32 2)
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @MENUITEM_POPUP, align 4
  %41 = load i32, i32* @MENUITEM_ENDMENU, align 4
  %42 = or i32 %40, %41
  %43 = xor i32 %42, -1
  %44 = and i32 %39, %43
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* @MENUITEM_POPUP, align 4
  %49 = and i32 %47, %48
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %28
  store i32 4, i32* %15, align 4
  br label %53

52:                                               ; preds = %28
  store i32 2, i32* %15, align 4
  br label %53

53:                                               ; preds = %52, %51
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %15, align 4
  %56 = add nsw i32 %55, 2
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = call i32 @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %60 = call i32 @toosmall(i32 %59)
  br label %61

61:                                               ; preds = %58, %53
  %62 = load i32*, i32** %6, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* %15, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = call i64 @windres_get_16(i32* %62, i32* %66, i32 2)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %61
  store i32 0, i32* %13, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 4
  store i32* null, i32** %71, align 8
  br label %84

72:                                               ; preds = %61
  %73 = load i32*, i32** %6, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = load i32, i32* %15, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %15, align 4
  %80 = sub nsw i32 %78, %79
  %81 = call i32* @get_unicode(i32* %73, i32* %77, i32 %80, i32* %13)
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 4
  store i32* %81, i32** %83, align 8
  br label %84

84:                                               ; preds = %72, %69
  %85 = load i32, i32* %15, align 4
  %86 = load i32, i32* %13, align 4
  %87 = mul nsw i32 %86, 2
  %88 = add nsw i32 %85, %87
  %89 = add nsw i32 %88, 2
  store i32 %89, i32* %14, align 4
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* @MENUITEM_POPUP, align 4
  %92 = and i32 %90, %91
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %84
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 2
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %96, align 8
  %97 = load i32*, i32** %6, align 8
  %98 = load i32*, i32** %7, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 2
  %100 = call i64 @windres_get_16(i32* %97, i32* %99, i32 2)
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 3
  store i64 %100, i64* %102, align 8
  br label %120

103:                                              ; preds = %84
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 3
  store i64 0, i64* %105, align 8
  %106 = load i32*, i32** %6, align 8
  %107 = load i32*, i32** %7, align 8
  %108 = load i32, i32* %14, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %14, align 4
  %113 = sub nsw i32 %111, %112
  %114 = call %struct.TYPE_3__* @bin_to_res_menuitems(i32* %106, i32* %110, i32 %113, i32* %17)
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 2
  store %struct.TYPE_3__* %114, %struct.TYPE_3__** %116, align 8
  %117 = load i32, i32* %17, align 4
  %118 = load i32, i32* %14, align 4
  %119 = add nsw i32 %118, %117
  store i32 %119, i32* %14, align 4
  br label %120

120:                                              ; preds = %103, %94
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 1
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %122, align 8
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %124 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %11, align 8
  store %struct.TYPE_3__* %123, %struct.TYPE_3__** %124, align 8
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  store %struct.TYPE_3__** %126, %struct.TYPE_3__*** %11, align 8
  %127 = load i32, i32* %14, align 4
  %128 = load i32*, i32** %7, align 8
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  store i32* %130, i32** %7, align 8
  %131 = load i32, i32* %14, align 4
  %132 = load i32, i32* %8, align 4
  %133 = sub nsw i32 %132, %131
  store i32 %133, i32* %8, align 4
  %134 = load i32, i32* %14, align 4
  %135 = load i32*, i32** %9, align 8
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, %134
  store i32 %137, i32* %135, align 4
  %138 = load i32, i32* %12, align 4
  %139 = load i32, i32* @MENUITEM_ENDMENU, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %120
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  store %struct.TYPE_3__* %143, %struct.TYPE_3__** %5, align 8
  br label %147

144:                                              ; preds = %120
  br label %19

145:                                              ; preds = %19
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  store %struct.TYPE_3__* %146, %struct.TYPE_3__** %5, align 8
  br label %147

147:                                              ; preds = %145, %142
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  ret %struct.TYPE_3__* %148
}

declare dso_local i32 @toosmall(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @res_alloc(i32) #1

declare dso_local i64 @windres_get_16(i32*, i32*, i32) #1

declare dso_local i32* @get_unicode(i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
