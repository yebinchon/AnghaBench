; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/extr_ihex2fw.c_file_record.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/extr_ihex2fw.c_file_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ihex_binrec = type { i64, %struct.ihex_binrec* }

@records = common dso_local global %struct.ihex_binrec* null, align 8
@sort_records = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ihex_binrec*)* @file_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @file_record(%struct.ihex_binrec* %0) #0 {
  %2 = alloca %struct.ihex_binrec*, align 8
  %3 = alloca %struct.ihex_binrec**, align 8
  store %struct.ihex_binrec* %0, %struct.ihex_binrec** %2, align 8
  store %struct.ihex_binrec** @records, %struct.ihex_binrec*** %3, align 8
  br label %4

4:                                                ; preds = %24, %1
  %5 = load %struct.ihex_binrec**, %struct.ihex_binrec*** %3, align 8
  %6 = load %struct.ihex_binrec*, %struct.ihex_binrec** %5, align 8
  %7 = icmp ne %struct.ihex_binrec* %6, null
  br i1 %7, label %8, label %22

8:                                                ; preds = %4
  %9 = load i32, i32* @sort_records, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %8
  %12 = load %struct.ihex_binrec**, %struct.ihex_binrec*** %3, align 8
  %13 = load %struct.ihex_binrec*, %struct.ihex_binrec** %12, align 8
  %14 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.ihex_binrec*, %struct.ihex_binrec** %2, align 8
  %17 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %15, %18
  br label %20

20:                                               ; preds = %11, %8
  %21 = phi i1 [ true, %8 ], [ %19, %11 ]
  br label %22

22:                                               ; preds = %20, %4
  %23 = phi i1 [ false, %4 ], [ %21, %20 ]
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  %25 = load %struct.ihex_binrec**, %struct.ihex_binrec*** %3, align 8
  %26 = load %struct.ihex_binrec*, %struct.ihex_binrec** %25, align 8
  %27 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %26, i32 0, i32 1
  store %struct.ihex_binrec** %27, %struct.ihex_binrec*** %3, align 8
  br label %4

28:                                               ; preds = %22
  %29 = load %struct.ihex_binrec**, %struct.ihex_binrec*** %3, align 8
  %30 = load %struct.ihex_binrec*, %struct.ihex_binrec** %29, align 8
  %31 = load %struct.ihex_binrec*, %struct.ihex_binrec** %2, align 8
  %32 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %31, i32 0, i32 1
  store %struct.ihex_binrec* %30, %struct.ihex_binrec** %32, align 8
  %33 = load %struct.ihex_binrec*, %struct.ihex_binrec** %2, align 8
  %34 = load %struct.ihex_binrec**, %struct.ihex_binrec*** %3, align 8
  store %struct.ihex_binrec* %33, %struct.ihex_binrec** %34, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
