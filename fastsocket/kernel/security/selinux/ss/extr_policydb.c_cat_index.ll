; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_policydb.c_cat_index.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_policydb.c_cat_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { i8**, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cat_datum = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @cat_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cat_index(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.policydb*, align 8
  %9 = alloca %struct.cat_datum*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.cat_datum*
  store %struct.cat_datum* %11, %struct.cat_datum** %9, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.policydb*
  store %struct.policydb* %13, %struct.policydb** %8, align 8
  %14 = load %struct.cat_datum*, %struct.cat_datum** %9, align 8
  %15 = getelementptr inbounds %struct.cat_datum, %struct.cat_datum* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %46, label %18

18:                                               ; preds = %3
  %19 = load %struct.cat_datum*, %struct.cat_datum** %9, align 8
  %20 = getelementptr inbounds %struct.cat_datum, %struct.cat_datum* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load %struct.cat_datum*, %struct.cat_datum** %9, align 8
  %25 = getelementptr inbounds %struct.cat_datum, %struct.cat_datum* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.policydb*, %struct.policydb** %8, align 8
  %28 = getelementptr inbounds %struct.policydb, %struct.policydb* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sgt i32 %26, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %23, %18
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %47

35:                                               ; preds = %23
  %36 = load i8*, i8** %5, align 8
  %37 = load %struct.policydb*, %struct.policydb** %8, align 8
  %38 = getelementptr inbounds %struct.policydb, %struct.policydb* %37, i32 0, i32 0
  %39 = load i8**, i8*** %38, align 8
  %40 = load %struct.cat_datum*, %struct.cat_datum** %9, align 8
  %41 = getelementptr inbounds %struct.cat_datum, %struct.cat_datum* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %39, i64 %44
  store i8* %36, i8** %45, align 8
  br label %46

46:                                               ; preds = %35, %3
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %32
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
