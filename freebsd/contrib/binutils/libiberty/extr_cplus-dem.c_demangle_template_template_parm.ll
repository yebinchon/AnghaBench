; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cplus-dem.c_demangle_template_template_parm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cplus-dem.c_demangle_template_template_parm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_stuff = type { i32 }
%struct.TYPE_8__ = type { i8* }

@.str = private unnamed_addr constant [11 x i8] c"template <\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"> class\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.work_stuff*, i8**, %struct.TYPE_8__*)* @demangle_template_template_parm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @demangle_template_template_parm(%struct.work_stuff* %0, i8** %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca %struct.work_stuff*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__, align 8
  store %struct.work_stuff* %0, %struct.work_stuff** %4, align 8
  store i8** %1, i8*** %5, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %13 = call i32 @string_append(%struct.TYPE_8__* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %14 = load i8**, i8*** %5, align 8
  %15 = call i64 @get_count(i8** %14, i32* %8)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %79

17:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %75, %17
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %78

22:                                               ; preds = %18
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %27 = call i32 @string_append(%struct.TYPE_8__* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i8**, i8*** %5, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 90
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load i8**, i8*** %5, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %35, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %39 = call i32 @string_append(%struct.TYPE_8__* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %74

40:                                               ; preds = %28
  %41 = load i8**, i8*** %5, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 122
  br i1 %45, label %46, label %58

46:                                               ; preds = %40
  %47 = load i8**, i8*** %5, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %47, align 8
  %50 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %51 = load i8**, i8*** %5, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %53 = call i32 @demangle_template_template_parm(%struct.work_stuff* %50, i8** %51, %struct.TYPE_8__* %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %46
  br label %78

57:                                               ; preds = %46
  br label %73

58:                                               ; preds = %40
  %59 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %60 = load i8**, i8*** %5, align 8
  %61 = call i32 @do_type(%struct.work_stuff* %59, i8** %60, %struct.TYPE_8__* %11)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %66 = call i32 @string_appends(%struct.TYPE_8__* %65, %struct.TYPE_8__* %11)
  br label %67

67:                                               ; preds = %64, %58
  %68 = call i32 @string_delete(%struct.TYPE_8__* %11)
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  br label %78

72:                                               ; preds = %67
  br label %73

73:                                               ; preds = %72, %57
  br label %74

74:                                               ; preds = %73, %34
  store i32 1, i32* %9, align 4
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %18

78:                                               ; preds = %71, %56, %18
  br label %79

79:                                               ; preds = %78, %3
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 -1
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 62
  br i1 %86, label %87, label %90

87:                                               ; preds = %79
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %89 = call i32 @string_append(%struct.TYPE_8__* %88, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %90

90:                                               ; preds = %87, %79
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %92 = call i32 @string_append(%struct.TYPE_8__* %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %93 = load i32, i32* %10, align 4
  ret i32 %93
}

declare dso_local i32 @string_append(%struct.TYPE_8__*, i8*) #1

declare dso_local i64 @get_count(i8**, i32*) #1

declare dso_local i32 @do_type(%struct.work_stuff*, i8**, %struct.TYPE_8__*) #1

declare dso_local i32 @string_appends(%struct.TYPE_8__*, %struct.TYPE_8__*) #1

declare dso_local i32 @string_delete(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
