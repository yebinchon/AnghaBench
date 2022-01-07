; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_inf_validate_procinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_inf_validate_procinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inf = type { i32, i32, i32, i32 }
%struct.procinfo = type { i32 }

@proc_server = common dso_local global i32 0, align 4
@PI_STOPPED = common dso_local global i32 0, align 4
@PI_NOMSG = common dso_local global i32 0, align 4
@PI_TRACED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inf*)* @inf_validate_procinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inf_validate_procinfo(%struct.inf* %0) #0 {
  %2 = alloca %struct.inf*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.procinfo*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.inf* %0, %struct.inf** %2, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* @proc_server, align 4
  %10 = load %struct.inf*, %struct.inf** %2, align 8
  %11 = getelementptr inbounds %struct.inf, %struct.inf* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = bitcast %struct.procinfo** %5 to i32*
  %14 = call i32 @proc_getprocinfo(i32 %9, i32 %12, i32* %7, i32* %13, i64* %6, i8** %3, i64* %4)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %71, label %17

17:                                               ; preds = %1
  %18 = load %struct.procinfo*, %struct.procinfo** %5, align 8
  %19 = getelementptr inbounds %struct.procinfo, %struct.procinfo* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @PI_STOPPED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = load %struct.inf*, %struct.inf** %2, align 8
  %28 = getelementptr inbounds %struct.inf, %struct.inf* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.procinfo*, %struct.procinfo** %5, align 8
  %30 = getelementptr inbounds %struct.procinfo, %struct.procinfo* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @PI_NOMSG, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = load %struct.inf*, %struct.inf** %2, align 8
  %39 = getelementptr inbounds %struct.inf, %struct.inf* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.inf*, %struct.inf** %2, align 8
  %41 = getelementptr inbounds %struct.inf, %struct.inf* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %17
  %45 = load %struct.procinfo*, %struct.procinfo** %5, align 8
  %46 = getelementptr inbounds %struct.procinfo, %struct.procinfo* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @PI_TRACED, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = load %struct.inf*, %struct.inf** %2, align 8
  %55 = getelementptr inbounds %struct.inf, %struct.inf* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %44, %17
  %57 = call i32 (...) @mach_task_self()
  %58 = load %struct.procinfo*, %struct.procinfo** %5, align 8
  %59 = ptrtoint %struct.procinfo* %58 to i32
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @vm_deallocate(i32 %57, i32 %59, i64 %60)
  %62 = load i64, i64* %4, align 8
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %56
  %65 = call i32 (...) @mach_task_self()
  %66 = load i8*, i8** %3, align 8
  %67 = ptrtoint i8* %66 to i32
  %68 = load i64, i64* %4, align 8
  %69 = call i32 @vm_deallocate(i32 %65, i32 %67, i64 %68)
  br label %70

70:                                               ; preds = %64, %56
  br label %71

71:                                               ; preds = %70, %1
  ret void
}

declare dso_local i32 @proc_getprocinfo(i32, i32, i32*, i32*, i64*, i8**, i64*) #1

declare dso_local i32 @vm_deallocate(i32, i32, i64) #1

declare dso_local i32 @mach_task_self(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
