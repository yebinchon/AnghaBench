; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_policydb.c_user_index.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_policydb.c_user_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { %struct.user_datum**, i8**, %struct.TYPE_2__ }
%struct.user_datum = type { i32, i64 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @user_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @user_index(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.policydb*, align 8
  %9 = alloca %struct.user_datum*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.user_datum*
  store %struct.user_datum* %11, %struct.user_datum** %9, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.policydb*
  store %struct.policydb* %13, %struct.policydb** %8, align 8
  %14 = load %struct.user_datum*, %struct.user_datum** %9, align 8
  %15 = getelementptr inbounds %struct.user_datum, %struct.user_datum* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %3
  %19 = load %struct.user_datum*, %struct.user_datum** %9, align 8
  %20 = getelementptr inbounds %struct.user_datum, %struct.user_datum* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.policydb*, %struct.policydb** %8, align 8
  %23 = getelementptr inbounds %struct.policydb, %struct.policydb* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sgt i32 %21, %25
  br i1 %26, label %37, label %27

27:                                               ; preds = %18
  %28 = load %struct.user_datum*, %struct.user_datum** %9, align 8
  %29 = getelementptr inbounds %struct.user_datum, %struct.user_datum* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.policydb*, %struct.policydb** %8, align 8
  %32 = getelementptr inbounds %struct.policydb, %struct.policydb* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = icmp sgt i64 %30, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %27, %18, %3
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %61

40:                                               ; preds = %27
  %41 = load i8*, i8** %5, align 8
  %42 = load %struct.policydb*, %struct.policydb** %8, align 8
  %43 = getelementptr inbounds %struct.policydb, %struct.policydb* %42, i32 0, i32 1
  %44 = load i8**, i8*** %43, align 8
  %45 = load %struct.user_datum*, %struct.user_datum** %9, align 8
  %46 = getelementptr inbounds %struct.user_datum, %struct.user_datum* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %44, i64 %49
  store i8* %41, i8** %50, align 8
  %51 = load %struct.user_datum*, %struct.user_datum** %9, align 8
  %52 = load %struct.policydb*, %struct.policydb** %8, align 8
  %53 = getelementptr inbounds %struct.policydb, %struct.policydb* %52, i32 0, i32 0
  %54 = load %struct.user_datum**, %struct.user_datum*** %53, align 8
  %55 = load %struct.user_datum*, %struct.user_datum** %9, align 8
  %56 = getelementptr inbounds %struct.user_datum, %struct.user_datum* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.user_datum*, %struct.user_datum** %54, i64 %59
  store %struct.user_datum* %51, %struct.user_datum** %60, align 8
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %40, %37
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
