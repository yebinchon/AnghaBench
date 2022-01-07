; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_generic.c_xlate_proc_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_generic.c_xlate_proc_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_dir_entry = type { %struct.proc_dir_entry*, %struct.proc_dir_entry* }

@proc_root = common dso_local global %struct.proc_dir_entry zeroinitializer, align 8
@proc_subdir_lock = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.proc_dir_entry**, i8**)* @xlate_proc_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlate_proc_name(i8* %0, %struct.proc_dir_entry** %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.proc_dir_entry**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.proc_dir_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.proc_dir_entry** %1, %struct.proc_dir_entry*** %5, align 8
  store i8** %2, i8*** %6, align 8
  %12 = load i8*, i8** %4, align 8
  store i8* %12, i8** %7, align 8
  store i32 0, i32* %11, align 4
  %13 = load %struct.proc_dir_entry**, %struct.proc_dir_entry*** %5, align 8
  %14 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %13, align 8
  store %struct.proc_dir_entry* %14, %struct.proc_dir_entry** %9, align 8
  %15 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %9, align 8
  %16 = icmp ne %struct.proc_dir_entry* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store %struct.proc_dir_entry* @proc_root, %struct.proc_dir_entry** %9, align 8
  br label %18

18:                                               ; preds = %17, %3
  %19 = call i32 @spin_lock(i32* @proc_subdir_lock)
  br label %20

20:                                               ; preds = %18, %57
  %21 = load i8*, i8** %7, align 8
  %22 = call i8* @strchr(i8* %21, i8 signext 47)
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %63

26:                                               ; preds = %20
  %27 = load i8*, i8** %8, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = ptrtoint i8* %27 to i64
  %30 = ptrtoint i8* %28 to i64
  %31 = sub i64 %29, %30
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %10, align 4
  %33 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %9, align 8
  %34 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %33, i32 0, i32 1
  %35 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %34, align 8
  store %struct.proc_dir_entry* %35, %struct.proc_dir_entry** %9, align 8
  br label %36

36:                                               ; preds = %47, %26
  %37 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %9, align 8
  %38 = icmp ne %struct.proc_dir_entry* %37, null
  br i1 %38, label %39, label %51

39:                                               ; preds = %36
  %40 = load i32, i32* %10, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %9, align 8
  %43 = call i64 @proc_match(i32 %40, i8* %41, %struct.proc_dir_entry* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %51

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %9, align 8
  %49 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %48, i32 0, i32 0
  %50 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %49, align 8
  store %struct.proc_dir_entry* %50, %struct.proc_dir_entry** %9, align 8
  br label %36

51:                                               ; preds = %45, %36
  %52 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %9, align 8
  %53 = icmp ne %struct.proc_dir_entry* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* @ENOENT, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %11, align 4
  br label %68

57:                                               ; preds = %51
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1
  %60 = load i8*, i8** %7, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8* %62, i8** %7, align 8
  br label %20

63:                                               ; preds = %25
  %64 = load i8*, i8** %7, align 8
  %65 = load i8**, i8*** %6, align 8
  store i8* %64, i8** %65, align 8
  %66 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %9, align 8
  %67 = load %struct.proc_dir_entry**, %struct.proc_dir_entry*** %5, align 8
  store %struct.proc_dir_entry* %66, %struct.proc_dir_entry** %67, align 8
  br label %68

68:                                               ; preds = %63, %54
  %69 = call i32 @spin_unlock(i32* @proc_subdir_lock)
  %70 = load i32, i32* %11, align 4
  ret i32 %70
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @proc_match(i32, i8*, %struct.proc_dir_entry*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
