; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_inf_validate_task_sc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_inf_validate_task_sc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inf = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.procinfo = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@PI_FETCH_TASKINFO = common dso_local global i32 0, align 4
@proc_server = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Pid %d has an additional task suspend count of %d; clear it? \00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Additional task suspend count left untouched.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inf*)* @inf_validate_task_sc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inf_validate_task_sc(%struct.inf* %0) #0 {
  %2 = alloca %struct.inf*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.procinfo*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.inf* %0, %struct.inf** %2, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %6, align 8
  %11 = load i32, i32* @PI_FETCH_TASKINFO, align 4
  store i32 %11, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  br label %12

12:                                               ; preds = %40, %1
  %13 = load i32, i32* @proc_server, align 4
  %14 = load %struct.inf*, %struct.inf** %2, align 8
  %15 = getelementptr inbounds %struct.inf, %struct.inf* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = bitcast %struct.procinfo** %5 to i32*
  %18 = call i64 @proc_getprocinfo(i32 %13, i32 %16, i32* %7, i32* %17, i64* %6, i8** %3, i64* %4)
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %9, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %12
  %22 = load %struct.inf*, %struct.inf** %2, align 8
  %23 = getelementptr inbounds %struct.inf, %struct.inf* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  br label %98

26:                                               ; preds = %12
  %27 = load %struct.inf*, %struct.inf** %2, align 8
  %28 = getelementptr inbounds %struct.inf, %struct.inf* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.procinfo*, %struct.procinfo** %5, align 8
  %33 = getelementptr inbounds %struct.procinfo, %struct.procinfo* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %31, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %26
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.procinfo*, %struct.procinfo** %5, align 8
  %42 = getelementptr inbounds %struct.procinfo, %struct.procinfo* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %8, align 4
  br label %12

45:                                               ; preds = %37, %26
  %46 = load %struct.procinfo*, %struct.procinfo** %5, align 8
  %47 = getelementptr inbounds %struct.procinfo, %struct.procinfo* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %8, align 4
  %50 = call i32 (...) @mach_task_self()
  %51 = load %struct.procinfo*, %struct.procinfo** %5, align 8
  %52 = ptrtoint %struct.procinfo* %51 to i32
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @vm_deallocate(i32 %50, i32 %52, i64 %53)
  %55 = load i64, i64* %4, align 8
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %45
  %58 = call i32 (...) @mach_task_self()
  %59 = load %struct.procinfo*, %struct.procinfo** %5, align 8
  %60 = ptrtoint %struct.procinfo* %59 to i32
  %61 = load i64, i64* %6, align 8
  %62 = call i32 @vm_deallocate(i32 %58, i32 %60, i64 %61)
  br label %63

63:                                               ; preds = %57, %45
  %64 = load %struct.inf*, %struct.inf** %2, align 8
  %65 = getelementptr inbounds %struct.inf, %struct.inf* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %98

71:                                               ; preds = %63
  %72 = call i32 (...) @target_terminal_ours()
  %73 = load %struct.inf*, %struct.inf** %2, align 8
  %74 = getelementptr inbounds %struct.inf, %struct.inf* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.inf*, %struct.inf** %2, align 8
  %78 = getelementptr inbounds %struct.inf, %struct.inf* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %76, %81
  %83 = call i32 @query(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %75, i32 %82)
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  store i32 %86, i32* %10, align 4
  %87 = call i32 (...) @target_terminal_inferior()
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %71
  %91 = call i32 @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %71
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.inf*, %struct.inf** %2, align 8
  %95 = getelementptr inbounds %struct.inf, %struct.inf* %94, i32 0, i32 0
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  store i32 %93, i32* %97, align 4
  br label %98

98:                                               ; preds = %21, %92, %63
  ret void
}

declare dso_local i64 @proc_getprocinfo(i32, i32, i32*, i32*, i64*, i8**, i64*) #1

declare dso_local i32 @vm_deallocate(i32, i32, i64) #1

declare dso_local i32 @mach_task_self(...) #1

declare dso_local i32 @target_terminal_ours(...) #1

declare dso_local i32 @query(i8*, i32, i32) #1

declare dso_local i32 @target_terminal_inferior(...) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
