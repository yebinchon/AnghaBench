; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_dir.c_dlm_dir_remove_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_dir.c_dlm_dir_remove_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dlm_direntry = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"remove fr %u none\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"remove fr %u ID %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dlm_dir_remove_entry(%struct.dlm_ls* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.dlm_ls*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dlm_direntry*, align 8
  %10 = alloca i64, align 8
  store %struct.dlm_ls* %0, %struct.dlm_ls** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i64 @dir_hash(%struct.dlm_ls* %11, i8* %12, i32 %13)
  store i64 %14, i64* %10, align 8
  %15 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %16 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i64, i64* %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i64, i64* %10, align 8
  %26 = call %struct.dlm_direntry* @search_bucket(%struct.dlm_ls* %22, i8* %23, i32 %24, i64 %25)
  store %struct.dlm_direntry* %26, %struct.dlm_direntry** %9, align 8
  %27 = load %struct.dlm_direntry*, %struct.dlm_direntry** %9, align 8
  %28 = icmp ne %struct.dlm_direntry* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %4
  %30 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 (%struct.dlm_ls*, i8*, i32, ...) @log_error(%struct.dlm_ls* %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %52

33:                                               ; preds = %4
  %34 = load %struct.dlm_direntry*, %struct.dlm_direntry** %9, align 8
  %35 = getelementptr inbounds %struct.dlm_direntry, %struct.dlm_direntry* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %33
  %40 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.dlm_direntry*, %struct.dlm_direntry** %9, align 8
  %43 = getelementptr inbounds %struct.dlm_direntry, %struct.dlm_direntry* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (%struct.dlm_ls*, i8*, i32, ...) @log_error(%struct.dlm_ls* %40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %44)
  br label %52

46:                                               ; preds = %33
  %47 = load %struct.dlm_direntry*, %struct.dlm_direntry** %9, align 8
  %48 = getelementptr inbounds %struct.dlm_direntry, %struct.dlm_direntry* %47, i32 0, i32 1
  %49 = call i32 @list_del(i32* %48)
  %50 = load %struct.dlm_direntry*, %struct.dlm_direntry** %9, align 8
  %51 = call i32 @kfree(%struct.dlm_direntry* %50)
  br label %52

52:                                               ; preds = %46, %39, %29
  %53 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %54 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i64, i64* %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = call i32 @spin_unlock(i32* %58)
  ret void
}

declare dso_local i64 @dir_hash(%struct.dlm_ls*, i8*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.dlm_direntry* @search_bucket(%struct.dlm_ls*, i8*, i32, i64) #1

declare dso_local i32 @log_error(%struct.dlm_ls*, i8*, i32, ...) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.dlm_direntry*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
