; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_dquot.c_flush_warnings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_dquot.c_flush_warnings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@MAXQUOTAS = common dso_local global i32 0, align 4
@QUOTA_NL_NOWARN = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dquot**, i8*)* @flush_warnings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_warnings(%struct.dquot** %0, i8* %1) #0 {
  %3 = alloca %struct.dquot**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dquot*, align 8
  %6 = alloca i32, align 4
  store %struct.dquot** %0, %struct.dquot*** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %57, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @MAXQUOTAS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %60

11:                                               ; preds = %7
  %12 = load %struct.dquot**, %struct.dquot*** %3, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.dquot*, %struct.dquot** %12, i64 %14
  %16 = load %struct.dquot*, %struct.dquot** %15, align 8
  store %struct.dquot* %16, %struct.dquot** %5, align 8
  %17 = load %struct.dquot*, %struct.dquot** %5, align 8
  %18 = icmp ne %struct.dquot* %17, null
  br i1 %18, label %19, label %56

19:                                               ; preds = %11
  %20 = load i8*, i8** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = load i8, i8* @QUOTA_NL_NOWARN, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %25, %27
  br i1 %28, label %29, label %56

29:                                               ; preds = %19
  %30 = load %struct.dquot*, %struct.dquot** %5, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = call i32 @warning_issued(%struct.dquot* %30, i8 signext %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %56, label %38

38:                                               ; preds = %29
  %39 = load %struct.dquot*, %struct.dquot** %5, align 8
  %40 = getelementptr inbounds %struct.dquot, %struct.dquot* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.dquot*, %struct.dquot** %5, align 8
  %43 = getelementptr inbounds %struct.dquot, %struct.dquot* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.dquot*, %struct.dquot** %5, align 8
  %46 = getelementptr inbounds %struct.dquot, %struct.dquot* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = call i32 @quota_send_warning(i32 %41, i32 %44, i32 %49, i8 signext %54)
  br label %56

56:                                               ; preds = %38, %29, %19, %11
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %7

60:                                               ; preds = %7
  ret void
}

declare dso_local i32 @warning_issued(%struct.dquot*, i8 signext) #1

declare dso_local i32 @quota_send_warning(i32, i32, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
