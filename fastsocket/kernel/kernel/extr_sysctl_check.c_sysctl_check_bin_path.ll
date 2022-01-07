; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sysctl_check.c_sysctl_check_bin_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sysctl_check.c_sysctl_check_bin_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_table = type { i64, i32 }
%struct.trans_ctl_table = type { i64, i64 }

@.str = private unnamed_addr constant [27 x i8] c"Unknown sysctl binary path\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"procname does not match binary path procname\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"ctl_name does not match binary path ctl_name\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctl_table*, i8**)* @sysctl_check_bin_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sysctl_check_bin_path(%struct.ctl_table* %0, i8** %1) #0 {
  %3 = alloca %struct.ctl_table*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.trans_ctl_table*, align 8
  store %struct.ctl_table* %0, %struct.ctl_table** %3, align 8
  store i8** %1, i8*** %4, align 8
  %6 = load %struct.ctl_table*, %struct.ctl_table** %3, align 8
  %7 = call %struct.trans_ctl_table* @sysctl_binary_lookup(%struct.ctl_table* %6)
  store %struct.trans_ctl_table* %7, %struct.trans_ctl_table** %5, align 8
  %8 = load %struct.ctl_table*, %struct.ctl_table** %3, align 8
  %9 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.trans_ctl_table*, %struct.trans_ctl_table** %5, align 8
  %14 = icmp ne %struct.trans_ctl_table* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = load i8**, i8*** %4, align 8
  %17 = load %struct.ctl_table*, %struct.ctl_table** %3, align 8
  %18 = call i32 @set_fail(i8** %16, %struct.ctl_table* %17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %15, %12, %2
  %20 = load %struct.trans_ctl_table*, %struct.trans_ctl_table** %5, align 8
  %21 = icmp ne %struct.trans_ctl_table* %20, null
  br i1 %21, label %22, label %68

22:                                               ; preds = %19
  %23 = load %struct.trans_ctl_table*, %struct.trans_ctl_table** %5, align 8
  %24 = getelementptr inbounds %struct.trans_ctl_table, %struct.trans_ctl_table* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %22
  %28 = load %struct.ctl_table*, %struct.ctl_table** %3, align 8
  %29 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load %struct.ctl_table*, %struct.ctl_table** %3, align 8
  %34 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.trans_ctl_table*, %struct.trans_ctl_table** %5, align 8
  %37 = getelementptr inbounds %struct.trans_ctl_table, %struct.trans_ctl_table* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @strcmp(i32 %35, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %32, %27
  %42 = load i8**, i8*** %4, align 8
  %43 = load %struct.ctl_table*, %struct.ctl_table** %3, align 8
  %44 = call i32 @set_fail(i8** %42, %struct.ctl_table* %43, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %41, %32, %22
  %46 = load %struct.trans_ctl_table*, %struct.trans_ctl_table** %5, align 8
  %47 = getelementptr inbounds %struct.trans_ctl_table, %struct.trans_ctl_table* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %45
  %51 = load %struct.ctl_table*, %struct.ctl_table** %3, align 8
  %52 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %50
  %56 = load %struct.ctl_table*, %struct.ctl_table** %3, align 8
  %57 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.trans_ctl_table*, %struct.trans_ctl_table** %5, align 8
  %60 = getelementptr inbounds %struct.trans_ctl_table, %struct.trans_ctl_table* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %58, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %55
  %64 = load i8**, i8*** %4, align 8
  %65 = load %struct.ctl_table*, %struct.ctl_table** %3, align 8
  %66 = call i32 @set_fail(i8** %64, %struct.ctl_table* %65, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %67

67:                                               ; preds = %63, %55, %50, %45
  br label %68

68:                                               ; preds = %67, %19
  ret void
}

declare dso_local %struct.trans_ctl_table* @sysctl_binary_lookup(%struct.ctl_table*) #1

declare dso_local i32 @set_fail(i8**, %struct.ctl_table*, i8*) #1

declare dso_local i64 @strcmp(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
