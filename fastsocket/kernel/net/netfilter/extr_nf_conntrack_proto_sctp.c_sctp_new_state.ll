; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_proto_sctp.c_sctp_new_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_proto_sctp.c_sctp_new_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"Chunk type: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"SCTP_CID_INIT\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"SCTP_CID_INIT_ACK\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"SCTP_CID_ABORT\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"SCTP_CID_SHUTDOWN\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"SCTP_CID_SHUTDOWN_ACK\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"SCTP_CID_ERROR\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"SCTP_CID_COOKIE_ECHO\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"SCTP_CID_COOKIE_ACK\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"SCTP_CID_SHUTDOWN_COMPLETE\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"Unknown chunk type, Will stay in %s\0A\00", align 1
@sctp_conntrack_names = common dso_local global i32* null, align 8
@.str.11 = private unnamed_addr constant [56 x i8] c"dir: %d   cur_state: %s  chunk_type: %d  new_state: %s\0A\00", align 1
@sctp_conntracks = common dso_local global i64*** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @sctp_new_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_new_state(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* %7, align 4
  switch i32 %11, label %30 [
    i32 132, label %12
    i32 131, label %14
    i32 136, label %16
    i32 130, label %18
    i32 129, label %20
    i32 133, label %22
    i32 134, label %24
    i32 135, label %26
    i32 128, label %28
  ]

12:                                               ; preds = %3
  %13 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %38

14:                                               ; preds = %3
  %15 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %38

16:                                               ; preds = %3
  %17 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store i32 2, i32* %8, align 4
  br label %38

18:                                               ; preds = %3
  %19 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  store i32 3, i32* %8, align 4
  br label %38

20:                                               ; preds = %3
  %21 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  store i32 4, i32* %8, align 4
  br label %38

22:                                               ; preds = %3
  %23 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  store i32 5, i32* %8, align 4
  br label %38

24:                                               ; preds = %3
  %25 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  store i32 6, i32* %8, align 4
  br label %38

26:                                               ; preds = %3
  %27 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  store i32 7, i32* %8, align 4
  br label %38

28:                                               ; preds = %3
  %29 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  store i32 8, i32* %8, align 4
  br label %38

30:                                               ; preds = %3
  %31 = load i32*, i32** @sctp_conntrack_names, align 8
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %4, align 4
  br label %77

38:                                               ; preds = %28, %26, %24, %22, %20, %18, %16, %14, %12
  %39 = load i32, i32* %5, align 4
  %40 = load i32*, i32** @sctp_conntrack_names, align 8
  %41 = load i32, i32* %6, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32*, i32** @sctp_conntrack_names, align 8
  %47 = load i64***, i64**** @sctp_conntracks, align 8
  %48 = load i32, i32* %5, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i64**, i64*** %47, i64 %49
  %51 = load i64**, i64*** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64*, i64** %51, i64 %53
  %55 = load i64*, i64** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds i32, i32* %46, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.11, i64 0, i64 0), i32 %39, i32 %44, i32 %45, i32 %61)
  %63 = load i64***, i64**** @sctp_conntracks, align 8
  %64 = load i32, i32* %5, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i64**, i64*** %63, i64 %65
  %67 = load i64**, i64*** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64*, i64** %67, i64 %69
  %71 = load i64*, i64** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %38, %30
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @pr_debug(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
