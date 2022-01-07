; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_modpost.c_read_markers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_modpost.c_read_markers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32 }

@have_vmlinux = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"parse error in markers list file\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @read_markers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_markers(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.module*, align 8
  store i8* %0, i8** %2, align 8
  store i64 0, i64* %4, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = call i8* @grab_file(i8* %11, i64* %3)
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %84

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %77, %16
  %18 = load i8*, i8** %5, align 8
  %19 = load i64, i64* %3, align 8
  %20 = call i8* @get_next_line(i64* %4, i8* %18, i64 %19)
  store i8* %20, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %78

22:                                               ; preds = %17
  %23 = load i8*, i8** %6, align 8
  store i8* %23, i8** %7, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i8* @strchr(i8* %24, i8 signext 9)
  store i8* %25, i8** %8, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  br label %82

29:                                               ; preds = %22
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %8, align 8
  store i8 0, i8* %30, align 1
  %32 = load i8*, i8** %8, align 8
  %33 = call i8* @strchr(i8* %32, i8 signext 9)
  store i8* %33, i8** %9, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  br label %82

37:                                               ; preds = %29
  %38 = load i8*, i8** %9, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %9, align 8
  store i8 0, i8* %38, align 1
  %40 = load i8*, i8** %7, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %37
  %45 = load i8*, i8** %8, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44, %37
  br label %82

50:                                               ; preds = %44
  %51 = load i8*, i8** %8, align 8
  %52 = call %struct.module* @find_module(i8* %51)
  store %struct.module* %52, %struct.module** %10, align 8
  %53 = load %struct.module*, %struct.module** %10, align 8
  %54 = icmp ne %struct.module* %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = load i8*, i8** %8, align 8
  %57 = call %struct.module* @new_module(i8* %56)
  store %struct.module* %57, %struct.module** %10, align 8
  %58 = load %struct.module*, %struct.module** %10, align 8
  %59 = getelementptr inbounds %struct.module, %struct.module* %58, i32 0, i32 0
  store i32 1, i32* %59, align 4
  br label %60

60:                                               ; preds = %55, %50
  %61 = load i8*, i8** %8, align 8
  %62 = call i64 @is_vmlinux(i8* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  store i32 1, i32* @have_vmlinux, align 4
  %65 = load %struct.module*, %struct.module** %10, align 8
  %66 = getelementptr inbounds %struct.module, %struct.module* %65, i32 0, i32 0
  store i32 0, i32* %66, align 4
  br label %67

67:                                               ; preds = %64, %60
  %68 = load %struct.module*, %struct.module** %10, align 8
  %69 = getelementptr inbounds %struct.module, %struct.module* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %67
  %73 = load %struct.module*, %struct.module** %10, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = call i32 @add_marker(%struct.module* %73, i8* %74, i8* %75)
  br label %77

77:                                               ; preds = %72, %67
  br label %17

78:                                               ; preds = %17
  %79 = load i8*, i8** %5, align 8
  %80 = load i64, i64* %3, align 8
  %81 = call i32 @release_file(i8* %79, i64 %80)
  br label %84

82:                                               ; preds = %49, %36, %28
  %83 = call i32 @fatal(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %78, %15
  ret void
}

declare dso_local i8* @grab_file(i8*, i64*) #1

declare dso_local i8* @get_next_line(i64*, i8*, i64) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local %struct.module* @find_module(i8*) #1

declare dso_local %struct.module* @new_module(i8*) #1

declare dso_local i64 @is_vmlinux(i8*) #1

declare dso_local i32 @add_marker(%struct.module*, i8*, i8*) #1

declare dso_local i32 @release_file(i8*, i64) #1

declare dso_local i32 @fatal(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
