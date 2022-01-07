; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_frame.c_frame_id_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_frame.c_frame_id_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_id = type { i64 }

@frame_debug = common dso_local global i64 0, align 8
@gdb_stdlog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"{ frame_id_p (l=\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c") -> %d }\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @frame_id_p(i64 %0) #0 {
  %2 = alloca %struct.frame_id, align 8
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.frame_id, %struct.frame_id* %2, i32 0, i32 0
  store i64 %0, i64* %4, align 8
  %5 = getelementptr inbounds %struct.frame_id, %struct.frame_id* %2, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  %8 = zext i1 %7 to i32
  store i32 %8, i32* %3, align 4
  %9 = load i64, i64* @frame_debug, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load i32, i32* @gdb_stdlog, align 4
  %13 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @gdb_stdlog, align 4
  %15 = getelementptr inbounds %struct.frame_id, %struct.frame_id* %2, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @fprint_frame_id(i32 %14, i64 %16)
  %18 = load i32, i32* @gdb_stdlog, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %11, %1
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @fprintf_unfiltered(i32, i8*, ...) #1

declare dso_local i32 @fprint_frame_id(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
