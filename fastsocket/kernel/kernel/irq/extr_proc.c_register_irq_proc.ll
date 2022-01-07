; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/irq/extr_proc.c_register_irq_proc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/irq/extr_proc.c_register_irq_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i64, i32* }
%struct.proc_dir_entry = type { i32, i8* }

@MAX_NAMELEN = common dso_local global i32 0, align 4
@root_irq_dir = common dso_local global i32 0, align 4
@no_irq_chip = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"spurious\00", align 1
@irq_spurious_read = common dso_local global i32 0, align 4
@irq_affinity_hint_proc_fops = common dso_local global i32 0, align 4
@irq_affinity_list_proc_fops = common dso_local global i32 0, align 4
@irq_affinity_proc_fops = common dso_local global i32 0, align 4
@irq_node_proc_fops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @register_irq_proc(i32 %0, %struct.irq_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_desc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.proc_dir_entry*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.irq_desc* %1, %struct.irq_desc** %4, align 8
  %9 = load i32, i32* @MAX_NAMELEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load i32, i32* @root_irq_dir, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %17 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, @no_irq_chip
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %22 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %15, %2
  store i32 1, i32* %8, align 4
  br label %51

26:                                               ; preds = %20
  %27 = load i32, i32* @MAX_NAMELEN, align 4
  %28 = call i32 @memset(i8* %12, i32 0, i32 %27)
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @sprintf(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @root_irq_dir, align 4
  %32 = call i64 @proc_mkdir(i8* %12, i32 %31)
  %33 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %34 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %36 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call %struct.proc_dir_entry* @create_proc_entry(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 292, i64 %37)
  store %struct.proc_dir_entry* %38, %struct.proc_dir_entry** %7, align 8
  %39 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  %40 = icmp ne %struct.proc_dir_entry* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %26
  %42 = load i32, i32* %3, align 4
  %43 = zext i32 %42 to i64
  %44 = inttoptr i64 %43 to i8*
  %45 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  %46 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* @irq_spurious_read, align 4
  %48 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  %49 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %41, %26
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %50, %25
  %52 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %52)
  %53 = load i32, i32* %8, align 4
  switch i32 %53, label %55 [
    i32 0, label %54
    i32 1, label %54
  ]

54:                                               ; preds = %51, %51
  ret void

55:                                               ; preds = %51
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local i64 @proc_mkdir(i8*, i32) #2

declare dso_local %struct.proc_dir_entry* @create_proc_entry(i8*, i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
