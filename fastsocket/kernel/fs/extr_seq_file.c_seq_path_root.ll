; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_seq_file.c_seq_path_root.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_seq_file.c_seq_path_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.path = type { i32 }

@ENAMETOOLONG = common dso_local global i32 0, align 4
@dcache_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seq_path_root(%struct.seq_file* %0, %struct.path* %1, %struct.path* %2, i8* %3) #0 {
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca %struct.path*, align 8
  %7 = alloca %struct.path*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %5, align 8
  store %struct.path* %1, %struct.path** %6, align 8
  store %struct.path* %2, %struct.path** %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %15 = call i64 @seq_get_buf(%struct.seq_file* %14, i8** %9)
  store i64 %15, i64* %10, align 8
  %16 = load i32, i32* @ENAMETOOLONG, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %11, align 4
  %18 = load i64, i64* %10, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %52

20:                                               ; preds = %4
  %21 = call i32 @spin_lock(i32* @dcache_lock)
  %22 = load %struct.path*, %struct.path** %6, align 8
  %23 = load %struct.path*, %struct.path** %7, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load i64, i64* %10, align 8
  %26 = call i8* @__d_path(%struct.path* %22, %struct.path* %23, i8* %24, i64 %25)
  store i8* %26, i8** %12, align 8
  %27 = call i32 @spin_unlock(i32* @dcache_lock)
  %28 = load i8*, i8** %12, align 8
  %29 = call i32 @PTR_ERR(i8* %28)
  store i32 %29, i32* %11, align 4
  %30 = load i8*, i8** %12, align 8
  %31 = call i32 @IS_ERR(i8* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %51, label %33

33:                                               ; preds = %20
  %34 = load i8*, i8** %9, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = call i8* @mangle_path(i8* %34, i8* %35, i8* %36)
  store i8* %37, i8** %13, align 8
  %38 = load i8*, i8** %13, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %33
  %41 = load i8*, i8** %13, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = ptrtoint i8* %41 to i64
  %44 = ptrtoint i8* %42 to i64
  %45 = sub i64 %43, %44
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %11, align 4
  br label %50

47:                                               ; preds = %33
  %48 = load i32, i32* @ENAMETOOLONG, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %47, %40
  br label %51

51:                                               ; preds = %50, %20
  br label %52

52:                                               ; preds = %51, %4
  %53 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @seq_commit(%struct.seq_file* %53, i32 %54)
  %56 = load i32, i32* %11, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* %11, align 4
  br label %61

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60, %58
  %62 = phi i32 [ %59, %58 ], [ 0, %60 ]
  ret i32 %62
}

declare dso_local i64 @seq_get_buf(%struct.seq_file*, i8**) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i8* @__d_path(%struct.path*, %struct.path*, i8*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @IS_ERR(i8*) #1

declare dso_local i8* @mangle_path(i8*, i8*, i8*) #1

declare dso_local i32 @seq_commit(%struct.seq_file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
