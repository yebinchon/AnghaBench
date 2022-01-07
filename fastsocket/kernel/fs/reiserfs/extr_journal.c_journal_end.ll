; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_journal_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_journal_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.reiserfs_transaction_handle* }
%struct.reiserfs_transaction_handle = type { i32, i64, i64 }
%struct.super_block = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"REISER-NESTING\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"th NULL, refcount %d\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @journal_end(%struct.reiserfs_transaction_handle* %0, %struct.super_block* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.reiserfs_transaction_handle*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.reiserfs_transaction_handle*, align 8
  store %struct.reiserfs_transaction_handle* %0, %struct.reiserfs_transaction_handle** %5, align 8
  store %struct.super_block* %1, %struct.super_block** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %10, align 8
  %12 = icmp ne %struct.reiserfs_transaction_handle* %11, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %3
  %14 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %5, align 8
  %15 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load %struct.super_block*, %struct.super_block** %6, align 8
  %20 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %5, align 8
  %21 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @reiserfs_warning(%struct.super_block* %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %18, %13, %3
  %25 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %5, align 8
  %26 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = call i32 @WARN_ON(i32 1)
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %72

33:                                               ; preds = %24
  %34 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %5, align 8
  %35 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %35, align 8
  %38 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %5, align 8
  %39 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %67

42:                                               ; preds = %33
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %44, align 8
  store %struct.reiserfs_transaction_handle* %45, %struct.reiserfs_transaction_handle** %8, align 8
  %46 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %8, align 8
  %47 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %5, align 8
  %50 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %48, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @BUG_ON(i32 %53)
  %55 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %5, align 8
  %56 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %8, align 8
  %57 = icmp ne %struct.reiserfs_transaction_handle* %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %42
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %60, align 8
  %62 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %5, align 8
  %63 = call i32 @memcpy(%struct.reiserfs_transaction_handle* %61, %struct.reiserfs_transaction_handle* %62, i32 24)
  %64 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %5, align 8
  %65 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %64, i32 0, i32 2
  store i64 0, i64* %65, align 8
  br label %66

66:                                               ; preds = %58, %42
  store i32 0, i32* %4, align 4
  br label %72

67:                                               ; preds = %33
  %68 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %5, align 8
  %69 = load %struct.super_block*, %struct.super_block** %6, align 8
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @do_journal_end(%struct.reiserfs_transaction_handle* %68, %struct.super_block* %69, i64 %70, i32 0)
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %67, %66, %29
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @reiserfs_warning(%struct.super_block*, i8*, i8*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memcpy(%struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle*, i32) #1

declare dso_local i32 @do_journal_end(%struct.reiserfs_transaction_handle*, %struct.super_block*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
