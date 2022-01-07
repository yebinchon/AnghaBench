; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_bind_addr.c_sctp_in_scope.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_bind_addr.c_sctp_in_scope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.sctp_addr = type { i32 }

@SCTP_SCOPE_UNUSABLE = common dso_local global i64 0, align 8
@sctp_scope_policy = common dso_local global i32 0, align 4
@SCTP_SCOPE_PRIVATE = common dso_local global i64 0, align 8
@SCTP_SCOPE_LINK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_in_scope(%union.sctp_addr* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.sctp_addr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %union.sctp_addr* %0, %union.sctp_addr** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %8 = call i64 @sctp_scope(%union.sctp_addr* %7)
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* @SCTP_SCOPE_UNUSABLE, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %44

13:                                               ; preds = %2
  %14 = load i32, i32* @sctp_scope_policy, align 4
  switch i32 %14, label %42 [
    i32 131, label %15
    i32 130, label %16
    i32 128, label %22
    i32 129, label %32
  ]

15:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %44

16:                                               ; preds = %13
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp sle i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %44

21:                                               ; preds = %16
  br label %43

22:                                               ; preds = %13
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp sle i64 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i64, i64* @SCTP_SCOPE_PRIVATE, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %22
  store i32 1, i32* %3, align 4
  br label %44

31:                                               ; preds = %26
  br label %43

32:                                               ; preds = %13
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* %5, align 8
  %35 = icmp sle i64 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i64, i64* @SCTP_SCOPE_LINK, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36, %32
  store i32 1, i32* %3, align 4
  br label %44

41:                                               ; preds = %36
  br label %43

42:                                               ; preds = %13
  br label %43

43:                                               ; preds = %42, %41, %31, %21
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %40, %30, %20, %15, %12
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i64 @sctp_scope(%union.sctp_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
