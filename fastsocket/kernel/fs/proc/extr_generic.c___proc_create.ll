; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_generic.c___proc_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_generic.c___proc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_dir_entry = type { i8*, i32, i32, i32*, i32, i64, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.proc_dir_entry* (%struct.proc_dir_entry**, i8*, i32, i32)* @__proc_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.proc_dir_entry* @__proc_create(%struct.proc_dir_entry** %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.proc_dir_entry**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.proc_dir_entry*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.proc_dir_entry** %0, %struct.proc_dir_entry*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store %struct.proc_dir_entry* null, %struct.proc_dir_entry** %9, align 8
  %12 = load i8*, i8** %6, align 8
  store i8* %12, i8** %10, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15, %4
  br label %81

20:                                               ; preds = %15
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.proc_dir_entry**, %struct.proc_dir_entry*** %5, align 8
  %23 = call i64 @xlate_proc_name(i8* %21, %struct.proc_dir_entry** %22, i8** %10)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %81

26:                                               ; preds = %20
  %27 = load i8*, i8** %10, align 8
  %28 = call i64 @strchr(i8* %27, i8 signext 47)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %81

31:                                               ; preds = %26
  %32 = load i8*, i8** %10, align 8
  %33 = call i32 @strlen(i8* %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = add i64 56, %35
  %37 = add i64 %36, 1
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.proc_dir_entry* @kmalloc(i32 %38, i32 %39)
  store %struct.proc_dir_entry* %40, %struct.proc_dir_entry** %9, align 8
  %41 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %9, align 8
  %42 = icmp ne %struct.proc_dir_entry* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %31
  br label %81

44:                                               ; preds = %31
  %45 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %9, align 8
  %46 = call i32 @memset(%struct.proc_dir_entry* %45, i32 0, i32 56)
  %47 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %9, align 8
  %48 = bitcast %struct.proc_dir_entry* %47 to i8*
  %49 = getelementptr inbounds i8, i8* %48, i64 56
  %50 = load i8*, i8** %10, align 8
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 1
  %53 = call i32 @memcpy(i8* %49, i8* %50, i32 %52)
  %54 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %9, align 8
  %55 = bitcast %struct.proc_dir_entry* %54 to i8*
  %56 = getelementptr inbounds i8, i8* %55, i64 56
  %57 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %9, align 8
  %58 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %9, align 8
  %61 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %9, align 8
  %64 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %63, i32 0, i32 8
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %9, align 8
  %67 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %66, i32 0, i32 7
  store i32 %65, i32* %67, align 4
  %68 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %9, align 8
  %69 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %68, i32 0, i32 6
  %70 = call i32 @atomic_set(i32* %69, i32 1)
  %71 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %9, align 8
  %72 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %71, i32 0, i32 5
  store i64 0, i64* %72, align 8
  %73 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %9, align 8
  %74 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %73, i32 0, i32 4
  %75 = call i32 @spin_lock_init(i32* %74)
  %76 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %9, align 8
  %77 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %76, i32 0, i32 3
  store i32* null, i32** %77, align 8
  %78 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %9, align 8
  %79 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %78, i32 0, i32 2
  %80 = call i32 @INIT_LIST_HEAD(i32* %79)
  br label %81

81:                                               ; preds = %44, %43, %30, %25, %19
  %82 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %9, align 8
  ret %struct.proc_dir_entry* %82
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @xlate_proc_name(i8*, %struct.proc_dir_entry**, i8**) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local %struct.proc_dir_entry* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.proc_dir_entry*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
