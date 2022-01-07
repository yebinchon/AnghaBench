; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_file2alias.c_do_dmi_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_file2alias.c_do_dmi_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i8* }
%struct.dmi_system_id = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }

@.str = private unnamed_addr constant [5 x i8] c"dmi*\00", align 1
@dmi_fields = common dso_local global %struct.TYPE_5__* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c":%s*\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c":\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.dmi_system_id*, i8*)* @do_dmi_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_dmi_entry(i8* %0, %struct.dmi_system_id* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dmi_system_id*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.dmi_system_id* %1, %struct.dmi_system_id** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call i32 (i8*, i8*, ...) @sprintf(i8* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %80, %3
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** @dmi_fields, align 8
  %14 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %13)
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %83

16:                                               ; preds = %11
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %76, %16
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 4
  br i1 %19, label %20, label %79

20:                                               ; preds = %17
  %21 = load %struct.dmi_system_id*, %struct.dmi_system_id** %5, align 8
  %22 = getelementptr inbounds %struct.dmi_system_id, %struct.dmi_system_id* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %75

30:                                               ; preds = %20
  %31 = load %struct.dmi_system_id*, %struct.dmi_system_id** %5, align 8
  %32 = getelementptr inbounds %struct.dmi_system_id, %struct.dmi_system_id* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** @dmi_fields, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %38, %44
  br i1 %45, label %46, label %75

46:                                               ; preds = %30
  %47 = load i8*, i8** %6, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @strlen(i8* %48)
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %47, i64 %50
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** @dmi_fields, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 (i8*, i8*, ...) @sprintf(i8* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %57)
  %59 = load i8*, i8** %6, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 @strlen(i8* %60)
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %59, i64 %62
  %64 = load %struct.dmi_system_id*, %struct.dmi_system_id** %5, align 8
  %65 = getelementptr inbounds %struct.dmi_system_id, %struct.dmi_system_id* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @dmi_ascii_filter(i8* %63, i32 %71)
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @strcat(i8* %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %75

75:                                               ; preds = %46, %30, %20
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %17

79:                                               ; preds = %17
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %7, align 4
  br label %11

83:                                               ; preds = %11
  %84 = load i8*, i8** %6, align 8
  %85 = call i32 @strcat(i8* %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  ret i32 1
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @dmi_ascii_filter(i8*, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
