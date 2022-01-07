; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_kallsyms.c_kallsyms_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_kallsyms.c_kallsyms_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i64 }
%struct.kallsym_iter = type { i32 }
%struct.seq_file = type { %struct.kallsym_iter* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@kallsyms_op = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @kallsyms_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kallsyms_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.kallsym_iter*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.kallsym_iter* @kmalloc(i32 4, i32 %8)
  store %struct.kallsym_iter* %9, %struct.kallsym_iter** %6, align 8
  %10 = load %struct.kallsym_iter*, %struct.kallsym_iter** %6, align 8
  %11 = icmp ne %struct.kallsym_iter* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %34

15:                                               ; preds = %2
  %16 = load %struct.kallsym_iter*, %struct.kallsym_iter** %6, align 8
  %17 = call i32 @reset_iter(%struct.kallsym_iter* %16, i32 0)
  %18 = load %struct.file*, %struct.file** %5, align 8
  %19 = call i32 @seq_open(%struct.file* %18, i32* @kallsyms_op)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %15
  %23 = load %struct.kallsym_iter*, %struct.kallsym_iter** %6, align 8
  %24 = load %struct.file*, %struct.file** %5, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.seq_file*
  %28 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %27, i32 0, i32 0
  store %struct.kallsym_iter* %23, %struct.kallsym_iter** %28, align 8
  br label %32

29:                                               ; preds = %15
  %30 = load %struct.kallsym_iter*, %struct.kallsym_iter** %6, align 8
  %31 = call i32 @kfree(%struct.kallsym_iter* %30)
  br label %32

32:                                               ; preds = %29, %22
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %32, %12
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.kallsym_iter* @kmalloc(i32, i32) #1

declare dso_local i32 @reset_iter(%struct.kallsym_iter*, i32) #1

declare dso_local i32 @seq_open(%struct.file*, i32*) #1

declare dso_local i32 @kfree(%struct.kallsym_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
