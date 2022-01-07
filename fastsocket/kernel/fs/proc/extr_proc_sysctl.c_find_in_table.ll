; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_proc_sysctl.c_find_in_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_proc_sysctl.c_find_in_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_table = type { i64, i64 }
%struct.qstr = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ctl_table* (%struct.ctl_table*, %struct.qstr*)* @find_in_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ctl_table* @find_in_table(%struct.ctl_table* %0, %struct.qstr* %1) #0 {
  %3 = alloca %struct.ctl_table*, align 8
  %4 = alloca %struct.ctl_table*, align 8
  %5 = alloca %struct.qstr*, align 8
  %6 = alloca i32, align 4
  store %struct.ctl_table* %0, %struct.ctl_table** %4, align 8
  store %struct.qstr* %1, %struct.qstr** %5, align 8
  br label %7

7:                                                ; preds = %49, %2
  %8 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %9 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %14 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %12, %7
  %18 = phi i1 [ true, %7 ], [ %16, %12 ]
  br i1 %18, label %19, label %52

19:                                               ; preds = %17
  %20 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %21 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  br label %49

25:                                               ; preds = %19
  %26 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %27 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @strlen(i64 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.qstr*, %struct.qstr** %5, align 8
  %32 = getelementptr inbounds %struct.qstr, %struct.qstr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %49

36:                                               ; preds = %25
  %37 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %38 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.qstr*, %struct.qstr** %5, align 8
  %41 = getelementptr inbounds %struct.qstr, %struct.qstr* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @memcmp(i64 %39, i32 %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %49

47:                                               ; preds = %36
  %48 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  store %struct.ctl_table* %48, %struct.ctl_table** %3, align 8
  br label %53

49:                                               ; preds = %46, %35, %24
  %50 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %51 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %50, i32 1
  store %struct.ctl_table* %51, %struct.ctl_table** %4, align 8
  br label %7

52:                                               ; preds = %17
  store %struct.ctl_table* null, %struct.ctl_table** %3, align 8
  br label %53

53:                                               ; preds = %52, %47
  %54 = load %struct.ctl_table*, %struct.ctl_table** %3, align 8
  ret %struct.ctl_table* %54
}

declare dso_local i32 @strlen(i64) #1

declare dso_local i64 @memcmp(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
