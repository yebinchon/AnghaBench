; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-lex.c_update_header_times.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-lex.c_update_header_times.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c_fileinfo = type { i32 }

@flag_detailed_statistics = common dso_local global i64 0, align 8
@body_time = common dso_local global i32 0, align 4
@header_time = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @update_header_times to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_header_times(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.c_fileinfo*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i64, i64* @flag_detailed_statistics, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %24

7:                                                ; preds = %1
  %8 = call i32 (...) @get_run_time()
  store i32 %8, i32* %3, align 4
  %9 = load i8*, i8** %2, align 8
  %10 = call %struct.c_fileinfo* @get_fileinfo(i8* %9)
  store %struct.c_fileinfo* %10, %struct.c_fileinfo** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @body_time, align 4
  %13 = sub nsw i32 %11, %12
  %14 = load i32, i32* @header_time, align 4
  %15 = add nsw i32 %14, %13
  store i32 %15, i32* @header_time, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @body_time, align 4
  %18 = sub nsw i32 %16, %17
  %19 = load %struct.c_fileinfo*, %struct.c_fileinfo** %4, align 8
  %20 = getelementptr inbounds %struct.c_fileinfo, %struct.c_fileinfo* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* %3, align 4
  store i32 %23, i32* @body_time, align 4
  br label %24

24:                                               ; preds = %7, %1
  ret void
}

declare dso_local i32 @get_run_time(...) #1

declare dso_local %struct.c_fileinfo* @get_fileinfo(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
