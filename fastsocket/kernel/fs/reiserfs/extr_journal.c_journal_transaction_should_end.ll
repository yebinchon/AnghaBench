; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_journal_transaction_should_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_journal_transaction_should_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_transaction_handle = type { i32, i32, i32, i32 }
%struct.reiserfs_journal = type { i64, i64, i64, i64, i64, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @journal_transaction_should_end(%struct.reiserfs_transaction_handle* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.reiserfs_transaction_handle*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.reiserfs_journal*, align 8
  %7 = alloca i64, align 8
  store %struct.reiserfs_transaction_handle* %0, %struct.reiserfs_transaction_handle** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %4, align 8
  %9 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.reiserfs_journal* @SB_JOURNAL(i32 %10)
  store %struct.reiserfs_journal* %11, %struct.reiserfs_journal** %6, align 8
  %12 = call i64 (...) @get_seconds()
  store i64 %12, i64* %7, align 8
  %13 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %4, align 8
  %14 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %4, align 8
  %21 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %78

25:                                               ; preds = %2
  %26 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %6, align 8
  %27 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %65, label %30

30:                                               ; preds = %25
  %31 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %6, align 8
  %32 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %33, %35
  %37 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %6, align 8
  %38 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp sge i64 %36, %39
  br i1 %40, label %65, label %41

41:                                               ; preds = %30
  %42 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %6, align 8
  %43 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %42, i32 0, i32 7
  %44 = call i64 @atomic_read(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %65, label %46

46:                                               ; preds = %41
  %47 = load i64, i64* %7, align 8
  %48 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %6, align 8
  %49 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %47, %50
  %52 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %6, align 8
  %53 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %51, %54
  br i1 %55, label %65, label %56

56:                                               ; preds = %46
  %57 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %6, align 8
  %58 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %6, align 8
  %61 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 %62, 3
  %64 = icmp slt i32 %59, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %56, %46, %41, %30, %25
  store i32 1, i32* %3, align 4
  br label %78

66:                                               ; preds = %56
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %6, align 8
  %70 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, %68
  store i64 %72, i64* %70, align 8
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %4, align 8
  %75 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, %73
  store i32 %77, i32* %75, align 4
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %66, %65, %24
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.reiserfs_journal* @SB_JOURNAL(i32) #1

declare dso_local i64 @get_seconds(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
