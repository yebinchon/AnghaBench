; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_config.c_cluster_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_config.c_cluster_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_cluster = type { i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.dlm_cluster*, i32*, i32*, i32, i8*, i64)* @cluster_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cluster_set(%struct.dlm_cluster* %0, i32* %1, i32* %2, i32 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.dlm_cluster*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.dlm_cluster* %0, %struct.dlm_cluster** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %15 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %16 = call i32 @capable(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %6
  %19 = load i64, i64* @EACCES, align 8
  %20 = sub i64 0, %19
  store i64 %20, i64* %7, align 8
  br label %38

21:                                               ; preds = %6
  %22 = load i8*, i8** %12, align 8
  %23 = call i32 @simple_strtoul(i8* %22, i32* null, i32 0)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load i32, i32* %14, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i64, i64* @EINVAL, align 8
  %31 = sub i64 0, %30
  store i64 %31, i64* %7, align 8
  br label %38

32:                                               ; preds = %26, %21
  %33 = load i32, i32* %14, align 4
  %34 = load i32*, i32** %9, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %14, align 4
  %36 = load i32*, i32** %10, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i64, i64* %13, align 8
  store i64 %37, i64* %7, align 8
  br label %38

38:                                               ; preds = %32, %29, %18
  %39 = load i64, i64* %7, align 8
  ret i64 %39
}

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
