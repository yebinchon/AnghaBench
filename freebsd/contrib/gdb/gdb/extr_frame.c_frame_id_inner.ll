; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_frame.c_frame_id_inner.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_frame.c_frame_id_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_id = type { i64 }

@frame_debug = common dso_local global i64 0, align 8
@gdb_stdlog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"{ frame_id_inner (l=\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c",r=\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c") -> %d }\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @frame_id_inner(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.frame_id, align 8
  %4 = alloca %struct.frame_id, align 8
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.frame_id, %struct.frame_id* %3, i32 0, i32 0
  store i64 %0, i64* %6, align 8
  %7 = getelementptr inbounds %struct.frame_id, %struct.frame_id* %4, i32 0, i32 0
  store i64 %1, i64* %7, align 8
  %8 = getelementptr inbounds %struct.frame_id, %struct.frame_id* %3, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.frame_id, %struct.frame_id* %4, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %2
  store i32 0, i32* %5, align 4
  br label %22

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.frame_id, %struct.frame_id* %3, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.frame_id, %struct.frame_id* %4, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @INNER_THAN(i64 %18, i64 %20)
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %16, %15
  %23 = load i64, i64* @frame_debug, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %22
  %26 = load i32, i32* @gdb_stdlog, align 4
  %27 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @gdb_stdlog, align 4
  %29 = getelementptr inbounds %struct.frame_id, %struct.frame_id* %3, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @fprint_frame_id(i32 %28, i64 %30)
  %32 = load i32, i32* @gdb_stdlog, align 4
  %33 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @gdb_stdlog, align 4
  %35 = getelementptr inbounds %struct.frame_id, %struct.frame_id* %4, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @fprint_frame_id(i32 %34, i64 %36)
  %38 = load i32, i32* @gdb_stdlog, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %25, %22
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @INNER_THAN(i64, i64) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*, ...) #1

declare dso_local i32 @fprint_frame_id(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
