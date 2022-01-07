; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lockspace.c_dlm_control_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lockspace.c_dlm_control_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.dlm_ls*, i8*, i64)* @dlm_control_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dlm_control_store(%struct.dlm_ls* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.dlm_ls*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  store i64 %10, i64* %8, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @simple_strtol(i8* %11, i32* null, i32 0)
  store i32 %12, i32* %9, align 4
  %13 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %14 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.dlm_ls* @dlm_find_lockspace_local(i32 %15)
  store %struct.dlm_ls* %16, %struct.dlm_ls** %5, align 8
  %17 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %18 = icmp ne %struct.dlm_ls* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i64, i64* @EINVAL, align 8
  %21 = sub i64 0, %20
  store i64 %21, i64* %4, align 8
  br label %37

22:                                               ; preds = %3
  %23 = load i32, i32* %9, align 4
  switch i32 %23, label %30 [
    i32 0, label %24
    i32 1, label %27
  ]

24:                                               ; preds = %22
  %25 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %26 = call i32 @dlm_ls_stop(%struct.dlm_ls* %25)
  br label %33

27:                                               ; preds = %22
  %28 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %29 = call i32 @dlm_ls_start(%struct.dlm_ls* %28)
  br label %33

30:                                               ; preds = %22
  %31 = load i64, i64* @EINVAL, align 8
  %32 = sub i64 0, %31
  store i64 %32, i64* %8, align 8
  br label %33

33:                                               ; preds = %30, %27, %24
  %34 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %35 = call i32 @dlm_put_lockspace(%struct.dlm_ls* %34)
  %36 = load i64, i64* %8, align 8
  store i64 %36, i64* %4, align 8
  br label %37

37:                                               ; preds = %33, %19
  %38 = load i64, i64* %4, align 8
  ret i64 %38
}

declare dso_local i32 @simple_strtol(i8*, i32*, i32) #1

declare dso_local %struct.dlm_ls* @dlm_find_lockspace_local(i32) #1

declare dso_local i32 @dlm_ls_stop(%struct.dlm_ls*) #1

declare dso_local i32 @dlm_ls_start(%struct.dlm_ls*) #1

declare dso_local i32 @dlm_put_lockspace(%struct.dlm_ls*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
