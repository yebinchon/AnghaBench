; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_proc.c_afs_proc_cell_vlservers_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_proc.c_afs_proc_cell_vlservers_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.afs_cell* }
%struct.afs_cell = type { i64, i8*, i32 }

@.str = private unnamed_addr constant [16 x i8] c"cell=%p pos=%Ld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.seq_file*, i64*)* @afs_proc_cell_vlservers_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @afs_proc_cell_vlservers_start(%struct.seq_file* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.afs_cell*, align 8
  %7 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %9 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %8, i32 0, i32 0
  %10 = load %struct.afs_cell*, %struct.afs_cell** %9, align 8
  store %struct.afs_cell* %10, %struct.afs_cell** %6, align 8
  %11 = load i64*, i64** %5, align 8
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %7, align 8
  %13 = load %struct.afs_cell*, %struct.afs_cell** %6, align 8
  %14 = load i64*, i64** %5, align 8
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @_enter(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.afs_cell* %13, i64 %15)
  %17 = load %struct.afs_cell*, %struct.afs_cell** %6, align 8
  %18 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %17, i32 0, i32 2
  %19 = call i32 @down_read(i32* %18)
  %20 = load i64, i64* %7, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i8* inttoptr (i64 1 to i8*), i8** %3, align 8
  br label %38

23:                                               ; preds = %2
  %24 = load i64, i64* %7, align 8
  %25 = add i64 %24, -1
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.afs_cell*, %struct.afs_cell** %6, align 8
  %28 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp uge i64 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i8* null, i8** %3, align 8
  br label %38

32:                                               ; preds = %23
  %33 = load %struct.afs_cell*, %struct.afs_cell** %6, align 8
  %34 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8* %37, i8** %3, align 8
  br label %38

38:                                               ; preds = %32, %31, %22
  %39 = load i8*, i8** %3, align 8
  ret i8* %39
}

declare dso_local i32 @_enter(i8*, %struct.afs_cell*, i64) #1

declare dso_local i32 @down_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
