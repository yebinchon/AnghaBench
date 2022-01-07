; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_make_chunk.c_sctp_make_op_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_make_chunk.c_sctp_make_op_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i32 }
%struct.sctp_chunk = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_chunk* @sctp_make_op_error(%struct.sctp_association* %0, %struct.sctp_chunk* %1, i32 %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.sctp_association*, align 8
  %8 = alloca %struct.sctp_chunk*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.sctp_chunk*, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %7, align 8
  store %struct.sctp_chunk* %1, %struct.sctp_chunk** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %14 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %15 = load %struct.sctp_chunk*, %struct.sctp_chunk** %8, align 8
  %16 = load i64, i64* %11, align 8
  %17 = load i64, i64* %12, align 8
  %18 = add i64 %16, %17
  %19 = call %struct.sctp_chunk* @sctp_make_op_error_space(%struct.sctp_association* %14, %struct.sctp_chunk* %15, i64 %18)
  store %struct.sctp_chunk* %19, %struct.sctp_chunk** %13, align 8
  %20 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %21 = icmp ne %struct.sctp_chunk* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %6
  br label %41

23:                                               ; preds = %6
  %24 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* %12, align 8
  %28 = add i64 %26, %27
  %29 = call i32 @sctp_init_cause(%struct.sctp_chunk* %24, i32 %25, i64 %28)
  %30 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %31 = load i64, i64* %11, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = call i32 @sctp_addto_chunk(%struct.sctp_chunk* %30, i64 %31, i8* %32)
  %34 = load i64, i64* %12, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %23
  %37 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %38 = load i64, i64* %12, align 8
  %39 = call i32 @sctp_addto_param(%struct.sctp_chunk* %37, i64 %38, i32* null)
  br label %40

40:                                               ; preds = %36, %23
  br label %41

41:                                               ; preds = %40, %22
  %42 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  ret %struct.sctp_chunk* %42
}

declare dso_local %struct.sctp_chunk* @sctp_make_op_error_space(%struct.sctp_association*, %struct.sctp_chunk*, i64) #1

declare dso_local i32 @sctp_init_cause(%struct.sctp_chunk*, i32, i64) #1

declare dso_local i32 @sctp_addto_chunk(%struct.sctp_chunk*, i64, i8*) #1

declare dso_local i32 @sctp_addto_param(%struct.sctp_chunk*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
