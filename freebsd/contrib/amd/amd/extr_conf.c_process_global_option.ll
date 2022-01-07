; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_conf.c_process_global_option.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_conf.c_process_global_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._func_map = type { i32 (i8*)*, i64 }

@glob_functable = common dso_local global %struct._func_map* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"conf: unknown global key: \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @process_global_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_global_option(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._func_map*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load i8*, i8** %5, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9, %2
  store i32 1, i32* %3, align 4
  br label %44

16:                                               ; preds = %9
  %17 = load %struct._func_map*, %struct._func_map** @glob_functable, align 8
  store %struct._func_map* %17, %struct._func_map** %6, align 8
  br label %18

18:                                               ; preds = %37, %16
  %19 = load %struct._func_map*, %struct._func_map** %6, align 8
  %20 = getelementptr inbounds %struct._func_map, %struct._func_map* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %18
  %24 = load %struct._func_map*, %struct._func_map** %6, align 8
  %25 = getelementptr inbounds %struct._func_map, %struct._func_map* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = call i64 @FSTREQ(i64 %26, i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = load %struct._func_map*, %struct._func_map** %6, align 8
  %32 = getelementptr inbounds %struct._func_map, %struct._func_map* %31, i32 0, i32 0
  %33 = load i32 (i8*)*, i32 (i8*)** %32, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 %33(i8* %34)
  store i32 %35, i32* %3, align 4
  br label %44

36:                                               ; preds = %23
  br label %37

37:                                               ; preds = %36
  %38 = load %struct._func_map*, %struct._func_map** %6, align 8
  %39 = getelementptr inbounds %struct._func_map, %struct._func_map* %38, i32 1
  store %struct._func_map* %39, %struct._func_map** %6, align 8
  br label %18

40:                                               ; preds = %18
  %41 = load i32, i32* @stderr, align 4
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 @fprintf(i32 %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %42)
  store i32 1, i32* %3, align 4
  br label %44

44:                                               ; preds = %40, %30, %15
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i64 @FSTREQ(i64, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
