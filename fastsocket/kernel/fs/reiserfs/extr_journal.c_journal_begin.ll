; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_journal_begin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_journal_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.reiserfs_transaction_handle* }
%struct.reiserfs_transaction_handle = type { i32, %struct.reiserfs_transaction_handle*, %struct.super_block* }
%struct.super_block = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"reiserfs-2005\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"BAD: refcount <= 1, but journal_info != 0\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"clm-2100\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"nesting info a different FS\00", align 1
@JBEGIN_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @journal_begin(%struct.reiserfs_transaction_handle* %0, %struct.super_block* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.reiserfs_transaction_handle*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.reiserfs_transaction_handle*, align 8
  %9 = alloca i32, align 4
  store %struct.reiserfs_transaction_handle* %0, %struct.reiserfs_transaction_handle** %5, align 8
  store %struct.super_block* %1, %struct.super_block** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %11, align 8
  store %struct.reiserfs_transaction_handle* %12, %struct.reiserfs_transaction_handle** %8, align 8
  %13 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %5, align 8
  %14 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %13, i32 0, i32 1
  store %struct.reiserfs_transaction_handle* null, %struct.reiserfs_transaction_handle** %14, align 8
  %15 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %8, align 8
  %16 = icmp ne %struct.reiserfs_transaction_handle* %15, null
  br i1 %16, label %17, label %58

17:                                               ; preds = %3
  %18 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %8, align 8
  %19 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %18, i32 0, i32 2
  %20 = load %struct.super_block*, %struct.super_block** %19, align 8
  %21 = load %struct.super_block*, %struct.super_block** %6, align 8
  %22 = icmp eq %struct.super_block* %20, %21
  br i1 %22, label %23, label %46

23:                                               ; preds = %17
  %24 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %8, align 8
  %25 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @BUG_ON(i32 %29)
  %31 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %8, align 8
  %32 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 8
  %35 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %5, align 8
  %36 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %8, align 8
  %37 = call i32 @memcpy(%struct.reiserfs_transaction_handle* %35, %struct.reiserfs_transaction_handle* %36, i32 24)
  %38 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %5, align 8
  %39 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sle i32 %40, 1
  br i1 %41, label %42, label %45

42:                                               ; preds = %23
  %43 = load %struct.super_block*, %struct.super_block** %6, align 8
  %44 = call i32 @reiserfs_warning(%struct.super_block* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %23
  store i32 0, i32* %4, align 4
  br label %93

46:                                               ; preds = %17
  %47 = load %struct.super_block*, %struct.super_block** %6, align 8
  %48 = call i32 @reiserfs_warning(%struct.super_block* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %50, align 8
  %52 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %5, align 8
  %53 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %52, i32 0, i32 1
  store %struct.reiserfs_transaction_handle* %51, %struct.reiserfs_transaction_handle** %53, align 8
  %54 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %5, align 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store %struct.reiserfs_transaction_handle* %54, %struct.reiserfs_transaction_handle** %56, align 8
  br label %57

57:                                               ; preds = %46
  br label %62

58:                                               ; preds = %3
  %59 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %5, align 8
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store %struct.reiserfs_transaction_handle* %59, %struct.reiserfs_transaction_handle** %61, align 8
  br label %62

62:                                               ; preds = %58, %57
  %63 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %5, align 8
  %64 = load %struct.super_block*, %struct.super_block** %6, align 8
  %65 = load i64, i64* %7, align 8
  %66 = load i32, i32* @JBEGIN_REG, align 4
  %67 = call i32 @do_journal_begin_r(%struct.reiserfs_transaction_handle* %63, %struct.super_block* %64, i64 %65, i32 %66)
  store i32 %67, i32* %9, align 4
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %69, align 8
  %71 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %5, align 8
  %72 = icmp ne %struct.reiserfs_transaction_handle* %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @BUG_ON(i32 %73)
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %62
  %78 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %5, align 8
  %79 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %78, i32 0, i32 1
  %80 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %79, align 8
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store %struct.reiserfs_transaction_handle* %80, %struct.reiserfs_transaction_handle** %82, align 8
  br label %91

83:                                               ; preds = %62
  %84 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %5, align 8
  %85 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = call i32 @BUG_ON(i32 %89)
  br label %91

91:                                               ; preds = %83, %77
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %91, %45
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memcpy(%struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle*, i32) #1

declare dso_local i32 @reiserfs_warning(%struct.super_block*, i8*, i8*) #1

declare dso_local i32 @do_journal_begin_r(%struct.reiserfs_transaction_handle*, %struct.super_block*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
