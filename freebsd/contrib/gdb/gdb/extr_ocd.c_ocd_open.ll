; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ocd.c_ocd_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ocd.c_ocd_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target_ops = type { i32 }

@.str = private unnamed_addr constant [106 x i8] c"To open an OCD connection, you need to specify the\0Adevice the OCD device is attached to (e.g. /dev/ttya).\00", align 1
@current_ops = common dso_local global %struct.target_ops* null, align 8
@ocd_desc = common dso_local global i32 0, align 4
@baud_rate = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Remote target wiggler connected to \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@inferior_ptid = common dso_local global i32 0, align 4
@ocd_start_remote = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"Couldn't establish connection to remote target\0A\00", align 1
@RETURN_MASK_ALL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Failed to connect to OCD.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocd_open(i8* %0, i32 %1, i32 %2, %struct.target_ops* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.target_ops*, align 8
  %9 = alloca [10 x i8], align 1
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.target_ops* %3, %struct.target_ops** %8, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = call i32 @error(i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @target_preopen(i32 %17)
  %19 = load %struct.target_ops*, %struct.target_ops** %8, align 8
  store %struct.target_ops* %19, %struct.target_ops** @current_ops, align 8
  %20 = load %struct.target_ops*, %struct.target_ops** @current_ops, align 8
  %21 = call i32 @unpush_target(%struct.target_ops* %20)
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @serial_open(i8* %22)
  store i32 %23, i32* @ocd_desc, align 4
  %24 = load i32, i32* @ocd_desc, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %16
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @perror_with_name(i8* %27)
  br label %29

29:                                               ; preds = %26, %16
  %30 = load i32, i32* @baud_rate, align 4
  %31 = icmp ne i32 %30, -1
  br i1 %31, label %32, label %43

32:                                               ; preds = %29
  %33 = load i32, i32* @ocd_desc, align 4
  %34 = load i32, i32* @baud_rate, align 4
  %35 = call i64 @serial_setbaudrate(i32 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i32, i32* @ocd_desc, align 4
  %39 = call i32 @serial_close(i32 %38)
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @perror_with_name(i8* %40)
  br label %42

42:                                               ; preds = %37, %32
  br label %43

43:                                               ; preds = %42, %29
  %44 = load i32, i32* @ocd_desc, align 4
  %45 = call i32 @serial_raw(i32 %44)
  %46 = load i32, i32* @ocd_desc, align 4
  %47 = call i32 @serial_flush_input(i32 %46)
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = call i32 @puts_filtered(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 @puts_filtered(i8* %52)
  %54 = call i32 @puts_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %55

55:                                               ; preds = %50, %43
  %56 = load %struct.target_ops*, %struct.target_ops** @current_ops, align 8
  %57 = call i32 @push_target(%struct.target_ops* %56)
  %58 = call i32 @pid_to_ptid(i32 42000)
  store i32 %58, i32* @inferior_ptid, align 4
  %59 = load i32, i32* @ocd_start_remote, align 4
  %60 = load i32, i32* @RETURN_MASK_ALL, align 4
  %61 = call i32 @catch_errors(i32 %59, i32* %7, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %55
  %64 = call i32 (...) @pop_target()
  %65 = call i32 @error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %55
  ret void
}

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @target_preopen(i32) #1

declare dso_local i32 @unpush_target(%struct.target_ops*) #1

declare dso_local i32 @serial_open(i8*) #1

declare dso_local i32 @perror_with_name(i8*) #1

declare dso_local i64 @serial_setbaudrate(i32, i32) #1

declare dso_local i32 @serial_close(i32) #1

declare dso_local i32 @serial_raw(i32) #1

declare dso_local i32 @serial_flush_input(i32) #1

declare dso_local i32 @puts_filtered(i8*) #1

declare dso_local i32 @push_target(%struct.target_ops*) #1

declare dso_local i32 @pid_to_ptid(i32) #1

declare dso_local i32 @catch_errors(i32, i32*, i8*, i32) #1

declare dso_local i32 @pop_target(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
