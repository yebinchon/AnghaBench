; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_procfs.c_info_proc_mappings.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_procfs.c_info_proc_mappings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_PTR_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"\09%10s %10s %10s %10s %7s\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"  %18s %18s %10s %10s %7s\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Mapped address spaces:\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Start Addr\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"  End Addr\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"      Size\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"    Offset\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"Flags\00", align 1
@info_mappings_callback = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @info_proc_mappings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @info_proc_mappings(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @TARGET_PTR_BIT, align 4
  %7 = icmp eq i32 %6, 32
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %10

9:                                                ; preds = %2
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %10

10:                                               ; preds = %9, %8
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  br label %22

14:                                               ; preds = %10
  %15 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 (i8*, ...) @printf_filtered(i8* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* @info_mappings_callback, align 4
  %20 = call i32 @iterate_over_mappings(i32* %18, i32* null, i32* null, i32 %19)
  %21 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %22

22:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @printf_filtered(i8*, ...) #1

declare dso_local i32 @iterate_over_mappings(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
