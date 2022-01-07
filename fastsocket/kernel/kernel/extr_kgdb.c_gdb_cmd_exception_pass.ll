; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_kgdb.c_gdb_cmd_exception_pass.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_kgdb.c_gdb_cmd_exception_pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kgdb_state = type { i32 }

@remcom_in_buffer = common dso_local global i8* null, align 8
@kgdb_connected = common dso_local global i64 0, align 8
@remcom_out_buffer = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kgdb_state*)* @gdb_cmd_exception_pass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gdb_cmd_exception_pass(%struct.kgdb_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kgdb_state*, align 8
  store %struct.kgdb_state* %0, %struct.kgdb_state** %3, align 8
  %4 = load i8*, i8** @remcom_in_buffer, align 8
  %5 = getelementptr inbounds i8, i8* %4, i64 1
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 48
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = load i8*, i8** @remcom_in_buffer, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 2
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 57
  br i1 %14, label %15, label %20

15:                                               ; preds = %9
  %16 = load %struct.kgdb_state*, %struct.kgdb_state** %3, align 8
  %17 = getelementptr inbounds %struct.kgdb_state, %struct.kgdb_state* %16, i32 0, i32 0
  store i32 1, i32* %17, align 4
  %18 = load i8*, i8** @remcom_in_buffer, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  store i8 99, i8* %19, align 1
  br label %43

20:                                               ; preds = %9, %1
  %21 = load i8*, i8** @remcom_in_buffer, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 49
  br i1 %25, label %26, label %38

26:                                               ; preds = %20
  %27 = load i8*, i8** @remcom_in_buffer, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 2
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 53
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load %struct.kgdb_state*, %struct.kgdb_state** %3, align 8
  %34 = getelementptr inbounds %struct.kgdb_state, %struct.kgdb_state* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  %35 = load i8*, i8** @remcom_in_buffer, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  store i8 68, i8* %36, align 1
  %37 = call i32 (...) @remove_all_break()
  store i64 0, i64* @kgdb_connected, align 8
  store i32 1, i32* %2, align 4
  br label %44

38:                                               ; preds = %26, %20
  %39 = load i32, i32* @remcom_out_buffer, align 4
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  %42 = call i32 @error_packet(i32 %39, i32 %41)
  store i32 0, i32* %2, align 4
  br label %44

43:                                               ; preds = %15
  store i32 -1, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %38, %32
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @remove_all_break(...) #1

declare dso_local i32 @error_packet(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
