; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_debug_fs.c_table_seq_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_debug_fs.c_table_seq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.rsbtbl_iter = type { i32, i32, i32 }

@.str = private unnamed_addr constant [87 x i8] c"id nodeid remid pid xid exflags flags sts grmode rqmode time_ms r_nodeid r_len r_name\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"version rsb 1.1 lvb 1.1 lkb 1.1\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @table_seq_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @table_seq_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rsbtbl_iter*, align 8
  %6 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.rsbtbl_iter*
  store %struct.rsbtbl_iter* %8, %struct.rsbtbl_iter** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.rsbtbl_iter*, %struct.rsbtbl_iter** %5, align 8
  %10 = getelementptr inbounds %struct.rsbtbl_iter, %struct.rsbtbl_iter* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %50 [
    i32 1, label %12
    i32 2, label %18
    i32 3, label %34
  ]

12:                                               ; preds = %2
  %13 = load %struct.rsbtbl_iter*, %struct.rsbtbl_iter** %5, align 8
  %14 = getelementptr inbounds %struct.rsbtbl_iter, %struct.rsbtbl_iter* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %17 = call i32 @print_format1(i32 %15, %struct.seq_file* %16)
  store i32 %17, i32* %6, align 4
  br label %50

18:                                               ; preds = %2
  %19 = load %struct.rsbtbl_iter*, %struct.rsbtbl_iter** %5, align 8
  %20 = getelementptr inbounds %struct.rsbtbl_iter, %struct.rsbtbl_iter* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %25 = call i32 @seq_printf(%struct.seq_file* %24, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.rsbtbl_iter*, %struct.rsbtbl_iter** %5, align 8
  %27 = getelementptr inbounds %struct.rsbtbl_iter, %struct.rsbtbl_iter* %26, i32 0, i32 2
  store i32 0, i32* %27, align 4
  br label %28

28:                                               ; preds = %23, %18
  %29 = load %struct.rsbtbl_iter*, %struct.rsbtbl_iter** %5, align 8
  %30 = getelementptr inbounds %struct.rsbtbl_iter, %struct.rsbtbl_iter* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %33 = call i32 @print_format2(i32 %31, %struct.seq_file* %32)
  store i32 %33, i32* %6, align 4
  br label %50

34:                                               ; preds = %2
  %35 = load %struct.rsbtbl_iter*, %struct.rsbtbl_iter** %5, align 8
  %36 = getelementptr inbounds %struct.rsbtbl_iter, %struct.rsbtbl_iter* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %41 = call i32 @seq_printf(%struct.seq_file* %40, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.rsbtbl_iter*, %struct.rsbtbl_iter** %5, align 8
  %43 = getelementptr inbounds %struct.rsbtbl_iter, %struct.rsbtbl_iter* %42, i32 0, i32 2
  store i32 0, i32* %43, align 4
  br label %44

44:                                               ; preds = %39, %34
  %45 = load %struct.rsbtbl_iter*, %struct.rsbtbl_iter** %5, align 8
  %46 = getelementptr inbounds %struct.rsbtbl_iter, %struct.rsbtbl_iter* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %49 = call i32 @print_format3(i32 %47, %struct.seq_file* %48)
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %2, %44, %28, %12
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i32 @print_format1(i32, %struct.seq_file*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*) #1

declare dso_local i32 @print_format2(i32, %struct.seq_file*) #1

declare dso_local i32 @print_format3(i32, %struct.seq_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
