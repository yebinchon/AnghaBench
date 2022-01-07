; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_maint.c_maintenance_print_architecture.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_maint.c_maintenance_print_architecture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_file = type { i32 }

@current_gdbarch = common dso_local global i32 0, align 4
@gdb_stdout = common dso_local global %struct.ui_file* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"maintenance print architecture\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @maintenance_print_architecture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @maintenance_print_architecture(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ui_file*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i32, i32* @current_gdbarch, align 4
  %10 = load %struct.ui_file*, %struct.ui_file** @gdb_stdout, align 8
  %11 = call i32 @gdbarch_dump(i32 %9, %struct.ui_file* %10)
  br label %25

12:                                               ; preds = %2
  %13 = load i8*, i8** %3, align 8
  %14 = call %struct.ui_file* @gdb_fopen(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct.ui_file* %14, %struct.ui_file** %5, align 8
  %15 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %16 = icmp eq %struct.ui_file* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = call i32 @perror_with_name(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %12
  %20 = load i32, i32* @current_gdbarch, align 4
  %21 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %22 = call i32 @gdbarch_dump(i32 %20, %struct.ui_file* %21)
  %23 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %24 = call i32 @ui_file_delete(%struct.ui_file* %23)
  br label %25

25:                                               ; preds = %19, %8
  ret void
}

declare dso_local i32 @gdbarch_dump(i32, %struct.ui_file*) #1

declare dso_local %struct.ui_file* @gdb_fopen(i8*, i8*) #1

declare dso_local i32 @perror_with_name(i8*) #1

declare dso_local i32 @ui_file_delete(%struct.ui_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
