; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_generic.c_create_proc_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_generic.c_create_proc_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_dir_entry = type { i32 }

@S_IALLUGO = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IXUGO = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.proc_dir_entry* @create_proc_entry(i8* %0, i32 %1, %struct.proc_dir_entry* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.proc_dir_entry*, align 8
  %7 = alloca %struct.proc_dir_entry*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.proc_dir_entry* %2, %struct.proc_dir_entry** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @S_ISDIR(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @S_IALLUGO, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load i32, i32* @S_IRUGO, align 4
  %19 = load i32, i32* @S_IXUGO, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %17, %12
  store i32 2, i32* %8, align 4
  br label %43

24:                                               ; preds = %3
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @S_IFMT, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* @S_IFREG, align 4
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %29, %24
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @S_IALLUGO, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32, i32* @S_IRUGO, align 4
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %38, %33
  store i32 1, i32* %8, align 4
  br label %43

43:                                               ; preds = %42, %23
  %44 = load i8*, i8** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call %struct.proc_dir_entry* @__proc_create(%struct.proc_dir_entry** %6, i8* %44, i32 %45, i32 %46)
  store %struct.proc_dir_entry* %47, %struct.proc_dir_entry** %7, align 8
  %48 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  %49 = icmp ne %struct.proc_dir_entry* %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %43
  %51 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %52 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  %53 = call i64 @proc_register(%struct.proc_dir_entry* %51, %struct.proc_dir_entry* %52)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  %57 = call i32 @kfree(%struct.proc_dir_entry* %56)
  store %struct.proc_dir_entry* null, %struct.proc_dir_entry** %7, align 8
  br label %58

58:                                               ; preds = %55, %50
  br label %59

59:                                               ; preds = %58, %43
  %60 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  ret %struct.proc_dir_entry* %60
}

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local %struct.proc_dir_entry* @__proc_create(%struct.proc_dir_entry**, i8*, i32, i32) #1

declare dso_local i64 @proc_register(%struct.proc_dir_entry*, %struct.proc_dir_entry*) #1

declare dso_local i32 @kfree(%struct.proc_dir_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
