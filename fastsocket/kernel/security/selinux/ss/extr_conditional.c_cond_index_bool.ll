; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_conditional.c_cond_index_bool.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_conditional.c_cond_index_bool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { %struct.cond_bool_datum**, i8**, %struct.TYPE_2__ }
%struct.cond_bool_datum = type { i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cond_index_bool(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.policydb*, align 8
  %9 = alloca %struct.cond_bool_datum*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.cond_bool_datum*
  store %struct.cond_bool_datum* %11, %struct.cond_bool_datum** %9, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.policydb*
  store %struct.policydb* %13, %struct.policydb** %8, align 8
  %14 = load %struct.cond_bool_datum*, %struct.cond_bool_datum** %9, align 8
  %15 = getelementptr inbounds %struct.cond_bool_datum, %struct.cond_bool_datum* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = load %struct.cond_bool_datum*, %struct.cond_bool_datum** %9, align 8
  %20 = getelementptr inbounds %struct.cond_bool_datum, %struct.cond_bool_datum* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.policydb*, %struct.policydb** %8, align 8
  %23 = getelementptr inbounds %struct.policydb, %struct.policydb* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sgt i32 %21, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %18, %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %51

30:                                               ; preds = %18
  %31 = load i8*, i8** %5, align 8
  %32 = load %struct.policydb*, %struct.policydb** %8, align 8
  %33 = getelementptr inbounds %struct.policydb, %struct.policydb* %32, i32 0, i32 1
  %34 = load i8**, i8*** %33, align 8
  %35 = load %struct.cond_bool_datum*, %struct.cond_bool_datum** %9, align 8
  %36 = getelementptr inbounds %struct.cond_bool_datum, %struct.cond_bool_datum* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %34, i64 %39
  store i8* %31, i8** %40, align 8
  %41 = load %struct.cond_bool_datum*, %struct.cond_bool_datum** %9, align 8
  %42 = load %struct.policydb*, %struct.policydb** %8, align 8
  %43 = getelementptr inbounds %struct.policydb, %struct.policydb* %42, i32 0, i32 0
  %44 = load %struct.cond_bool_datum**, %struct.cond_bool_datum*** %43, align 8
  %45 = load %struct.cond_bool_datum*, %struct.cond_bool_datum** %9, align 8
  %46 = getelementptr inbounds %struct.cond_bool_datum, %struct.cond_bool_datum* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.cond_bool_datum*, %struct.cond_bool_datum** %44, i64 %49
  store %struct.cond_bool_datum* %41, %struct.cond_bool_datum** %50, align 8
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %30, %27
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
