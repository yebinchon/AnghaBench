; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_debug_fs.c_print_format1_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_debug_fs.c_print_format1_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.dlm_lkb = type { i64, i64, i64, i32, i32, i32, i32 }
%struct.dlm_rsb = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c"%08x %s\00", align 1
@DLM_LKSTS_CONVERT = common dso_local global i64 0, align 8
@DLM_LKSTS_WAITING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c" (%s)\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c" Remote: %3d %08x\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c" Master:     %08x\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c" wait_type: %d\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.dlm_lkb*, %struct.dlm_rsb*)* @print_format1_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_format1_lock(%struct.seq_file* %0, %struct.dlm_lkb* %1, %struct.dlm_rsb* %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.dlm_lkb*, align 8
  %6 = alloca %struct.dlm_rsb*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store %struct.dlm_lkb* %1, %struct.dlm_lkb** %5, align 8
  store %struct.dlm_rsb* %2, %struct.dlm_rsb** %6, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %8 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %9 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %12 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @print_lockmode(i32 %13)
  %15 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %14)
  %16 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %17 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DLM_LKSTS_CONVERT, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %3
  %22 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %23 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DLM_LKSTS_WAITING, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %21, %3
  %28 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %29 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %30 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @print_lockmode(i32 %31)
  %33 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %27, %21
  %35 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %36 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %63

39:                                               ; preds = %34
  %40 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %41 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %44 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %39
  %48 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %49 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %50 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %53 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 %51, i32 %54)
  br label %62

56:                                               ; preds = %39
  %57 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %58 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %59 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %57, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %56, %47
  br label %63

63:                                               ; preds = %62, %34
  %64 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %65 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %70 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %71 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %69, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i64 %72)
  br label %74

74:                                               ; preds = %68, %63
  %75 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %76 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  ret i32 %76
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @print_lockmode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
