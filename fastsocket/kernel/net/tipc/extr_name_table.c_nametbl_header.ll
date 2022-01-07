; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_name_table.c_nametbl_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_name_table.c_nametbl_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.print_buf = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"Type       \00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Lower      Upper      \00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Port Identity              \00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Publication\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"\0A-----------\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"--------------------- \00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"-------------------------- \00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"------------------\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.print_buf*, i32)* @nametbl_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nametbl_header(%struct.print_buf* %0, i32 %1) #0 {
  %3 = alloca %struct.print_buf*, align 8
  %4 = alloca i32, align 4
  store %struct.print_buf* %0, %struct.print_buf** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.print_buf*, %struct.print_buf** %3, align 8
  %6 = call i32 @tipc_printf(%struct.print_buf* %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* %4, align 4
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.print_buf*, %struct.print_buf** %3, align 8
  %11 = call i32 @tipc_printf(%struct.print_buf* %10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %12

12:                                               ; preds = %9, %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp sgt i32 %13, 2
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load %struct.print_buf*, %struct.print_buf** %3, align 8
  %17 = call i32 @tipc_printf(%struct.print_buf* %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i32, i32* %4, align 4
  %20 = icmp sgt i32 %19, 3
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load %struct.print_buf*, %struct.print_buf** %3, align 8
  %23 = call i32 @tipc_printf(%struct.print_buf* %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %18
  %25 = load %struct.print_buf*, %struct.print_buf** %3, align 8
  %26 = call i32 @tipc_printf(%struct.print_buf* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %27 = load i32, i32* %4, align 4
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.print_buf*, %struct.print_buf** %3, align 8
  %31 = call i32 @tipc_printf(%struct.print_buf* %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %24
  %33 = load i32, i32* %4, align 4
  %34 = icmp sgt i32 %33, 2
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load %struct.print_buf*, %struct.print_buf** %3, align 8
  %37 = call i32 @tipc_printf(%struct.print_buf* %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32, i32* %4, align 4
  %40 = icmp sgt i32 %39, 3
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load %struct.print_buf*, %struct.print_buf** %3, align 8
  %43 = call i32 @tipc_printf(%struct.print_buf* %42, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %38
  %45 = load %struct.print_buf*, %struct.print_buf** %3, align 8
  %46 = call i32 @tipc_printf(%struct.print_buf* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

declare dso_local i32 @tipc_printf(%struct.print_buf*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
