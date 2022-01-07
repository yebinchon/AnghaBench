; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_make_chunk.c_sctp_make_abort_user.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_make_chunk.c_sctp_make_abort_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_chunk = type { i32 }
%struct.sctp_association = type { i32 }
%struct.msghdr = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@SCTP_ERROR_USER_ABORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_chunk* @sctp_make_abort_user(%struct.sctp_association* %0, %struct.msghdr* %1, i64 %2) #0 {
  %4 = alloca %struct.sctp_chunk*, align 8
  %5 = alloca %struct.sctp_association*, align 8
  %6 = alloca %struct.msghdr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sctp_chunk*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.sctp_association* %0, %struct.sctp_association** %5, align 8
  store %struct.msghdr* %1, %struct.msghdr** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* null, i8** %9, align 8
  %11 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %12 = load i64, i64* %7, align 8
  %13 = add i64 4, %12
  %14 = trunc i64 %13 to i32
  %15 = call %struct.sctp_chunk* @sctp_make_abort(%struct.sctp_association* %11, i32* null, i32 %14)
  store %struct.sctp_chunk* %15, %struct.sctp_chunk** %8, align 8
  %16 = load %struct.sctp_chunk*, %struct.sctp_chunk** %8, align 8
  %17 = icmp ne %struct.sctp_chunk* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %62

19:                                               ; preds = %3
  %20 = load i64, i64* %7, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %19
  %23 = load i64, i64* %7, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @kmalloc(i64 %23, i32 %24)
  store i8* %25, i8** %9, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  br label %59

29:                                               ; preds = %22
  %30 = load i8*, i8** %9, align 8
  %31 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %32 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @memcpy_fromiovec(i8* %30, i32 %33, i64 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %56

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39, %19
  %41 = load %struct.sctp_chunk*, %struct.sctp_chunk** %8, align 8
  %42 = load i32, i32* @SCTP_ERROR_USER_ABORT, align 4
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @sctp_init_cause(%struct.sctp_chunk* %41, i32 %42, i64 %43)
  %45 = load %struct.sctp_chunk*, %struct.sctp_chunk** %8, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 @sctp_addto_chunk(%struct.sctp_chunk* %45, i64 %46, i8* %47)
  %49 = load i64, i64* %7, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %40
  %52 = load i8*, i8** %9, align 8
  %53 = call i32 @kfree(i8* %52)
  br label %54

54:                                               ; preds = %51, %40
  %55 = load %struct.sctp_chunk*, %struct.sctp_chunk** %8, align 8
  store %struct.sctp_chunk* %55, %struct.sctp_chunk** %4, align 8
  br label %64

56:                                               ; preds = %38
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 @kfree(i8* %57)
  br label %59

59:                                               ; preds = %56, %28
  %60 = load %struct.sctp_chunk*, %struct.sctp_chunk** %8, align 8
  %61 = call i32 @sctp_chunk_free(%struct.sctp_chunk* %60)
  store %struct.sctp_chunk* null, %struct.sctp_chunk** %8, align 8
  br label %62

62:                                               ; preds = %59, %18
  %63 = load %struct.sctp_chunk*, %struct.sctp_chunk** %8, align 8
  store %struct.sctp_chunk* %63, %struct.sctp_chunk** %4, align 8
  br label %64

64:                                               ; preds = %62, %54
  %65 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  ret %struct.sctp_chunk* %65
}

declare dso_local %struct.sctp_chunk* @sctp_make_abort(%struct.sctp_association*, i32*, i32) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @memcpy_fromiovec(i8*, i32, i64) #1

declare dso_local i32 @sctp_init_cause(%struct.sctp_chunk*, i32, i64) #1

declare dso_local i32 @sctp_addto_chunk(%struct.sctp_chunk*, i64, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @sctp_chunk_free(%struct.sctp_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
