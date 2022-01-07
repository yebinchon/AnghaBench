; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_generic.c_proc_create_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_generic.c_proc_create_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_dir_entry = type { i8*, %struct.file_operations* }
%struct.file_operations = type { i32 }

@S_IALLUGO = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IXUGO = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.proc_dir_entry* @proc_create_data(i8* %0, i32 %1, %struct.proc_dir_entry* %2, %struct.file_operations* %3, i8* %4) #0 {
  %6 = alloca %struct.proc_dir_entry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.proc_dir_entry*, align 8
  %10 = alloca %struct.file_operations*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.proc_dir_entry*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.proc_dir_entry* %2, %struct.proc_dir_entry** %9, align 8
  store %struct.file_operations* %3, %struct.file_operations** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i64 @S_ISDIR(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %5
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @S_IALLUGO, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load i32, i32* @S_IRUGO, align 4
  %24 = load i32, i32* @S_IXUGO, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* %8, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %22, %17
  store i32 2, i32* %13, align 4
  br label %48

29:                                               ; preds = %5
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @S_IFMT, align 4
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* @S_IFREG, align 4
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %34, %29
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @S_IALLUGO, align 4
  %41 = and i32 %39, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* @S_IRUGO, align 4
  %45 = load i32, i32* %8, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %43, %38
  store i32 1, i32* %13, align 4
  br label %48

48:                                               ; preds = %47, %28
  %49 = load i8*, i8** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %13, align 4
  %52 = call %struct.proc_dir_entry* @__proc_create(%struct.proc_dir_entry** %9, i8* %49, i32 %50, i32 %51)
  store %struct.proc_dir_entry* %52, %struct.proc_dir_entry** %12, align 8
  %53 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %12, align 8
  %54 = icmp ne %struct.proc_dir_entry* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %48
  br label %73

56:                                               ; preds = %48
  %57 = load %struct.file_operations*, %struct.file_operations** %10, align 8
  %58 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %12, align 8
  %59 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %58, i32 0, i32 1
  store %struct.file_operations* %57, %struct.file_operations** %59, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %12, align 8
  %62 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  %63 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %9, align 8
  %64 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %12, align 8
  %65 = call i64 @proc_register(%struct.proc_dir_entry* %63, %struct.proc_dir_entry* %64)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %56
  br label %70

68:                                               ; preds = %56
  %69 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %12, align 8
  store %struct.proc_dir_entry* %69, %struct.proc_dir_entry** %6, align 8
  br label %74

70:                                               ; preds = %67
  %71 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %12, align 8
  %72 = call i32 @kfree(%struct.proc_dir_entry* %71)
  br label %73

73:                                               ; preds = %70, %55
  store %struct.proc_dir_entry* null, %struct.proc_dir_entry** %6, align 8
  br label %74

74:                                               ; preds = %73, %68
  %75 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  ret %struct.proc_dir_entry* %75
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
