; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt3090/common/extr_cmm_wpa.c_GetEapolMsgType.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt3090/common/extr_cmm_wpa.c_GetEapolMsgType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EAPOL_PAIR_MSG_1 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"Pairwise Message 1\00", align 1
@EAPOL_PAIR_MSG_2 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"Pairwise Message 2\00", align 1
@EAPOL_PAIR_MSG_3 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"Pairwise Message 3\00", align 1
@EAPOL_PAIR_MSG_4 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"Pairwise Message 4\00", align 1
@EAPOL_GROUP_MSG_1 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"Group Message 1\00", align 1
@EAPOL_GROUP_MSG_2 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [16 x i8] c"Group Message 2\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Invalid Message\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @GetEapolMsgType(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @EAPOL_PAIR_MSG_1, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %34

8:                                                ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @EAPOL_PAIR_MSG_2, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %34

13:                                               ; preds = %8
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @EAPOL_PAIR_MSG_3, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %34

18:                                               ; preds = %13
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* @EAPOL_PAIR_MSG_4, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %34

23:                                               ; preds = %18
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* @EAPOL_GROUP_MSG_1, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %34

28:                                               ; preds = %23
  %29 = load i64, i64* %3, align 8
  %30 = load i64, i64* @EAPOL_GROUP_MSG_2, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %34

33:                                               ; preds = %28
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %34

34:                                               ; preds = %33, %32, %27, %22, %17, %12, %7
  %35 = load i8*, i8** %2, align 8
  ret i8* %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
