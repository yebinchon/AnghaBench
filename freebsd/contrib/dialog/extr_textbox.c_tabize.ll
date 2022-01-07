; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_textbox.c_tabize.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_textbox.c_tabize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_8__ = type { i64, i32 }

@dialog_vars = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@.str = private unnamed_addr constant [32 x i8] c"Error reading file in tabize().\00", align 1
@TAB = common dso_local global i8 0, align 1
@dialog_state = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*, i64, i64*)* @tabize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tabize(%struct.TYPE_8__* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @dialog_vars, i32 0, i32 0), align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = load i64, i64* %6, align 8
  store i64 %16, i64* %4, align 8
  br label %107

17:                                               ; preds = %3
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = call i64 @ftell_obj(%struct.TYPE_8__* %18)
  store i64 %19, i64* %8, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %21, %24
  %26 = call i32 @lseek_set(%struct.TYPE_8__* %20, i64 %25)
  %27 = load i64, i64* %6, align 8
  %28 = add i64 %27, 1
  %29 = call i8* @xalloc(i64 %28)
  store i8* %29, i8** %12, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @read(i32 %32, i8* %33, i64 %34)
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %39

37:                                               ; preds = %17
  %38 = call i32 @dlg_exiterr(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %17
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %40 = load i64*, i64** %7, align 8
  %41 = icmp ne i64* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i64*, i64** %7, align 8
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %42, %39
  store i64 0, i64* %9, align 8
  br label %45

45:                                               ; preds = %97, %44
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %6, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %100

49:                                               ; preds = %45
  %50 = load i64*, i64** %7, align 8
  %51 = icmp ne i64* %50, null
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %6, align 8
  %55 = icmp sge i64 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %58 = load i8*, i8** %12, align 8
  %59 = load i64, i64* %9, align 8
  %60 = call i64 @find_first(%struct.TYPE_8__* %57, i8* %58, i64 %59)
  %61 = load i64*, i64** %7, align 8
  store i64 %60, i64* %61, align 8
  br label %100

62:                                               ; preds = %52, %49
  %63 = load i8*, i8** %12, align 8
  %64 = load i64, i64* %9, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = load i8, i8* @TAB, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %71, label %81

71:                                               ; preds = %62
  %72 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @dialog_state, i32 0, i32 0), align 8
  %73 = load i64, i64* %10, align 8
  %74 = load i64, i64* %11, align 8
  %75 = sub nsw i64 %73, %74
  %76 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @dialog_state, i32 0, i32 0), align 8
  %77 = srem i64 %75, %76
  %78 = sub nsw i64 %72, %77
  %79 = load i64, i64* %10, align 8
  %80 = add nsw i64 %79, %78
  store i64 %80, i64* %10, align 8
  br label %96

81:                                               ; preds = %62
  %82 = load i8*, i8** %12, align 8
  %83 = load i64, i64* %9, align 8
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 10
  br i1 %87, label %88, label %92

88:                                               ; preds = %81
  %89 = load i64, i64* %10, align 8
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* %10, align 8
  %91 = load i64, i64* %10, align 8
  store i64 %91, i64* %11, align 8
  br label %95

92:                                               ; preds = %81
  %93 = load i64, i64* %10, align 8
  %94 = add nsw i64 %93, 1
  store i64 %94, i64* %10, align 8
  br label %95

95:                                               ; preds = %92, %88
  br label %96

96:                                               ; preds = %95, %71
  br label %97

97:                                               ; preds = %96
  %98 = load i64, i64* %9, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* %9, align 8
  br label %45

100:                                              ; preds = %56, %45
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %102 = load i64, i64* %8, align 8
  %103 = call i32 @lseek_set(%struct.TYPE_8__* %101, i64 %102)
  %104 = load i8*, i8** %12, align 8
  %105 = call i32 @free(i8* %104)
  %106 = load i64, i64* %10, align 8
  store i64 %106, i64* %4, align 8
  br label %107

107:                                              ; preds = %100, %15
  %108 = load i64, i64* %4, align 8
  ret i64 %108
}

declare dso_local i64 @ftell_obj(%struct.TYPE_8__*) #1

declare dso_local i32 @lseek_set(%struct.TYPE_8__*, i64) #1

declare dso_local i8* @xalloc(i64) #1

declare dso_local i32 @read(i32, i8*, i64) #1

declare dso_local i32 @dlg_exiterr(i8*) #1

declare dso_local i64 @find_first(%struct.TYPE_8__*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
