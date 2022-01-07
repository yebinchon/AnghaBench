; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_export.c_show_secinfo_run.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_export.c_show_secinfo_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.exp_flavor_info = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c",sec=%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c":%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.exp_flavor_info**, %struct.exp_flavor_info*)* @show_secinfo_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_secinfo_run(%struct.seq_file* %0, %struct.exp_flavor_info** %1, %struct.exp_flavor_info* %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.exp_flavor_info**, align 8
  %6 = alloca %struct.exp_flavor_info*, align 8
  %7 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store %struct.exp_flavor_info** %1, %struct.exp_flavor_info*** %5, align 8
  store %struct.exp_flavor_info* %2, %struct.exp_flavor_info** %6, align 8
  %8 = load %struct.exp_flavor_info**, %struct.exp_flavor_info*** %5, align 8
  %9 = load %struct.exp_flavor_info*, %struct.exp_flavor_info** %8, align 8
  %10 = getelementptr inbounds %struct.exp_flavor_info, %struct.exp_flavor_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %13 = load %struct.exp_flavor_info**, %struct.exp_flavor_info*** %5, align 8
  %14 = load %struct.exp_flavor_info*, %struct.exp_flavor_info** %13, align 8
  %15 = getelementptr inbounds %struct.exp_flavor_info, %struct.exp_flavor_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @seq_printf(%struct.seq_file* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.exp_flavor_info**, %struct.exp_flavor_info*** %5, align 8
  %19 = load %struct.exp_flavor_info*, %struct.exp_flavor_info** %18, align 8
  %20 = getelementptr inbounds %struct.exp_flavor_info, %struct.exp_flavor_info* %19, i32 1
  store %struct.exp_flavor_info* %20, %struct.exp_flavor_info** %18, align 8
  br label %21

21:                                               ; preds = %36, %3
  %22 = load %struct.exp_flavor_info**, %struct.exp_flavor_info*** %5, align 8
  %23 = load %struct.exp_flavor_info*, %struct.exp_flavor_info** %22, align 8
  %24 = load %struct.exp_flavor_info*, %struct.exp_flavor_info** %6, align 8
  %25 = icmp ne %struct.exp_flavor_info* %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.exp_flavor_info**, %struct.exp_flavor_info*** %5, align 8
  %29 = load %struct.exp_flavor_info*, %struct.exp_flavor_info** %28, align 8
  %30 = getelementptr inbounds %struct.exp_flavor_info, %struct.exp_flavor_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @secinfo_flags_equal(i32 %27, i32 %31)
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %26, %21
  %35 = phi i1 [ false, %21 ], [ %33, %26 ]
  br i1 %35, label %36, label %46

36:                                               ; preds = %34
  %37 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %38 = load %struct.exp_flavor_info**, %struct.exp_flavor_info*** %5, align 8
  %39 = load %struct.exp_flavor_info*, %struct.exp_flavor_info** %38, align 8
  %40 = getelementptr inbounds %struct.exp_flavor_info, %struct.exp_flavor_info* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @seq_printf(%struct.seq_file* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load %struct.exp_flavor_info**, %struct.exp_flavor_info*** %5, align 8
  %44 = load %struct.exp_flavor_info*, %struct.exp_flavor_info** %43, align 8
  %45 = getelementptr inbounds %struct.exp_flavor_info, %struct.exp_flavor_info* %44, i32 1
  store %struct.exp_flavor_info* %45, %struct.exp_flavor_info** %43, align 8
  br label %21

46:                                               ; preds = %34
  %47 = load i32, i32* %7, align 4
  ret i32 %47
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i64 @secinfo_flags_equal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
