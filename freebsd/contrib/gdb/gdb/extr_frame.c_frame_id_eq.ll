; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_frame.c_frame_id_eq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_frame.c_frame_id_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_id = type { i64, i64, i64 }

@frame_debug = common dso_local global i64 0, align 8
@gdb_stdlog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"{ frame_id_eq (l=\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c",r=\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c") -> %d }\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @frame_id_eq(%struct.frame_id* byval(%struct.frame_id) align 8 %0, %struct.frame_id* byval(%struct.frame_id) align 8 %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.frame_id, %struct.frame_id* %0, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.frame_id, %struct.frame_id* %1, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7, %2
  store i32 0, i32* %3, align 4
  br label %57

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.frame_id, %struct.frame_id* %0, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.frame_id, %struct.frame_id* %1, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %56

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.frame_id, %struct.frame_id* %0, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.frame_id, %struct.frame_id* %1, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %19
  store i32 1, i32* %3, align 4
  br label %55

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.frame_id, %struct.frame_id* %0, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.frame_id, %struct.frame_id* %1, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %30, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %54

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.frame_id, %struct.frame_id* %0, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.frame_id, %struct.frame_id* %1, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %35
  store i32 1, i32* %3, align 4
  br label %53

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.frame_id, %struct.frame_id* %0, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.frame_id, %struct.frame_id* %1, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %46, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 1, i32* %3, align 4
  br label %52

51:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %50
  br label %53

53:                                               ; preds = %52, %43
  br label %54

54:                                               ; preds = %53, %34
  br label %55

55:                                               ; preds = %54, %27
  br label %56

56:                                               ; preds = %55, %18
  br label %57

57:                                               ; preds = %56, %11
  %58 = load i64, i64* @frame_debug, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %57
  %61 = load i32, i32* @gdb_stdlog, align 4
  %62 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %61, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %63 = load i32, i32* @gdb_stdlog, align 4
  %64 = call i32 @fprint_frame_id(i32 %63, %struct.frame_id* byval(%struct.frame_id) align 8 %0)
  %65 = load i32, i32* @gdb_stdlog, align 4
  %66 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* @gdb_stdlog, align 4
  %68 = call i32 @fprint_frame_id(i32 %67, %struct.frame_id* byval(%struct.frame_id) align 8 %1)
  %69 = load i32, i32* @gdb_stdlog, align 4
  %70 = load i32, i32* %3, align 4
  %71 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %60, %57
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @fprintf_unfiltered(i32, i8*, ...) #1

declare dso_local i32 @fprint_frame_id(i32, %struct.frame_id* byval(%struct.frame_id) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
