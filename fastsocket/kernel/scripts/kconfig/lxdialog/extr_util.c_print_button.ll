; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/lxdialog/extr_util.c_print_button.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/lxdialog/extr_util.c_print_button.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@dlg = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@.str = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c">\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_button(i32* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @wmove(i32* %13, i32 %14, i32 %15)
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @dlg, i32 0, i32 1, i32 0), align 4
  br label %24

22:                                               ; preds = %5
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @dlg, i32 0, i32 0, i32 0), align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = call i32 @wattrset(i32* %17, i32 %25)
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @waddstr(i32* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @strspn(i8* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i8*, i8** %7, align 8
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  store i8* %34, i8** %7, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %24
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @dlg, i32 0, i32 3, i32 0), align 4
  br label %42

40:                                               ; preds = %24
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @dlg, i32 0, i32 2, i32 0), align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  %44 = call i32 @wattrset(i32* %35, i32 %43)
  store i32 0, i32* %11, align 4
  br label %45

45:                                               ; preds = %52, %42
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @waddch(i32* %50, i8 signext 32)
  br label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %11, align 4
  br label %45

55:                                               ; preds = %45
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @dlg, i32 0, i32 5, i32 0), align 4
  br label %63

61:                                               ; preds = %55
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @dlg, i32 0, i32 4, i32 0), align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  %65 = call i32 @wattrset(i32* %56, i32 %64)
  %66 = load i32*, i32** %6, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  %69 = load i8, i8* %68, align 1
  %70 = call i32 @waddch(i32* %66, i8 signext %69)
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %63
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @dlg, i32 0, i32 3, i32 0), align 4
  br label %78

76:                                               ; preds = %63
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @dlg, i32 0, i32 2, i32 0), align 4
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i32 [ %75, %74 ], [ %77, %76 ]
  %80 = call i32 @wattrset(i32* %71, i32 %79)
  %81 = load i32*, i32** %6, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  %84 = call i32 @waddstr(i32* %81, i8* %83)
  %85 = load i32*, i32** %6, align 8
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %78
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @dlg, i32 0, i32 1, i32 0), align 4
  br label %92

90:                                               ; preds = %78
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @dlg, i32 0, i32 0, i32 0), align 4
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi i32 [ %89, %88 ], [ %91, %90 ]
  %94 = call i32 @wattrset(i32* %85, i32 %93)
  %95 = load i32*, i32** %6, align 8
  %96 = call i32 @waddstr(i32* %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %97 = load i32*, i32** %6, align 8
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %99, %100
  %102 = add nsw i32 %101, 1
  %103 = call i32 @wmove(i32* %97, i32 %98, i32 %102)
  ret void
}

declare dso_local i32 @wmove(i32*, i32, i32) #1

declare dso_local i32 @wattrset(i32*, i32) #1

declare dso_local i32 @waddstr(i32*, i8*) #1

declare dso_local i32 @strspn(i8*, i8*) #1

declare dso_local i32 @waddch(i32*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
