; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_tp_main.c_params_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_tp_main.c_params_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params = type { i32, i32, i32, i32, i32, i32* }

@BODY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"/dev/stdout\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.params*, i8*)* @params_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @params_init(%struct.params* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.params*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.params* %0, %struct.params** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.params*, %struct.params** %4, align 8
  %8 = getelementptr inbounds %struct.params, %struct.params* %7, i32 0, i32 0
  store i32 0, i32* %8, align 8
  %9 = load %struct.params*, %struct.params** %4, align 8
  %10 = getelementptr inbounds %struct.params, %struct.params* %9, i32 0, i32 5
  store i32* null, i32** %10, align 8
  %11 = load i32, i32* @BODY, align 4
  %12 = load %struct.params*, %struct.params** %4, align 8
  %13 = getelementptr inbounds %struct.params, %struct.params* %12, i32 0, i32 4
  store i32 %11, i32* %13, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load %struct.params*, %struct.params** %4, align 8
  %16 = getelementptr inbounds %struct.params, %struct.params* %15, i32 0, i32 1
  %17 = call i32 @argv0_to_dir(i8* %14, i32* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @atf_is_error(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %52

23:                                               ; preds = %2
  %24 = load %struct.params*, %struct.params** %4, align 8
  %25 = getelementptr inbounds %struct.params, %struct.params* %24, i32 0, i32 2
  %26 = call i32 @atf_fs_path_init_fmt(i32* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @atf_is_error(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load %struct.params*, %struct.params** %4, align 8
  %32 = getelementptr inbounds %struct.params, %struct.params* %31, i32 0, i32 1
  %33 = call i32 @atf_fs_path_fini(i32* %32)
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %52

35:                                               ; preds = %23
  %36 = load %struct.params*, %struct.params** %4, align 8
  %37 = getelementptr inbounds %struct.params, %struct.params* %36, i32 0, i32 3
  %38 = call i32 @atf_map_init(i32* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i64 @atf_is_error(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %35
  %43 = load %struct.params*, %struct.params** %4, align 8
  %44 = getelementptr inbounds %struct.params, %struct.params* %43, i32 0, i32 2
  %45 = call i32 @atf_fs_path_fini(i32* %44)
  %46 = load %struct.params*, %struct.params** %4, align 8
  %47 = getelementptr inbounds %struct.params, %struct.params* %46, i32 0, i32 1
  %48 = call i32 @atf_fs_path_fini(i32* %47)
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %52

50:                                               ; preds = %35
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %42, %30, %21
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @argv0_to_dir(i8*, i32*) #1

declare dso_local i64 @atf_is_error(i32) #1

declare dso_local i32 @atf_fs_path_init_fmt(i32*, i8*) #1

declare dso_local i32 @atf_fs_path_fini(i32*) #1

declare dso_local i32 @atf_map_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
