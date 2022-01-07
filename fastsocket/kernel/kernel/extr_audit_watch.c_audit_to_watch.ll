; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_audit_watch.c_audit_to_watch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_audit_watch.c_audit_to_watch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_krule = type { i64, %struct.audit_watch*, i64, i64 }
%struct.audit_watch = type { i32 }

@audit_ih = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@AUDIT_FILTER_EXIT = common dso_local global i64 0, align 8
@Audit_equal = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @audit_to_watch(%struct.audit_krule* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.audit_krule*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.audit_watch*, align 8
  store %struct.audit_krule* %0, %struct.audit_krule** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %11 = load i32, i32* @audit_ih, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* @EOPNOTSUPP, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %5, align 4
  br label %74

16:                                               ; preds = %4
  %17 = load i8*, i8** %7, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 47
  br i1 %21, label %56, label %22

22:                                               ; preds = %16
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 47
  br i1 %30, label %56, label %31

31:                                               ; preds = %22
  %32 = load %struct.audit_krule*, %struct.audit_krule** %6, align 8
  %33 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @AUDIT_FILTER_EXIT, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %56, label %37

37:                                               ; preds = %31
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* @Audit_equal, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %56, label %41

41:                                               ; preds = %37
  %42 = load %struct.audit_krule*, %struct.audit_krule** %6, align 8
  %43 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %41
  %47 = load %struct.audit_krule*, %struct.audit_krule** %6, align 8
  %48 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %47, i32 0, i32 1
  %49 = load %struct.audit_watch*, %struct.audit_watch** %48, align 8
  %50 = icmp ne %struct.audit_watch* %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load %struct.audit_krule*, %struct.audit_krule** %6, align 8
  %53 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51, %46, %41, %37, %31, %22, %16
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %74

59:                                               ; preds = %51
  %60 = load i8*, i8** %7, align 8
  %61 = call %struct.audit_watch* @audit_init_watch(i8* %60)
  store %struct.audit_watch* %61, %struct.audit_watch** %10, align 8
  %62 = load %struct.audit_watch*, %struct.audit_watch** %10, align 8
  %63 = call i64 @IS_ERR(%struct.audit_watch* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load %struct.audit_watch*, %struct.audit_watch** %10, align 8
  %67 = call i32 @PTR_ERR(%struct.audit_watch* %66)
  store i32 %67, i32* %5, align 4
  br label %74

68:                                               ; preds = %59
  %69 = load %struct.audit_watch*, %struct.audit_watch** %10, align 8
  %70 = call i32 @audit_get_watch(%struct.audit_watch* %69)
  %71 = load %struct.audit_watch*, %struct.audit_watch** %10, align 8
  %72 = load %struct.audit_krule*, %struct.audit_krule** %6, align 8
  %73 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %72, i32 0, i32 1
  store %struct.audit_watch* %71, %struct.audit_watch** %73, align 8
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %68, %65, %56, %13
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local %struct.audit_watch* @audit_init_watch(i8*) #1

declare dso_local i64 @IS_ERR(%struct.audit_watch*) #1

declare dso_local i32 @PTR_ERR(%struct.audit_watch*) #1

declare dso_local i32 @audit_get_watch(%struct.audit_watch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
