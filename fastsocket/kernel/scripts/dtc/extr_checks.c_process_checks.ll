; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/dtc/extr_checks.c_process_checks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/dtc/extr_checks.c_process_checks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.check = type { i64 }
%struct.boot_info = type { %struct.node* }
%struct.node = type { i32 }

@check_table = common dso_local global %struct.check** null, align 8
@IGNORE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"ERROR: Input tree has errors, aborting (use -f to force output)\0A\00", align 1
@quiet = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Warning: Input tree has errors, output forced\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_checks(i32 %0, %struct.boot_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.boot_info*, align 8
  %5 = alloca %struct.node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.check*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.boot_info* %1, %struct.boot_info** %4, align 8
  %9 = load %struct.boot_info*, %struct.boot_info** %4, align 8
  %10 = getelementptr inbounds %struct.boot_info, %struct.boot_info* %9, i32 0, i32 0
  %11 = load %struct.node*, %struct.node** %10, align 8
  store %struct.node* %11, %struct.node** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %40, %2
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.check**, %struct.check*** @check_table, align 8
  %15 = call i32 @ARRAY_SIZE(%struct.check** %14)
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %43

17:                                               ; preds = %12
  %18 = load %struct.check**, %struct.check*** @check_table, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.check*, %struct.check** %18, i64 %20
  %22 = load %struct.check*, %struct.check** %21, align 8
  store %struct.check* %22, %struct.check** %8, align 8
  %23 = load %struct.check*, %struct.check** %8, align 8
  %24 = getelementptr inbounds %struct.check, %struct.check* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IGNORE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %17
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = load %struct.check*, %struct.check** %8, align 8
  %33 = load %struct.node*, %struct.node** %5, align 8
  %34 = call i64 @run_check(%struct.check* %32, %struct.node* %33)
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %31, %28
  %37 = phi i1 [ true, %28 ], [ %35, %31 ]
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %36, %17
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %12

43:                                               ; preds = %12
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %43
  %47 = load i32, i32* %3, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* @stderr, align 4
  %51 = call i32 @fprintf(i32 %50, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  %52 = call i32 @exit(i32 2) #3
  unreachable

53:                                               ; preds = %46
  %54 = load i32, i32* @quiet, align 4
  %55 = icmp slt i32 %54, 3
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* @stderr, align 4
  %58 = call i32 @fprintf(i32 %57, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %53
  br label %60

60:                                               ; preds = %59
  br label %61

61:                                               ; preds = %60, %43
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.check**) #1

declare dso_local i64 @run_check(%struct.check*, %struct.node*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
