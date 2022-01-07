; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sysctl_check.c_sysctl_print_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sysctl_check.c_sysctl_print_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_table = type { i8*, i8* }

@.str = private unnamed_addr constant [4 x i8] c"/%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c".%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctl_table*)* @sysctl_print_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sysctl_print_path(%struct.ctl_table* %0) #0 {
  %2 = alloca %struct.ctl_table*, align 8
  %3 = alloca %struct.ctl_table*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ctl_table* %0, %struct.ctl_table** %2, align 8
  %6 = load %struct.ctl_table*, %struct.ctl_table** %2, align 8
  %7 = call i32 @sysctl_depth(%struct.ctl_table* %6)
  store i32 %7, i32* %4, align 4
  %8 = load %struct.ctl_table*, %struct.ctl_table** %2, align 8
  %9 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %37

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %33, %12
  %15 = load i32, i32* %5, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %14
  %18 = load %struct.ctl_table*, %struct.ctl_table** %2, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call %struct.ctl_table* @sysctl_parent(%struct.ctl_table* %18, i32 %19)
  store %struct.ctl_table* %20, %struct.ctl_table** %3, align 8
  %21 = load %struct.ctl_table*, %struct.ctl_table** %3, align 8
  %22 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load %struct.ctl_table*, %struct.ctl_table** %3, align 8
  %27 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  br label %30

29:                                               ; preds = %17
  br label %30

30:                                               ; preds = %29, %25
  %31 = phi i8* [ %28, %25 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %29 ]
  %32 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %31)
  br label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %5, align 4
  br label %14

36:                                               ; preds = %14
  br label %37

37:                                               ; preds = %36, %1
  %38 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %39 = load %struct.ctl_table*, %struct.ctl_table** %2, align 8
  %40 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %60

43:                                               ; preds = %37
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %56, %43
  %46 = load i32, i32* %5, align 4
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %45
  %49 = load %struct.ctl_table*, %struct.ctl_table** %2, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call %struct.ctl_table* @sysctl_parent(%struct.ctl_table* %49, i32 %50)
  store %struct.ctl_table* %51, %struct.ctl_table** %3, align 8
  %52 = load %struct.ctl_table*, %struct.ctl_table** %3, align 8
  %53 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %54)
  br label %56

56:                                               ; preds = %48
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %5, align 4
  br label %45

59:                                               ; preds = %45
  br label %60

60:                                               ; preds = %59, %37
  ret void
}

declare dso_local i32 @sysctl_depth(%struct.ctl_table*) #1

declare dso_local %struct.ctl_table* @sysctl_parent(%struct.ctl_table*, i32) #1

declare dso_local i32 @printk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
