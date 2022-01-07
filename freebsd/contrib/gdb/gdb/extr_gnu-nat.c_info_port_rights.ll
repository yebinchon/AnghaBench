; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_info_port_rights.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_info_port_rights.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.value = type { i32 }

@PORTINFO_DETAILS = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%ld: %s.\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @info_port_rights to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @info_port_rights(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.inf*, align 8
  %6 = alloca %struct.value*, align 8
  %7 = alloca %struct.value*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = call %struct.inf* (...) @active_inf()
  store %struct.inf* %11, %struct.inf** %5, align 8
  %12 = call %struct.value* (...) @value_mark()
  store %struct.value* %12, %struct.value** %6, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %42

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %40, %15
  %17 = load i8*, i8** %3, align 8
  %18 = load i8, i8* %17, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %16
  %21 = call %struct.value* @parse_to_comma_and_eval(i8** %3)
  store %struct.value* %21, %struct.value** %7, align 8
  %22 = load %struct.value*, %struct.value** %7, align 8
  %23 = call i64 @value_as_long(%struct.value* %22)
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load %struct.inf*, %struct.inf** %5, align 8
  %26 = getelementptr inbounds %struct.inf, %struct.inf* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @PORTINFO_DETAILS, align 4
  %31 = load i32, i32* @stdout, align 4
  %32 = call i64 @print_port_info(i64 %24, i32 0, i32 %29, i32 %30, i32 %31)
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %20
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %9, align 8
  %38 = call i8* @safe_strerror(i64 %37)
  %39 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %36, i8* %38)
  br label %40

40:                                               ; preds = %35, %20
  br label %16

41:                                               ; preds = %16
  br label %59

42:                                               ; preds = %2
  %43 = load %struct.inf*, %struct.inf** %5, align 8
  %44 = getelementptr inbounds %struct.inf, %struct.inf* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @PORTINFO_DETAILS, align 4
  %50 = load i32, i32* @stdout, align 4
  %51 = call i64 @print_task_ports_info(i32 %47, i32 %48, i32 %49, i32 %50)
  store i64 %51, i64* %10, align 8
  %52 = load i64, i64* %10, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %42
  %55 = load i64, i64* %10, align 8
  %56 = call i8* @safe_strerror(i64 %55)
  %57 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %56)
  br label %58

58:                                               ; preds = %54, %42
  br label %59

59:                                               ; preds = %58, %41
  %60 = load %struct.value*, %struct.value** %6, align 8
  %61 = call i32 @value_free_to_mark(%struct.value* %60)
  ret void
}

declare dso_local %struct.inf* @active_inf(...) #1

declare dso_local %struct.value* @value_mark(...) #1

declare dso_local %struct.value* @parse_to_comma_and_eval(i8**) #1

declare dso_local i64 @value_as_long(%struct.value*) #1

declare dso_local i64 @print_port_info(i64, i32, i32, i32, i32) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i8* @safe_strerror(i64) #1

declare dso_local i64 @print_task_ports_info(i32, i32, i32, i32) #1

declare dso_local i32 @value_free_to_mark(%struct.value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
